<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="Yemek_Sitesi_Tarifi.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style12 {
            width: 100%;
        }
        .auto-style14 {
            background-color: #000066;
        }
        .auto-style13 {
            font-size: x-large;
            color: #33CCFF;
        }
        .auto-style15 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="469px">
    <ItemTemplate>
        <table class="auto-style12">
            <tr>
                <td class="auto-style14"><strong><a href="YemekDetay.aspx?YemekId=<%#Eval ("YemekId") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style13" Text='<%# Eval("YemekAdi") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarifi:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi:<asp:Label ID="Label6" runat="server" CssClass="auto-style15" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </strong>&nbsp;- <strong>Puan</strong>:<strong><em><asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style15"></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333"></td>
                <%-- class="auto-style15">&nbsp;--%>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
