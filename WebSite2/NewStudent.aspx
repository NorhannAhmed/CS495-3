<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewStudent.aspx.cs" Inherits="_Defaul" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>
<script runat="server">

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
  // Create Connection Object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
        
        // Create SQL Insert Statement
        string strInsert = "INSERT INTO Member "
            + " VALUES('" + txtUsername.Text + "', '"
            + txtFname.Text + "', '"
            + txtLname.Text + "', '"
            + txtUsername.Text + "','"
            + txtEmail.Text + "', '"
            + txtAddress.Text + "', '"
            + txtPhone.Text + "', '"
            + ddlFaculty.Text + "', '"
            + rbnGender.SelectedValue + "', '"
            + txtPassword.Text + "','"
            +ddlNationality.Text + "','"
            +txtBirthDate.Text + "','"
            +txtBus.Text + "')";
            
        
        // Create SQL Command
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
        try
        {
            conn.Open();
            cmdInsert.ExecuteNonQuery();
            conn.Close();
            lblMsg.Text = "Welcome " + txtFname.Text + " Your Account Has Been Successfully Created!!";
        }


        catch (SqlException err)
        {
            if (err.Number == 2627)
                lblMsg.Text = "Username already exists, Please Choose Another!!";
            else
                lblMsg.Text = "Sorry, Database Error, You may Try later!!";
        }

        catch
        {
            lblMsg.Text = "Sorry, System Error, You may Try later!!";
        }
    }

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 439px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 24px;
        }
        .auto-style4 {
            width: 148px;
        }
        .auto-style5 {
            height: 23px;
            width: 148px;
        }
        .auto-style6 {
            height: 24px;
            width: 148px;
        }
        .auto-style7 {
            width: 148px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 148px;
            height: 40px;
        }
        .auto-style10 {
            height: 40px;
        }
        .auto-style11 {
            width: 173px;
        }
        .auto-style12 {
            height: 23px;
            width: 173px;
        }
        .auto-style13 {
            height: 24px;
            width: 173px;
        }
        .auto-style14 {
            height: 40px;
            width: 173px;
        }
        .auto-style15 {
            height: 26px;
            width: 173px;
        }
        .auto-style16 {
            width: 148px;
            height: 29px;
        }
        .auto-style17 {
            width: 173px;
            height: 29px;
        }
        .auto-style18 {
            height: 29px;
        }
        .auto-style19 {
            width: 213px;
        }
        .auto-style20 {
            height: 23px;
            width: 213px;
        }
        .auto-style21 {
            height: 24px;
            width: 213px;
        }
        .auto-style22 {
            height: 40px;
            width: 213px;
        }
        .auto-style23 {
            height: 26px;
            width: 213px;
        }
        .auto-style24 {
            height: 29px;
            width: 213px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="5">
                    <asp:Label ID="Label1" runat="server" Text="New Student" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="#000066"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblFname" runat="server" Text="First Name:" Font-Names="Arial" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox><br/>
                    <font face="arial" color="midnightblue size="-3">For Example: Ahmed or Abd Rahman</font>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="valreq1" runat="server" ControlToValidate="txtFname" ErrorMessage="First name is missing!!"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtFname" ErrorMessage="Invalid first name format!!" ValidationExpression="([A-Z][a-z]*/s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblLname" runat="server" Text="Last Name:" Font-Names="Arial" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="valreq2" runat="server" ControlToValidate="txtLname" ErrorMessage="Last name is missing!!"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtLname" ErrorMessage="Invalid last name format!!" ValidationExpression="([A-Z][a-z]*/s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblUsername" runat="server" Text="Username:" Font-Names="Arial" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="valreq4" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is missing!!"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtUsername" ErrorMessage="8 characters at least and 16 at most!!" ValidationExpression="\w{8,16}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblGender" runat="server" Text="Gender:" Font-Names="Arial" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:RadioButtonList ID="rbnGender" runat="server" Height="26px" Width="154px" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">M</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="valreq6" runat="server" ControlToValidate="rbnGender" ErrorMessage="Please choose gender!!"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lblEmail" runat="server" Text="E-mail:" Font-Names="Arial" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="valreq3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is missing!!"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email address!!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lblAdress" runat="server" Text="Address:" Font-Names="Arial" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style22">
                    <asp:RequiredFieldValidator ID="valreq7" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is missing!!"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lblPhone" runat="server" Text="Phone:" Font-Names="Arial" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><br/>
                    <font face="arial" color="midnightblue size="-3">For Example: 0122-1234567</font>
                </td>
                <td class="auto-style23">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid phone format!!" ValidationExpression="[0][1][0-2][0-24-9]\s\d{7}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lblFaculty" runat="server" Text="Faculty:" Font-Names="Arial" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:DropDownList ID="ddlFaculty" runat="server">
                        <asp:ListItem Selected="True">Computer science</asp:ListItem>
                        <asp:ListItem>business</asp:ListItem>
                        <asp:ListItem>pharmacy</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="valreq8" runat="server" ControlToValidate="ddlFaculty" ErrorMessage="Please choose your faculty!!"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lblPass" runat="server" Text="Password:" Font-Names="Arial" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="valreq5" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is missing!!"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="8 characters at least and 16 at most!!" ValidationExpression="\w{8,16}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblRewrite" runat="server" Text="Re-write password:" Font-Names="Arial" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtRewrite" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRewrite" ErrorMessage="No matching, please reenter!!"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblNationality" runat="server" Text="Nationality:" Font-Names="Arial" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:DropDownList ID="ddlNationality" runat="server">
                        <asp:ListItem Selected="True">Egyption</asp:ListItem>
                        <asp:ListItem>Another one</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="valreq9" runat="server" ControlToValidate="ddlNationality" ErrorMessage="Please choose your nationality!!"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblBD" runat="server" Text="BirthDate:" Font-Names="Arial" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtBirthDate" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="valreq10" runat="server" ControlToValidate="txtBirthDate" ErrorMessage="BirthDate is missing!!"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Label ID="lblBus" runat="server" Text="Bus:" Font-Names="Arial" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="txtBus" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    <asp:RequiredFieldValidator ID="valreq11" runat="server" ControlToValidate="txtBus" ErrorMessage="Bus is missing!!"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="lblMsg" runat="server" Text="lblMsg" Font-Names="Arial Black" Font-Size="Medium" ForeColor="#CC0000"></asp:Label>
    </form>
</body>
</html>
