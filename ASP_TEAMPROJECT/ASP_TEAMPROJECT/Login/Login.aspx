<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASP_TEAMPROJECT.Login.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 188px;
            height: 186px;
            position: absolute;
            top: 135px;
            left: 311px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 331px;
            left: 358px;
            z-index: 1;
            font-size: xx-large;
        }
        .auto-style8 {
            width: 36%;
            height: 116px;
            position: absolute;
            top: 371px;
            left: 100px;
            z-index: 1;
        }
        .auto-style9 {
            width: 261px;
            text-align: right;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style11 {
            font-weight: bold;
        }
        .auto-style12 {
            width: 261px;
            text-align: right;
            height: 32px;
        }
        .auto-style13 {
            text-align: left;
            height: 32px;
        }
        .auto-style14 {
            text-align: left;
            height: 32px;
            width: 184px;
        }
        .auto-style15 {
            text-align: left;
            width: 184px;
        }
        .auto-style16 {
            color: #CC3300;
        }
        .auto-style17 {
            position: absolute;
            top: 496px;
            left: 318px;
            z-index: 1;
            color: #CC3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style17"></asp:Label>
    </p>
    <p>
        <img alt="" class="auto-style6" src="login.png" /></p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text="Login"></asp:Label>
        </strong>
        <table class="auto-style8">
            <tr>
                <td class="auto-style12">아이디:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style16" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">비밀번호:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style16" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    <asp:Button ID="Button2" runat="server" Height="27px" OnClick="Button2_Click" Text="회원가입" Width="99px" CausesValidation="False" />
&nbsp; <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="27px" Text="로그인" Width="99px" OnClick="Button1_Click" />
                    </strong>&nbsp;
                    <asp:Button ID="Button3" runat="server" Height="27px" OnClick="Button3_Click" Text="메인 페이지로 돌아가기" Width="161px" CausesValidation="False" />
                </td>
            </tr>
        </table>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
