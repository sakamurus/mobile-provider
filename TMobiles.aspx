<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TMobiles.aspx.cs" Inherits="SemesterProject.TMobiles"  MasterPageFile ="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    img {
      width: 100%;
      height: 300px;
      max-height: 500px;
    }
  </style>
    <h2><%: Title %>.</h2>
    <h3 align="center"><font size="5" color="#0065b3">T-Mobile Top Ten Phones</font></h3>    
    <div class="container">
        <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <asp:ListView ID="mobileList" runat="server" 
                DataKeyNames="MobileId" GroupItemCount="5"
                ItemType="SemesterProject.MobileData" SelectMethod="GetMobiles" class="col-sm-6 col-md-2">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                  <a href="<%#: GetRouteUrl("MobilesByNameRoute", new {mobileName = Item.MobileName}) %>">
                                    <image src='/Images/<%#:Item.MobileImagePath %>'
                                      width="100" height="75" border="1" />
                                  </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="<%#: GetRouteUrl("MobilesByNameRoute", new {mobileName = Item.MobileName}) %>">
                                      <%#:Item.MobileName%>
                                    </a>
                                    <br />
                                    <span>
                                        <b>Price: </b><%#:String.Format("{0:c}", Item.Price)%>
                                    </span>
                                    <br />
                                    <a href="/AddToCart.aspx?MobileId=<%#:Item.MobileId %>">               
                                        <span class="MobileListItem">
                                            <b>Add To Cart<b>
                                        </span>           
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </section>
    </div>
</asp:Content>