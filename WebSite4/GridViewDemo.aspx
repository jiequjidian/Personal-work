<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GridViewDemo.aspx.cs" Inherits="GridViewDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        height: 28px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 428px;">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False"  OnRowDataBound="GridView1_RowDataBound" Width="893px">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="编号" />
                        <asp:ImageField DataImageUrlField="image" HeaderText="样图">
                            <ControlStyle Height="100px" Width="140px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="hobby" HeaderText="hobby" />
                        <asp:BoundField DataField="classid" HeaderText="级别" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="~/xianshi.aspx?id={0}" HeaderText="详情" Text="请点我" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerSettings Mode="NextPreviousFirstLast" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
   