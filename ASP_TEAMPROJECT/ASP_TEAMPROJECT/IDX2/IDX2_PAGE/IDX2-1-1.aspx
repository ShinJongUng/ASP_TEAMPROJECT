<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="IDX2-1-1.aspx.cs" Inherits="ASP_TEAMPROJECT.IDX2.IDX2_PAGE.IDX2_1_1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


    .auto-style6 {
        border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            height: 58px;
            text-align: center;
            font-size: x-large;
        }
    .auto-style7 {
        border-style: solid;
        border-width: 1px;
        padding: 1px 4px;
        width: 397px;
        height: 420px;
        text-align: center;
    }
    .auto-style9 {
        width: 100px;
        height: 100px;
        position: absolute;
        top: 315px;
        left: 373px;
        z-index: 1;
    }
    .auto-style8 {
        border-style: solid;
        border-width: 1px;
        padding: 1px 4px;
        height: 420px;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style6" colspan="2"><strong>좋아하는 음식 월드컵 4강</strong></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <img class="auto-style9" src="../../VSpng.png" /><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/IDX2/IDX2_IMG/족발.jpg" OnClick="ImageButton3_Click" />
                <br />
                <br />
                <br />
                족발</td>
            <td class="auto-style8">
                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/IDX2/IDX2_IMG/치킨.jpg" OnClick="ImageButton4_Click" />
                <br />
                치킨</td>
        </tr>
    </table>
</asp:Content>
