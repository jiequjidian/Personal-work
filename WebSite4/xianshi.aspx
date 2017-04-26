<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="xianshi.aspx.cs" Inherits="xianshi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 29px;
        }
        .auto-style10 {
        width: 738px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="372px" RepeatColumns="2" RepeatDirection="Horizontal" Width="900px" style="margin-left: 11px" GridLines="Both">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <ItemTemplate>
            <table style="width: 100%; height: 134px;">
                <tr>
                    <td class="auto-style6" rowspan="3">
                        <asp:Image ID="Image1" runat="server" Height="142px" ImageUrl='<%# Eval("image") %>' style="margin-left: 0px" Width="151px" />
                    </td>
                    <td class="auto-style10">名字：<asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">爱好：<asp:Label ID="Label2" runat="server" Text='<%# Eval("hobby") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">级别：<asp:Label ID="Label3" runat="server" Text='<%# Eval("classid") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:DataList>

</asp:Content>

