<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>New User Registration - Step 4</title>
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
  <table width=100%><tr><td align="center"><img src="images/indicator4-4.png" /></td></tr></table>
  <h1>Standard Tests</h1>
  <p>Fields with * are required to fill.</p>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td height="40" colspan="2"><p><strong><u>GRE General Test</u></strong></p></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Date Taken / Expected<br />
        </p>        </td>
        <td width="50%" height="40"><label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Jan</asp:ListItem>
                <asp:ListItem>Feb</asp:ListItem>
                <asp:ListItem>Mar</asp:ListItem>
                <asp:ListItem>Apr</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>Jun</asp:ListItem>
                <asp:ListItem>Jul</asp:ListItem>
                <asp:ListItem>Aug</asp:ListItem>
                <asp:ListItem>Sep</asp:ListItem>
                <asp:ListItem>Oct</asp:ListItem>
                <asp:ListItem>Nov</asp:ListItem>
                <asp:ListItem>Dec</asp:ListItem>
            </asp:DropDownList>
&nbsp;/
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>1949</asp:ListItem>
                <asp:ListItem>1950</asp:ListItem>
                <asp:ListItem>1951</asp:ListItem>
                <asp:ListItem>1952</asp:ListItem>
                <asp:ListItem>1953</asp:ListItem>
                <asp:ListItem>1954</asp:ListItem>
                <asp:ListItem>1955</asp:ListItem>
                <asp:ListItem>1956</asp:ListItem>
                <asp:ListItem>1957</asp:ListItem>
                <asp:ListItem>1958</asp:ListItem>
                <asp:ListItem>1959</asp:ListItem>
                <asp:ListItem>1960</asp:ListItem>
                <asp:ListItem>1961</asp:ListItem>
                <asp:ListItem>1962</asp:ListItem>
                <asp:ListItem>1963</asp:ListItem>
                <asp:ListItem>1964</asp:ListItem>
                <asp:ListItem>1965</asp:ListItem>
                <asp:ListItem>1966</asp:ListItem>
                <asp:ListItem>1967</asp:ListItem>
                <asp:ListItem>1968</asp:ListItem>
                <asp:ListItem>1969</asp:ListItem>
                <asp:ListItem>1970</asp:ListItem>
                <asp:ListItem>1971</asp:ListItem>
                <asp:ListItem>1972</asp:ListItem>
                <asp:ListItem>1973</asp:ListItem>
                <asp:ListItem>1974</asp:ListItem>
                <asp:ListItem>1975</asp:ListItem>
                <asp:ListItem>1976</asp:ListItem>
                <asp:ListItem>1977</asp:ListItem>
                <asp:ListItem>1978</asp:ListItem>
                <asp:ListItem>1979</asp:ListItem>
                <asp:ListItem>1980</asp:ListItem>
                <asp:ListItem>1981</asp:ListItem>
                <asp:ListItem>1982</asp:ListItem>
                <asp:ListItem>1983</asp:ListItem>
                <asp:ListItem>1984</asp:ListItem>
                <asp:ListItem>1985</asp:ListItem>
                <asp:ListItem>1986</asp:ListItem>
                <asp:ListItem>1987</asp:ListItem>
                <asp:ListItem>1988</asp:ListItem>
                <asp:ListItem>1989</asp:ListItem>
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
            </asp:DropDownList>
            </label>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40" align=right>Verbal</td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox1" runat="server" Width="49px"></asp:TextBox>
&nbsp;/ 800</td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Quantitative<br />
        </p></td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox2" runat="server" Width="49px"></asp:TextBox>
&nbsp;/ 800</label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Analytical Writing<br />
        </p></td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox3" runat="server" Width="49px"></asp:TextBox>
&nbsp;/ 6.0</label></td>
      </tr>
      <tr>
        <td height="40" colspan="2"><p><strong><u>GRE Subject Test</u></strong></p></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Date Taken / Expected<br />
        </p>          </td>
        <td width="50%" height="40"><label>
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>Jan</asp:ListItem>
                <asp:ListItem>Feb</asp:ListItem>
                <asp:ListItem>Mar</asp:ListItem>
                <asp:ListItem>Apr</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>Jun</asp:ListItem>
                <asp:ListItem>Jul</asp:ListItem>
                <asp:ListItem>Aug</asp:ListItem>
                <asp:ListItem>Sep</asp:ListItem>
                <asp:ListItem>Oct</asp:ListItem>
                <asp:ListItem>Nov</asp:ListItem>
                <asp:ListItem>Dec</asp:ListItem>
            </asp:DropDownList>
