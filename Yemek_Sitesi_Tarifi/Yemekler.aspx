<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Sitesi_Tarifi.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        background-color: #C0C0C0;
        margin-top:15px;
    }
    .auto-style15 {
        width: 100%;
    }
    .auto-style16 {
        text-align: right;
    }
    .auto-style17 {
        width: 197px;
    }
    .auto-style18 {
        text-align: right;
        width: 165px;
    }
    .auto-style19 {
        margin-left: 8px;
    }
    .auto-style20 {
        margin-left: 0px;
    }
    .auto-style22 {
        font-size: large;
        font-weight: bold;
    }
        .auto-style23 {
            width: 25px;
        }
        .auto-style24 {
            width: 32px;
        }
        .auto-style25 {
            height: 23px;
        }
        .auto-style26 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style15">
            <tr>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="28px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="28px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
</asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="464px">
            <ItemTemplate>
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAdi") %>'></asp:Label>
                        </td>
                        <td class="auto-style18">
                            
                           <a href ="Yemekler.aspx?YemekId=<%#Eval("YemekId")%>&islem=sil"><asp:Image ID="Image3" runat="server" CssClass="auto-style19" Height="35px" ImageUrl="~/ikonlar/deleete2.png" Width="35px" /></a>
                        </td>
                        <td class="auto-style16">
                            <a href="YemekDuzenle.aspx?YemekId=<%#Eval("YemekId")%>"><asp:Image ID="Image2" runat="server" CssClass="auto-style20" Height="35px" ImageUrl="~/ikonlar/update.png" Width="35px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style14">
        <table class="auto-style15">
            <tr>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style22" Height="28px"  Text="+" Width="30px" OnClick="Button3_Click"/>
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style22" Height="28px"  Text="-" Width="30px" OnClick="Button4_Click"/>
                    </strong></td>
                <td>YEMEK EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style15">
            <tr>
                <td class="auto-style25"></td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td>YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİF:</td>
                <td><strong>
                    
                    </strong>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style26">
                    <asp:Button ID="BtnEkle" runat="server" Height="28px" OnClick="BtnEkle_Click" Text="Ekle" Width="100px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
