<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recommendation.aspx.cs" Inherits="recommendation" %>
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
        <td width="50%" height="40"><p align="right">*First Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec1_fname" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
          &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="rec1_fname" ErrorMessage="* Required Field"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                runat="server" ControlToValidate="rec1_fname" 
                ErrorMessage="The input should be 1~20 characters." 
                ValidationExpression="[A-Za-z]{1,20}$"></asp:RegularExpressionValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">*Last Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec1_lname" runat="server"></asp:TextBox>
          &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="rec1_lname" ErrorMessage="* Required Field"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator14" 
                runat="server" ControlToValidate="rec1_lname" 
                ErrorMessage="The input should be 1~20 characters." 
                ValidationExpression="[A-Za-z]{1,20}$"></asp:RegularExpressionValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Organization/University</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec1_org" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Phone</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec1_phone" runat="server" ontextchanged="TextBox4_TextChanged"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Mailing Address</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec1_add" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">*Email</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec1_email" runat="server"></asp:TextBox>
          &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="rec1_email" ErrorMessage="* Required Field"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator15" 
                runat="server" ControlToValidate="rec1_email" 
                ErrorMessage="Must be a valid email address." 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">*Use online recommendation form?</p></td>
<td width="50%" height="40">
    <asp:RadioButtonList ID="rec1_online" runat="server">
        <asp:ListItem Selected="True">Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
    </asp:RadioButtonList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="rec1_online" ErrorMessage="* Required Field"></asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u>Recommendation Provider 2</u></strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">*First Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec2_fname" runat="server"></asp:TextBox>
          &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="rec2_fname" ErrorMessage="* Required Field"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator16" 
                runat="server" ControlToValidate="rec2_fname" 
                ErrorMessage="The input should be 1~20 characters." 
                ValidationExpression="[A-Za-z]{1,20}$"></asp:RegularExpressionValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">*Last Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec2_lname" runat="server"></asp:TextBox>
          &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="rec2_lname" ErrorMessage="* Required Field"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator17" 
                runat="server" ErrorMessage="The input should be 1~20 characters." 
                ValidationExpression="[A-Za-z]{1,20}$" ControlToValidate="rec2_lname"></asp:RegularExpressionValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Organization/University</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec2_org" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Phone</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec2_phone" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Mailing Address</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec2_add" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">*Email</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec2_email" runat="server"></asp:TextBox>
          &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="rec2_email" ErrorMessage="* Required Field"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator18" 
                runat="server" ControlToValidate="rec2_email" 
                ErrorMessage="Must be a valid email address." 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">*Use online recommendation form?</p></td>
<td width="50%" height="40">
    <asp:RadioButtonList ID="rec2_online" runat="server">
        <asp:ListItem Selected="True">Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
    </asp:RadioButtonList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="rec2_online" ErrorMessage="* Required Field"></asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u>Recommendation Provider 3</u></strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">*First Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec3_fname" runat="server"></asp:TextBox>
          &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="rec3_fname" ErrorMessage="* Required Field"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator19" 
                runat="server" ControlToValidate="rec3_fname" 
                ErrorMessage="The input should be 1~20 characters." 
                ValidationExpression="[A-Za-z]{1,20}$"></asp:RegularExpressionValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">*Last Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec3_lname" runat="server"></asp:TextBox>
          &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="rec3_lname" ErrorMessage="* Required Field"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator20" 
                runat="server" ControlToValidate="rec3_lname" 
                ErrorMessage="The input should be 1~20 characters." 
                ValidationExpression="[A-Za-z]{1,20}$"></asp:RegularExpressionValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Organization/University</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec3_org" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Phone</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec3_phone" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Mailing Address</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec3_add" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">*Email</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="rec3_email" runat="server"></asp:TextBox>
          &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="rec3_email" ErrorMessage="* Required Field"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator21" 
                runat="server" ControlToValidate="rec3_email" 
                ErrorMessage="Must be a valid email address." 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">*Use online recommendation form?</p></td>
<td width="50%" height="40">
    <asp:RadioButtonList ID="rec3_online" runat="server">
        <asp:ListItem Selected="True">Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
    </asp:RadioButtonList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
        ControlToValidate="rec3_online" ErrorMessage="* Required Field"></asp:RequiredFieldValidator>
          </td>
      </tr>
        &nbsp;</td>
        </tr>
<tr>
        <td height="40" colspan="2"><div align="center">
            <asp:Button ID="previouspage" runat="server" Text="Previous Page" 
                onclick="previouspage_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="save" runat="server" Text="Save" onclick="save_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="submit" runat="server" Text="Submit" onclick="submit_Click" />
            </div></td>
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