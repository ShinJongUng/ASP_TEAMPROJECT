<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="R_Mainpage.aspx.cs" Inherits="ASP_TEAMPROJECT.R_Mainpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style17 {
            text-align: right;
        }
        .auto-style6 {
        width: 16%;
        height: 360px;
        position: absolute;
        top: 160px;
        left: 41px;
        z-index: 1;
    }
    .auto-style11 {
        border-style: solid;
        border-width: 1px;
        padding: 1px 4px;
        height: 60px;
        text-align: center;
        width: 200px;
    }
    .auto-style10 {
        border-style: solid;
        border-width: 1px;
        padding: 1px 4px;
    }
    .auto-style12 {
        height: 250px;
        width: 200px;
        border-style: solid;
        border-width: 1px;
        padding: 1px 4px;
    }
    .auto-style16 {
        width: 200px;
        text-align: center;
        border-style: solid;
        border-width: 1px;
        padding: 1px 4px;
    }
        .auto-style14 {
        width: 16%;
        height: 360px;
        position: absolute;
        top: 161px;
        left: 306px;
        z-index: 1;
    }
    .auto-style15 {
        width: 16%;
        height: 360px;
        position: absolute;
        top: 162px;
        left: 572px;
        z-index: 1;
    }
        .auto-style19 {
            position: absolute;
            top: 103px;
            left: 617px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 102px;
            left: 522px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 176px;
            left: 72px;
            z-index: 1;
            width: 51px;
            height: 38px;
        }
        .auto-style24 {
            position: absolute;
            top: 73px;
            left: 9px;
            z-index: 1;
            width: 189px;
            height: 103px;
        }
        .auto-style25 {
            position: relative;
            left: 5px;
            top: 68px;
            width: 183px;
            height: 105px;
        }
        .auto-style26 {
            position: absolute;
            left: 6px;
            top: 211px;
            width: 191px;
            height: 100px;
            z-index: 1;
        }
        .auto-style27 {
            position: relative;
            left: 1px;
            top: 68px;
            width: 191px;
            height: 102px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style17">
&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style19"></asp:Label>
        <asp:Button ID="Button4" runat="server" CssClass="auto-style20" OnClick="Button4_Click1" Text="로그아웃" />
    </p>
    <table class="auto-style6">
        <tr>
            <td class="auto-style11"><strong>좋아하는 동물 월드컵
                <br class="auto-style10" />4강</strong></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Image ID="Image7" runat="server" CssClass="auto-style23" ImageUrl="~/VSpng.png" />
                <asp:Image ID="Image1" runat="server" CssClass="auto-style24" ImageUrl="~/IDX1/IDX1_IMG/강아지.jpg" />
                <asp:Image ID="Image2" runat="server" CssClass="auto-style26" ImageUrl="~/IDX1/IDX1_IMG/고양이.jpg" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:Button ID="Button1" runat="server" Height="29px" Text="여기를 눌러주세요" Width="192px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <table class="auto-style14">
        <tr>
            <td class="auto-style11"><strong>맛있는 음식 월드컵
                <br class="auto-style10" />4강</strong></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Image ID="Image8" runat="server" CssClass="auto-style24" ImageUrl="~/IDX2/IDX2_IMG/치킨.jpg" />
                <asp:Image ID="Image10" runat="server" CssClass="auto-style23" ImageUrl="~/VSpng.png" />
                <asp:Image ID="Image9" runat="server" CssClass="auto-style27" ImageUrl="~/IDX2/IDX2_IMG/피자.jpg" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:Button ID="Button2" runat="server" Height="29px" Text="여기를 눌러주세요" Width="192px" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    <table class="auto-style15">
        <tr>
            <td class="auto-style11"><strong>연애인 이상형 월드컵 
                <br class="auto-style10" />4강</strong></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Image ID="Image11" runat="server" CssClass="auto-style24" ImageUrl="~/IDX3/IDX3_image/박보영.jpg" />
                <asp:Image ID="Image13" runat="server" CssClass="auto-style23" ImageUrl="~/VSpng.png" />
                <asp:Image ID="Image12" runat="server" CssClass="auto-style25" ImageUrl="~/IDX3/IDX3_image/아이유.jpg" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:Button ID="Button3" runat="server" Height="29px" Text="여기를 눌러주세요" Width="192px" OnClick="Button3_Click" />
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
