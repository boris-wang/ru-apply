<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recommenderform.aspx.cs" Inherits="recommenderform" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Recommendation Form</title>
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
  <h1>Recommendation For Applicant
      <asp:Label ID="app_fname" runat="server"></asp:Label>
&nbsp;<asp:Label ID="app_lname" runat="server"></asp:Label>
            </h1>
  <p>Please fill out all the questions below.</p>
  <table width="100%"><tr><td><strong>At what level would you place the applicant among the 
      students you have known?</strong></td></tr>
      <tr><td>
          <asp:RadioButtonList ID="applicantposition" runat="server">
        <asp:ListItem>Top 5%</asp:ListItem>
        <asp:ListItem>Top 10%</asp:ListItem>
        <asp:ListItem>Top 15%</asp:ListItem>
        <asp:ListItem>Top Quarter</asp:ListItem>
        <asp:ListItem>Second Quater</asp:ListItem>
         <asp:ListItem>Bottom Half</asp:ListItem>
    </asp:RadioButtonList></td>
      </tr>
      <tr><td><strong>Your letter will be most helpful in distinguishing this applicant from others if your remarks go beyond general endorsement to
comment specifically on academic performance and potential for rigorous advanced degree work. Please focus on originality,
motivation, written and verbal comprehension and expression, and judgment. Indicate how long and in what capacity you have
known the applicant.</strong></td></tr>
<tr><td><strong>Is there any reason we should hesitate to admit this student? If so, please 
    also explain.</strong></td></tr>
<tr><td>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Upload the recommendation letter" />
    <br />
    <asp:Label ID="Label1" runat="server" 
        Text="Please upload your recommendation letter here."></asp:Label>
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" Visible="False" />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Confirm" 
        Visible="False" />
    <br />
    <br />
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        Text="Delete the Uploaded File" Visible="False" />
    <br />
    <br />
    </td>
</tr>
      </table>
  <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="default.aspx">Home</a> | Information | Apply | Status | 
    Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
  <!-- end #footer --></div>
<!-- end #container --></div>
    </form>
</body>
</html>