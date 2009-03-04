<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usercreate1.aspx.cs" Inherits="usercreate1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Create New Username</title>

<script runat="server">

</script>

<script language="javascript" type="text/javascript">
// <!CDATA[

        function otherfirstname_onclick() {

        }

// ]]>
    </script>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">

<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
  <div id="mainContent">
            <form id="form1" runat="server">
  <h1>New User Registration</h1>
  <p>Fields with * are required to fill. More information will be asked in the following steps. </p>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
        <tr>
        <td width="50%" height="40"><p align="right">* Username</p>        </td>
        <td width="50%" height="40"><label>
        &nbsp;</label><asp:TextBox ID="TextBox1" runat="server" 
                ValidationGroup="textboxes"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" 
                ValidationGroup="textboxes" ErrorMessage="Required Field."></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                
                ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z_@]*$)(?!^[0-9_@]{1})^([a-zA-Z0-9_@]{8,15})$" 
                ValidationGroup="textboxes" ControlToValidate="TextBox1" 
                ErrorMessage="Alphanumeric, 8-15 characters long. Must start with a letter."></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            </td>
      </tr>
        <tr>
        <td width="50%" height="40"><p align="right">* Email</pEmail></p>        </td>
        <td width="50%" height="40"><label>&nbsp;</label><asp:TextBox ID="TextBox2" 
                runat="server" ValidationGroup="textboxes"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" 
                ValidationGroup="textboxes" ErrorMessage="Required Field."></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox2" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="textboxes" ErrorMessage="Must be a valid email address."></asp:RegularExpressionValidator>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Password
        <td width="50%" height="40"><label>&nbsp;</label><asp:TextBox ID="TextBox3" 
                runat="server" ValidationGroup="textboxes" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" 
                ValidationGroup="textboxes" ErrorMessage="Required Field."></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="TextBox3" 
                
                
                
                ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z_@]*$)(?!^[0-9_@]{1})^([a-zA-Z0-9_@]{8,15})$" 
                ValidationGroup="textboxes" 
                ErrorMessage="Alphanumeric, 8-15 characters long. Must start with a letter and contain at least one number."></asp:RegularExpressionValidator>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Verify Password</p>          </td>
        <td width="50%" height="40"><label>&nbsp;</label><asp:TextBox ID="TextBox4" 
                runat="server" ValidationGroup="textboxes" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" 
                ValidationGroup="textboxes" ErrorMessage="Required Field."></asp:RequiredFieldValidator>
            <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                ValidationGroup="textboxes" ErrorMessage="Passwords must match."></asp:CompareValidator>
                    </td>
      </tr>
            <tr>
        <td width="50%" height="40"><p align="right">&nbsp;* Question For Password Lookup<td width="50%" height="40"><label>&nbsp;</label><asp:TextBox 
                    ID="TextBox5" runat="server" ValidationGroup="textboxes"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" 
                    ValidationGroup="textboxes" ErrorMessage="Required Field."></asp:RequiredFieldValidator>
                    </td>
      </tr>
            <tr>
        <td width="50%" height="40"><p align="right">* Answer to Above Question<td width="50%" height="40"><label>&nbsp;</label><asp:TextBox 
                    ID="TextBox6" runat="server" ValidationGroup="textboxes"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" 
                    ValidationGroup="textboxes" ErrorMessage="Required Field."></asp:RequiredFieldValidator>
                    </td>
      </tr>
      <tr>
        <td height="40"><div align="right">
          <label>&nbsp;</label><asp:Button ID="Button1" runat="server" Text="Clear" 
                CausesValidation="False" onclick="ClearInputForm" />
        </div></td>
        <td height="40">
            <asp:Button ID="Button2" runat="server" Text="Create" 
                ValidationGroup="textboxes" onclick="CreateNewUser" />
                    </td>
      </tr>
    </table>
        </form>
        </p></div>
  <div id="footer">
<p align="center"><a href="myaccount.aspx">Home</a> | <a href="uinfo.aspx">Information</a> | <a href="userapplication.aspx">Apply</a> | <a href="myaccount.aspx">Status</a> | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
    <script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-5821511-1")