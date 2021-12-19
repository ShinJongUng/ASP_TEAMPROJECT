<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="IDX1-2_1.aspx.cs" Inherits="ASP_TEAMPROJECT.IDX1.IDX1_Page.IDX1_2" %>
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
                <img class="auto-style9" src="../../VSpng.png" /><asp:ImageButton ID="ImageButton3" runat="server" Height="337px" ImageUrl="~/IDX1/IDX1_IMG/토끼.jpg" OnClick="ImageButton3_Click" Width="351px" />
                <br />
                <br />
                토끼</td>
            <td class="auto-style8">
                <asp:ImageButton ID="ImageButton4" runat="server" Height="304px" ImageUrl="~/IDX1/IDX1_IMG/펭귄.jpg" OnClick="ImageButton4_Click" Width="375px" />
                <br />
                <br />
                펭귄</td>
        </tr>
    </table>
</asp:Content>
