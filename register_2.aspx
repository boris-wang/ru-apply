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
  <table width=100%><tr><td align=center><img src="images/indicator2-4.png" /></td></tr></table>
  <h1>Contact Information</h1>
  <p>Fields with * are required to fill.</p>
      <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td height="40" colspan="2"><strong><u>Current Mailing Address</u></strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Valid Through (MM/YYYY)<br />
        </p>        </td>
        <td width="50%" height="40">
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
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Country<br />
        </p></td>
        <td width="50%" height="40">
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>U.S</asp:ListItem>
            </asp:DropDownList>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Street Address (Line 1)<br />
        </p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox1" runat="server" Width="240px"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Street Address (Line 2)<br />
        </p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox2" runat="server" Width="240px"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* City<br />
        </p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40"><div align="right">* State/Province</div></td>
        <td height="40">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Zip/Postal Code</div></td>
        <td height="40">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Telephone Number</div></td>
        <td height="40">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40" colspan="2"><u><strong>Permanent Address</strong></u></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Same as Present Mailing Address?<br />
        </p>          </td>
        <td width="50%" height="40">
            <asp:RadioButton ID="RadioButton1" runat="server" Text="      Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" Text="      No" />
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><div align="right" class="STYLE2">
          <p>Country<br />
        </p>
          </div></td>
        <td width="50%" height="40">
            <asp:DropDownList ID="DropDownList5" runat="server">
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>U.S</asp:ListItem>
            </asp:DropDownList>
          </td>
      </tr>
      <tr>
        <td height="40"><div align="right" class="STYLE2">
          <p>Street Address (Line 1)<br />
          </p>
        </div></td>
        <td height="40">
            <asp:TextBox ID="TextBox7" runat="server" Width="240px"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40"><div align="right" class="STYLE2">
          <p>Street Address (Line 2)<br />
          </p>
        </div></td>
        <td height="40">
            <asp:TextBox ID="TextBox8" runat="server" Width="240px"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40"><p align="right">City<br />
        </p></td>
        <td height="40">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40"><div align="right">&nbsp;State/Province</div></td>
        <td height="40">
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40"><div align="right">Zip/Postal Code<br />
        </div></td>
        <td height="40">
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40"><p align="right">Telephone Number</p></td>
        <td height="40">
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
          </td>
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
        <td height="40">
            <asp:TextBox ID="TextBox13" runat="server" Width="200px"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40"><div align="right">Secondary Email Address</div></td>
        <td>
            <asp:TextBox ID="TextBox14" runat="server" Width="200px"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40"><strong><u>Emergency Contact</u></strong></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="40"><div align="right">* First Name</div></td>
        <td>
            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Last Name</div></td>
        <td>
            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Telephone Number</div></td>
        <td>
            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                    </td>
      </tr>
      <tr>
        <td height="40" colspan="2"><div align="center">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/register_1.aspx">Previous 
            Page</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server">Save</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/register_3.aspx">Next 
            Page</asp:LinkButton>
            </div></td>
        </tr>
    </table>
        </form>
        </p>
    <!-- end #mainContent --></div>
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
</body>
</html>
