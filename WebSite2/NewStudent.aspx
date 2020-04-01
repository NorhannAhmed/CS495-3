<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewStudent.aspx.cs" Inherits="_Defaul" %>
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
        String connection = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
        
        // Create SQL Insert Statement
        string strInsert = "INSERT INTO Member "
            + " VALUES('" + txtID.Text + "', '"
            + txtFname.Text + "', '"
            + txtLname.Text + "', '"
            + txtEmail.Text + "', '"
            + textarea.Text + "', '"
            + txtPhone.Text + "', '"
            + dlFaculty.Text + "', '"
            + rbGender.SelectedValue + "', '"
            + txtPass.Text + "','"
            +dlNationality.Text + "','"
            +txtBD.Text + "','"
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="5">
                    <asp:Label ID="Label1" runat="server" Text="New Student"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblFname" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblLname" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblID" runat="server" Text="ID"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="rbGender" runat="server" Height="26px" Width="154px">
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblEmail" runat="server" Text="E-mail:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lblAdress" runat="server" Text="Address:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <textarea id="textarea" cols="20" name="S1" rows="2"></textarea></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lblPhone" runat="server" Text="Phone:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblFaculty" runat="server" Text="Faculty:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="dlFaculty" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lblPass" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblRewrite" runat="server" Text="Re-write password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRewrite" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblNationality" runat="server" Text="Nationality:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="dlNationality" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblBD" runat="server" Text="BirthDate:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBD" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblBus" runat="server" Text="Bus:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBus" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="lblMsg" runat="server" Text="lblMsg"></asp:Label>
    </form>
</body>
</html>
