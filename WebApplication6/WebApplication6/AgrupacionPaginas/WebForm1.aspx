<%@ Page MasterPageFile="~/Site1.Master" Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs"
    Inherits="WebApplication6.WebForm1" %>

<asp:Content ID="content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Label ID="lbl" runat="server" Text="Usuario:"></asp:Label>
    <asp:TextBox ID="txt" runat="server"></asp:TextBox>
    <%--<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
<asp:Menu ID="Menu1" DataSourceID="SiteMapDataSource1" runat="server" 
        BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" 
        Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px">
    <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <DynamicMenuStyle BackColor="#FFFBD6" />
    <DynamicSelectedStyle BackColor="#FFCC66" />
    <StaticHoverStyle BackColor="#990000" ForeColor="White" />
    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <StaticSelectedStyle BackColor="#FFCC66" />
</asp:Menu>--%>
    <br />
    <%-- <asp:TreeView ID="TreeView1" DataSourceID="SiteMapDataSource1" runat="server" 
        ImageSet="BulletedList" ShowExpandCollapse="False">
        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" 
            HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
        <ParentNodeStyle Font-Bold="False" />
        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" 
            HorizontalPadding="0px" VerticalPadding="0px" />
    </asp:TreeView>--%>
    <br />
</asp:Content>
