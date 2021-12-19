<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="IDX1-1_1.aspx.cs" Inherits="ASP_TEAMPROJECT.IDX1_2" %>
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
            <td class="auto-style6" colspan="2"><strong>좋아하는 동물 월드컵 4강</strong></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <img class="auto-style9" src="../../VSpng.png" /><asp:ImageButton ID="ImageButton1" runat="server" Height="293px" ImageUrl="~/IDX1/IDX1_IMG/강아지.jpg" Width="386px" OnClick="ImageButton1_Click" />
                <br />
                <br />
                강아지</td>
            <td class="auto-style8">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="264px" ImageUrl="~/IDX1/IDX1_IMG/고양이.jpg" Width="367px" OnClick="ImageButton2_Click" />
                <br />
                <br />
                고양이</td>
        </tr>
    </table>
</asp:Content>
