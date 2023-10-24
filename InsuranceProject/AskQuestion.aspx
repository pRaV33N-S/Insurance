<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="AskQuestion.aspx.cs" Inherits="InsuranceProject.AskQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
       <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  a:link {
        text-decoration: none;
      }
       label #sidebar_btn {
      z-index: 1;
      color: #fff;
      position: fixed;
      cursor: pointer;
      left: 300px;
      padding-left: 60px;
      margin-top:15px;
      font-size: 20px;
      
      transition: 0.5s;
      transition-property: color;
    }
  </style>
    <br><br><br><br><br><br />
 <div class="container" style="text-align: center;">
        <div class="row">
            <div class="col-12">
                <h2 style="color: blue;">ASK QUESTION</h2>
                <form method="POST" autocomplete="off" style="margin: 0 auto;">
                    <div class="form-group">
                        <label for="TextBox7"></label>
                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Question?" TextMode="MultiLine"></asp:TextBox><table>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>

                    </div>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="btn btn-success text-center" />

                </form>
            </div>
        </div>
     </asp:Content>