&nbsp;/
            <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem>1949</asp:ListItem>
                <asp:ListItem>1950</asp:ListItem>
                <asp:ListItem>1951</asp:ListItem>
                <asp:ListItem>1952</asp:ListItem>
                <asp:ListItem>1953</asp:ListItem>
                <asp:ListItem>1954</asp:ListItem>
                <asp:ListItem>1955</asp:ListItem>
                <asp:ListItem>1956</asp:ListItem>
                <asp:ListItem>1957</asp:ListItem>
                <asp:ListItem>1958</asp:ListItem>
                <asp:ListItem>1959</asp:ListItem>
                <asp:ListItem>1960</asp:ListItem>
                <asp:ListItem>1961</asp:ListItem>
                <asp:ListItem>1962</asp:ListItem>
                <asp:ListItem>1963</asp:ListItem>
                <asp:ListItem>1964</asp:ListItem>
                <asp:ListItem>1965</asp:ListItem>
                <asp:ListItem>1966</asp:ListItem>
                <asp:ListItem>1967</asp:ListItem>
                <asp:ListItem>1968</asp:ListItem>
                <asp:ListItem>1969</asp:ListItem>
                <asp:ListItem>1970</asp:ListItem>
                <asp:ListItem>1971</asp:ListItem>
                <asp:ListItem>1972</asp:ListItem>
                <asp:ListItem>1973</asp:ListItem>
                <asp:ListItem>1974</asp:ListItem>
                <asp:ListItem>1975</asp:ListItem>
                <asp:ListItem>1976</asp:ListItem>
                <asp:ListItem>1977</asp:ListItem>
                <asp:ListItem>1978</asp:ListItem>
                <asp:ListItem>1979</asp:ListItem>
                <asp:ListItem>1980</asp:ListItem>
                <asp:ListItem>1981</asp:ListItem>
                <asp:ListItem>1982</asp:ListItem>
                <asp:ListItem>1983</asp:ListItem>
                <asp:ListItem>1984</asp:ListItem>
                <asp:ListItem>1985</asp:ListItem>
                <asp:ListItem>1986</asp:ListItem>
                <asp:ListItem>1987</asp:ListItem>
                <asp:ListItem>1988</asp:ListItem>
                <asp:ListItem>1989</asp:ListItem>
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
            </asp:DropDownList>
            </label>
                    </td>
      </tr>
      <tr>
        <td width="50%" align=right>Score</td><br />
        </div></td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox4" runat="server" Width="49px"></asp:TextBox>
&nbsp;/ </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">Subject</div></td>
        <td height="40">
            <asp:DropDownList ID="DropDownList5" runat="server">
                <asp:ListItem>Biology</asp:ListItem>
                <asp:ListItem>Biochemistry</asp:ListItem>
                <asp:ListItem>Chemistry</asp:ListItem>
                <asp:ListItem>Computer Science</asp:ListItem>
                <asp:ListItem>Literature in English</asp:ListItem>
                <asp:ListItem>Math</asp:ListItem>
                <asp:ListItem>Physics</asp:ListItem>
                <asp:ListItem>Psychology</asp:ListItem>
            </asp:DropDownList>
                    </td>
      </tr>
      <tr>
        <td height="40" colspan="2"><p><strong><u>GMAT<strong></u></strong></p></td>
      </tr>
      <tr><td align=right>
 Date Taken / Expected
           </td>
        <td height="40"><label>
            <asp:DropDownList ID="DropDownList6" runat="server">
                <asp:ListItem>Jan</asp:ListItem>
                <asp:ListItem>Feb</asp:ListItem>
                <asp:ListItem>Mar</asp:ListItem>
                <asp:ListItem>Apr</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>Jun</asp:ListItem>
                <asp:ListItem>Jul</asp:ListItem>
                <asp:ListItem>Aug</asp:ListItem>
                <asp:ListItem>Sep</asp:ListItem>
                <asp:ListItem>Oct</asp:ListItem>
                <asp:ListItem>Nov</asp:ListItem>
                <asp:ListItem>Dec</asp:ListItem>
            </asp:DropDownList>
