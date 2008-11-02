<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>RU-Apply, The World's NO.1 Application System</title>
<style type="text/css">
<!--
body {
	font: 100% Verdana, Arial, Helvetica, sans-serif;
	background: #666666;
	margin: 0; 
	padding: 0;
	text-align: center; 
	color: #000000;
}
.oneColElsCtrHdr #container {
	width: 46em; 
	background: #FFFFFF;
	margin: 0 auto; 
	border: 1px solid #000000;
	text-align: left;
}
.oneColElsCtrHdr #header { 
	background: #D21033; 
	padding: 10px; 
} 
.oneColElsCtrHdr #header h1 {
	margin: 0; 
	padding: 10px 0;
}
.oneColElsCtrHdr #mainContent {
	padding: 0 20px;
	background: #FFFFFF;
}
.oneColElsCtrHdr #mainContent h1{
font-size:20px;}
.oneColElsCtrHdr #mainContent p{
font-size:12px;}
.oneColElsCtrHdr #mainContent td{
font-size:12px;}
td {
	margin-top: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
	margin-left: 5px;
	padding-top: 10px;
	padding-right: 20px;
	padding-bottom: 10px;
	padding-left: 20px;
}
.oneColElsCtrHdr #footer { 
	padding: 0 10px; 
	background:#D21033;
	font-size: 9px;
} 
.oneColElsCtrHdr #footer p {
	margin: 0; 
	padding: 10px 0;
}
}
td a:link{	
	font-size:12px;
	color:#000000;
	text-decoration:none;
	}
	
td a:visited{
	font-size:12px;
	color:#000000;
	text-decoration:none;
}
td a:hover{
	font-size:12px;
	color:#D21033;
	text-decoration:underline;
}
td a:active{
	font-size:12px;
	color:#D21033;
	text-decoration:none;
}
.smallnote {	font-size: 9px;
	color: #000000;
	padding:10px;
}
.oneColElsCtrHdr #footer a:link{
	font-size:9px;
	color:#000000;
	text-decoration:none;
}

.oneColElsCtrHdr #footer a:visited{
	font-size:9px;
	color:#000000;
	text-decoration:none;
}
.oneColElsCtrHdr #footer a:hover{
	font-size:9px;
	color:#FFFFFF;
	text-decoration:underline;
}
.oneColElsCtrHdr #footer a:active{
	font-size:9px;
	color:#FFFFFF;
	text-decoration:underline;
}
</style>
</head>
<body class="oneColElsCtrHdr">

    <form id="form1" runat="server">

<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="240"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td>
      <td width="476" valign="bottom"><form action="http://www.google.com/cse" id="cse-search-box">
  <div>
    <input type="hidden" name="cx" value="012962627509922295016:w8dqnowdvsw" />
    <input type="hidden" name="ie" value="UTF-8" />
    <input type="text" name="q" size="31" />
    <input type="submit" name="sa" value="Search" /></div>
</form>
<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&lang=en"></script>
</td>
    </tr></table>
  </div>
  <div id="mainContent">
<h1>Your Future, Starts Here.</h1>
      <p align=center><div align="center">
          <asp:Login ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" 
              BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
              Font-Size="0.8em" ForeColor="#333333" DisplayRememberMe="False" 
              LoginButtonText="Login" style="text-align: center" 
              UserNameLabelText="Username:" TitleText="Experience the Convenience">
              <TextBoxStyle Font-Size="0.8em" />
              <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
                  BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
              <InstructionTextStyle Font-Italic="True" ForeColor="Black" Wrap="True" />
              <TitleTextStyle BackColor="#D21033" Font-Bold="True" Font-Size="0.9em" 
                  ForeColor="White" />
          </asp:Login></div>
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
<p align="center"><a href="default.aspx">Home</a> | Apply | Check Status | Admission | Site Map | 
<a href="about.aspx">About</a>| <a href="help.aspx">Help</a><br />
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
