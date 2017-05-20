<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MobileDetails.aspx.cs" Inherits="SemesterProject.MobileDetails" MasterPageFile ="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
    table {
        border-collapse: collapse;
    }
    #one td {
        border: 10px solid #ff0000; 
    }
</style>
    <div class="container">
   <asp:FormView ID="mobileDetail" runat="server" ItemType="SemesterProject.MobileData" SelectMethod ="GetMobiles" RenderOuterTable="false">
        <ItemTemplate>
            <div >
                <h2><%#:Item.MobileName %></h2>
            </div>
            <br />
            <table>
                <tr>
                    <td rowspan ="6">
                        <img src="/Images/<%#:Item.MobileImagePath %>" style="border:solid; height:300px" alt="<%#:Item.MobileName %>"/>
                    </td>
                </tr>
                <tr><td>&nbsp;</td> <td colspan="2"><font size="5px" color="#0065b3">Features:</font></td></tr>                      
                <tr>
                    <td width="5%">&nbsp;</td> 
                    <td width ="65%">
                         <asp:ListView ID="mobileList" runat="server" 
                            DataKeyNames="MobileId" GroupItemCount="2"
                            ItemType="SemesterProject.MobileDetail" SelectMethod="GetMobileDetails" >
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
                                <td runat="server" >
                                <table width="80%"> 
                                    <tr><td style="border-bottom: 1px solid #cdd0d4;">
                                              <image src='/Images/MobileDescriptions/<%#:Item.FeatureImageUrl%>' width="35" height="35" border="1" />
                                                <span><font size="1" color="#0065b3"><%#:Item.FeatureDescription%></font></span>
                                              </a>
                                    </td></tr> 
                                 </table>           
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
                   </td> 
                </tr>
                
            </table>
        </ItemTemplate>
    </asp:FormView>
        </div>
</asp:Content>