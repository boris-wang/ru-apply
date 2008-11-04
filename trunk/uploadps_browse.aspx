<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Uploadps_browse</title>
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
    <table width="100%"><tr><td align="center"><img src="images/application3-3.png" /></td></tr></table>
  <h1>Supplemental Section</h1>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF" id="uploaddoc">
      <tr>
        <td width="50%" height="40" colspan="2"><strong><u>Statement of 
            Purpose</u></strong><br /><br /><i>Please click the &quot;Browse...&quot; 
            button below to choose the file you want to upload. If your upload is successful, you will see a &quot;View Document&quot; 
            button and a &quot;Delete&quot; button appear next to the question.</i></td>
      </tr>
      <tr>
        <td height="40" colspan="2">
            <asp:FileUpload ID="psUpload" runat="server" />
          </td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u>Resume</u></strong><br /><br />To upload a 
            document in response to this question, please click the &quot;Upload&quot; button below. 
            If your upload is successful, you will see a &quot;View Document&quot; button and a 
            &quot;Delete&quot; button appear next to the question.</i></td>
      </tr>
      <tr>
        <td height="40" colspan="2">
            <asp:Button ID="uploadResume" runat="server" style="text-align: center" 
                Text="Upload Resume" />
          </td>
      </tr>
      <tr>
        <td height="40" ><strong><u>Assistantship</u></strong></td></tr><tr><td>
        Do you wish to be considered for an 
            assistantship?</td>
        <td width="50%" height="40"><label>
          <input type="radio" name="radio" id="persamecurryes" value="persamecurryes" />
        </label>
          Yes 
          <label>
          <input type="radio" name="radio" id="persamecurrno" value="persamecurrno" />
          </label>
          No</td>
      </tr>
      </tr>
      <tr>
        <td height="40">Please specifiy your preferred type of assignment.</td>
        <td>
            &nbsp;</td>
      </tr>
      <tr>
        <td width="50%" height="40">Indicate any 
            work or school experiences you have had that should be taken into consideration 
            for granting you an assistantship.<br />(300 characters maximun)
          </td>
        <td width="50%" height="40">
            <label>
            <textarea name="explainforscholarship" id="explainforscholarship"></textarea></label></td>
      </tr>
        &nbsp;</td>
        </tr>
<tr>
        <td height="40" colspan="2"><div align="center">
            <a href="Application2.aspx">Previous Page</a>&nbsp;&nbsp;&nbsp;&nbsp; Save&nbsp;&nbsp;&nbsp;&nbsp; <a href=recommendation.aspx>Next Page</a></div></td>
        </tr>
    </table>
  <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="default.aspx">Home</a> | Information | Apply | Status | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
  <!-- end #footer --></div>
<!-- end #container --></div></form>
</body>
</html>