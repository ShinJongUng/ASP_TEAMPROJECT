<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ASP_TEAMPROJECT.Login.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        position: absolute;
        top: 547px;
        left: 600px;
        z-index: 1;
    }
    .auto-style7 {
        width: 43%;
        height: 421px;
        position: absolute;
        top: 120px;
        left: 53px;
        z-index: 1;
    }
    .auto-style8 {
        text-align: center;
        font-size: x-large;
    }
    .auto-style9 {
        text-align: right;
    }
    .auto-style10 {
        text-align: right;
        height: 50px;
    }
    .auto-style11 {
        height: 50px;
    }
    .auto-style12 {
        text-align: right;
        height: 54px;
    }
    .auto-style13 {
        height: 54px;
    }
    .auto-style14 {
        text-align: right;
        height: 48px;
    }
    .auto-style15 {
        height: 48px;
    }
    .auto-style16 {
        height: 50px;
        width: 185px;
    }
    .auto-style17 {
        height: 54px;
        width: 185px;
    }
    .auto-style18 {
        width: 185px;
    }
    .auto-style19 {
        height: 48px;
        width: 185px;
    }
    .auto-style20 {
        color: #CC3300;
    }
    .auto-style21 {
        width: 185px;
        text-align: center;
    }
        .auto-style22 {
            height: 50px;
            width: 9px;
        }
        .auto-style23 {
            height: 54px;
            width: 9px;
        }
        .auto-style24 {
            width: 9px;
        }
        .auto-style25 {
            height: 48px;
            width: 9px;
        }
        .auto-style26 {
            text-align: right;
            height: 59px;
        }
        .auto-style27 {
            width: 185px;
            height: 59px;
        }
        .auto-style28 {
            height: 59px;
        }
        .auto-style29 {
            width: 9px;
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
</p>
<table class="auto-style7" border="0" style="border-style: 2; border-width: 2px; border-color: #000000;">
    <tr>
        <td class="auto-style8" colspan="4" style="border-style: 2; border-color: #000000; border-width: 1px;"><strong>회원가입 페이지</strong></td>
    </tr>
    <tr>
        <td class="auto-style10" style="border-style: 2; border-color: #000000; border-width: 1px;">아이디: </td>
        <td class="auto-style16" style="border-style: 2; border-color: #000000; border-width: 1px;">
            <asp:TextBox ID="TextBox1" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style11" style="border-style: 2; border-color: #000000; border-width: 1px;">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style20" ErrorMessage="아이디는 공란으로 둘 수 없습니다." ControlToValidate="TextBox1" EnableClientScript="False"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" CssClass="auto-style20" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox1" ValidationExpression="[0-9a-zA-Z]{4,10}" EnableClientScript="False">아이디는 영문자와 숫자로 4~10자리를 입력해주세요.</asp:RegularExpressionValidator>
        </td>
        <td class="auto-style22" style="border-style: 2; border-color: #000000; border-width: 1px;">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12" style="border-style: 2; border-color: #000000; border-width: 1px;">비밀번호: </td>
        <td class="auto-style17" style="border-style: 2; border-color: #000000; border-width: 1px;">
            <asp:TextBox ID="TextBox2" runat="server" Width="175px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style13" style="border-style: 2; border-color: #000000; border-width: 1px;">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="auto-style20" ErrorMessage="비밀번호는 공란으로 둘 수 없습니다." ControlToValidate="TextBox2" EnableClientScript="False"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="auto-style20" ErrorMessage="비밀번호는 영문과 숫자를 사용하여 4~10자리로 입력해주세요." ControlToValidate="TextBox2" ValidationExpression="[0-9a-zA-Z]{4,10}" EnableClientScript="False"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style23" style="border-style: 2; border-color: #000000; border-width: 1px;">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12" style="border-style: 2; border-color: #000000; border-width: 1px;">비밀번호 확인: </td>
        <td class="auto-style17" style="border-style: 2; border-color: #000000; border-width: 1px;">
            <asp:TextBox ID="TextBox3" runat="server" Width="175px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style13" style="border-style: 2; border-color: #000000; border-width: 1px;">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" CssClass="auto-style20" ErrorMessage="비밀번호와 다릅니다." EnableClientScript="False"></asp:CompareValidator>
        </td>
        <td class="auto-style23" style="border-style: 2; border-color: #000000; border-width: 1px;">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9" style="border-style: 2; border-color: #000000; border-width: 1px;">별명: </td>
        <td class="auto-style18" style="border-style: 2; border-color: #000000; border-width: 1px;">
            <asp:TextBox ID="TextBox4" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td style="border-style: 2; border-color: #000000; border-width: 1px;">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="auto-style20" ErrorMessage="별명은 공란으로 둘 수 없습니다." ControlToValidate="TextBox4" EnableClientScript="False"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" CssClass="auto-style20" ErrorMessage="별명은 2~8자리로 정해주세요.(한영)" ControlToValidate="TextBox4" ValidationExpression="[가-힣a-zA-Z]{2,8}" EnableClientScript="False"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style24" style="border-style: 2; border-color: #000000; border-width: 1px;">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style26" style="border-style: 2; border-color: #000000; border-width: 1px;">나이: </td>
        <td class="auto-style27" style="border-style: 2; border-color: #000000; border-width: 1px;">
            <asp:TextBox ID="TextBox5" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style28" style="border-style: 2; border-color: #000000; border-width: 1px;">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="auto-style20" ErrorMessage="나이는 공란으로 둘 수 없습니다." ControlToValidate="TextBox5" EnableClientScript="False"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" CssClass="auto-style20" ErrorMessage="존재하지 않는 나이입니다." ValidationExpression="[1-200]{1,3}" ControlToValidate="TextBox5" EnableClientScript="False"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style29" style="border-style: 2; border-color: #000000; border-width: 1px;">
            </td>
    </tr>
    <tr>
        <td class="auto-style14" style="border-style: 2; border-color: #000000; border-width: 1px;">이메일: </td>
        <td class="auto-style19" style="border-style: 2; border-color: #000000; border-width: 1px;">
            <asp:TextBox ID="TextBox6" runat="server" Width="175px"></asp:TextBox>
        </td>
        <td class="auto-style15" style="border-style: 2; border-color: #000000; border-width: 1px;">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="auto-style20" ErrorMessage="이메일은 공란으로 둘 수 없습니다." ControlToValidate="TextBox6" EnableClientScript="False"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" CssClass="auto-style20" ErrorMessage="잘못된 이메일 형식입니다." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox6" EnableClientScript="False"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style25" style="border-style: 2; border-color: #000000; border-width: 1px;">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9" style="border-style: 2; border-color: #000000; border-width: 1px;">&nbsp;</td>
        <td class="auto-style21" style="border-style: 2; border-color: #000000; border-width: 1px;">
            <asp:Button ID="Button2" runat="server" Text="회원가입" Width="182px" Height="50px" OnClick="Button2_Click" />
        </td>
        <td style="border-style: 2; border-color: #000000; border-width: 1px;">&nbsp;&nbsp; <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style20"></asp:Label>
            </strong></td>
        <td class="auto-style24" style="border-style: 2; border-color: #000000; border-width: 1px;">&nbsp;</td>
    </tr>
</table>
<p>
</p>
<p>
    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" OnClick="Button1_Click" Text="메인 화면으로 돌아가기" />
</p>
<p>
    &nbsp;</p>
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
</asp:Content>
