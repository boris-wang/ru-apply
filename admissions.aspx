<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admissions.aspx.cs" Inherits="admissions" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Graduate Admissions</title>
<link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body class="oneColElsCtrHdr">

<div id="container">
      <form id="form1" runat="server">
  <div id="header">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><img src="images/RU_SIG_ST_CMYK_S.jpg" alt="logo" width="200" height="79" /></td></tr></table></div>
  <div id="mainContent">
  
  <h1>Step 1: Get Records</h1><table width="100%" bgcolor="#ffb3b3"><tr><td>Please set 
      up minimum requirements for <strong>GPA</strong>, <strong>GRE</strong> and/or <strong>
      TOEFL</strong> to retrieve relevent applicants&#39; records.</td></tr></table>
      <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
      <tr><td width="10%">GPA</td>
      <td width="10%">GRE</td>
      <td width="10%">TOEFL</td>
      <td width="70%"></td>
      </tr>
       <tr><td width="10%"><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>2.5</asp:ListItem>
            <asp:ListItem>3.0</asp:ListItem>
            <asp:ListItem>3.5</asp:ListItem>
            <asp:ListItem>3.8</asp:ListItem>
        </asp:DropDownList></td>
      <td width="10%"><asp:DropDownList ID="DropDownList6" runat="server">
            <asp:ListItem>1100</asp:ListItem>
            <asp:ListItem>1200</asp:ListItem>
            <asp:ListItem>1300</asp:ListItem>
            <asp:ListItem>1400</asp:ListItem>
        </asp:DropDownList></td>
      <td width="10%"><asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>80</asp:ListItem>
            <asp:ListItem>90</asp:ListItem>
            <asp:ListItem>100</asp:ListItem>
            <asp:ListItem>115</asp:ListItem>
        </asp:DropDownList></td>
      <td width="70%">    &nbsp;<asp:Button ID="Button1" runat="server" Text="Confirm" 
              onclick="Button1_Click"/>
</td>
      </tr>
      </table>
      <table width="100%" bgcolor="#ffb3b3"><tr><td>Or retrieve specific applicant by 
          <strong>name</strong>.</td></tr></table>
      <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
<tr><td width="10%" align=right>Name</td>
      <td width="24%"><asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                      </td>
      <td width="41%"><asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
              Text="Confirm" />
    </td>
      <td width="25%">&nbsp;</td>
      </tr></table>
      
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataKeyNames="app_id" DataSourceID="SqlDataSource1" Visible="False">
              <Columns>
<asp:BoundField DataField="name" HeaderText="Name" SortExpression="name">
    <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
