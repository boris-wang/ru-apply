<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="defaultclass" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>RU-Apply, The World's NO.1 Application System</title>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">

<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="240"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td>
      <td width="476" valign="bottom">
</td>
    </tr></table>
  </div>
  <div id="mainContent">
<h1>Your Future, Starts Here.</h1>
      <p align=center>
          <form id="form1" runat="server">
            <table style="width:100%;">
                <tr>
                    <td width="50%" align="right">
                        Username:</td>
                    <td width="50%" align="left">
                        <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="userandpass" width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Required." 
                            ValidationGroup="userandpass"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td width="50%" align="right">
                        Password:</td>
                    <td width="50%" align="left">
                        <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="userandpass" 
                            TextMode="Password" width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Required." 
                            ValidationGroup="userandpass"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <br />
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                            ValidationGroup="userandpass" />
                    </td>
                </tr>
            </table>
            </form>
      </p>
      <p align=center>
          <table cellpadding="0" cellspacing="0" width="100%">
              <tr>
                  <td align="right" width="50%"><img src="images/icon_tip.gif" align="absmiddle">
          <a href="forgotpassword.aspx"> I lost password.</a></td>
                <td align="left" width="50%"><img src="images/icon_invite.gif" align="absmiddle">
          <a href="usercreate.aspx"> I am a new user.</a></td>
            </tr>
              <tr>
               <td align="center" width="100%" colspan="2"><img src="images/40.png"></td>
            </tr>
              <tr>
               <td align="center" width="100%" colspan="2"><a href="univinfo.aspx">View University Information</a></td>
            </tr>
          </table>
      </p>
      
    <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="myaccount.aspx">Home</a> | <a href="uinfo.aspx">Information</a> | <a href="userapplication.aspx">Apply</a> | <a href="myaccount.aspx">Status</a> | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a><br />
        RU-Apply is a web application system based on ASP.NET technology.</p>
    <script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-5821511-1");
pageTracker._trackPageview();
</script>
  <!-- end #footer --></div>
<!-- end #container --></div>
    </form>
</body>
</html>
