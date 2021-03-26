<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Sitesi_Tarifi.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style14 {
        background-color: #C0C0C0;
        margin-top:15px;
    }
    .auto-style15 {
        width: 100%;
    }
        .auto-style23 {
            width: 25px;
        }
        .auto-style22 {
        font-size: large;
        font-weight: bold;
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
    .auto-style16 {
        text-align: right;
    }
    .auto-style20 {
        margin-left: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style15">
            <tr>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="28px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="28px" Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td>ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="464px">
            <ItemTemplate>
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style18">
                            
                          <asp:Image ID="Image3" runat="server" CssClass="auto-style19" Height="35px" ImageUrl="~/ikonlar/deleete2.png" Width="35px" />
                        </td>
                        <td class="auto-style16">
                           <asp:Image ID="Image2" runat="server" CssClass="auto-style20" Height="35px" ImageUrl="~/ikonlar/update.png" Width="35px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style14">
        <table class="auto-style15">
            <tr>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style22" Height="28px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style22" Height="28px" Text="-" Width="30px" OnClick="Button4_Click"   />
                    </strong></td>
                <td>ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="464px">
        <ItemTemplate>
            <table class="auto-style15">
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad")%>'></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:Image ID="Image4" runat="server" CssClass="auto-style19" Height="35px" ImageUrl="~/ikonlar/deleete2.png" Width="35px" />
                    </td>
                    <td class="auto-style16">
                        <a href="YorumDetay.aspx?YorumId=<%#Eval("YorumId")%>"><asp:Image ID="Image5" runat="server" CssClass="auto-style20" Height="35px" ImageUrl="~/ikonlar/update.png" Width="35px" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
       </asp:Panel>
    </asp:Content>