&nbsp;/
            <asp:DropDownList ID="DropDownList7" runat="server">
                <asp:ListItem>1949</asp:ListItem>
                <asp:ListItem>1950</asp:ListItem>
                <asp:ListItem>1951</asp:ListItem>
                <asp:ListItem>1952</asp:ListItem>
                <asp:ListItem>1953</asp:ListItem>
                <asp:ListItem>1954</asp:ListItem>
                <asp:ListItem>1955</asp:ListItem>
                <asp:ListItem>1956</asp:ListItem>
                <asp:ListItem>1957</asp:ListItem>
                <asp:ListItem>1958</asp:ListItem>
                <asp:ListItem>1959</asp:ListItem>
                <asp:ListItem>1960</asp:ListItem>
                <asp:ListItem>1961</asp:ListItem>
                <asp:ListItem>1962</asp:ListItem>
                <asp:ListItem>1963</asp:ListItem>
                <asp:ListItem>1964</asp:ListItem>
                <asp:ListItem>1965</asp:ListItem>
                <asp:ListItem>1966</asp:ListItem>
                <asp:ListItem>1967</asp:ListItem>
                <asp:ListItem>1968</asp:ListItem>
                <asp:ListItem>1969</asp:ListItem>
                <asp:ListItem>1970</asp:ListItem>
                <asp:ListItem>1971</asp:ListItem>
                <asp:ListItem>1972</asp:ListItem>
                <asp:ListItem>1973</asp:ListItem>
                <asp:ListItem>1974</asp:ListItem>
                <asp:ListItem>1975</asp:ListItem>
                <asp:ListItem>1976</asp:ListItem>
                <asp:ListItem>1977</asp:ListItem>
                <asp:ListItem>1978</asp:ListItem>
                <asp:ListItem>1979</asp:ListItem>
                <asp:ListItem>1980</asp:ListItem>
                <asp:ListItem>1981</asp:ListItem>
                <asp:ListItem>1982</asp:ListItem>
                <asp:ListItem>1983</asp:ListItem>
                <asp:ListItem>1984</asp:ListItem>
                <asp:ListItem>1985</asp:ListItem>
                <asp:ListItem>1986</asp:ListItem>
                <asp:ListItem>1987</asp:ListItem>
                <asp:ListItem>1988</asp:ListItem>
                <asp:ListItem>1989</asp:ListItem>
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
            </asp:DropDownList>
            </label>
                    </td>
      </tr>
      <tr>
        <td height="40"><p align="right">Total<br />
        </p></td>
        <td height="40"><label>
            <asp:TextBox ID="TextBox5" runat="server" Width="49px"></asp:TextBox>
&nbsp;/ 800</label></td>
      </tr>
      <tr> <td height="40" align="right" height="40">
 Analytical Writing</td>
        <td height="40"><label>
            <asp:TextBox ID="TextBox6" runat="server" Width="49px"></asp:TextBox>
&nbsp;/ 6.0</label></td>
      </tr>
      <tr>
        <td height="40" colspan="2">
     <strong><u>LSAT</u></strong>
        </td>
      </tr>
      <tr>
        <td  height="40" align="right" height="40">Date Taken / Expected
         </td>
        <td height="40"><label>
            <asp:DropDownList ID="DropDownList8" runat="server">
                <asp:ListItem>Jan</asp:ListItem>
                <asp:ListItem>Feb</asp:ListItem>
                <asp:ListItem>Mar</asp:ListItem>
                <asp:ListItem>Apr</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>Jun</asp:ListItem>
                <asp:ListItem>Jul</asp:ListItem>
                <asp:ListItem>Aug</asp:ListItem>
                <asp:ListItem>Sep</asp:ListItem>
                <asp:ListItem>Oct</asp:ListItem>
                <asp:ListItem>Nov</asp:ListItem>
                <asp:ListItem>Dec</asp:ListItem>
            </asp:DropDownList>
