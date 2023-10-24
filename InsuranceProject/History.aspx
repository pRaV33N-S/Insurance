<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="InsuranceProject.History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 577px;
            margin-right: 1px;
            margin-top: 66px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align:center">&nbsp;</p>
<p style="text-align:center">Policy History</p>


    <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Height="548px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="716px">
    </asp:GridView>
    <p>
    </p>


</asp:Content>