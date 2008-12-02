<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myaccount.aspx.cs" Inherits="myaccount" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>My Account</title>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">

    <form id="form1" runat="server">

<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
  <div id="mainContent">
  <h1>Account Information</h1>
  <p>Hi,
      <asp:LoginName ID="username" runat="server" />, below is a summary of your 
      account.
            </p>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr><td align=right width="50%"></td>
      <td align=right width="50%">
          <asp:Button ID="logoff" runat="server" Text="Log Off" onclick="logoff_Click" />
          </td></tr><tr>
        <td width="50%" height="40"><strong><u>Personal Profile</u></strong><br /><i>You can 
            view your personal information here, and modify your profile, like your home 
            address, phone number, and email address.</i></td>
        <td width="50%" height="40">
                        [<a href=register_1.aspx>Change</a>]</td>
      </tr>
      <tr>
        <td width="50%" height="40"><strong><u>University Information</u></strong><br /><i>You can look up information pertaining to ranking, universities, programs, 
            faculty, and academic areas through the link on the right.</i></td>
        <td width="50%" height="40">[<a href="uinfo.aspx">Look Up</a>]</td>
      </tr>
      <tr>
        <td width="50%" height="40"><strong><u>Applications</u></strong></td>
        <td width="50%" height="40">[<a href=userapplication.aspx>Start A New Application</a>]</td>
      </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
      <td width="25%" align=center><u>Application ID</u></td>
      <td width="25%" align=center><u>Start Time</u></td>
      <td width="25%" align=center><u>Submission Time</u></td>
      <td width="25%" align=center><u>Status</u></td>
      </tr>
      <tr>
      <td width="25%" align=center valign=top>
          <asp:Label ID="appid" runat="server" Text=""></asp:Label>
          <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
              DataSourceID="SqlDataSource4" ShowHeader=false BorderStyle=None>
              <Columns>
                  <asp:BoundField DataField="app_id" HeaderText="app_id" 
                      SortExpression="app_id" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ruapplyConnectionString %>" 
              SelectCommand="SELECT [app_id] FROM [app_status]"></asp:SqlDataSource>
          </td>
      <td width="25%" align=center valign=top>
          <asp:Label ID="tstart" runat="server" Text=""></asp:Label>
          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
              DataSourceID="SqlDataSource1" ShowHeader=false BorderStyle="None">
              <Columns>
                  <asp:BoundField DataField="tstart" HeaderText="tstart" 
                      SortExpression="tstart" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ruapplyConnectionString %>" 
              SelectCommand="SELECT [tstart] FROM [app_status]"></asp:SqlDataSource>
          </td>
      <td width="25%" align=center valign=top>
          <asp:Label ID="tsubmit" runat="server" Text=""></asp:Label>
          <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
              DataSourceID="SqlDataSource2" ShowHeader=false BorderStyle="none">
              <Columns>
                  <asp:BoundField DataField="tsubmit" HeaderText="tsubmit" 
                      SortExpression="tsubmit" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ruapplyConnectionString %>" 
              SelectCommand="SELECT [tsubmit] FROM [app_status]"></asp:SqlDataSource>
          </td>
      <td width="25%" align=center valign=top>
          <asp:Label ID="status" runat="server" Text=""></asp:Label>
          <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
              DataSourceID="SqlDataSource3" ShowHeader=false BorderStyle="none">
              <Columns>
                  <asp:BoundField DataField="status" HeaderText="status" 
                      SortExpression="status" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ruapplyConnectionString %>" 
              SelectCommand="SELECT [status] FROM [app_status]"></asp:SqlDataSource>
          </td>
      </tr></table>
    <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><span class="smallnote"><a href="default.aspx">Home</a> | <a href="uinfo.aspx">Information</a> | Apply | Status | Admission | Site Map | 
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

    </form>

</body>
</html>
