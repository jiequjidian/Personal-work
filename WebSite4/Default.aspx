<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 26px;
            font-family:FangSong;
        }
        .auto-style8 {
            height: 57px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td style="text-align: right" class="auto-style6">&nbsp;</td>
            <td style="text-align: left" class="auto-style6">
                欢迎**注册**本网站</td>
        </tr>
        <tr>
            <td style="text-align: right" class="auto-style6">账户名：</td>
            <td style="text-align: left" class="auto-style6">
                <asp:TextBox ID="TxtAccount" runat="server" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtAccount" ErrorMessage="*请输入账号" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CvAccount" runat="server" ErrorMessage="*此账户已存在，请重新输入" ForeColor="Red" OnServerValidate="CvAccount_ServerValidate1" ControlToValidate="TxtAccount"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="text-align: right">密码：</td>
            <td class="auto-style6" style="text-align: left">
                <asp:TextBox ID="TxtPassword" runat="server" MaxLength="15" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPassword" ErrorMessage="*请输入密码" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="text-align: right">确认密码：</td>
            <td class="auto-style6" style="text-align: left">
                <asp:TextBox ID="TxtPasswordCheck" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPasswordCheck" Display="Dynamic" ErrorMessage="*请输入确认密码" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPassword" ControlToValidate="TxtPasswordCheck" Display="Dynamic" ErrorMessage="*密码不一致" ForeColor="#FF0066"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="text-align: right">年龄</td>
            <td class="auto-style6" style="text-align: left">
                <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TxtAge" Display="Dynamic" ErrorMessage="*年龄范围为18-90" ForeColor="#FF0066" MaximumValue="90" MinimumValue="18" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="text-align: right">邮件</td>
            <td class="auto-style6" style="text-align: left">
                <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" Display="Dynamic" ErrorMessage="*请输入正确邮件地址" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="text-align: right">手机号码：</td>
            <td class="auto-style6" style="text-align: left">
                <asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtPhone" Display="Dynamic" ErrorMessage="*请输入正确的手机号码" ForeColor="#FF0066" ValidationExpression="1\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="text-align: right">验证码:</td>
            <td class="auto-style6" style="text-align: left">
                <asp:TextBox ID="TxtCheckCode" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox8" runat="server" Enabled="False" ReadOnly="True" Width="56px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtCheckCode" Display="Dynamic" ErrorMessage="*" ForeColor="#FF6699"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox8" ControlToValidate="TxtCheckCode" Display="Dynamic" ErrorMessage="验证码有误" ForeColor="#FF0066"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td style="text-align: left" class="auto-style8">
                <asp:Button ID="Button1" runat="server" ForeColor="#FF0066" Text="注册" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

