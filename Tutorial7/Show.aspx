<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="Tutorial7.Show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Tutorial Show Page</title>
</head>
<body>
<form id="form1" runat="server">
<div>
<table>
<tr>
<td colspan="2">Welcome <b><asp:Label ID="lblString" runat="server"/></b></td>
</tr>
<tr>
<td>Your Name : </td><td><b><asp:Label ID="lblName" runat="server"/></b></td>
</tr>
<tr>
<td>Your Password : </td><td><b><asp:Label ID="lblPassword" runat="server"/></b></td>
</tr>
<tr><td></td>
    <td> <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click"/></td>

</tr>
</table>
</div>
</form>
</body>
</html>