&nbsp;/
            <asp:DropDownList ID="DropDownList9" runat="server">
                <asp:ListItem>1949</asp:ListItem>
                <asp:ListItem>1950</asp:ListItem>
                <asp:ListItem>1951</asp:ListItem>
                <asp:ListItem>1952</asp:ListItem>
                <asp:ListItem>1953</asp:ListItem>
                <asp:ListItem>1954</asp:ListItem>
                <asp:ListItem>1955</asp:ListItem>
                <asp:ListItem>1956</asp:ListItem>
                <asp:ListItem>1957</asp:ListItem>
                <asp:ListItem>1958</asp:ListItem>
                <asp:ListItem>1959</asp:ListItem>
                <asp:ListItem>1960</asp:ListItem>
                <asp:ListItem>1961</asp:ListItem>
                <asp:ListItem>1962</asp:ListItem>
                <asp:ListItem>1963</asp:ListItem>
                <asp:ListItem>1964</asp:ListItem>
                <asp:ListItem>1965</asp:ListItem>
                <asp:ListItem>1966</asp:ListItem>
                <asp:ListItem>1967</asp:ListItem>
                <asp:ListItem>1968</asp:ListItem>
                <asp:ListItem>1969</asp:ListItem>
                <asp:ListItem>1970</asp:ListItem>
                <asp:ListItem>1971</asp:ListItem>
                <asp:ListItem>1972</asp:ListItem>
                <asp:ListItem>1973</asp:ListItem>
                <asp:ListItem>1974</asp:ListItem>
                <asp:ListItem>1975</asp:ListItem>
                <asp:ListItem>1976</asp:ListItem>
                <asp:ListItem>1977</asp:ListItem>
                <asp:ListItem>1978</asp:ListItem>
                <asp:ListItem>1979</asp:ListItem>
                <asp:ListItem>1980</asp:ListItem>
                <asp:ListItem>1981</asp:ListItem>
                <asp:ListItem>1982</asp:ListItem>
                <asp:ListItem>1983</asp:ListItem>
                <asp:ListItem>1984</asp:ListItem>
                <asp:ListItem>1985</asp:ListItem>
                <asp:ListItem>1986</asp:ListItem>
                <asp:ListItem>1987</asp:ListItem>
                <asp:ListItem>1988</asp:ListItem>
                <asp:ListItem>1989</asp:ListItem>
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
            </asp:DropDownList>
            </label>
                    </td>
      </tr>
      <tr>
        <td height="40"><div align="right">
            <div align="right">Score</div>
        </div></td><td height="40"><label>
                        <asp:TextBox ID="TextBox7" runat="server" Width="49px"></asp:TextBox>
&nbsp;/ 180</label></td>
      </tr>
      <tr>
<td height="40" colspan="2"><strong><u>TOEFL</u></strong></td>
      </tr>
      <tr><td  height="40" align="right" height="40">
   Date Taken / Expected</td>
        <td><label>
            <asp:DropDownList ID="DropDownList10" runat="server">
                <asp:ListItem>Jan</asp:ListItem>
                <asp:ListItem>Feb</asp:ListItem>
                <asp:ListItem>Mar</asp:ListItem>
                <asp:ListItem>Apr</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>Jun</asp:ListItem>
                <asp:ListItem>Jul</asp:ListItem>
                <asp:ListItem>Aug</asp:ListItem>
                <asp:ListItem>Sep</asp:ListItem>
                <asp:ListItem>Oct</asp:ListItem>
                <asp:ListItem>Nov</asp:ListItem>
                <asp:ListItem>Dec</asp:ListItem>
            </asp:DropDownList>
