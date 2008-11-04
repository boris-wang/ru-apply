<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Recommendations</title>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">

<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
  <div id="mainContent">
  <table width="100%"><tr><td align="center"><img src="images/application4-4.png" /></td></tr></table>
  <h1>Recommendations</h1>
      <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td height="40" colspan="2"><strong><u>Recommendation Provider 1</u></strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">First Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Last Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Organization/University</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Phone</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Mailing Address</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Email</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Use online recommendation form?</p></td>
<td width="50%" height="40">
    <asp:RadioButtonList ID="useonline1" runat="server">
        <asp:ListItem Selected="True">Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
    </asp:RadioButtonList>
          </td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u>Recommendation Provider 2</u></strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">First Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Last Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Organization/University</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Phone</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Mailing Address</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Email</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Use online recommendation form?</p></td>
<td width="50%" height="40">
    <asp:RadioButtonList ID="useonline2" runat="server">
        <asp:ListItem Selected="True">Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
    </asp:RadioButtonList>
          </td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u>Recommendation Provider 3</u></strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">First Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Last Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Organization/University</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Phone</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Mailing Address</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Email</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Use online recommendation form?</p></td>
<td width="50%" height="40">
    <asp:RadioButtonList ID="useonline3" runat="server">
        <asp:ListItem Selected="True">Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
    </asp:RadioButtonList>
          </td>
      </tr>
        &nbsp;</td>
        </tr>
<tr>
        <td height="40" colspan="2"><div align="center">
            <a href="application3.aspx">Previous Page</a>&nbsp;&nbsp;&nbsp; Save&nbsp;&nbsp;&nbsp; Submit</div></td>
        </tr>
    </table>
      </form>
  <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="default.aspx">Home</a> | Information | Apply | Status | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
  <!-- end #footer --></div>
<!-- end #container --></div>
</body>
</html>