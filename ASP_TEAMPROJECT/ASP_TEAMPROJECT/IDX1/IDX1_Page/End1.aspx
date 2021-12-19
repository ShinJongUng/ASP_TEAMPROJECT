<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="End1.aspx.cs" Inherits="ASP_TEAMPROJECT.IDX1.IDX1_Page.End1" %>
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
        height: 420px;
        text-align: center;
    }
        .auto-style8 {
            width: 84px;
            height: 79px;
            z-index: 1;
            left: 104px;
            top: 225px;
            position: absolute;
            right: 933px;
        }
        .auto-style9 {
            width: 40%;
            z-index: 1;
            left: 295px;
            top: 205px;
            position: absolute;
            height: 360px;
            right: 494px;
        }
        .auto-style11 {
            height: 30px;
        }
        .auto-style13 {
            width: 164px;
            height: 32px;
            text-align: right;
        }
        .auto-style14 {
            height: 32px;
            text-align: left;
        }
        .auto-style17 {
            height: 30px;
            text-align: center;
        }
        .auto-style18 {
            text-align: center;
        }
        .auto-style19 {
            font-size: xx-small;
        }
        .auto-style21 {
            text-align: left;
            height: 32px;
            width: 415px;
        }
        .auto-style22 {
            font-size: small;
            color: #99CCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style6"><strong>좋아하는 동물 월드컵 결과<img alt="" style="z-index: 1" class="auto-style8" src="../IDX1_IMG/free-icon-trophy-1021194.png" /></strong></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <img alt="" style="z-index: 1" class="auto-style8" src="../IDX1_IMG/free-icon-trophy-1021194.png" /><br />
                <br />
                <br />
                <br />
                <img alt="" style="z-index: 1" class="auto-style8" src="../IDX1_IMG/free-icon-trophy-1021194.png" /><asp:Image ID="Image1" runat="server" style="z-index: 2; left: 36px; top: 334px; position: absolute; height: 199px; width: 241px" />
                <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 156px; top: 166px; position: absolute; font-size: xx-large"></asp:Label>
                <img alt="" style="z-index: 1" class="auto-style8" src="../IDX1_IMG/free-icon-trophy-1021194.png" /><img alt="" style="z-index: 1" class="auto-style8" src="../IDX1_IMG/free-icon-trophy-1021194.png" /><table class="auto-style9">
                    <tr>
                        <td class="auto-style11" colspan="2"><strong>
                            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Chat1.xml"></asp:XmlDataSource>
                            댓글</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">별명: </td>
                        <td class="auto-style14">
                            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">한 줄 댓글: </td>
                        <td class="auto-style14">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17" colspan="2">
                            <asp:Button ID="Button1" runat="server" Text="댓글 달기" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="홈으로" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style18" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="XmlDataSource1" style="z-index: 1; left: 5px; top: 170px; position: absolute; right: 0px; overflow:scroll; ">
                                <ItemTemplate>
                                    <div class="auto-style21">
                                        <asp:Label ID="nameLabel" runat="server" CssClass="auto-style22" Text='<%# Eval("name") %>' />
                                        :<asp:Label ID="bodyLabel" runat="server" Text='<%# Eval("body") %>' style="font-size: small" />
                                        <br />
                                        <asp:Label ID="dateLabel" runat="server" CssClass="auto-style19" Text='<%# Eval("date") %>' />
                                    </div>
                                </ItemTemplate>
                                <SeparatorTemplate>
                                    <hr />
                                </SeparatorTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
