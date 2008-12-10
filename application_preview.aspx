<%@ Page Language="C#" AutoEventWireup="true" CodeFile="application_preview.aspx.cs" Inherits="application_preview" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Application Preview</title>
<link href="generic.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .subtable
        {
            border-spacing: 1px;
        }
    </style>
</head>
<body class="oneColElsCtrHdr">

    <form id="form1" runat="server">

<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
  <div id="mainContent">
  <h1>Application Preview</h1>
  <p>Please view your application, and modify any incorrect information you find.</p>
  <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
  <tr>
  <td height="40" colspan="2"><strong>Program Information</strong></td>
  </tr>
  <tr>
  <td width="50%" align=right>College Name</td>
  <td width="50%" align=left>
      <asp:Label ID="collegename" runat="server"></asp:Label>
                    </td>
  </tr>
    <tr>
  <td width="50%" align=right>Campus</td>
  <td width="50%" align=left>
      <asp:Label ID="campus" runat="server"></asp:Label>
                    </td>
  </tr>
    <tr>
  <td width="50%" align=right>Graduate School</td>
  <td width="50%" align=left>
      <asp:Label ID="gradschool" runat="server"></asp:Label>
                    </td>
  </tr>
    <tr>
  <td width="50%" align=right>Program</td>
  <td width="50%" align=left><asp:Label ID="program" runat="server"></asp:Label></td>
  </tr>
    <tr>
  <td width="50%" align=right>Enrollment Objective</td>
  <td width="50%" align=left><asp:Label ID="enrollobj" runat="server"></asp:Label></td>
  </tr>
    <tr>
  <td width="50%" align=right>Entry Term</td>
  <td width="50%" align=left><asp:Label ID="entryterm" runat="server"></asp:Label></td>
  </tr>
    <tr>
  <td width="50%" align=right>Status</td>
  <td width="50%" align=left><asp:Label ID="fullorhalf" runat="server"></asp:Label></td>
  </tr>
    <tr>
  <td width="50%" align=right>Area of Interest</td>
  <td width="50%" align=left><asp:Label ID="area" runat="server"></asp:Label></td>
  </tr>
    <tr>
  <td width="50%" align=right>Faculty in Contact</td>
  <td width="50%" align=left><asp:Label ID="faculty" runat="server"></asp:Label></td>
  </tr>
    <tr>
  <td width="50%" align=right>Other Schools You Are Applying</td>
  <td width="50%" align=left><asp:Label ID="otherschool" runat="server"></asp:Label></td>
  </tr>
  </table><br /><img src="images/px1.jpg" height="1px" width="100%"/><br />
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
  <tr>
  <td height="40" colspan="2"><strong>Employment History</strong></td>
  </tr>
  <tr>
  <td width="50%" align=right>Employer Name</td>
  <td width="50%" align=left><asp:Label ID="emp1name" runat="server"></asp:Label></td>
  </tr>
    <tr>
  <td width="50%" align=right>Type of Industry</td>
  <td width="50%" align=left><asp:Label ID="type1" runat="server"></asp:Label></td>
  </tr>
    <tr>
  <td width="50%" align=right>Job Title</td>
  <td width="50%" align=left><asp:Label ID="title1" runat="server"></asp:Label></td>
  </tr>
    <tr>
  <td width="50%" align=right>City</td>
  <td width="50%" align=left><asp:Label ID="city1" runat="server"></asp:Label></td>
  </tr>
    <tr>
  <td width="50%" align=right>State</td>
  <td width="50%" align=left><asp:Label ID="state1" runat="server"></asp:Label></td>
  </tr>
    <tr>
  <td width="50%" align=right>Country</td>
  <td width="50%" align=left><asp:Label ID="country1" runat="server"></asp:Label></td>
  </tr>
    <tr>
  <td width="50%" align=right>Dates of Employment</td>
  <td width="50%" align=left><asp:Label ID="mmfrom1" runat="server"></asp:Label>/<asp:Label ID="yyfrom1" runat="server"></asp:Label> - <asp:Label ID="mmto1" runat="server"></asp:Label>/<asp:Label ID="yyto1" runat="server"></asp:Label></td>
  </tr>
    <tr>
  <td width="50%" align=right>Job Description</td>
  <td width="50%" align=left><asp:Label ID="describe1" runat="server"></asp:Label></td>
  </tr>
  </table><br /><img src="images/px1.jpg" height="1px" width="100%"/><br />
      <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
  <tr>
  <td height="40" colspan="2"><strong>Supplemental Documents</strong></td>
  </tr>
  <tr>
  <td width="50%" align=right>Statement of Purpose</td>
  <td width="50%" align=left>[View] [Delete]</td>
  </tr>
    <tr>
  <td width="50%" align=right>Resume</td>
  <td width="50%" align=left>[View] [Delete]</td>
  </tr>
    <tr>
  <td width="50%" align=right>Assistantship Intent</td>
  <td width="50%" align=left>
      <asp:Label ID="assistyesorno" runat="server"></asp:Label>
                    </td>
  </tr>
    <tr>
  <td width="50%" align=right>Preferred Type of Assignment</td>
  <td width="50%" align=left>
      <asp:Label ID="preferredtype" runat="server"></asp:Label>
                    </td>
  </tr>
    <tr>
  <td width="50%" align=right>Related Experience</td>
  <td width="50%" align=left>
      <asp:Label ID="assistexp" runat="server"></asp:Label>
                    </td>
  </tr>
    </table><br /><img src="images/px1.jpg" height="1px" width="100%"/><br />
          <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
  <tr>
  <td height="40" colspan="2"><strong>Recommendations</strong></td>
  </tr>
  <tr>
  <td width="50%" align=right><strong>Provider 1 Name</strong></td>
  <td width="50%" align=left><strong><asp:Label ID="rec1_fname" runat="server"></asp:Label>
      &nbsp;<asp:Label ID="rec1_lname" runat="server"></asp:Label>
      </strong></td>
  </tr>
    <tr>
  <td width="50%" align=right>Organization</td>
  <td width="50%" align=left>
      <asp:Label ID="rec1_org" runat="server"></asp:Label>
                    </td>
  </tr>
    <tr>
  <td width="50%" align=right>Phone</td>
  <td width="50%" align=left>
      <asp:Label ID="rec1_phone" runat="server"></asp:Label>
                    </td>
  </tr>
    <tr>
  <td width="50%" align=right>Mailing Address</td>
  <td width="50%" align=left>
      <asp:Label ID="rec1_add" runat="server"></asp:Label>
                    </td>
  </tr>
    <tr>
  <td width="50%" align=right>Email</td>
  <td width="50%" align=left>
      <asp:Label ID="rec1_email" runat="server"></asp:Label>
                    </td>
  </tr>
      <tr>
  <td width="50%" align=right>Online Recommendation</td>
  <td width="50%" align=left>
      <asp:Label ID="online1" runat="server"></asp:Label>
                    </td>
  </tr>
  <tr>
  <td width="50%" align=right><strong>Provider 2 Name</strong></td>
  <td width="50%" align=left><strong><asp:Label ID="rec2_fname" runat="server"></asp:Label>
      &nbsp;<asp:Label ID="rec2_lname" runat="server"></asp:Label>
      </strong></td>
  </tr>
    <tr>
  <td width="50%" align=right>Organization</td>
  <td width="50%" align=left>
      <asp:Label ID="rec2_org" runat="server"></asp:Label>
                    </td>
  </tr>
    <tr>
  <td width="50%" align=right>Phone</td>
  <td width="50%" align=left>
      <asp:Label ID="rec2_phone" runat="server"></asp:Label>
                    </td>
  </tr>
    <tr>
  <td width="50%" align=right>Mailing Address</td>
  <td width="50%" align=left>
      <asp:Label ID="rec2_add" runat="server"></asp:Label>
                    </td>
  </tr>
    <tr>
  <td width="50%" align=right>Email</td>
  <td width="50%" align=left>
      <asp:Label ID="rec2_email" runat="server" Text="zihao.yu@gmail.com"></asp:Label>
                    </td>
  </tr>
      <tr>
  <td width="50%" align=right>Online Recommendation</td>
  <td width="50%" align=left>
      <asp:Label ID="online2" runat="server"></asp:Label>
                    </td>
  </tr>  <tr>
  <td width="50%" align=right><strong>Provider 3 Name</strong></td>
  <td width="50%" align=left><strong><asp:Label ID="rec3_fname" runat="server"></asp:Label>
      &nbsp;<asp:Label ID="rec3_lname" runat="server"></asp:Label>
      </strong></td>
  </tr>
    <tr>
  <td width="50%" align=right>Organization</td>
  <td width="50%" align=left>
      <asp:Label ID="rec3_org" runat="server"></asp:Label>
                    </td>
  </tr>
    <tr>
  <td width="50%" align=right>Phone</td>
  <td width="50%" align=left>
      <asp:Label ID="rec3_phone" runat="server"></asp:Label>
                    </td>
  </tr>
    <tr>
  <td width="50%" align=right>Mailing Address</td>
  <td width="50%" align=left>
      <asp:Label ID="rec3_add" runat="server"></asp:Label>
                    </td>
  </tr>
    <tr>
  <td width="50%" align=right>Email</td>
  <td width="50%" align=left>
      <asp:Label ID="rec3_email" runat="server" Text="jt_tony_5@hotmail.com"></asp:Label>
                    </td>
  </tr>
      <tr>
  <td width="50%" align=right>Online Recommendation</td>
  <td width="50%" align=left>
      <asp:Label ID="online3" runat="server"></asp:Label>
                    </td>
  </tr>
  <tr>
  <td colspan="2" align="center">
      <asp:Button ID="Button1" runat="server" Text="Modify & Close Window" 
          onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" />
      </td></tr>
    </table>
    <p></p>
  <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="default.aspx">Home</a> | Information | Apply | Status | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
  <!-- end #footer --></div>
<!-- end #container --></div>
    </form>
</body>
</html>
