<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>New User Registration - Step 2</title>

<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">

<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
  <div id="mainContent">
  <h1>Contact Information</h1>
  <p>Fields with * are required to fill.</p>
  <form action="">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td height="40" colspan="2"><strong><u>Current Mailing Address</u></strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Valid Through (MM/YYYY)<br />
        </p>        </td>
        <td width="50%" height="40"><label>
          <input name="validmm" type="text" id="validmm" size="2" maxlength="2" />
        </label>
          /
          <label>
          <input name="validyyyy" type="text" id="validyyyy" size="4" maxlength="4" />
          </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Country<br />
        </p></td>
        <td width="50%" height="40"><label>
          <select name="currmailcountry" id="currmailcountry">
          </select>
        </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Street Address (Line 1)<br />
        </p></td>
        <td width="50%" height="40"><label>
          <input type="text" name="currmailadd1" id="currmailadd1" />
        </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Street Address (Line 2)<br />
        </p></td>
        <td width="50%" height="40"><label>
          <input type="text" name="currmailadd2" id="currmailadd2" />
        </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">City<br />
        </p></td>
        <td width="50%" height="40"><label>
          <input type="text" name="currmailcity" id="currmailcity" />
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">State/Province<br />
        </div></td>
        <td height="40"><label>
          <select name="currmailstate" id="currmailstate">
          </select>
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">Foreign State/Province</div></td>
        <td height="40"><label>
          <input type="text" name="currmailprovince" id="currmailprovince" />
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">Zip/Postal Code</div></td>
        <td height="40"><label>
          <input type="text" name="currzip" id="currzip" />
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">Telephone Number</div></td>
        <td height="40"><label>
          <input type="text" name="currmailphone" id="currmailphone" />
        </label></td>
      </tr>
      <tr>
        <td height="40" colspan="2"><u><strong>Permanent Address</strong></u></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Same as Present Mailing Address?<br />
        </p>          </td>
        <td width="50%" height="40"><label>
          <input type="radio" name="radio" id="persamecurryes" value="persamecurryes" />
        </label>
          Yes 
          <label>
          <input type="radio" name="radio" id="persamecurrno" value="persamecurrno" />
          </label>
          No</td>
      </tr>
      <tr>
        <td width="50%" height="40"><div align="right" class="STYLE2">
          <p>Country<br />
        </p>
          </div></td>
        <td width="50%" height="40"><label>
          <select name="percountry" id="percountry">
          </select>
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right" class="STYLE2">
          <p>Street Address (Line 1)<br />
          </p>
        </div></td>
        <td height="40"><label>
          <input type="text" name="peradd1" id="peradd1" />
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right" class="STYLE2">
          <p>Street Address (Line 2)<br />
          </p>
        </div></td>
        <td height="40"><label>
          <input type="text" name="peradd2" id="peradd2" />
        </label></td>
      </tr>
      <tr>
        <td height="40"><p align="right">City<br />
        </p></td>
        <td height="40"><label></label>
          <label>
          <input type="text" name="percity" id="percity" />
          </label></td>
      </tr>
      <tr>
        <td height="40"><p align="right">State/Province<br />
        </p></td>
        <td height="40"><label>
          <select name="perstate" id="perstate">
          </select>
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">Foreign State/Province</div></td>
        <td height="40"><label></label>
          <label>
          <input type="text" name="perprovince" id="perprovince" />
          </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">Zip/Postal Code<br />
        </div></td>
        <td height="40"><label>
          <input type="text" name="perzip" id="perzip" />
        </label></td>
      </tr>
      <tr>
        <td height="40"><p align="right">Telephone Number</p></td>
        <td height="40"><label></label>
          <label>
          <input type="text" name="perphone" id="perphone" />
          </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">
            <div align="right">
              <p align="left"><strong><u>Email Address</u></strong><br />
              </p>
            </div>
        </div></td><td height="40"><label></label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Primary Email Address<br />
        </div></td>
        <td height="40"><label>
          <input type="text" name="primaryemail" id="primaryemail" />
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">Secondary Email Address</div></td>
        <td><label></label>
          <label>
          <input type="text" name="secondaryemail" id="secondaryemail" />
          </label></td>
      </tr>
      <tr>
        <td height="40"><strong><u>Emergency Contact</u></strong></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="40"><div align="right">* First Name</div></td>
        <td><label>
          <input type="text" name="emergencyfirst" id="emergencyfirst" />
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Last Name</div></td>
        <td><label>
          <input type="text" name="emergencylast" id="emergencylast" />
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Telephone Number</div></td>
        <td><label>
          <input type="text" name="emergencyphone" id="emergencyphone" />
        </label></td>
      </tr>
      <tr>
        <td height="40" colspan="2"><div align="center">
            <a href="register_1.aspx"> Page</a>&nbsp;&nbsp;&nbsp;&nbsp; Save&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="register_3.aspx">Next Page</a></div></td>
        </tr>
    </table>
  </form></p>
    <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><span class="smallnote"><a href="default.aspx">Home</a> | Apply | Check Status | Admission | Site Map | Help</span></p>
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
