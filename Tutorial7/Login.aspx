<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Tutorial7.Login" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Tutorial 7 Session </title>
</head>
<body>
<form id="form1" runat="server">
<div>
<table>
<tr>
<td>User Name:</td><td><asp:TextBox ID="txtName" runat="server"/></td>
</tr>
<tr>
<td>Password:</td><td><asp:TextBox ID="txtPassword" runat="server"/></td>
</tr>
<tr><td></td>
    <td> <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/></td>

</tr>
</table>
</div>
</form>
</body>
</html>