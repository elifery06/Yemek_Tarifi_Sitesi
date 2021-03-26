<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Sitesi_Tarifi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        width: 100%;
    }
    .auto-style13 {
        text-align: right;
    }
    .auto-style14 {
        text-align: right;
        height: 26px;
    }
    .auto-style15 {
        height: 26px;
        margin-left: 40px;
            text-align: center;
        }
        .auto-style17 {
            width: 466px;
            text-align: center;
            height: 19px;
            background-color: cadetblue;
        }
        .auto-style18 {
            margin-left: 0px;
        }
        .auto-style19 {
            margin-left: 40px;
            text-align: center;
        }
        .auto-style20 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style17">
    <tr>
        <td>&nbsp;</td>
   <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Tarid Ad:</strong></td>
        <td class="auto-style20">
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Malzemeler:</strong></td>
        <td class="auto-style19">
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Yapılış:</strong></td>
        <td class="auto-style19">
            &nbsp;<asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Resim:</strong></td>
        <td class="auto-style15">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Tarif Öneren:</strong></td>
        <td class="auto-style19">
            <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"><strong>Mail Adresi:</strong></td>
        <td class="auto-style19">
            <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style19"><strong><em>
            <asp:Button ID="BtnTarifOner" runat="server" BackColor="#0066FF" CssClass="auto-style18" Height="40px" Text="Tarif Öner" Width="136px" OnClick="BtnTarifOner_Click1" />
            </em></strong></td>
    </tr>
</table>
</asp:Content>
