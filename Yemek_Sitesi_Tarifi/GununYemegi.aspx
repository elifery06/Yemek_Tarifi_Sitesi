<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Sitesi_Tarifi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style11 {
            width: auto;
            height: 298px;
        }
        .auto-style16 {
        height: 20px;
        margin-left: 240px;
          width: auto;
        }
    .auto-style18 {
        margin-right: 0px;
            margin-top: 0px;
            margin-left: 0px;
        }
    .auto-style19 {
        width: 102%;
    }
        .auto-style20 {
            font-size: x-large;
        }
        .auto-style21 {
            height: 20px;
            margin-left: 240px;
            text-align: left;
            width: auto;
        }
        .auto-style22 {
            height: 20px;
            margin-left: 120px;
            width: auto;
        }
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            text-align: right;
        }
        .auto-style26 {
            height: 256px;
            text-align: center;
            margin-right: 9px;
            background-color: #2a50e2;
            width: 443px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style18" Height="934px" Width="463px">
    <ItemTemplate>
        <table class="auto-style19">
            <tr>
                <td>
                    <table class="auto-style26">
                        <tr>
                            <td class="auto-style22">
                                <strong>
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style20" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style22">
                                <strong>Malzemeler</strong>:<asp:Label ID="Label4" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style22">
                                <strong>Tarif</strong>:<asp:Label ID="Label5" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">
                                <asp:Image ID="Image1" runat="server" Height="112px" Width="439px" ImageUrl='<%# Eval("GununYemegiResim") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style21">
                                <table class="auto-style24">
                                    <tr>
                                        <td><strong>Puan</strong>:<asp:Label ID="Label6" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style25"><strong>Eklenme Tarihi</strong>:<asp:Label ID="Label8" runat="server" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style21">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

