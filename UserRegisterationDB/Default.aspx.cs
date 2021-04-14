using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace UserRegisterationDB
{
    public partial class _Default : Page
    {
        string connectionString = @"Data Source=DESKTOP-3S6JV8F;Initial Catalog=wagesAmount;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    int UserID = Convert.ToInt32(Request.QueryString["id"]);
                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        SqlDataAdapter sqlData = new SqlDataAdapter("UserViewByID", sqlCon);
                        sqlData.SelectCommand.CommandType = CommandType.StoredProcedure;
                        sqlData.SelectCommand.Parameters.AddWithValue("@UserID", UserID);
                        DataTable dtbl = new DataTable();
                        sqlData.Fill(dtbl);

                        hfUserID.Value = UserID.ToString();
                        txtFirstname.Text = dtbl.Rows[0][1].ToString();
                        txtLastname.Text = dtbl.Rows[0][2].ToString();
                        txtContact.Text = dtbl.Rows[0][3].ToString();
                        ddlGender.Items.FindByValue(dtbl.Rows[0][4].ToString()).Selected = true;
                        txtAddress.Text = dtbl.Rows[0][5].ToString();
                        txtUsername.Text = dtbl.Rows[0][6].ToString();
                        txtPassword.Text = dtbl.Rows[0][7].ToString();
                        txtPassword.Attributes.Add("value", dtbl.Rows[0][7].ToString());
                        txtConfirmPassword.Text = dtbl.Rows[0][8].ToString();
                        txtConfirmPassword.Attributes.Add("value", dtbl.Rows[0][8].ToString());
                    }
                }

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "" || txtPassword.Text == "")
                ErrorMessage.Text = "Missing Some Mandatory Details";
            else
                if (txtPassword.Text != txtConfirmPassword.Text)
                ErrorMessage.Text = "Both Passwords are not matching";
            else
            {

                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserAdd", sqlCon);
                    
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value == "" ? "0" : hfUserID.Value));
                    sqlCmd.Parameters.AddWithValue("@Firstname", txtFirstname.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Lastname", txtLastname.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Contact", txtContact.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                    sqlCmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                   
                    SuccessMessage.Text = "New Data Inserted ";
                    sqlCon.Close();

                }
            }
            
            void Clear()
            {
                txtFirstname.Text = txtLastname.Text = txtContact.Text = txtUsername.Text = txtPassword.Text = txtConfirmPassword.Text = "";
                hfUserID.Value = "";
                SuccessMessage.Text = ErrorMessage.Text = "";

            }
            
        }
    }
}
