<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register_3.aspx.cs" Inherits="register_3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">


</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>New User Registration - Step 3</title>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">

<div id="container">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
  <div id="mainContent">
  <table width=100%><tr><td align=center><img src="images/indicator3-4.png" /></td></tr></table>
  <h1>Education Information</h1>
  <p>Fields with * are required to fill.</p>
      <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td height="40" colspan="2"><p><strong><u>Institution 1</u></strong></p></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Institution Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* City<br />
        </p>        </td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* State/Province</p></td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right"> * Country<br />
        </p></td>
        <td width="50%" height="40"><label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>U.S</asp:ListItem>
            </asp:DropDownList>
            </label>
                    </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Date of Attendance<br />
        </p></td>
        <td width="50%" height="40"><label>
            <asp:DropDownList ID="DropDownList2" runat="server">
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
            <asp:DropDownList ID="DropDownList3" runat="server">
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
        <td width="50%" height="40"><p align="right">* GPA
          <br />
        </p></td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox4" runat="server" Width="49px"></asp:TextBox>
&nbsp;/ 4.0&nbsp;&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Incorrect GPA" MaximumValue="4.0" 
                MinimumValue="0.0" ValidationGroup="1" Type="Double"></asp:RangeValidator>
            </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Average Score<br />
        </p></td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox5" runat="server" Width="49px"></asp:TextBox>
&nbsp;/ 100&nbsp;&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="Incorrect average score" 
                MaximumValue="100.0" MinimumValue="0.0" ValidationGroup="2" Type="Double"></asp:RangeValidator>
            </label>
                    </td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Area of Major<br />
        </div></td>
        <td height="40"><label>
            <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </label></td>
      </tr>
      
      <tr>
        <td height="40"><p align="right">* Degree<br />
        </p></td>
        <td height="40">
            <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem>Select one...</asp:ListItem>
                <asp:ListItem>Bachelor of Arts</asp:ListItem>
                <asp:ListItem>Bachelor of Science</asp:ListItem>
                <asp:ListItem>Master of Arts</asp:ListItem>
                <asp:ListItem>Master of Engineering</asp:ListItem>
                <asp:ListItem>Master of Science</asp:ListItem>
                <asp:ListItem>Philosophy of Doctor</asp:ListItem>
            </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToValidate="DropDownList4" ErrorMessage="Select one" Operator="NotEqual" 
                ValueToCompare="Select one..."></asp:CompareValidator>
                    </td>
      </tr>
      <tr>
        <td height="40"><p align="right">* Degree Awarded Date<br />
        </p></td>
        <td height="40"><label>
            <asp:DropDownList ID="DropDownList5" runat="server">
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
            <asp:DropDownList ID="DropDownList6" runat="server">
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
        <td height="40" colspan="2"><p><strong><u>Institution 2 (Skip this section if not applicable.)</p></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Institution Name</p></td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox>
            </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">City<br />
        </p>        </td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">&nbsp;State/Province</p></td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right"> Country<br />
        </p></td>
        <td width="50%" height="40"><label>
            <asp:DropDownList ID="DropDownList7" runat="server">
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>U.S</asp:ListItem>
            </asp:DropDownList>
            </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Date of Attendance<br />
        </p></td>
        <td width="50%" height="40"><label>
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
        <td width="50%" height="40"><p align="right">&nbsp;GPA
          <br />
        </p></td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox10" runat="server" Width="49px"></asp:TextBox>
&nbsp;/ 4.0</label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">&nbsp;Average Score<br />
        </p></td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox11" runat="server" Width="49px"></asp:TextBox>
