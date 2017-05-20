<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SemesterProjectBackup2.aspx.cs" Inherits="SemesterProject.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>
    <h2 style="font-weight:800; color:#001E45; margin-top:1.5%; font-size: 40px;">Payment </h2>
     <hr />
       <fieldset >
       <div  id="divform3" runat="server">
              <asp:ValidationSummary runat="server" />
            
          <table >
              
               <tr><td>
               <div class="form-group">
               <asp:Label runat="server" AssociatedControlID="txtHolderName" >Card Holder's Name  </asp:Label></td>
               <td>
               <asp:TextBox runat="server" ID="txtHolderName" CssClass="form-control" />
               <asp:RequiredFieldValidator runat="server" ControlToValidate="txtHolderName"
                   CssClass="text-danger" ErrorMessage="The card holder's name field is required." /></td></tr>
               </div>

                <tr><td>
                <div class="form-group"><b>
                <asp:Label runat="server"  >Card Type  </asp:Label></td>
                <td><asp:RadioButton ID="visaCard" runat="server" Checked="true"  GroupName="cardType"/> Visa &nbsp &nbsp &nbsp &nbsp 
                </b></div>
                <asp:RadioButton ID="masterCard" runat="server"  GroupName="cardType"/> MasterCard </td></tr>
                <tr><td><br /></td><td><br /></td></tr>

           <tr><td> 
               <div class="form-group">
               <asp:Label runat="server" AssociatedControlID="txtCardNo" >Card Number  </asp:Label></td>
               <td>
               <asp:TextBox runat="server" ID="txtCardNo" CssClass="form-control" />
               <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCardNo"
                   CssClass="text-danger" ErrorMessage="The card number field is required." />
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtCardNo" runat="server" 
                   ErrorMessage="Only Numbers are allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
               </td></tr>
               </div>
            <tr><td><br /></td><td><br /></td></tr>

            <tr><td><b><asp:Label runat="server"  >Card Expiry Date</asp:Label></b></td>
            <td><asp:DropDownList ID="month" runat="server" >
                        <asp:ListItem value="" Selected="True"> (Month) </asp:ListItem>
                            <asp:ListItem value="1"> Jan  (01)</asp:ListItem>
                            <asp:ListItem value="2"> Feb  (02)</asp:ListItem>
                            <asp:ListItem value="3"> Mar  (03)</asp:ListItem>
                            <asp:ListItem value="4"> Apr  (04)</asp:ListItem>
                            <asp:ListItem value="5"> May  (05)</asp:ListItem>
                            <asp:ListItem value="6"> June (06)</asp:ListItem>
                            <asp:ListItem value="7"> July (07)</asp:ListItem>
                            <asp:ListItem value="8"> Aug  (08)</asp:ListItem>
                            <asp:ListItem value="9"> Sep  (09)</asp:ListItem>
                            <asp:ListItem value="10">Oct (10)</asp:ListItem>
                            <asp:ListItem value="11">Nov (11)</asp:ListItem>
                            <asp:ListItem value="12">Dec (12)</asp:ListItem>

                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="month"
                   CssClass="text-danger" ErrorMessage="Field is required." />

                <asp:DropDownList ID="year" runat="server" >
                        <asp:ListItem value="" Selected="True">(Year)</asp:ListItem>
                            <asp:ListItem value="17">2017</asp:ListItem>
                            <asp:ListItem value="18">2018</asp:ListItem>
                            <asp:ListItem value="19">2019</asp:ListItem>
                            <asp:ListItem value="20">2020</asp:ListItem>
                            <asp:ListItem value="21">2021</asp:ListItem>
                            <asp:ListItem value="22">2022</asp:ListItem>
                            <asp:ListItem value="23">2023</asp:ListItem>
                            <asp:ListItem value="24">2024</asp:ListItem>
                            <asp:ListItem value="25">2025</asp:ListItem>
                            <asp:ListItem value="26">2026</asp:ListItem>
                            <asp:ListItem value="27">2027</asp:ListItem>
                            <asp:ListItem value="28">2028</asp:ListItem>
                            <asp:ListItem value="29">2029</asp:ListItem>
                            <asp:ListItem value="30">2030</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="year"
                   CssClass="text-danger" ErrorMessage="Field is required." />
                    </td></tr>
             <tr><td><br /></td><td><br /></td></tr>

           <tr><td> 
               <div class="form-group">
               <asp:Label runat="server" AssociatedControlID="txtCvv" >Card CVV  </asp:Label></td>
               <td>
               <asp:TextBox runat="server" ID="txtCvv" CssClass="form-control" />
               <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCvv"
                   CssClass="text-danger" ErrorMessage="The card CVV field is required." />
               <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtCvv" runat="server" 
                   ErrorMessage="Only Numbers are allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator></td></tr>
               </div>
           <tr><td><br /></td><td><br /></td></tr>
             

           <div class="form-group">
            <div class="col-md-offset-2 col-md-10"><br />
            <tr><td></td><td><p> <asp:Button ID="back" runat="server" Text="Back" CssClass="btn btn-default"  PostBackUrl="~/ShippingAddress.aspx"/>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<asp:Button ID="shippingAddress" runat="server" Text="Continue Checkout" CssClass="btn btn-default" PostBackUrl="~/ConfirmPage.aspx" /></p><br /><br /></td></tr>
          </div>
        </div>
            

          </table >
    </div>
    </fieldset >
        </center>
</asp:Content>
