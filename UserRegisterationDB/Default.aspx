<%@ Page  Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UserRegisterationDB._Default" %>



    

<body>
    
        <form id="form1" runat="server">
            <div>

                <asp:HiddenField ID ="hfUserID" runat="server" />
                <title>User Registeration Form </title>
                 <table>
                    <tr>
                        <td style="width: 428px">
                            <asp:Label Text="First name" runat="server" />
                        </td>
                        <td style="width: 187px">
                            <asp:TextBox ID="txtFirstname" runat="server" Width="181px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 428px">
                            <asp:Label Text="Last name" runat="server" />
                        </td>
                        <td style="width: 187px">
                            <asp:TextBox ID="txtLastname" runat="server" Width="179px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 428px">
                            <asp:Label Text="Contact" runat="server" />
                        </td>
                        <td style="width: 187px">
                            <asp:TextBox ID="txtContact" runat="server" Width="180px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 428px">
                            <asp:Label Text="Gender" runat="server" />
                        </td>
                        <td style="width: 187px">
                             <asp:DropDownList ID="ddlGender" runat="server">
                                 <asp:ListItem>Male</asp:ListItem>
                                 <asp:ListItem>Female</asp:ListItem>
                                 <asp:ListItem>Prefere Not To Answer</asp:ListItem>
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 428px">
                            <asp:Label Text="Address" runat="server" />
                        </td>
                        <td style="width: 187px">
                            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="176px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 428px">

                            <hr />

                        </td>
                    </tr>
                    <tr>
                        <td style="width: 428px">
                            <asp:Label Text="Username" runat="server" />
                        </td>
                        <td style="width: 187px">
                            <asp:TextBox ID="txtUsername" runat="server" Width="176px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 428px">
                            <asp:Label Text="Password" runat="server" />
                        </td>
                        <td style="width: 187px">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="174px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 428px">
                            <asp:Label Text="ConfirmPassword" runat="server" />
                        </td>
                        <td style="width: 187px">
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="174px" />
                        </td>
                    </tr>
                    
                    
                    <tr>
                        <td style="width: 428px">
                            &nbsp;</td>
                        <td style="width: 187px">
                            &nbsp;</td>
                    </tr>
                    
                    
                    <tr>
                        <td style="width: 428px">
                            &nbsp;</td>
                        <td style="width: 187px">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="89px" OnClick="btnSubmit_Click" />
                        </td>
                    </tr>
                    
                     <tr>
                        <td style="width: 428px">
                            &nbsp;</td>
                        <td style="width: 187px">
                            <asp:Label Text="" ID="SuccessMessage" runat="server"  ForeColor="Green"/>
                        </td>
                    </tr>

                     <tr>
                        <td style="width: 428px">
                            &nbsp;</td>
                        <td style="width: 187px">
                            <asp:Label Text="" ID="ErrorMessage" runat="server" ForeColor="Red" />
                        </td>
                    </tr>

                    
                    
                    <tr>
                        <td style="width: 428px">
                            &nbsp;</td>
                        <td style="width: 187px">
                            &nbsp;</td>
                    </tr>
                    
                    
                </table>
            </div>
        </form>
    </body>
</head>

