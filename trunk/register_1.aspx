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
<title>New User Registration - Step 1</title>
<style type="text/css">
<!--
.othername {
	color: #990000;
}
.othernametitle {
	color: #990000;
	font-weight: bold;
}
#felonyexplain {
	width: 300px;
	height: 97px;
}
-->
</style>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">

<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
  <div id="mainContent">
  <h1>Biographical Information</h1>
  <p>Fields with * are required to fill.</p>
  <form action="">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td height="40" colspan="2"><strong><u>Full Legal Name</u></strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Title</p></td>
        <td width="50%" height="40"><label>
          <select name="title" id="title">
          </select>
        </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* First Name</p></td>
        <td width="50%" height="40"><label>
          <input type="text" name="firstname" id="firstname" />
        </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Middle Name</p></td>
        <td width="50%" height="40"><label>
          <input type="text" name="midname" id="midname" />
        </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Last Name</p></td>
        <td width="50%" height="40"><label>
          <input type="text" name="lastname" id="lastname" />
        </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Suffix</p></td>
        <td width="50%" height="40"><label>
          <input name="suffix" type="text" id="suffix" size="4" maxlength="4" />
        </label></td>
      </tr>
      <tr>
        <td height="40" colspan="2"><p class="othernametitle"><u>Other Full Name You May 
            Have Used on Prior Academic Records</u></p></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right" class="othername">First Name<br />
        </p></td>
        <td width="50%" height="40"><label>
          <input type="text" name="otherfirstname" id="otherfirstname" onclick="return otherfirstname_onclick()" />
        </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><div align="right" class="othername">Middle Name<br />
        </div></td>
        <td width="50%" height="40"><label>
          <input type="text" name="othermidname" id="othermidname" />
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right" class="othername">Last Name</div></td>
        <td height="40"><label>
          <input type="text" name="otherlastname" id="otherlastname" />
        </label></td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u>Other Biographical Information</u></strong></td>
      </tr>
      <tr>
        <td height="40"><p align="right">* Gender</p></td>
        <td height="40"><label>
          <select name="gender" id="gender">
          </select>
        </label></td>
      </tr>
      <tr>
        <td height="40"><p align="right">U.S. Social Security  Number<br />
        </p></td>
        <td height="40"><label>
          <input name="ssn1" type="text" id="ssn1" size="3" maxlength="3" />
          -
          <input name="ssn2" type="text" id="ssn2" size="2" maxlength="2" />
          -
          <input name="ssn3" type="text" id="ssn3" size="4" maxlength="4" />
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Birth Date  (MM/DD/YYYY)<br />
        </div></td>
        <td height="40"><label>
          <input name="dob1" type="text" id="dob1" size="2" />
          /
          <input name="dob2" type="text" id="dob2" size="2" maxlength="2" />
          /
          <input name="dob3" type="text" id="dob3" size="4" maxlength="4" />
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Country of Birth<br />
        </div></td>
        <td height="40"><label>
          <select name="countryofbirth" id="countryofbirth">
          </select>
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Citizenship<br />
        </div></td>
        <td height="40"><label>
          <select name="citizenship" id="citizenship">
          </select>
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">
            <div align="right">Ethnic Background (Optional)&nbsp;</div>
        </div></td><td height="40"><label>
        <select name="ethnic" id="ethnic">
        </select>
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">Have You Ever Been  Convicted of A Felony? </div></td>
        <td height="40"><label>
          <input type="radio" name="radio" id="felonyyes" value="felonyyes" />
        Yes
        <input type="radio" name="radio" id="felonyno" value="felonyno" />
        No</label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">If yes, please explain.*<br />
        </div></td>
        <td rowspan="3"><label>
          <textarea name="felonyexplain" id="felonyexplain" width="300px" height="98px"></textarea>
        </label></td>
      </tr>
      <tr>
        <td height="40">&nbsp;</td>
        </tr>
      <tr>
        <td height="40">&nbsp;</td>
        </tr>&nbsp;</td>
        </tr>
      <tr>
        <td height="40" colspan="2"><div align="center">
          &nbsp;Save&nbsp;&nbsp;&nbsp;&nbsp; <a href="register_2.aspx">Next Page</a></div></td>
        </tr>
    </table>
  </form></p>
    <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><span class="smallnote"><a href="default.aspx">Homes</a> | Admission | Site Map | Help</span></p>
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-5821511-1";
urchinTracker();
</script>
  <!-- end #footer --></div>
<!-- end #container --></div>
</body>
</html>
