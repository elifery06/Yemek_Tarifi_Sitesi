<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Sitesi_Tarifi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            font-size: xx-large;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            font-size: xx-small;
        }
        .auto-style15 {
            font-size: large;
        }
        .auto-style16 {
            background-color: #CC66FF;
        }
        .auto-style17 {
            font-size: medium;
            font-weight: bold;
            margin-left: 24px;
            background-color: #C0C0C0;
        }
        .auto-style19 {
            width: 149px;
        }
        .auto-style20 {
            text-align: right;
            width: 149px;
        }
        .auto-style21 {
            margin-bottom: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text="Label"></asp:Label>
    </strong>
    <asp:DataList ID="DataList2" runat="server" Width="467px">
        <ItemTemplate>
            <table class="auto-style13">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style15" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: double; border-bottom-width: thin; border-bottom-color: #000000">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style14" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style16">Yorum Yapma Paneli</div>
    <asp:Panel runat="server">
        <table class="auto-style13">
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Ad Soyad:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style21" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Yorumunuz:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="30px" Text="Yorum Yap" Width="157px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