&nbsp;/
            <asp:DropDownList ID="DropDownList11" runat="server">
                <asp:ListItem>1949</asp:ListItem>
                <asp:ListItem>1950</asp:ListItem>
                <asp:ListItem>1951</asp:ListItem>
                <asp:ListItem>1952</asp:ListItem>
                <asp:ListItem>1953</asp:ListItem>
                <asp:ListItem>1954</asp:ListItem>
                <asp:ListItem>1955</asp:ListItem>
                <asp:ListItem>1956</asp:ListItem>
                <asp:ListItem>1957</asp:ListItem>
                <asp:ListItem>1958</asp:ListItem>
                <asp:ListItem>1959</asp:ListItem>
                <asp:ListItem>1960</asp:ListItem>
                <asp:ListItem>1961</asp:ListItem>
                <asp:ListItem>1962</asp:ListItem>
                <asp:ListItem>1963</asp:ListItem>
                <asp:ListItem>1964</asp:ListItem>
                <asp:ListItem>1965</asp:ListItem>
                <asp:ListItem>1966</asp:ListItem>
                <asp:ListItem>1967</asp:ListItem>
                <asp:ListItem>1968</asp:ListItem>
                <asp:ListItem>1969</asp:ListItem>
                <asp:ListItem>1970</asp:ListItem>
                <asp:ListItem>1971</asp:ListItem>
                <asp:ListItem>1972</asp:ListItem>
                <asp:ListItem>1973</asp:ListItem>
                <asp:ListItem>1974</asp:ListItem>
                <asp:ListItem>1975</asp:ListItem>
                <asp:ListItem>1976</asp:ListItem>
                <asp:ListItem>1977</asp:ListItem>
                <asp:ListItem>1978</asp:ListItem>
                <asp:ListItem>1979</asp:ListItem>
                <asp:ListItem>1980</asp:ListItem>
                <asp:ListItem>1981</asp:ListItem>
                <asp:ListItem>1982</asp:ListItem>
                <asp:ListItem>1983</asp:ListItem>
                <asp:ListItem>1984</asp:ListItem>
                <asp:ListItem>1985</asp:ListItem>
                <asp:ListItem>1986</asp:ListItem>
                <asp:ListItem>1987</asp:ListItem>
                <asp:ListItem>1988</asp:ListItem>
                <asp:ListItem>1989</asp:ListItem>
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
            </asp:DropDownList>
            </label>
                    </td>
      </tr>
      <tr>
        <td height="40" align="right"> Computer-based</td>
        <td><label>
          <input type="radio" name="radio" id="cbt" value="cbt" />
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">Paper-based</div></td>
        <td><label>
          <input type="radio" name="radio" id="pbt" value="pbt" />
        </label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">Internet-based</div></td>
        <td><label>
          <input type="radio" name="radio" id="ibt" value="ibt" />
        </label></td>
      </tr>
            <tr>
        <td height="40"><div align="right">
            <div align="right">Score</div>
        </div></td><td height="40"><label>
                        <asp:TextBox ID="TextBox9" runat="server" Width="49px"></asp:TextBox>
                        </label>
                    </td>
      </tr>
      <tr>
        <td height="40" colspan="2"><p><strong><u>IELTS</u></strong></p></td>
        <td>&nbsp;</td>
      </tr>
      <tr><td align=right>
 Date Taken / Expected</td>
        <td><label>
            <asp:DropDownList ID="DropDownList12" runat="server">
                <asp:ListItem>Jan</asp:ListItem>
                <asp:ListItem>Feb</asp:ListItem>
                <asp:ListItem>Mar</asp:ListItem>
                <asp:ListItem>Apr</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>Jun</asp:ListItem>
                <asp:ListItem>Jul</asp:ListItem>
                <asp:ListItem>Aug</asp:ListItem>
                <asp:ListItem>Sep</asp:ListItem>
                <asp:ListItem>Oct</asp:ListItem>
                <asp:ListItem>Nov</asp:ListItem>
                <asp:ListItem>Dec</asp:ListItem>
            </asp:DropDownList>
&nbsp;/
            <asp:DropDownList ID="DropDownList13" runat="server">
                <asp:ListItem>1949</asp:ListItem>
                <asp:ListItem>1950</asp:ListItem>
                <asp:ListItem>1951</asp:ListItem>
                <asp:ListItem>1952</asp:ListItem>
                <asp:ListItem>1953</asp:ListItem>
                <asp:ListItem>1954</asp:ListItem>
                <asp:ListItem>1955</asp:ListItem>
                <asp:ListItem>1956</asp:ListItem>
                <asp:ListItem>1957</asp:ListItem>
                <asp:ListItem>1958</asp:ListItem>
                <asp:ListItem>1959</asp:ListItem>
                <asp:ListItem>1960</asp:ListItem>
                <asp:ListItem>1961</asp:ListItem>
                <asp:ListItem>1962</asp:ListItem>
                <asp:ListItem>1963</asp:ListItem>
                <asp:ListItem>1964</asp:ListItem>
                <asp:ListItem>1965</asp:ListItem>
                <asp:ListItem>1966</asp:ListItem>
                <asp:ListItem>1967</asp:ListItem>
                <asp:ListItem>1968</asp:ListItem>
                <asp:ListItem>1969</asp:ListItem>
                <asp:ListItem>1970</asp:ListItem>
                <asp:ListItem>1971</asp:ListItem>
                <asp:ListItem>1972</asp:ListItem>
                <asp:ListItem>1973</asp:ListItem>
                <asp:ListItem>1974</asp:ListItem>
                <asp:ListItem>1975</asp:ListItem>
                <asp:ListItem>1976</asp:ListItem>
                <asp:ListItem>1977</asp:ListItem>
                <asp:ListItem>1978</asp:ListItem>
                <asp:ListItem>1979</asp:ListItem>
                <asp:ListItem>1980</asp:ListItem>
                <asp:ListItem>1981</asp:ListItem>
                <asp:ListItem>1982</asp:ListItem>
                <asp:ListItem>1983</asp:ListItem>
                <asp:ListItem>1984</asp:ListItem>
                <asp:ListItem>1985</asp:ListItem>
                <asp:ListItem>1986</asp:ListItem>
                <asp:ListItem>1987</asp:ListItem>
                <asp:ListItem>1988</asp:ListItem>
                <asp:ListItem>1989</asp:ListItem>
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
            </asp:DropDownList>
            </label>
                    </td>
      </tr>
      <tr>
        <td height="40" align="right">Score</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="40" colspan="2"><p><strong><u>TSE</u></strong></p></td>
        <td>&nbsp;</td>
      </tr>
      <tr> <td height="40" align=right>
   Date Taken / Expected</td>
        <td><label>
            <asp:DropDownList ID="DropDownList14" runat="server">
                <asp:ListItem>Jan</asp:ListItem>
                <asp:ListItem>Feb</asp:ListItem>
                <asp:ListItem>Mar</asp:ListItem>
                <asp:ListItem>Apr</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>Jun</asp:ListItem>
                <asp:ListItem>Jul</asp:ListItem>
                <asp:ListItem>Aug</asp:ListItem>
                <asp:ListItem>Sep</asp:ListItem>
                <asp:ListItem>Oct</asp:ListItem>
                <asp:ListItem>Nov</asp:ListItem>
                <asp:ListItem>Dec</asp:ListItem>
            </asp:DropDownList>
