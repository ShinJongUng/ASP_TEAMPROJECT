<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="THXreg.aspx.cs" Inherits="ASP_TEAMPROJECT.Login.THXreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            position: absolute;
            top: 392px;
            left: 31px;
            z-index: 1;
            width: 773px;
            height: 51px;
            font-size: 30pt;
        }
        .auto-style7 {
            width: 273px;
            height: 245px;
            position: absolute;
            top: 132px;
            left: 276px;
        }
        .auto-style8 {
            position: absolute;
            top: 461px;
            left: 96px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 460px;
            left: 429px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p class="auto-style4">
        <img alt="" class="auto-style7" src="checkicon.png" style="z-index: 1" /></p>
    <p>
    </p>
    <p>
    </p>
    <p>
        <strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="이상한TEAM 회원가입이 완료되었습니다."></asp:Label>
        </strong>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Height="44px" OnClick="Button1_Click" Text="로그인 페이지로 이동하기" />
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="44px" OnClick="Button2_Click" Text="메인 홈페이지로 이동하기" />
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
