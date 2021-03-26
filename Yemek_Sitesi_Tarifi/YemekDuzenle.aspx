<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="Yemek_Sitesi_Tarifi.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            margin-left: 40px;
        }
        .auto-style15 {
            text-align: right;
            font-size: large;
        }
        .auto-style16 {
            text-align: justify;
            margin-left: 40px;
        }
        .auto-style17 {
            font-weight: bold;
            font-size: large;
            margin-left: 37px;
            background-color: #33CCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style13">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="100px"  Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Maalzemeler:&nbsp;</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Tarif:</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Kategori:</strong></td>
            <td class="auto-style14">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style17" OnClick="Button1_Click" Text="Güncelle" Width="181px" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
