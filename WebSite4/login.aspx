<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 26px;
        }
    .auto-style7 {
        height: 28px;
    }
        .auto-style8 {
            height: 36px;
        }
        .auto-style9 {
            height: 26px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  

    <table style="width:100%;">
        <tr>
            <td  class="auto-style9" colspan="2">欢迎**登录**本网站</td>
        </tr>
        <tr>
            <td  class="auto-style6" style="text-align: right">账户名：</td>
            <td  class="auto-style6" style="text-align: left">
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*请输入账号" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="text-align: right">密码：</td>
            <td class="auto-style6" style="text-align: left">
                <asp:TextBox ID="TextBox2" runat="server" MaxLength="15" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*请输入密码" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="auto-style6">验证码：</td>
            <td  class="auto-style6" style="text-align: left">
                <asp:TextBox ID="TextBox3" runat="server" Width="80px"></asp:TextBox> 
               <img alt="验证码" id="imgCode"  src="VerificationCode.ashx"   
                onclick="this.src='VerificationCode.ashx?tmp='+new Date().getTime().toString(36);" title="看不清楚，换一张"  />
                <asp:Label ID="Label2" runat="server" ForeColor="#FF0066" Text="验证码错误" Visible="False"></asp:Label>
           </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center" class="auto-style8">
                <asp:Button ID="Button2" runat="server" ForeColor="#FF0066" Text="登录" OnClick="Button2_Click" />
                <asp:Label ID="Label1" runat="server" ForeColor="#FF5050" Text="用户名或者密码有误" Visible="False"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#6600FF" NavigateUrl="~/Default.aspx">没有注册?请点击.</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center" class="auto-style7">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;</td>
        </tr>
    </table>

  

</asp:Content>

