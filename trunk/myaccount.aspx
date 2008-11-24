<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>My Account</title>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">

<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
  <div id="mainContent">
  <h1>Account Information</h1>
  <p>Hi,
      <asp:LoginName ID="username" runat="server" />, below is a summary of your account.</p>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td width="50%" height="40"><strong><u>Personal Profile</u></strong><br /><i>You can 
            view your personal information here, and modify your profile, like your home 
            address, phone number, and email address.</i></td>
        <td width="50%" height="40">[View]<br />
                        [<a href=register_1.aspx>Change</a>]</td>
      </tr>
      <tr>
        <td width="50%" height="40"><strong><u>University Information</u></strong><br /><i>You can look up information pertaining to ranking, universities, programs, 
            faculty, and academic areas through the link on the right.</i></td>
        <td width="50%" height="40">[Look Up]</td>
      </tr>
      <tr>
        <td width="50%" height="40"><strong><u>Applications</u></strong></td>
        <td width="50%" height="40">[<a href=application1.aspx>Start A New Application</a>]</td>
      </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
      <td width="25%" align=center><u>University</u></td>
      <td width="25%" align=center><u>Start Time</u></td>
      <td width="25%" align=center><u>Submission Time</u></td>
      <td width="25%" align=center><u>Status</u></td>
      </tr>
      <tr>
      <td width="25%" align=center>[Name]</td>
      <td width="25%" align=center>[Start Time]</td>
      <td width="25%" align=center>[If in progress, a link named &quot;Resume Application&quot; 
          should be here]</td>
      <td width="25%" align=center>[In Progress]<br />
          [Academic Review]<br />
          [Incomplete Material]<br />
          [Result Available]</td>
      </tr></table>
    <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><span class="smallnote"><a href="default.aspx">Home</a> | Information | Apply | Status | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></span></p>
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

</body>
</html>
