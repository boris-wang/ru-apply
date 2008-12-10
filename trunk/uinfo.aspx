<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uinfo.aspx.cs" Inherits="uinfoclass" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>University Information</title>
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
  <h1>University Information</h1>
  <p>Select one option to begin.</p>
  <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
  <tr>
  <td>
      <strong>Overall Ranking</strong><br />To look up overall ranking based on 
      reputation, please click the button below.</td></tr>
  <tr>
  <td>
      <asp:Button ID="overall" runat="server" Text="Overall Ranking" 
          onclick="overall_Click" />
  </td></tr>
  <tr>
  <td>
     <strong>Program Ranking</strong><br />To look up a ranking based on individual program, please click the button below.
  </td></tr>
  <tr>
  <td>
      <asp:Button ID="dept" runat="server" Text="Departmental Ranking" 
          onclick="dept_Click" />
  </td></tr>
  <tr>
  <td>
      <asp:DropDownList ID="deptlist" runat="server" Visible="False">
                      <asp:ListItem Value="0" Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem Value="1">Business</asp:ListItem>
                <asp:ListItem Value="2">Law</asp:ListItem>
                <asp:ListItem Value="3">Medical</asp:ListItem>
                <asp:ListItem Value="4">Engineering</asp:ListItem>
                <asp:ListItem Value="5">Education</asp:ListItem>
                <asp:ListItem Value="6">The Sciences</asp:ListItem>
                <asp:ListItem Value="7">Library & Information Studies</asp:ListItem>
                <asp:ListItem Value="8">Social Sciences & Humanities</asp:ListItem>
                <asp:ListItem Value="9">Health</asp:ListItem>
                <asp:ListItem Value="10">Public Affairs</asp:ListItem>
                <asp:ListItem Value="11">Fine Arts</asp:ListItem>
      </asp:DropDownList>
  &nbsp;<asp:Button ID="deptsubmit" runat="server" Text="Submit"  Visible="False" 
          onclick="deptsubmit_Click"/><br /><asp:Label ID="pdflabel" runat="server" Text="Or you can download a full PDF version." Visible=false></asp:Label>
      <asp:Button ID="PDFbtn" runat="server" Text="Click Here" Visible=false 
          onclick="PDFbtn_Click"/>
  </td></tr>
  <tr>
  <td>
      <strong>Prerequisite Information</strong><br /></td></tr>
  <tr>
  <td>
      <asp:Button ID="prereq" runat="server" Text="Prerequisite Information" 
          onclick="prereq_Click" />
      </td></tr>
  <tr>
  <td>
      <asp:DropDownList ID="prereqlist" runat="server" Visible="false">
            <asp:ListItem Value="0" Selected=True>Select One ...</asp:ListItem>
                <asp:ListItem Value="1">Rutgers University</asp:ListItem>
                <asp:ListItem Value="2">Princeton University</asp:ListItem>
                </asp:DropDownList>
 
                <asp:Button ID="prereqsubmit" runat="server" Text="Submit" 
          Visible="false" onclick="prereqsubmit_Click"/>
      </td></tr>
  <tr>
  <td>
      <strong>Academic Information</strong><br />To look up information regarding professors and academic areas, please click the button below.</td></tr>
  <tr>
  <td>
      <asp:Button ID="acainfo" runat="server" Text="Academic Information" 
          onclick="acainfo_Click" />
      </td></tr>
  <tr>
  <td>
      <asp:DropDownList ID="acaschool" runat="server" Visible="false">
                  <asp:ListItem Value="0" Selected=True>Select One ...</asp:ListItem>
                <asp:ListItem Value="1">Rutgers University</asp:ListItem>
                <asp:ListItem Value="2">Princeton University</asp:ListItem>
      </asp:DropDownList>
      <asp:DropDownList ID="acadept" runat="server" Visible="false">
                  <asp:ListItem Value="0" Selected=True>Select One ...</asp:ListItem>
                <asp:ListItem Value="1">Electrical and Computer Engineering</asp:ListItem>
                <asp:ListItem Value="2">Computer Science</asp:ListItem>
      </asp:DropDownList>
      &nbsp;<asp:Button ID="acasubmit" runat="server" Text="Submit" Visible="false" 
          onclick="acasubmit_Click"/>
      </td></tr></table>
  <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="myaccount.aspx">Home</a> | <a href="uinfo.aspx">Information</a> | <a href="userapplication.aspx">Apply</a> | <a href="myaccount.aspx">Status</a> | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
  <!-- end #footer --></div>
<!-- end #container --></div>
    </form>
</body>
</html>