</asp:BoundField>
                  <asp:BoundField DataField="department" HeaderText="Dept" 
                      SortExpression="department">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:BoundField>
                  <asp:BoundField DataField="gpa" HeaderText="GPA" 
                      SortExpression="gpa">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:BoundField>
                  <asp:BoundField DataField="gre" HeaderText="GRE" SortExpression="gre">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:BoundField>
                  <asp:BoundField DataField="toefl" HeaderText="TOEFL" SortExpression="toefl">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:BoundField>
                  <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:BoundField>
                  <asp:CheckBoxField DataField="ad" HeaderText="AD" SortExpression="ad">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:CheckBoxField>
                  <asp:CheckBoxField DataField="rej" HeaderText="REJ" SortExpression="rej">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:CheckBoxField>
              </Columns>
          </asp:GridView>
              <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                  DataSourceID="SqlDataSource2" Visible="False">
                  <Columns>
                      <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name">
                          <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                      </asp:BoundField>
                      <asp:BoundField DataField="department" HeaderText="Dept" 
                          SortExpression="department">
                          <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                      </asp:BoundField>
                      <asp:BoundField DataField="gpa" HeaderText="GPA" SortExpression="gpa">
                          <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                      </asp:BoundField>
                      <asp:BoundField DataField="gre" HeaderText="GRE" SortExpression="gre">
                          <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                      </asp:BoundField>
                      <asp:BoundField DataField="toefl" HeaderText="TOEFL" SortExpression="toefl">
                          <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                      </asp:BoundField>
                      <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email">
                          <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                      </asp:BoundField>
                      <asp:CheckBoxField DataField="decision" HeaderText="Decision" 
                          SortExpression="decision">
                          <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                      </asp:CheckBoxField>
                      <asp:CheckBoxField DataField="ad" HeaderText="AD" SortExpression="ad">
                          <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                      </asp:CheckBoxField>
                      <asp:CheckBoxField DataField="rej" HeaderText="REJ" SortExpression="rej">
                          <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                      </asp:CheckBoxField>
                  </Columns>
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:RUapplyConnectionString %>" 
                  
                  SelectCommand="SELECT [ruid], [name], [department], [gpa], [gre], [toefl], [email], [decision], [app_id], [ad], [rej] FROM [admin_info] WHERE ([name] = @name)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" 
                          Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:RUapplyConnectionString %>" 
              
                  SelectCommand="SELECT [ruid], [name], [department], [gpa], [gre], [toefl], [email], [decision], [ad], [rej], [app_id] FROM [admin_info] WHERE (([gpa] &gt;= @gpa) AND ([gre] &gt;= @gre) AND ([toefl] &gt;= @toefl))">
              <SelectParameters>
                  <asp:ControlParameter ControlID="DropDownList1" DefaultValue="0" Name="gpa" 
                      PropertyName="SelectedValue" Type="Double" />
                  <asp:ControlParameter ControlID="DropDownList6" DefaultValue="0" Name="gre" 
                      PropertyName="SelectedValue" Type="Int32" />
                  <asp:ControlParameter ControlID="DropDownList4" DefaultValue="0" Name="toefl" 
                      PropertyName="SelectedValue" Type="Int32" />
              </SelectParameters>
          </asp:SqlDataSource>
          <h1>Step 2: Make Decision</h1><p>
              <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                  Text="Get list" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="step2" runat="server" Text="See Instructions" 
              onclick="step2_Click"/>
              </p>
    <asp:Literal ID="Literal1" runat="server" Visible=false><table width="100%" bgcolor="#ffdddd" visible="false"><tr>
          <td>
              <ol>
                  <li>Click <strong>Edit</strong> if you want to make a decision to this applicant.</li><br /><li>
                  Check the 
                      <strong>Decision</strong> field.</li><br /><li>If an admission decision is made, 
                      check the <strong>Admission</strong> field and specify the type.</li><br /><ul><li>
                      &quot;1&quot; means fellowship;</li>
                      <li>&quot;2&quot; means TA;</li>
                      <li>&quot;3&quot; means RA;</li>
                      <li>&quot;4&quot; means admission without fund.</li>
                      </ul><br />
                         <li>If a rejection decision is made, check the <strong>Rejection</strong> field and 
                             specify the reason.</li><br /><ul>
                      <li>&quot;Reason1&quot; means academic ability is not competitive;</li>
                      <li>&quot;Reason2&quot; means standard test scores are not competitive;</li>
                      <li>&quot;Reason3&quot; means no professor is available in proposed specialization.</li></ul><br />
                      
                     <li>Click <strong>Update</strong> to confirm or <strong>Cancel</strong> to abort 
                         your operation on each applicant.</li>
              </ol>
          </td></tr></table></asp:Literal>

              <br />

          <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
              DataKeyNames="app_id" DataSourceID="SqlDataSource3" 
                  onselectedindexchanged="GridView3_SelectedIndexChanged" Visible="False">
              <Columns>
                  <asp:BoundField DataField="name" HeaderText="Name" ReadOnly="True" 
                      SortExpression="name">
                      <ControlStyle Font-Names="Times New Roman" />
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:BoundField>
                  <asp:BoundField DataField="department" HeaderText="Dept" ReadOnly="True" 
                      SortExpression="department">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:BoundField>
                  <asp:CheckBoxField DataField="ad" HeaderText="AD" SortExpression="ad">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:CheckBoxField>
                  <asp:BoundField DataField="ad_type" HeaderText="AD_Type" 
                      SortExpression="ad_type">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:BoundField>
                  <asp:CheckBoxField DataField="rej" HeaderText="REJ" SortExpression="rej">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:CheckBoxField>
                  <asp:CheckBoxField DataField="rej_reason1" HeaderText="R1" 
                      SortExpression="rej_reason1">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:CheckBoxField>
                  <asp:CheckBoxField DataField="rej_reason2" HeaderText="R2" 
                      SortExpression="rej_reason2">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:CheckBoxField>
                  <asp:CheckBoxField DataField="rej_reason3" HeaderText="R3" 
                      SortExpression="rej_reason3">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:CheckBoxField>
                  <asp:CommandField CancelText="No" ShowEditButton="True" UpdateText="Yes ">
                      <HeaderStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                  </asp:CommandField>
              </Columns>
          </asp:GridView>
              
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
              ConnectionString="<%$ ConnectionStrings:RUapplyConnectionString %>" 
              DeleteCommand="DELETE FROM [admin_info] WHERE [app_id] = @app_id" 
              InsertCommand="INSERT INTO [admin_info] ([ruid], [decision], [ad], [ad_type], [rej], [rej_reason1], [rej_reason2], [rej_reason3], [name], [department], [app_id]) VALUES (@ruid, @decision, @ad, @ad_type, @rej, @rej_reason1, @rej_reason2, @rej_reason3, @name, @department, @app_id)" 
              SelectCommand="SELECT [ruid], [decision], [ad], [ad_type], [rej], [rej_reason1], [rej_reason2], [rej_reason3], [name], [department], [app_id] FROM [admin_info] WHERE ([send_email] = @send_email)" 
              
                  UpdateCommand="UPDATE [admin_info] SET [decision] = @decision, [ad] = @ad, [ad_type] = @ad_type, [rej] = @rej, [rej_reason1] = @rej_reason1, [rej_reason2] = @rej_reason2, [rej_reason3] = @rej_reason3 WHERE [app_id] = @app_id">
              <SelectParameters>
                  <asp:Parameter DefaultValue="False" Name="send_email" Type="Boolean" />
              </SelectParameters>
              <DeleteParameters>
                  <asp:Parameter Name="app_id" Type="Int32" />
              </DeleteParameters>
              <UpdateParameters>
                  <asp:Parameter Name="ruid" Type="Int32" />
                  <asp:Parameter Name="decision" Type="Boolean" />
                  <asp:Parameter Name="ad" Type="Boolean" />
                  <asp:Parameter Name="ad_type" Type="String" />
                  <asp:Parameter Name="rej" Type="Boolean" />
                  <asp:Parameter Name="rej_reason1" Type="Boolean" />
                  <asp:Parameter Name="rej_reason2" Type="Boolean" />
                  <asp:Parameter Name="rej_reason3" Type="Boolean" />
                  <asp:Parameter Name="name" Type="String" />
                  <asp:Parameter Name="department" Type="String" />
                  <asp:Parameter Name="app_id" Type="Int32" />
              </UpdateParameters>
              <InsertParameters>
                  <asp:Parameter Name="ruid" Type="Int32" />
                  <asp:Parameter Name="decision" Type="Boolean" />
                  <asp:Parameter Name="ad" Type="Boolean" />
                  <asp:Parameter Name="ad_type" Type="String" />
                  <asp:Parameter Name="rej" Type="Boolean" />
                  <asp:Parameter Name="rej_reason1" Type="Boolean" />
                  <asp:Parameter Name="rej_reason2" Type="Boolean" />
                  <asp:Parameter Name="rej_reason3" Type="Boolean" />
                  <asp:Parameter Name="name" Type="String" />
                  <asp:Parameter Name="department" Type="String" />
                  <asp:Parameter Name="app_id" Type="Int32" />
              </InsertParameters>
          </asp:SqlDataSource>
  <h1>Step 3: Send Email
              </h1>
  <table width="100%" bgcolor="#ffb3b3"><tr><td>Click &quot;Confirm&quot; to send emails to all 
      the relevant applicants to inform them the admission results.</td></tr></table>
    <p>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Confirm" />
        <cc1:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" 
            ConfirmText="Are you sure to send emails?" TargetControlID="Button2">
        </cc1:ConfirmButtonExtender>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    </form>
  <!-- end #mainContent --></div>
    </form>
  <div id="footer">
<p align="center"><a href="default.aspx">Home</a> | <a href="uinfo.aspx">
    Information</a> | Apply | Status | Admission | Site Map | 
<a href="about.aspx">About</a> | <a href="help.aspx">Help</a></p>
  <!-- end #footer --></div>
<!-- end #container --></div>
</body>
</html>
