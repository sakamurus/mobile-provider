<%@ Page Title="Billing Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="SemesterProject.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <center>
     <h2 style="font-weight:800; color:#001E45; margin-top:1.5%; font-size: 40px;">Billing Information</h2>
     <hr />
       <fieldset >
       <div  id="divform" runat="server">
              <asp:ValidationSummary runat="server" />
            
          <table >
             <tr><td> 
               <div class="form-group">
               <asp:Label runat="server" AssociatedControlID="txtFirstName" >First Name</asp:Label></td>
               <td>
               <asp:TextBox runat="server" ID="txtFirstName" CssClass="form-control" />
               <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName"
                   CssClass="text-danger" ErrorMessage="The first name field is required." /></td></tr>
               </div>

           <tr><td> 
               <div class="form-group">
               <asp:Label runat="server" AssociatedControlID="txtLastName" >Last Name</asp:Label></td>
               <td>
               <asp:TextBox runat="server" ID="txtLastName" CssClass="form-control" />
               <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastName"
                   CssClass="text-danger" ErrorMessage="The Last name field is required." /></td></tr>
               </div>

            <tr><td>
                <div class="form-group"><b>
                <asp:Label runat="server"  >Gender</asp:Label></td>
                <td><asp:RadioButton ID="male" runat="server" Checked="true"  GroupName="gender"/> Male &nbsp &nbsp &nbsp &nbsp 
               </b></div>

            <asp:RadioButton ID="female" runat="server"  GroupName="gender"/> Female</td></tr>
            <tr><td><br /></td><td><br /></td></tr>

           <tr><td> 
               <div class="form-group">
               <asp:Label runat="server" AssociatedControlID="txtAddress1" >Address Line 1</asp:Label></td>
               <td>
               <asp:TextBox runat="server" ID="txtAddress1" CssClass="form-control" />
               <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress1"
                   CssClass="text-danger" ErrorMessage="The Address 1 field is required." /></td></tr>
               </div>

           <tr><td> 
               <div class="form-group">
               <asp:Label runat="server" AssociatedControlID="txtAddress2" >Address Line 2</asp:Label></td>
               <td>
               <asp:TextBox runat="server" ID="txtAddress2" CssClass="form-control" />
               </td></tr>
               </div>
              <tr><td><br /></td><td><br /></td></tr>


           <tr><td> 
               <div class="form-group">
               <asp:Label runat="server" AssociatedControlID="txtCity" >City / Town</asp:Label></td>
               <td>
               <asp:TextBox runat="server" ID="txtCity" CssClass="form-control" />
               <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCity"
                   CssClass="text-danger" ErrorMessage="The City / Town field is required." /></td></tr>
               </div>
               

           <tr><td> 
               <div class="form-group">
               <asp:Label runat="server" AssociatedControlID="txtState" >State / Province / Region</asp:Label></td>
               <td>
               <asp:TextBox runat="server" ID="txtState" CssClass="form-control" />
               <asp:RequiredFieldValidator runat="server" ControlToValidate="txtState"
                   CssClass="text-danger" ErrorMessage="The State / Province / Region field is required." /></td></tr>
               </div>

            <tr><td> 
               <div class="form-group">
               <asp:Label runat="server" AssociatedControlID="txtZip" >Zip / Postal Code</asp:Label></td>
               <td>
               <asp:TextBox runat="server" ID="txtZip" CssClass="form-control" />
               <asp:RequiredFieldValidator runat="server" ControlToValidate="txtZip"
                   CssClass="text-danger" ErrorMessage="The Zip / Postal Code field is required." /></td></tr>
               </div>

            <tr><td><b><asp:Label runat="server"  >Country</asp:Label></b></td>
            <td><asp:DropDownList ID="country" runat="server" >
                        <asp:ListItem value="" Selected="True">(please select a country)</asp:ListItem>
                            <asp:ListItem value="AF">Afghanistan</asp:ListItem>
                            <asp:ListItem value="AL">Albania</asp:ListItem>
                            <asp:ListItem value="DZ">Algeria</asp:ListItem>
                            <asp:ListItem value="AS">American Samoa</asp:ListItem>
                            <asp:ListItem value="AD">Andorra</asp:ListItem>
                            <asp:ListItem value="AO">Angola</asp:ListItem>
                            <asp:ListItem value="AI">Anguilla</asp:ListItem>
                            <asp:ListItem value="AQ">Antarctica</asp:ListItem>
                            <asp:ListItem value="AG">Antigua and Barbuda</asp:ListItem>
                            <asp:ListItem value="AR">Argentina</asp:ListItem>
                            <asp:ListItem value="AM">Armenia</asp:ListItem>
                            <asp:ListItem value="AW">Aruba</asp:ListItem>
                            <asp:ListItem value="AU">Australia</asp:ListItem>
                            <asp:ListItem value="AT">Austria</asp:ListItem>
                            <asp:ListItem value="AZ">Azerbaijan</asp:ListItem>
                            <asp:ListItem value="BS">Bahamas</asp:ListItem>
                            <asp:ListItem value="BH">Bahrain</asp:ListItem>
                            <asp:ListItem value="BD">Bangladesh</asp:ListItem>
                            <asp:ListItem value="BB">Barbados</asp:ListItem>
                            <asp:ListItem value="BY">Belarus</asp:ListItem>
                            <asp:ListItem value="BE">Belgium</asp:ListItem>
                            <asp:ListItem value="BZ">Belize</asp:ListItem>
                            <asp:ListItem value="BJ">Benin</asp:ListItem>
                            <asp:ListItem value="BM">Bermuda</asp:ListItem>
                            <asp:ListItem value="BT">Bhutan</asp:ListItem>
                            <asp:ListItem value="BO">Bolivia</asp:ListItem>
                            <asp:ListItem value="BA">Bosnia and Herzegowina</asp:ListItem>
                            <asp:ListItem value="BW">Botswana</asp:ListItem>
                            <asp:ListItem value="BV">Bouvet Island</asp:ListItem>
                            <asp:ListItem value="BR">Brazil</asp:ListItem>
                            <asp:ListItem value="IO">British Indian Ocean Territory</asp:ListItem>
                            <asp:ListItem value="BN">Brunei Darussalam</asp:ListItem>
                            <asp:ListItem value="BG">Bulgaria</asp:ListItem>
                            <asp:ListItem value="BF">Burkina Faso</asp:ListItem>
                            <asp:ListItem value="BI">Burundi</asp:ListItem>
                            <asp:ListItem value="KH">Cambodia</asp:ListItem>
                            <asp:ListItem value="CM">Cameroon</asp:ListItem>
                            <asp:ListItem value="CA">Canada</asp:ListItem>
                            <asp:ListItem value="CV">Cape Verde</asp:ListItem>
                            <asp:ListItem value="KY">Cayman Islands</asp:ListItem>
                            <asp:ListItem value="CF">Central African Republic</asp:ListItem>
                            <asp:ListItem value="TD">Chad</asp:ListItem>
                            <asp:ListItem value="CL">Chile</asp:ListItem>
                            <asp:ListItem value="CN">China</asp:ListItem>
                            <asp:ListItem value="CX">Christmas Island</asp:ListItem>
                            <asp:ListItem value="CC">Cocos (Keeling) Islands</asp:ListItem>
                            <asp:ListItem value="CO">Colombia</asp:ListItem>
                            <asp:ListItem value="KM">Comoros</asp:ListItem>
                            <asp:ListItem value="CG">Congo</asp:ListItem>
                            <asp:ListItem value="CD">Congo, the Democratic Republic of the</asp:ListItem>
                            <asp:ListItem value="CK">Cook Islands</asp:ListItem>
                            <asp:ListItem value="CR">Costa Rica</asp:ListItem>
                            <asp:ListItem value="CI">Cote d'Ivoire</asp:ListItem>
                            <asp:ListItem value="HR">Croatia (Hrvatska)</asp:ListItem>
                            <asp:ListItem value="CU">Cuba</asp:ListItem>
                            <asp:ListItem value="CY">Cyprus</asp:ListItem>
                            <asp:ListItem value="CZ">Czech Republic</asp:ListItem>
                            <asp:ListItem value="DK">Denmark</asp:ListItem>
                            <asp:ListItem value="DJ">Djibouti</asp:ListItem>
                            <asp:ListItem value="DM">Dominica</asp:ListItem>
                            <asp:ListItem value="DO">Dominican Republic</asp:ListItem>
                            <asp:ListItem value="TP">East Timor</asp:ListItem>
                            <asp:ListItem value="EC">Ecuador</asp:ListItem>
                            <asp:ListItem value="EG">Egypt</asp:ListItem>
                            <asp:ListItem value="SV">El Salvador</asp:ListItem>
                            <asp:ListItem value="GQ">Equatorial Guinea</asp:ListItem>
                            <asp:ListItem value="ER">Eritrea</asp:ListItem>
                            <asp:ListItem value="EE">Estonia</asp:ListItem>
                            <asp:ListItem value="ET">Ethiopia</asp:ListItem>
                            <asp:ListItem value="FK">Falkland Islands (Malvinas)</asp:ListItem>
                            <asp:ListItem value="FO">Faroe Islands</asp:ListItem>
                            <asp:ListItem value="FJ">Fiji</asp:ListItem>
                            <asp:ListItem value="FI">Finland</asp:ListItem>
                            <asp:ListItem value="FR">France</asp:ListItem>
                            <asp:ListItem value="FX">France, Metropolitan</asp:ListItem>
                            <asp:ListItem value="GF">French Guiana</asp:ListItem>
                            <asp:ListItem value="PF">French Polynesia</asp:ListItem>
                            <asp:ListItem value="TF">French Southern Territories</asp:ListItem>
                            <asp:ListItem value="GA">Gabon</asp:ListItem>
                            <asp:ListItem value="GM">Gambia</asp:ListItem>
                            <asp:ListItem value="GE">Georgia</asp:ListItem>
                            <asp:ListItem value="DE">Germany</asp:ListItem>
                            <asp:ListItem value="GH">Ghana</asp:ListItem>
                            <asp:ListItem value="GI">Gibraltar</asp:ListItem>
                            <asp:ListItem value="GR">Greece</asp:ListItem>
                            <asp:ListItem value="GL">Greenland</asp:ListItem>
                            <asp:ListItem value="GD">Grenada</asp:ListItem>
                            <asp:ListItem value="GP">Guadeloupe</asp:ListItem>
                            <asp:ListItem value="GU">Guam</asp:ListItem>
                            <asp:ListItem value="GT">Guatemala</asp:ListItem>
                            <asp:ListItem value="GN">Guinea</asp:ListItem>
                            <asp:ListItem value="GW">Guinea-Bissau</asp:ListItem>
                            <asp:ListItem value="GY">Guyana</asp:ListItem>
                            <asp:ListItem value="HT">Haiti</asp:ListItem>
                            <asp:ListItem value="HM">Heard and Mc Donald Islands</asp:ListItem>
                            <asp:ListItem value="VA">Holy See (Vatican City State)</asp:ListItem>
                            <asp:ListItem value="HN">Honduras</asp:ListItem>
                            <asp:ListItem value="HK">Hong Kong</asp:ListItem>
                            <asp:ListItem value="HU">Hungary</asp:ListItem>
                            <asp:ListItem value="IS">Iceland</asp:ListItem>
                            <asp:ListItem value="IN">India</asp:ListItem>
                            <asp:ListItem value="ID">Indonesia</asp:ListItem>
                            <asp:ListItem value="IR">Iran (Islamic Republic of)</asp:ListItem>
                            <asp:ListItem value="IQ">Iraq</asp:ListItem>
                            <asp:ListItem value="IE">Ireland</asp:ListItem>
                            <asp:ListItem value="IL">Israel</asp:ListItem>
                            <asp:ListItem value="IT">Italy</asp:ListItem>
                            <asp:ListItem value="JM">Jamaica</asp:ListItem>
                            <asp:ListItem value="JP">Japan</asp:ListItem>
                            <asp:ListItem value="JO">Jordan</asp:ListItem>
                            <asp:ListItem value="KZ">Kazakhstan</asp:ListItem>
                            <asp:ListItem value="KE">Kenya</asp:ListItem>
                            <asp:ListItem value="KI">Kiribati</asp:ListItem>
                            <asp:ListItem value="KP">Korea, Democratic People's Republic of</asp:ListItem>
                            <asp:ListItem value="KR">Korea, Republic of</asp:ListItem>
                            <asp:ListItem value="KW">Kuwait</asp:ListItem>
                            <asp:ListItem value="KG">Kyrgyzstan</asp:ListItem>
                            <asp:ListItem value="LA">Lao People's Democratic Republic</asp:ListItem>
                            <asp:ListItem value="LV">Latvia</asp:ListItem>
                            <asp:ListItem value="LB">Lebanon</asp:ListItem>
                            <asp:ListItem value="LS">Lesotho</asp:ListItem>
                            <asp:ListItem value="LR">Liberia</asp:ListItem>
                            <asp:ListItem value="LY">Libyan Arab Jamahiriya</asp:ListItem>
                            <asp:ListItem value="LI">Liechtenstein</asp:ListItem>
                            <asp:ListItem value="LT">Lithuania</asp:ListItem>
                            <asp:ListItem value="LU">Luxembourg</asp:ListItem>
                            <asp:ListItem value="MO">Macau</asp:ListItem>
                            <asp:ListItem value="MK">Macedonia, The Former Yugoslav Republic of</asp:ListItem>
                            <asp:ListItem value="MG">Madagascar</asp:ListItem>
                            <asp:ListItem value="MW">Malawi</asp:ListItem>
                            <asp:ListItem value="MY">Malaysia</asp:ListItem>
                            <asp:ListItem value="MV">Maldives</asp:ListItem>
                            <asp:ListItem value="ML">Mali</asp:ListItem>
                            <asp:ListItem value="MT">Malta</asp:ListItem>
                            <asp:ListItem value="MH">Marshall Islands</asp:ListItem>
                            <asp:ListItem value="MQ">Martinique</asp:ListItem>
                            <asp:ListItem value="MR">Mauritania</asp:ListItem>
                            <asp:ListItem value="MU">Mauritius</asp:ListItem>
                            <asp:ListItem value="YT">Mayotte</asp:ListItem>
                            <asp:ListItem value="MX">Mexico</asp:ListItem>
                            <asp:ListItem value="FM">Micronesia, Federated States of</asp:ListItem>
                            <asp:ListItem value="MD">Moldova, Republic of</asp:ListItem>
                            <asp:ListItem value="MC">Monaco</asp:ListItem>
                            <asp:ListItem value="MN">Mongolia</asp:ListItem>
                            <asp:ListItem value="MS">Montserrat</asp:ListItem>
                            <asp:ListItem value="MA">Morocco</asp:ListItem>
                            <asp:ListItem value="MZ">Mozambique</asp:ListItem>
                            <asp:ListItem value="MM">Myanmar</asp:ListItem>
                            <asp:ListItem value="NA">Namibia</asp:ListItem>
                            <asp:ListItem value="NR">Nauru</asp:ListItem>
                            <asp:ListItem value="NP">Nepal</asp:ListItem>
                            <asp:ListItem value="NL">Netherlands</asp:ListItem>
                            <asp:ListItem value="AN">Netherlands Antilles</asp:ListItem>
                            <asp:ListItem value="NC">New Caledonia</asp:ListItem>
                            <asp:ListItem value="NZ">New Zealand</asp:ListItem>
                            <asp:ListItem value="NI">Nicaragua</asp:ListItem>
                            <asp:ListItem value="NE">Niger</asp:ListItem>
                            <asp:ListItem value="NG">Nigeria</asp:ListItem>
                            <asp:ListItem value="NU">Niue</asp:ListItem>
                            <asp:ListItem value="NF">Norfolk Island</asp:ListItem>
                            <asp:ListItem value="MP">Northern Mariana Islands</asp:ListItem>
                            <asp:ListItem value="NO">Norway</asp:ListItem>
                            <asp:ListItem value="OM">Oman</asp:ListItem>
                            <asp:ListItem value="PK">Pakistan</asp:ListItem>
                            <asp:ListItem value="PW">Palau</asp:ListItem>
                            <asp:ListItem value="PA">Panama</asp:ListItem>
                            <asp:ListItem value="PG">Papua New Guinea</asp:ListItem>
                            <asp:ListItem value="PY">Paraguay</asp:ListItem>
                            <asp:ListItem value="PE">Peru</asp:ListItem>
                            <asp:ListItem value="PH">Philippines</asp:ListItem>
                            <asp:ListItem value="PN">Pitcairn</asp:ListItem>
                            <asp:ListItem value="PL">Poland</asp:ListItem>
                            <asp:ListItem value="PT">Portugal</asp:ListItem>
                            <asp:ListItem value="PR">Puerto Rico</asp:ListItem>
                            <asp:ListItem value="QA">Qatar</asp:ListItem>
                            <asp:ListItem value="RE">Reunion</asp:ListItem>
                            <asp:ListItem value="RO">Romania</asp:ListItem>
                            <asp:ListItem value="RU">Russian Federation</asp:ListItem>
                            <asp:ListItem value="RW">Rwanda</asp:ListItem>
                            <asp:ListItem value="KN">Saint Kitts and Nevis</asp:ListItem>
                            <asp:ListItem value="LC">Saint LUCIA</asp:ListItem>
                            <asp:ListItem value="VC">Saint Vincent and the Grenadines</asp:ListItem>
                            <asp:ListItem value="WS">Samoa</asp:ListItem>
                            <asp:ListItem value="SM">San Marino</asp:ListItem>
                            <asp:ListItem value="ST">Sao Tome and Principe</asp:ListItem>
                            <asp:ListItem value="SA">Saudi Arabia</asp:ListItem>
                            <asp:ListItem value="SN">Senegal</asp:ListItem>
                            <asp:ListItem value="SC">Seychelles</asp:ListItem>
                            <asp:ListItem value="SL">Sierra Leone</asp:ListItem>
                            <asp:ListItem value="SG">Singapore</asp:ListItem>
                            <asp:ListItem value="SK">Slovakia (Slovak Republic)</asp:ListItem>
                            <asp:ListItem value="SI">Slovenia</asp:ListItem>
                            <asp:ListItem value="SB">Solomon Islands</asp:ListItem>
                            <asp:ListItem value="SO">Somalia</asp:ListItem>
                            <asp:ListItem value="ZA">South Africa</asp:ListItem>
                            <asp:ListItem value="GS">South Georgia and the South Sandwich Islands</asp:ListItem>
                            <asp:ListItem value="ES">Spain</asp:ListItem>
                            <asp:ListItem value="LK">Sri Lanka</asp:ListItem>
                            <asp:ListItem value="SH">St. Helena</asp:ListItem>
                            <asp:ListItem value="PM">St. Pierre and Miquelon</asp:ListItem>
                            <asp:ListItem value="SD">Sudan</asp:ListItem>
                            <asp:ListItem value="SR">Suriname</asp:ListItem>
                            <asp:ListItem value="SJ">Svalbard and Jan Mayen Islands</asp:ListItem>
                            <asp:ListItem value="SZ">Swaziland</asp:ListItem>
                            <asp:ListItem value="SE">Sweden</asp:ListItem>
                            <asp:ListItem value="CH">Switzerland</asp:ListItem>
                            <asp:ListItem value="SY">Syrian Arab Republic</asp:ListItem>
                            <asp:ListItem value="TW">Taiwan, Province of China</asp:ListItem>
                            <asp:ListItem value="TJ">Tajikistan</asp:ListItem>
                            <asp:ListItem value="TZ">Tanzania, United Republic of</asp:ListItem>
                            <asp:ListItem value="TH">Thailand</asp:ListItem>
                            <asp:ListItem value="TG">Togo</asp:ListItem>
                            <asp:ListItem value="TK">Tokelau</asp:ListItem>
                            <asp:ListItem value="TO">Tonga</asp:ListItem>
                            <asp:ListItem value="TT">Trinidad and Tobago</asp:ListItem>
                            <asp:ListItem value="TN">Tunisia</asp:ListItem>
                            <asp:ListItem value="TR">Turkey</asp:ListItem>
                            <asp:ListItem value="TM">Turkmenistan</asp:ListItem>
                            <asp:ListItem value="TC">Turks and Caicos Islands</asp:ListItem>
                            <asp:ListItem value="TV">Tuvalu</asp:ListItem>
                            <asp:ListItem value="UG">Uganda</asp:ListItem>
                            <asp:ListItem value="UA">Ukraine</asp:ListItem>
                            <asp:ListItem value="AE">United Arab Emirates</asp:ListItem>
                            <asp:ListItem value="GB">United Kingdom</asp:ListItem>
                            <asp:ListItem value="US">United States</asp:ListItem>
                            <asp:ListItem value="UM">United States Minor Outlying Islands</asp:ListItem>
                            <asp:ListItem value="UY">Uruguay</asp:ListItem>
                            <asp:ListItem value="UZ">Uzbekistan</asp:ListItem>
                            <asp:ListItem value="VU">Vanuatu</asp:ListItem>
                            <asp:ListItem value="VE">Venezuela</asp:ListItem>
                            <asp:ListItem value="VN">Viet Nam</asp:ListItem>
                            <asp:ListItem value="VG">Virgin Islands (British)</asp:ListItem>
                            <asp:ListItem value="VI">Virgin Islands (U.S.)</asp:ListItem>
                            <asp:ListItem value="WF">Wallis and Futuna Islands</asp:ListItem>
                            <asp:ListItem value="EH">Western Sahara</asp:ListItem>
                            <asp:ListItem value="YE">Yemen</asp:ListItem>
                            <asp:ListItem value="YU">Yugoslavia</asp:ListItem>
                            <asp:ListItem value="ZM">Zambia</asp:ListItem>
                            <asp:ListItem value="ZW">Zimbabwe</asp:ListItem>
                   </asp:DropDownList>
                   <asp:RequiredFieldValidator runat="server" ControlToValidate="country"
                   CssClass="text-danger" ErrorMessage="The country field is required." />
             </td></tr>
           <tr><td><br /></td><td><br /></td></tr>

             <tr><td> 
               <div class="form-group">
               <asp:Label runat="server" AssociatedControlID="txtPhone" >Phone No</asp:Label></td>
               <td>
               <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control" />
               <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPhone"
                   CssClass="text-danger" ErrorMessage="The Phone No field is required." />
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtPhone" runat="server" 
                   ErrorMessage="Only Numbers are allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
               </td></tr>
               </div>

           
             <tr><td> 
               <div class="form-group">
               <asp:Label runat="server" AssociatedControlID="txtFax" >Fax</asp:Label></td>
               <td>
               <asp:TextBox runat="server" ID="txtFax" CssClass="form-control" />
               <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtFax" runat="server" 
                   ErrorMessage="Only Numbers are allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
               </td></tr>
               </div>
            <tr><td><br /></td><td><br /></td></tr>


            <tr><td></td><td style="font-weight:500; color:#cc5500; font-size: 15px;"><asp:RadioButton ID="thisAddress" runat="server" Checked="true"  GroupName="addressType" /> Ship to this address</td></tr>
            <tr><td><br /></td><td><br /></td></tr>

            <tr><td></td><td style="font-weight:500; color:#cc5500; font-size: 15px;"><asp:RadioButton ID="otherAddress" runat="server"   GroupName="addressType"/> Ship to different address</td></tr>
            <tr><td><br /></td><td><br /></td></tr>
            <tr><td><br /></td><td><br /></td></tr>

           <div class="form-group">
            <div class="col-md-offset-2 col-md-10"><br />
            <tr><td></td><td><p><asp:Button ID="checkOut1" runat="server" Text="Continue Checkout" CssClass="btn btn-default"  /></p><br /><br /></td></tr>
          </div>
        </div>

           </table>
                  
          </div>

         </fieldset>
    </center>

</asp:Content>


