<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Look Up Your Password</title>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">

<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
  <div id="mainContent">
<h1>Look up your password</h1>
<p>Fill the form below. Your username and password will be sent to you immediately.</p>
<p>Question: [Field for question from database]</p>
<form action=""><p>Answer:
  <label>
  <input type="text" name="lookupanswer" id="lookupanswer" />
  </label>
</p>

  <p>Email:<label>
 
  <input name="email" type="text" id="email" size="50"/>
  </label>
  <label>
  <input type="submit" name="submit" id="submit" value="Submit" />
  </label>
</form></p>
  <!-- end #mainContent -->
</div>
  <div id="footer">
<p align="center"><span class="smallnote"><a href="default.aspx">Home</a> | Apply | Check Status | Admission | Site Map | Help</span></p>
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
