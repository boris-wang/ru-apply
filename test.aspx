<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #form1 {
            font-family: "Times New Roman", Times, serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        Step1: Get Records<br />
        <br />
        Please set up the requirements for the minimum of GPA, GRE, TOEFL to return the 
        relevent applicants&#39; records.<br />
        <br />
&nbsp;GPA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GRE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TOEFL<br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>2.5</asp:ListItem>
            <asp:ListItem>3.0</asp:ListItem>
            <asp:ListItem>3.5</asp:ListItem>
            <asp:ListItem>3.8</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList6" runat="server">
            <asp:ListItem>1100</asp:ListItem>
            <asp:ListItem>1200</asp:ListItem>
            <asp:ListItem>1300</asp:ListItem>
            <asp:ListItem>1400</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>80</asp:ListItem>
            <asp:ListItem>90</asp:ListItem>
            <asp:ListItem>100</asp:ListItem>
            <asp:ListItem>115</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
    <asp:Button ID="Button1" runat="server" Text="Confirm" onclick="Button1_Click" />
        <br />
        <br />
        Or you can input the RUID number to return the specific applicant.<br />
        <br />
        Input the RUID<br />
        <asp:TextBox ID="TextBox1" runat="server" Width="93px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Confirm" />
        <br />
        <br />
        Step2: Make Decision<br />
        <br />
        1. After you get the records, to each applicant you want to make a decision, 
        please click &quot;Edit&quot;.<br />
        2. Check the &quot;Decision&quot; field if you want to make a decision to him or her this 
        time.<br />
        3. If a admission decision is made, check the &quot;Admission&quot; field and input the 
        &quot;AD_Type&quot;: &#39;1&#39; means fellowship; &#39;2&#39; means TA; &#39;3&#39; means RA; &#39;4&#39; means admission 
        with out fund.<br />
        4. If a rejection decision is make, check the &quot;Rejection&quot; field and check the 
        &quot;Reason1&quot;, &quot;Reason2&quot;, &quot;Reason3&quot; field according to the situation: &quot;Reason1&quot; 
        means academic abilities is&nbsp; not competitive; &quot;Reason2&quot; means your language standard tests&#39; score is not competitive; 
        &quot;Reason3&quot; means no majot professor available in proposed specialization major.<br />
        5. Click &quot;Update&quot; to confirm or &quot;Cancel&quot; to cancel your operation to each 
        applicant.<br />
        </div>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RUapplyConnectionString %>" 
            DeleteCommand="DELETE FROM [admin_info] WHERE [ruid] = @original_ruid" 
            InsertCommand="INSERT INTO [admin_info] ([name], [ruid], [department], [gpa], [gre], [toefl], [email], [decision], [ad], [ad_type], [rej], [rej_reason1], [rej_reason2], [rej_reason3]) VALUES (@name, @ruid, @department, @gpa, @gre, @toefl, @email, @decision, @ad, @ad_type, @rej, @rej_reason1, @rej_reason2, @rej_reason3)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [name], [ruid], [department], [gpa], [gre], [toefl], [email], [decision], [ad], [ad_type], [rej], [rej_reason1], [rej_reason2], [rej_reason3] FROM [admin_info] WHERE (([gpa] &gt;= @gpa) AND ([gre] &gt;= @gre) AND ([toefl] &gt;= @toefl))" 
            
            UpdateCommand="UPDATE [admin_info] SET [name] = @name, [department] = @department, [gpa] = @gpa, [gre] = @gre, [toefl] = @toefl, [email] = @email, [decision] = @decision, [ad] = @ad, [ad_type] = @ad_type, [rej] = @rej, [rej_reason1] = @rej_reason1, [rej_reason2] = @rej_reason2, [rej_reason3] = @rej_reason3 WHERE [ruid] = @original_ruid" 
            onselecting="SqlDataSource2_Selecting">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="0" Name="gpa" 
                    PropertyName="SelectedValue" Type="Double" />
                <asp:ControlParameter ControlID="DropDownList6" DefaultValue="0" Name="gre" 
                    PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="DropDownList4" DefaultValue="0" Name="toefl" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="original_ruid" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="gpa" Type="Double" />
                <asp:Parameter Name="gre" Type="Int32" />
                <asp:Parameter Name="toefl" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="decision" Type="Boolean" />
                <asp:Parameter Name="ad" Type="Boolean" />
                <asp:Parameter Name="ad_type" Type="String" />
                <asp:Parameter Name="rej" Type="Boolean" />
                <asp:Parameter Name="rej_reason1" Type="Boolean" />
                <asp:Parameter Name="rej_reason2" Type="Boolean" />
                <asp:Parameter Name="rej_reason3" Type="Boolean" />
                <asp:Parameter Name="original_ruid" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="ruid" Type="String" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="gpa" Type="Double" />
                <asp:Parameter Name="gre" Type="Int32" />
                <asp:Parameter Name="toefl" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="decision" Type="Boolean" />
                <asp:Parameter Name="ad" Type="Boolean" />
                <asp:Parameter Name="ad_type" Type="String" />
                <asp:Parameter Name="rej" Type="Boolean" />
                <asp:Parameter Name="rej_reason1" Type="Boolean" />
                <asp:Parameter Name="rej_reason2" Type="Boolean" />
                <asp:Parameter Name="rej_reason3" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ruid" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="ruid" HeaderText="RUID" ReadOnly="True" 
                    SortExpression="ruid" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="department" HeaderText="DEPT" 
                    SortExpression="department" />
                <asp:BoundField DataField="gpa" HeaderText="GPA" SortExpression="gpa" />
                <asp:BoundField DataField="gre" HeaderText="GRE" SortExpression="gre" />
                <asp:BoundField DataField="toefl" HeaderText="TOEFL" SortExpression="toefl" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:CheckBoxField DataField="decision" HeaderText="Decision" 
                    SortExpression="decision" />
                <asp:CheckBoxField DataField="ad" HeaderText="Admission" SortExpression="ad" />
                <asp:BoundField DataField="ad_type" HeaderText="AD_Type" 
                    SortExpression="ad_type" />
                <asp:CheckBoxField DataField="rej" HeaderText="Rejection" 
                    SortExpression="rej" />
                <asp:CheckBoxField DataField="rej_reason1" HeaderText="Reason1" 
                    SortExpression="rej_reason1" />
                <asp:CheckBoxField DataField="rej_reason2" HeaderText="Reason2" 
                    SortExpression="rej_reason2" />
                <asp:CheckBoxField DataField="rej_reason3" HeaderText="Reason3" 
                    SortExpression="rej_reason3" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ruid" DataSourceID="SqlDataSource2" Visible="False">
            <Columns>
                <asp:BoundField DataField="ruid" HeaderText="RUID" ReadOnly="True" 
                    SortExpression="ruid" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="department" HeaderText="DEPT" 
                    SortExpression="department" />
                <asp:BoundField DataField="gpa" HeaderText="GPA" SortExpression="gpa" />
                <asp:BoundField DataField="gre" HeaderText="GRE" SortExpression="gre" />
                <asp:BoundField DataField="toefl" HeaderText="TOEFL" SortExpression="toefl" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:CheckBoxField DataField="decision" HeaderText="Decision" 
                    SortExpression="decision" />
                <asp:CheckBoxField DataField="ad" HeaderText="Admission" SortExpression="ad" />
                <asp:BoundField DataField="ad_type" HeaderText="AD_Type" 
                    SortExpression="ad_type" />
                <asp:CheckBoxField DataField="rej" HeaderText="Rejection" 
                    SortExpression="rej" />
                <asp:CheckBoxField DataField="rej_reason1" HeaderText="Reason1" 
                    SortExpression="rej_reason1" />
                <asp:CheckBoxField DataField="rej_reason2" HeaderText="Reason2" 
                    SortExpression="rej_reason2" />
                <asp:CheckBoxField DataField="rej_reason3" HeaderText="Reason3" 
                    SortExpression="rej_reason3" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        Step3: Send Emails</p>
    <p>
                Click &quot;Confirm&quot; button to send email to all the relevant applicants to inform 
        them the admission or rejection.</p>
    <p>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Confirm" />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RUapplyConnectionString %>" 
            DeleteCommand="DELETE FROM [admin_info] WHERE [ruid] = @ruid" 
            InsertCommand="INSERT INTO [admin_info] ([ruid], [name], [department], [gpa], [gre], [toefl], [email], [decision], [ad], [ad_type], [rej], [rej_reason1], [rej_reason2], [rej_reason3]) VALUES (@ruid, @name, @department, @gpa, @gre, @toefl, @email, @decision, @ad, @ad_type, @rej, @rej_reason1, @rej_reason2, @rej_reason3)" 
            SelectCommand="SELECT [ruid], [name], [department], [gpa], [gre], [toefl], [email], [decision], [ad], [ad_type], [rej], [rej_reason1], [rej_reason2], [rej_reason3] FROM [admin_info] WHERE ([ruid] = @ruid)" 
            UpdateCommand="UPDATE [admin_info] SET [name] = @name, [department] = @department, [gpa] = @gpa, [gre] = @gre, [toefl] = @toefl, [email] = @email, [decision] = @decision, [ad] = @ad, [ad_type] = @ad_type, [rej] = @rej, [rej_reason1] = @rej_reason1, [rej_reason2] = @rej_reason2, [rej_reason3] = @rej_reason3 WHERE [ruid] = @ruid">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="ruid" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="ruid" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="gpa" Type="Double" />
                <asp:Parameter Name="gre" Type="Int32" />
                <asp:Parameter Name="toefl" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="decision" Type="Boolean" />
                <asp:Parameter Name="ad" Type="Boolean" />
                <asp:Parameter Name="ad_type" Type="String" />
                <asp:Parameter Name="rej" Type="Boolean" />
                <asp:Parameter Name="rej_reason1" Type="Boolean" />
                <asp:Parameter Name="rej_reason2" Type="Boolean" />
                <asp:Parameter Name="rej_reason3" Type="Boolean" />
                <asp:Parameter Name="ruid" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="ruid" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="gpa" Type="Double" />
                <asp:Parameter Name="gre" Type="Int32" />
                <asp:Parameter Name="toefl" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="decision" Type="Boolean" />
                <asp:Parameter Name="ad" Type="Boolean" />
                <asp:Parameter Name="ad_type" Type="String" />
                <asp:Parameter Name="rej" Type="Boolean" />
                <asp:Parameter Name="rej_reason1" Type="Boolean" />
                <asp:Parameter Name="rej_reason2" Type="Boolean" />
                <asp:Parameter Name="rej_reason3" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Button" />
        <asp:TextBox ID="TextBox2" runat="server" Width="64px"></asp:TextBox>
    </p>
    </form>
</body>
</html>
