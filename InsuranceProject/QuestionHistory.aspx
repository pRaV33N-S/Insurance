<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="QuestionHistory.aspx.cs" Inherits="InsuranceProject.QuestionHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <h3 style="text-align:center; font-size:25px">Questions</h3>
    <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" Height="182px" Width="1146px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" DataKeyNames="question_id" DataSourceID="SqlDataSource1" style="margin-left: 367px">
    <Columns>
        <asp:BoundField DataField="question_id" HeaderText="Question_id" InsertVisible="False" ReadOnly="True" SortExpression="question_id" />
        <asp:BoundField DataField="customer_id" HeaderText="Customer ID" SortExpression="customer_id" />
        <asp:BoundField DataField="question" HeaderText="Question" SortExpression="question" />
        <asp:BoundField DataField="admin_comment" HeaderText="Admin Comment" SortExpression="admin_comment" />
        <asp:BoundField DataField="asked_date" HeaderText="Asked Date" SortExpression="asked_date" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [questions] WHERE [question_id] = @question_id" InsertCommand="INSERT INTO [questions] ([customer_id], [question], [admin_comment], [asked_date]) VALUES (@customer_id, @question, @admin_comment, @asked_date)" ProviderName="<%$ ConnectionStrings:con.ProviderName %>" SelectCommand="SELECT * FROM [questions]" UpdateCommand="UPDATE [questions] SET [customer_id] = @customer_id, [question] = @question, [admin_comment] = @admin_comment, [asked_date] = @asked_date WHERE [question_id] = @question_id">
        <DeleteParameters>
            <asp:Parameter Name="question_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="customer_id" Type="Int32" />
            <asp:Parameter Name="question" Type="String" />
            <asp:Parameter Name="admin_comment" Type="String" />
            <asp:Parameter Name="asked_date" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="customer_id" Type="Int32" />
            <asp:Parameter Name="question" Type="String" />
            <asp:Parameter Name="admin_comment" Type="String" />
            <asp:Parameter Name="asked_date" Type="DateTime" />
            <asp:Parameter Name="question_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
