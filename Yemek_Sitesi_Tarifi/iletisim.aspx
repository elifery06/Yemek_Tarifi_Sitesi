<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Sitesi_Tarifi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style12 {
        width: 100%;
    }
    .auto-style14 {
        text-align: right;
    }
    .auto-style15 {
        font-size: x-large;
        text-align: center;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style12">
    <tr>
        <td class="auto-style15" colspan="2"><strong><em>MESAJ PANELİ</em></strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Mail Adresniz:</strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Mesaj:</strong></td>
        <td><strong>
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
            </strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" Width="184px" />
        </td>
    </tr>
</table>
</asp:Content>
