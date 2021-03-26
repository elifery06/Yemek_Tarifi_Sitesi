<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="Yemek_Sitesi_Tarifi.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            font-size: x-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="auto-style12">
        <strong><em>HAKKIMIZDA</em></strong></p>
    <asp:DataList ID="DataList2" runat="server" Width="466px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>

    <asp:Image runat="server" Height="186px" ImageUrl="~/resimler/blog.jpg" Width="466px"></asp:Image>
</asp:Content>
