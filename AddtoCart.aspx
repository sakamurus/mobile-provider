<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="SemesterProject.AddtoCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">Back</asp:LinkButton>
    <table style="width:100%;">
  <tr>
            <td>
                </td>
            <td>
                
            </td>
            <td rowspan="3">
                <asp:Image ID="imgitem" runat="server" Width="100px" />
            </td>
        </tr>
        <tr>
            <td>
                Mobile Id:</td>
            <td>
                <asp:Label ID="lblMobileID" runat="server" Text="Label"></asp:Label>
            </td>
          
        </tr>
        <tr>
            <td>
                Name:
            </td>
            <td>
                <asp:Label ID="lblMobileName" runat="server" Text="Label"></asp:Label>
            </td>
          
        </tr>
        <tr>
            <td>
                Price:
            </td>
            <td>
                <asp:Label ID="lblprice" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Description:
            </td>
            <td>
                <asp:Label ID="lbldescription" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Quantity Required:
            </td>
            <td>
               
                <asp:TextBox ID="txtquantity" runat="server" ValidationGroup="addtocart"></asp:TextBox>
               
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtquantity" ErrorMessage="Quantity must between 1-50" 
                    ForeColor="Red" MaximumValue="50" MinimumValue="1" Type="Integer" 
                    ValidationGroup="addtocart"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtquantity" ErrorMessage="Quantity is required" 
                    ForeColor="Red" ValidationGroup="addtocart"></asp:RequiredFieldValidator>
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtquantity" Display="Dynamic" 
                    ErrorMessage="Only Numbers are allowed" ForeColor="Red" 
                    ValidationExpression="\d+" ValidationGroup="addtocart"></asp:RegularExpressionValidator>
               
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add to Cart" onclick="btnaddtocart_Click" 
                    ValidationGroup="addtocart" />
                
               
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
