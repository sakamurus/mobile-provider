<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SemesterProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="background-image: url('https://images.template.net/wp-content/uploads/2015/08/Fabulous-Free-Beach-Background-Download.png'); background-size:100% 100%; height:400px;" class="jumbotron">
        <h1 style="color:red; text-align:center; font-size: 60px; font-weight: bold; margin-top: 7%;">We Do All The Work<br/> So You Can Relax!</h1>
        <p style="text-align:center; color:#001E45; margin-top: 2%; margin-bottom:-2%; font-size: 29px;">Pick your mobile provider and we take care of the rest</p>
        <p><a runat="server" href="~/ATTMobiles" > <img src="Assets/att-logo.png" style="width:250px;height:100px; margin-left: 8%; margin-top: 2%;"></a>
       <a runat="server" href="~/Verizon" > <img src="Assets/verizon-logo.png" style="width:250px;height:65px; margin-left: 5%;"></a>
        <a runat="server" href="~/TMobiles"> <img src="Assets/tmobile-logo.png" style="width:275px;height:70px; margin-left: 5%; margin-top: 2%;"></a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2 style="color:#cc5500; text-align:center;">We do the work so you don't have to</h2>
            <center><img src="https://www.vanamco.com/wp-content/uploads/2015/08/06.jpg" alt="testing" style="width:300px; height:200px; align-content:center"/></center>
            <p  style="text-align:center">
                We research hundreds of phones and rank them according to their specs and performance.  
            </p>
        </div>
        <div class="col-md-4">
            <h2 style="color:#cc5500; text-align:center;">You can trust us!  We are independent.</h2>
             <center><img src="https://cdn.pixabay.com/photo/2016/05/27/00/58/trust-1418901__340.jpg" alt="testing" style="width:300px; height:200px; align-content:center"/></center>
            

            <p  style="text-align:center">
                We do not get paid by cell phone companies to rank their producst higher.  We are a independent third party 
                company so you can trust our rankings. 
            </p>
        </div>
        <div class="col-md-4">
            <h2 style="color:#cc5500; text-align:center;">It's never been easier to pick your phone</h2>
              <center><img src="http://www.tonyedgell.com/wp-content/uploads/2014/11/Depositphotos_40444475_xs.jpg" alt="testing" style="width:300px; height:200px; align-content:center"/></center>

            <p  style="text-align:center">
                Save tons of time by scanning through our top ranked phones and selecting your new phone.  We have very low overhead
                so we can afford to discount our phones more than our competitors.  You can have your phone in your hands by
                tomorrow by taking advantage of our Next Day Air delivery option.  
            </p>
        </div>
    </div>

</asp:Content>
