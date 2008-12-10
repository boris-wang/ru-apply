<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register_1.aspx.cs" Inherits="register_1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<script runat="server">
            
    
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
    .style2
    {
        font-size: medium;
    }
    .style3
    {
        font-size: small;
    }
-->
</style>
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
  <table width=100%><tr><td align=center><img src="images/indicator1-4.png" /></td></tr></table>
  <h1>Biographical Information</h1>
  <p>Fields with * are required to fill.</p>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr>
        <td height="40" colspan="2"><strong><u>Full Legal Name</u></strong></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Title</p></td>
        <td width="50%" height="40">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="Mr.">Mr.</asp:ListItem>
                <asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
            </asp:DropDownList>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* First Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Required"></asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Middle Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">* Last Name</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
          &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Required"></asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">Suffix</p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40" colspan="2"><p><strong><u>Other Name You Have Used on Prior Academic 
            Records</u> (Skip this section if not applicable.)</strong></p></td>
      </tr>
      <tr>
        <td width="50%" height="40"><p align="right">First Name<br />
        </p></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td width="50%" height="40"><div align="right">Middle Name<br />
        </div></td>
        <td width="50%" height="40">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40"><div align="right">Last Name</div></td>
        <td height="40">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40" colspan="2"><strong><u>Other Biographical Information</u></strong></td>
      </tr>
      <tr>
        <td height="40"><p align="right">* Gender</p></td>
        <td height="40">
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="1" 
                Checked="True" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" 
                GroupName="1" />
          </td>
      </tr>
      <tr>
        <td height="40"><p align="right">U.S. Social Security Number<br />
        </p></td>
        <td height="40">
            <asp:TextBox ID="TextBox8" runat="server" MaxLength="9"></asp:TextBox>
          </td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Birth Date (MM/DD/YYYY)<br />
        </div></td>
        <td height="40">
            &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" 
                AppendDataBoundItems="True" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem Value="Jan">Jan</asp:ListItem>
                <asp:ListItem Value="Feb">Feb</asp:ListItem>
                <asp:ListItem Value="Mar">Mar</asp:ListItem>
                <asp:ListItem Value="Apr">Apr</asp:ListItem>
                <asp:ListItem Value="May">May</asp:ListItem>
                <asp:ListItem Value="Jun">Jun</asp:ListItem>
                <asp:ListItem Value="Jul">Jul</asp:ListItem>
                <asp:ListItem Value="Aug">Aug</asp:ListItem>
                <asp:ListItem Value="Sep">Sep</asp:ListItem>
                <asp:ListItem Value="Oct">Oct</asp:ListItem>
                <asp:ListItem Value="Nov">Nov</asp:ListItem>
                <asp:ListItem Value="Dec">Dec</asp:ListItem>
            </asp:DropDownList>
            <span class="style2">&nbsp;</span><span class="style3">/</span><span 
                class="style2"> </span>&nbsp;<asp:DropDownList ID="DropDownList3" 
                runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
            <span class="style2">&nbsp;</span><span class="style3">/</span><span 
                class="style2"> </span>
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
                    </td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Country of Birthy of Birth<br />
        </div></td>
        <td height="40">
            <asp:DropDownList ID="DropDownList5" runat="server">
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>Germany</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>United States</asp:ListItem>
            </asp:DropDownList>
                    </td>
      </tr>
      <tr>
        <td height="40"><div align="right">* Citizenship<br />
        </div></td>
        <td height="40">
            <asp:DropDownList ID="DropDownList6" runat="server">
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>Germany</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>United States</asp:ListItem>
            </asp:DropDownList>
                    </td>
      </tr>
      <tr>
        <td height="40"><div align="right">
            <div align="right">Ethnic Background (Optional)&nbsp;</div>
        </div></td><td height="40">
                        <asp:DropDownList ID="DropDownList7" runat="server">
                            <asp:ListItem>Select one</asp:ListItem>
                            <asp:ListItem>American Indian or Alaskan Native</asp:ListItem>
                            <asp:ListItem>Asian or Pacific Islander</asp:ListItem>
                            <asp:ListItem>Black, Non-Purto-Rican</asp:ListItem>
                            <asp:ListItem>Puerto Rican</asp:ListItem>
                            <asp:ListItem>White, Non-Hispanic</asp:ListItem>
                            <asp:ListItem>Other Racial / Ethnic Group</asp:ListItem>
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToValidate="DropDownList7" ErrorMessage="Select one" Operator="NotEqual" 
                            ValueToCompare="Select one"></asp:CompareValidator>
                    </td>
      </tr>
      <tr>
        <td height="40" align="right">* Have You Ever Been Convicted of A Felony?
        </td>
        <td>
            <asp:RadioButton ID="RadioButton3" runat="server" Text="Yes" 
                GroupName="2" oncheckedchanged="RadioButton3_CheckedChanged" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton4" runat="server" Text="No" 
                Checked="True" GroupName="2" 
                oncheckedchanged="RadioButton4_CheckedChanged" />
                    </td></tr><tr>
        <td height="40" align="right">If yes, please explain.
      </td>
        <td>
            <asp:TextBox ID="TextBox9" runat="server" Height="85px" Width="326px" 
                MaxLength="200"></asp:TextBox>
                    </td>
      </tr>
      
      <tr>
        <td height="40" colspan="2"><div align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click1" 
                Font-Bold="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Next" 
                onclick="Button2_Click1" Font-Bold="True" Width="75px" />
            </div></td>
        </tr>
    </table>
            </p>

    <!-- end #mainContent --></div>
  <div id="footer">
<p align="center"><a href="myaccount.aspx">Home</a> | <a href="uinfo.aspx">Information</a> | <a href="userapplication.aspx">Apply</a> | <a href="myaccount.aspx">Status</a> | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
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
