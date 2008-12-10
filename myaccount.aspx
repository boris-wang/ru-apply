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
  <p>Hi, <asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;(RUID:
          <asp:Label ID="Label2" runat="server" Text=""></asp:Label>), below is a summary of your account.</p>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr><td align=left width="50%">
          <asp:Label ID="srcpg" runat="server" BackColor="#FFCCFF"></asp:Label>
          </td>
      <td align=right width="50%">
          <asp:Button ID="logoff" runat="server" Text="Log Off" onclick="logoff_Click" />
          </td></tr><tr>
        <td width="50%" height="40"><strong><u>Personal Profile</u></strong><br /><i>You can 
            view your personal information here, and modify your profile, like your home 
            address, phone number, and email address.</i></td>
        <td width="50%" height="40">
                        <a href="register_1.aspx">Change</a></td>
      </tr>
      <tr>
        <td width="50%" height="40"><strong><u>University Information</u></strong><br /><i>
            You can look up information pertaining to ranking, universities, programs, 
            faculty, and academic areas through the link on the right.</i></td>
        <td width="50%" height="40"><a href="uinfo.aspx" target="_blank">Look Up</a></td>
      </tr>
      <tr>
        <td width="50%" height="40"><strong><u>Applications</u></strong></td>
        <td width="50%" height="40">
            <asp:Button ID="startnew" runat="server" Text="Start New Application" 
                onclick="startnew_Click" />
                    </td>
      </tr>
      </table>
      <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr><td>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataSourceID="SqlDataSource1" Width="100%" CellPadding="4" 
              ForeColor="#333333" GridLines="None">
              <RowStyle BackColor="#FFFBD6" ForeColor="#333333" HorizontalAlign="Center" />
              <Columns>
                  <asp:BoundField DataField="app_id" HeaderText="Application ID" 
                      SortExpression="app_id"  />
                  <asp:BoundField DataField="college_name" HeaderText="University" 
                      SortExpression="college_name" />
                  <asp:BoundField DataField="college_program" HeaderText="Program" 
                        SortExpression="college_program" />
                  <asp:BoundField DataField="app_status" HeaderText="Status" 
                      SortExpression="app_status" />
              </Columns>
              <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
              <HeaderStyle BackColor="#ffb3b3" Font-Bold="True" ForeColor="Black" HorizontalAlign="Center" />
              <EditRowStyle HorizontalAlign="Center" />
              <AlternatingRowStyle BackColor="White" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="Data Source = localhost; Initial Catalog = RUapply; user id=ruapply;password=ruapply" 
 
              SelectCommand="SELECT [app_id], [college_name], [college_program], [app_status] FROM [application] WHERE ([ruid] = @ruid)">
              <SelectParameters>
                  <asp:SessionParameter Name="ruid" SessionField="ruid" Type="Int32" />
              </SelectParameters>
          </asp:SqlDataSource>
            </td></tr></table>
      
      <!--<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
      <td width="33%" align=center><u>Application ID</u></td>
      <td width="34%" align=center><u>University Name</u></td>
      <td width="33%" align=center><u>Status</u></td>
      </tr>
      <tr>
      <td width="33%" align=center valign=top>
      </td>
      <td width="34%" align=center valign=top>
      </td>
      <td width="33%" align=center valign=top>
      </td>
      </tr></table>-->
    <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="myaccount.aspx">Home</a> | <a href="uinfo.aspx">Information</a> | <a href="userapplication.aspx">Apply</a> | <a href="myaccount.aspx">Status</a> | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
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
