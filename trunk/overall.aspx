<%@ Page Language="C#" AutoEventWireup="true" CodeFile="overall.aspx.cs" Inherits="overall" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Reputation Ranking</title>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">

    <form id="form1" runat="server">

<div id="container">
  <div id="header">
   <table width="100%" border="0" cellpadding="0" cellspacing="0""><tr><td align=right>
       <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Close Window" />
       </td></tr></table>
</div>
  <div id="mainContent">
  <p>Note: the full score is 5.</p>
   <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
   <tr><td width="5%" align=center><strong><u>#</u></strong></td><td width="85%" align=center><strong><u>University</u></strong></td><td width="10%" align=center><strong><u>Score</u></strong></td></tr>
      <tr><td width="5%" align=center>1</td><td width="85%" align=center>Princeton University (NJ)</td><td width="10%" align=left>4.9</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>Harvard University (MA)</td><td width="10%" align=left>
                    4.9</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>Yale University (CT)</td><td width="10%" align=left>
                    4.9</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>Massachusetts Inst. of Technology</td><td width="10%" align=left>
                    4.9</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>Stanford University (CA)</td><td width="10%" align=left>
                    4.9</td></tr>
   <tr><td width="5%" align=center>6</td><td width="85%" align=center>University of California Berkeley</td><td width="10%" align=left>4.8</td></tr>
   <tr><td width="5%" align=center>7</td><td width="85%" align=center>California Institute of Technology</td><td width="10%" align=left>4.7</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>University of Chicago</td><td width="10%" align=left>
                    4.7</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>Johns Hopkins University (MD)</td><td width="10%" align=left>
                    4.7</td></tr>
   <tr><td width="5%" align=center>10</td><td width="85%" align=center>Duke University (NC)</td><td width="10%" align=left>4.6</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>Columbia University (NY)</td><td width="10%" align=left>
                    4.6</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>Cornell University (NY)</td><td width="10%" align=left>
                    4.6</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>University of Michigan Ann Arbor</td><td width="10%" align=left>
                    4.6</td></tr>
   <tr><td width="5%" align=center>14</td><td width="85%" align=center>University of Pennsylvania</td><td width="10%" align=left>4.5</td></tr>
   <tr><td width="5%" align=center>15</td><td width="85%" align=center>Dartmouth College (NH)</td><td width="10%" align=left>4.4</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>Northwestern University (IL)</td><td width="10%" align=left>
                    4.4</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>Brown University (RI)</td><td width="10%" align=left>
                    4.4</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>University of Virginia</td><td width="10%" align=left>
                    4.4</td></tr>
   <tr><td width="5%" align=center>19</td><td width="85%" align=center>Rice University (TX)</td><td width="10%" align=left>4.3</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>Univ. of California Los Angeles</td><td width="10%" align=left>
                    4.3</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>Univ. of Wisconsin Madison</td><td width="10%" align=left>
                    4.3</td></tr>
   <tr><td width="5%" align=center>22</td><td width="85%" align=center>Carnegie Mellon University (PA)</td><td width="10%" align=left>4.2</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>U. of North Carolina Chapel Hill</td><td width="10%" align=left>
                    4.2</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>U. of Illinois Urbana-Champaign</td><td width="10%" align=left>
                    4.2</td></tr>
   <tr><td width="5%" align=center>25</td><td width="85%" align=center>Washington University in St. Louis</td><td width="10%" align=left>4.1</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>Vanderbilt University (TN)</td><td width="10%" align=left>
                    4.1</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>University of Texas Austin</td><td width="10%" align=left>
                    4.1</td></tr>
   <tr><td width="5%" align=center>28</td><td width="85%" align=center>Emory University (GA)</td><td width="10%" align=left>4.0</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>Georgetown University (DC)</td><td width="10%" align=left>
                    4.0</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>Georgia Institute of Technology</td><td width="10%" align=left>
                    4.0</td></tr>
   <tr><td width="5%" align=center></td><td width="85%" align=center>University of Washington</td><td width="10%" align=left>
                    4.0</td></tr>

</table>
  <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="default.aspx">Home</a> | Information | Apply | Status | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
  <!-- end #footer --></div>
<!-- end #container --></div>
    </form>
</body>
</html>