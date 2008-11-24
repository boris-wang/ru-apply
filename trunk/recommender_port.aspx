<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recommender_port.aspx.cs" Inherits="recommender_port" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admission Recommendation</title>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">

<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
  <div id="mainContent">
  <h1>Admission Recommendation</h1>
  <p><asp:Label ID="rec_fname" runat="server"></asp:Label>&nbsp;<asp:Label ID="rec_lname" runat="server"></asp:Label>
      , applicants below are requesting you to provide recommendation.</p>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
      <td width="33%" align=center><u>Applicant</u></td>
      <td width="34%" align=center><u>University Applying For</u></td>
      <td width="33%" align=center><u>Status</u></td>
      </tr>
      <tr>
      <td width="33%" align=center>[Name]</td>
      <td width="34%" align=center>[University Name]</td>
      <td width="33%" align=center>[Start]<br />
          [Resume]<br />
          [Completed]</td>
      </tr></table>
            <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="default.aspx">Home</a> | Information | Apply | Status | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
  <!-- end #footer --></div>
<!-- end #container --></div>
</body>
</html>