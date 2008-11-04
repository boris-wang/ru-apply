<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Apply For Program - Step 2</title>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">
<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
  <div id="mainContent">
    <table width="100%"><tr><td align="center"><img src="images/application2-4.png" /></td></tr></table>
  <h1>Employment Experience</h1>
            <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td height="40" colspan="2"><strong><u>Most Recent Employment Experience</u></strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Employer Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="emp1name" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Type of Industry</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="type1" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Job Title</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="title1" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">City</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="city1" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">State</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="state1" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Country</p></td>
        <td width="50%" height="40">
            <asp:DropDownList ID="country1" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Dates of Employment (MM/YYYY)</p></td>
        <td width="50%" height="40">From<asp:DropDownList ID="mmfrom1" runat="server">
            <asp:ListItem Selected="True">Select One ...</asp:ListItem>
            <asp:ListItem>01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="yyfrom1" runat="server" Height="16px">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
            </asp:DropDownList>
&nbsp;<label>
            <br />
            To&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="mmto1" runat="server">
            <asp:ListItem Selected="True">Select One ...</asp:ListItem>
            <asp:ListItem>01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="yyto1" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
            </asp:DropDownList>
&nbsp; </label>
                    </td>
      </tr>
      <tr>
        <td height="40" align="right">Please describe your job.<br />
            (300 characters maximum)</td>
        <td><label>
            <textarea name="otherschool" id="describe1"></textarea></label></td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u>Employment Experience</u> (Skip this section if not applicable.)</strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Employer Name<Employer Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="emp2name" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Type of Industry</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="type2" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Job Title</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="title2" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">City</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="city2" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">State</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="state2" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Country     <td width="50%" height="40">
                                <asp:DropDownList ID="country2" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Dates of Employment (MM/YYYY)</p></td>
        <td width="50%" height="40"><label>
           From<asp:DropDownList ID="mmfrom2" runat="server">
            <asp:ListItem Selected="True">Select One ...</asp:ListItem>
            <asp:ListItem>01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="yyfrom2" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
            </asp:DropDownList>
&nbsp;<label>
            <br />
            To&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="mmto2" runat="server">
            <asp:ListItem Selected="True">Select One ...</asp:ListItem>
            <asp:ListItem>01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="yyto2" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
            </asp:DropDownList>
&nbsp; </label></td>
      </tr>
      <tr>
        <td height="40" align="right">Please describe your job.<br />
            (300 characters maximum)</td>
        <td><label>
            <textarea name="otherschool" id="describe2"></textarea></label></td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u>Employment Experience</u> (Skip this section if not applicable.)</strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Employer Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="emp3name" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Type of Industry</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="type3" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Job Title</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="title3" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">City</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="city3" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">State</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="state3" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Country</p></td>
        <td width="50%" height="40">
                        <asp:DropDownList ID="country3" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Dates of Employment (MM/YYYY)</p></td>
        <td width="50%" height="40">
            <label>
             From<asp:DropDownList ID="mmfrom3" runat="server">
            <asp:ListItem Selected="True">Select One ...</asp:ListItem>
            <asp:ListItem>01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="yyfrom3" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
            </asp:DropDownList>
&nbsp;<label>
            <br />
            To&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="mmto3" runat="server">
            <asp:ListItem Selected="True">Select One ...</asp:ListItem>
            <asp:ListItem>01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="yyto3" runat="server">
                <asp:ListItem Selected="True">Select One ...</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
            </asp:DropDownList>
&nbsp; </label></td>
      </tr>
      <tr>
        <td height="40" align="right">Please describe your job.<br />
            (300 characters maximum) </td>
        <td><label>
            <textarea name="otherschool" id="describe3"></textarea></label></td>
      </tr>
        &nbsp;</td>
        </tr>
<tr>
        <td height="40" colspan="2"><div align="center">
            <a href="Application1.aspx">Previous Page</a>&nbsp;&nbsp;&nbsp;&nbsp; Save&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="Application3.aspx">Next Page</a></div></td>
        </tr>
    </table>
            </form>
  <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="default.aspx">Home</a> | Information | Apply | Status | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
  <!-- end #footer --></div>
<!-- end #container --></div>
</body>
</html>