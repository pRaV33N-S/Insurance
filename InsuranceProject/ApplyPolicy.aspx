<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="ApplyPolicy.aspx.cs" Inherits="InsuranceProject.ApplyPolicy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 454px;
        margin-top: 60px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p style="text-align:center">&nbsp;</p>
    <p style="text-align:center">Available Policies</p>
    <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Height="617px" Width="1000px">
    </asp:GridView>


</asp:Content>
