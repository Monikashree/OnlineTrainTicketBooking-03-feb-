<%@ Page Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="OnlineTrainTicketBookingApp.SignUp" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder">
    <h1 style="background-color: blueviolet; font-style: normal">
        <marquee>Sign Up</marquee>
    </h1>
    <table class="auto-style1" align="center">
        <tr>
            <td>First Name </td>
            <td>
                <asp:TextBox ID="firstnameID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ID="requiredName" ControlToValidate="firstnameID" ErrorMessage="FirstName Required" Style="color: palevioletred"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="validateName" runat="server" ControlToValidate="firstnameID" ErrorMessage="Enter valid name" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Last Name </td>
            <td class="auto-style2">
                <asp:TextBox ID="lastnameID" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RegularExpressionValidator ID="validateLastName" runat="server" ControlToValidate="lastnameID" ErrorMessage="Enter valid name" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
            </td>

        </tr>
        <tr>
            <td>Age</td>
            <td>
                <asp:TextBox ID="ageID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ID="requiredAge" ControlToValidate="ageID" ErrorMessage="Age Required" Style="color: palevioletred"></asp:RequiredFieldValidator>
                <%--<asp:CustomValidator ID="customAge" runat="server" OnServerValidate="ServerValidation" ControlToValidate="ageID" Style="color: palevioletred"></asp:CustomValidator>                --%>

            </td>


        </tr>
        <tr>
            <td>Sex</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Gmail</td>
            <td>
                <asp:TextBox ID="gmailID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ID="requiredGmail" ControlToValidate="gmailID" ErrorMessage="Gmail Required" Style="color: palevioletred"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="regexGmail" runat="server" Style="color: royalblue" ErrorMessage="Invalid emailID" ControlToValidate="gmailID"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Mobile Number</td>
            <td>
                <asp:TextBox ID="phoneID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ID="requiredPhone" ControlToValidate="phoneID" ErrorMessage="Phone Number Required" Style="color: palevioletred"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="validatePhone" runat="server" ControlToValidate="phoneID" ErrorMessage="Enter valid mobile number" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="passwordID" runat="server"></asp:TextBox></td>

            <td>
                <asp:RequiredFieldValidator runat="server" ID="requiredPassword" ControlToValidate="passwordID" ErrorMessage="Password Required" Style="color: palevioletred"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="cpasswordID" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ControlToValidate="cPasswordID" ControlToCompare="passwordID" ErrorMessage="Password and Confirm password Mismatch" ID="cmpPassword" runat="server" Style="color: palevioletred"></asp:CompareValidator>
            </td>
        </tr>
        

    </table>
    <asp:Button ID="Button1" runat="server" Text="Submit" rowspan="2" align="center"
            OnClick="Button_Click" ></asp:Button>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
            DisplayMode="BulletList" ShowSummary="true" HeaderText="Errors:" />
    

</asp:Content>

