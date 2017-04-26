<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" Async="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#FF0066" BorderStyle="None" BorderWidth="1px" CaptionAlign="Top" CellPadding="3" Width="885px">
    <AlternatingRowStyle BackColor="#660066" Font-Size="Larger" />
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    <table style="width:100%;">
        <tr>
            <td style="vertical-align: middle; font-family: 宋体, Arial, Helvetica, sans-serif; text-align: center;">
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderStyle="Dotted" ForeColor="#FF0066" OnClick="Button1_Click" Text="发送邮件" />
            </td>
        </tr>
    </table>

</asp:Content>