&nbsp;/
            <asp:DropDownList ID="DropDownList15" runat="server">
                <asp:ListItem>1949</asp:ListItem>
                <asp:ListItem>1950</asp:ListItem>
                <asp:ListItem>1951</asp:ListItem>
                <asp:ListItem>1952</asp:ListItem>
                <asp:ListItem>1953</asp:ListItem>
                <asp:ListItem>1954</asp:ListItem>
                <asp:ListItem>1955</asp:ListItem>
                <asp:ListItem>1956</asp:ListItem>
                <asp:ListItem>1957</asp:ListItem>
                <asp:ListItem>1958</asp:ListItem>
                <asp:ListItem>1959</asp:ListItem>
                <asp:ListItem>1960</asp:ListItem>
                <asp:ListItem>1961</asp:ListItem>
                <asp:ListItem>1962</asp:ListItem>
                <asp:ListItem>1963</asp:ListItem>
                <asp:ListItem>1964</asp:ListItem>
                <asp:ListItem>1965</asp:ListItem>
                <asp:ListItem>1966</asp:ListItem>
                <asp:ListItem>1967</asp:ListItem>
                <asp:ListItem>1968</asp:ListItem>
                <asp:ListItem>1969</asp:ListItem>
                <asp:ListItem>1970</asp:ListItem>
                <asp:ListItem>1971</asp:ListItem>
                <asp:ListItem>1972</asp:ListItem>
                <asp:ListItem>1973</asp:ListItem>
                <asp:ListItem>1974</asp:ListItem>
                <asp:ListItem>1975</asp:ListItem>
                <asp:ListItem>1976</asp:ListItem>
                <asp:ListItem>1977</asp:ListItem>
                <asp:ListItem>1978</asp:ListItem>
                <asp:ListItem>1979</asp:ListItem>
                <asp:ListItem>1980</asp:ListItem>
                <asp:ListItem>1981</asp:ListItem>
                <asp:ListItem>1982</asp:ListItem>
                <asp:ListItem>1983</asp:ListItem>
                <asp:ListItem>1984</asp:ListItem>
                <asp:ListItem>1985</asp:ListItem>
                <asp:ListItem>1986</asp:ListItem>
                <asp:ListItem>1987</asp:ListItem>
                <asp:ListItem>1988</asp:ListItem>
                <asp:ListItem>1989</asp:ListItem>
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
            </asp:DropDownList>
            </label>
                    </td>
      </tr>
      <tr>
        <td height="40"><div align="right">Score</div></td>
        <td><label>
            <asp:TextBox ID="TextBox8" runat="server" Width></asp:TextBox>
      <tr>
        <td height="40" colspan="2"><div align="center">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/register_3.aspx">Previous 
            Page</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server">Save</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server">Finish</asp:LinkButton>
            </div></td>
        </tr>
    </table>
  </div>
  <div id="footer">
<p align="center"><span class="smallnote"><a href="default.aspx">Home</a> | Information | Apply | Status | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></span></p>
    <script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-5821511-1";
urchinTracker();
</script>
  <!-- end #footer --></div>
<!-- end #container --></div>
    </form>
</body>
</html>
