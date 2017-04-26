<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menu.ascx.cs" Inherits="menu" %>
<style type="text/css">
    .auto-style1 {
        font-weight: bold;
    }
    .auto-style2 {
        height: 23px;
        width: 195px;
        font-weight: bold;
    }
    .auto-style3 {
        height: 23px;
        width: 145px;
        font-weight: bold;
    }
    .style4{
         width: 900px;
            height: 200px;
    }
    .auto-style4 {
        height: 136px;
        font-size: xx-large;
        text-align: center;
    }
</style>

<table class="style4" background="images/bg1.jpg" valign="bottom" >
    <tr>
        <td class="auto-style4" colspan="5">
            个人 网站</td>
    </tr>
    <tr>
        <td class="auto-style1" style="vertical-align: bottom; text-align: center; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: large">
            <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="#FF66FF" ForeColor="#FF0066" NavigateUrl="~/Default.aspx">注册</asp:HyperLink>
        </td>
        <td class="auto-style3" style="vertical-align: bottom; text-align: center; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: large">
            <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#CC0066" NavigateUrl="~/xianshi.aspx">显示</asp:HyperLink>
        </td>
        <td class="auto-style1" style="vertical-align: bottom; text-align: center; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: large">
            <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#FF0066" NavigateUrl="~/shangpin.aspx">商品</asp:HyperLink>
        </td>
        <td class="auto-style2" style="vertical-align: bottom; text-align: center; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: large">
            <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="#FF0066" NavigateUrl="~/GridViewDemo.aspx">GridviceDemo</asp:HyperLink>
        </td>
        <td class="auto-style1" style="vertical-align: bottom; text-align: center; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: large">
            <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="#FF0066" NavigateUrl="~/login.aspx">登录</asp:HyperLink>
        </td>
    </tr>
</table>

<p style="text-align: center">
    &nbsp;</p>


