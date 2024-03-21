<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="WebApplication1.AddCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="Table1">
                <tr>
                    <td>Vehicle Type</td>
                    <td></td>
                    <td>Date of Birth</td>
                    <td>Gender</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox runat="server" ID="txtFirstName"></asp:TextBox></td>
                    <td>
                        <asp:TextBox runat="server" ID="txtLastName"> </asp:TextBox>
                    </td>
                    <td>
                        <input type="date" runat="server" id="DOB" />
                        <asp:TextBox runat="server" ID="dtDOB"></asp:TextBox>
                        Date of Birth</td>
                    <td>
                        <asp:DropDownList runat="server" ID="drpGender" >
                            <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button runat="server" ID="Submit" Text="Submit" OnClick="Submit_Click" /></td>
                </tr>
            </table>
        </div>

        <div>
            <h3>Customer List</h3>
            <asp:GridView ID="CustomerGridView" runat="server">
                <Columns>
                    <%--<asp:CommandField ButtonType="Button" ad >--%>
                    <asp:BoundField HeaderText="First name" DataField="FirstName" />
                    <asp:BoundField HeaderText="Last Name" />
                    <asp:BoundField HeaderText="Gender" />
                </Columns>
            </asp:GridView>
        </div>
    </form>

</body>
<script>
    // $('#CustomerGridView').DataTable();
</script>
</html>