&nbsp;/ 100</label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">&nbsp;Area of Major<br />
        </div></td>
        <td height="40"><label>
            <asp:TextBox ID="TextBox12" runat="server" Width="200px"></asp:TextBox>
            </label></td>
      </tr>
      
      <tr>
        <td height="40"><p align="right">Degree<br />
        </p></td>
        <td height="40">
            <asp:DropDownList ID="DropDownList10" runat="server">
                <asp:ListItem>Select one...</asp:ListItem>
                <asp:ListItem>Bachelor of Arts</asp:ListItem>
                <asp:ListItem>Bachelor of Science</asp:ListItem>
                <asp:ListItem>Master of Arts</asp:ListItem>
                <asp:ListItem>Master of Engineering</asp:ListItem>
                <asp:ListItem>Master of Science</asp:ListItem>
                <asp:ListItem>Philosophy of Doctor</asp:ListItem>
            </asp:DropDownList>
                    </td>
      </tr>
      <tr>
        <td height="40"><p align="right">&nbsp;Degree Awarded Date<br />
        </p></td>
        <td height="40"><label>
            <asp:DropDownList ID="DropDownList11" runat="server">
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
            <asp:DropDownList ID="DropDownList12" runat="server">
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
        <td height="40" colspan="2"><p><strong><u>Institution 3</u> (Skip this section if not applicable.)</strong></p></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">&nbsp;Institution Name</p></td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox13" runat="server" Width="200px"></asp:TextBox>
            </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">&nbsp;City<br />
        </p>        </td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">State/Province</p></td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right"> &nbsp;Country<br />
        </p></td>
        <td width="50%" height="40"><label>
            <asp:DropDownList ID="DropDownList13" runat="server">
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>U.S</asp:ListItem>
            </asp:DropDownList>
            </label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">&nbsp;Date of Attendance<br />
        </p></td>
        <td width="50%" height="40"><label>
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
        <td width="50%" height="40"><p align="right">&nbsp;GPA
          <br />
        </p></td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox16" runat="server" Width="49px"></asp:TextBox>
&nbsp;/ 4.0</label></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Average Score<br />
        </p></td>
        <td width="50%" height="40"><label>
            <asp:TextBox ID="TextBox17" runat="server" Width="49px"></asp:TextBox>
&nbsp;/ 100</label></td>
      </tr>
      <tr>
        <td height="40"><div align="right">Area of Major<br />
        </div></td>
        <td height="40"><label>
            <asp:TextBox ID="TextBox18" runat="server" Width="200px"></asp:TextBox>
            </label></td>
      </tr>
      
      <tr>
        <td height="40" align="right">Degree
        </td>
        <td height="40">
            <asp:DropDownList ID="DropDownList16" runat="server">
                <asp:ListItem>Select one...</asp:ListItem>
                <asp:ListItem>Bachelor of Arts</asp:ListItem>
                <asp:ListItem>Bachelor of Science</asp:ListItem>
                <asp:ListItem>Master of Arts</asp:ListItem>
                <asp:ListItem>Master of Engineering</asp:ListItem>
                <asp:ListItem>Master of Science</asp:ListItem>
                <asp:ListItem>Philosophy of Doctor</asp:ListItem>
            </asp:DropDownList>
                    </td></tr>
            <tr><td align=right>Degree Awarded Date</td>
        <td height="40"><label>
            <asp:DropDownList ID="DropDownList17" runat="server">
                
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
            <asp:DropDownList ID="DropDownList18" runat="server">
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
        <td height="40" colspan="2"><div align="center">
          <a href="register_4.aspx">
        <label></label>
            </a>
            <asp:Button ID="Button1" runat="server" Text="Previous" 
                onclick="Button1_Click" Font-Bold="True" Width="75px" />
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" 
                runat="server" Text="Save" Font-Bold="True" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Next" 
                onclick="Button3_Click" Font-Bold="True" Width="75px" />
            </div></td>
        </tr>
    </table>
        </form>
        </p>
    <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="myaccount.aspx">Home</a> | <a href="uinfo.aspx">Information</a> | <a href="userapplication.aspx">Apply</a> | <a href="myaccount.aspx">Status</a> | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
  <!-- end #footer --></div>
<!-- end #container --></div>
</body>
</html>
