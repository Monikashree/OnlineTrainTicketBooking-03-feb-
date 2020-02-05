<%@ Page Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="OnlineTrainTicketBookingApp.SignIn" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder">
    <h1 style="align: center;background-color: deeppink; font-style: normal">Never Rush & Push for train ticket</h1>
    <h2 style="background-color: blueviolet; font-style: normal">Sign In</h2>
    <table class="auto-style1" align=" center">
        <tr>
            <td>Username </td>
            <td>
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
            </td>

        </tr>

    </table>
    <asp:Button ID="LogIn" runat="server" Text="Sign In" Style="height: 26px" rowspan="2" align="center"
        OnClick="SignIn_Click"></asp:Button>
    &nbsp; &nbsp; &nbsp;
            <asp:Button ID="register" runat="server" Text="Sign Up" Style="height: 26px" rowspan="2" align="center"
                OnClick="SignUp_Click"></asp:Button>

</asp:Content>



