<%@ Page Title="View Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="SemesterProject.ViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h1> Shopping Cart</h1>

             <br /><br />

    <asp:GridView ID="dgproduct" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" EmptyDataText="No Items"
        ShowHeaderWhenEmpty="True" DataKeyNames="MobileId" 
        onrowcommand="dgproduct_RowCommand">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
        <Columns>
        <asp:TemplateField HeaderText="Image">
                                 <ItemTemplate>
                                    <asp:Image ID="Image1" ImageUrl='<%# Eval("MobileImagePath") %>' Width="50px" runat="server" />  
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>

            <asp:BoundField DataField="MobileId" HeaderText="Mobile Id">
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
                <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="MobileName" HeaderText="Name">
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
                <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="MobileDescription" HeaderText="Description">
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
                <ItemStyle Width="300px" />
            </asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Sale Price">
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
                <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="QuantityOrder" HeaderText="Quantity Order">
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
                <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="SaleAmount" HeaderText="Sale Amount">
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
                <ItemStyle Width="200px" />
            </asp:BoundField>
             <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:Button ID="btncartupdaate" runat="server" Text="Update Quantity" CausesValidation="False" CommandName="Update" CommandArgument='<%#Bind("MobileId")%>' />
                                   
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:Button ID="btncart" runat="server" Text="Remove from Cart" CausesValidation="False" CommandName="Remove" CommandArgument='<%#Bind("MobileId")%>' />
                                    
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <strong>Total Amount:</strong>
    <asp:Label ID="lbltotl" runat="server" Font-Bold="True" Font-Size="12pt" 
        Text="Label"></asp:Label>

    <br /><br />
    <a href="Default.aspx"   style="font-size:20px; font-weight:bold; text-align:left; " class="btn btn-primary">< Continue Shopping </a>
   <a href="CheckOut.aspx"  style="font-size:20px; font-weight:bold;  " class="pull-right btn btn-success"> Checkout > </a>
   

</asp:Content>
