<%@ Page Title="Feel Free To Contact Us Anytime" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SemesterProject.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div style="text-align:center">
     <h2 style="font-weight:800; color:#001E45; margin-top:5%; font-size: 30px;"><%: Title %></h2>
    <h3 style="color:#cc5500; margin-top:5%;">We look forward to hearing from you!</h3>
    <h4 style="margin-top:5%">At Mobile Ranker, we truly value your feedback. If you have a comment,<br> 
        media or press inquiry, question or suggestion, please feel free 
        to contact <br>us in the manner that is most convenient for you. 
        We'll do our very best to <br>help any way we can.</h4>
    <address style="margin-top:5%">
        Mobile Ranker <br>
        1000 River Rd, <br />
        Teaneck, NJ 07666<br />
        <abbr title="Phone">Phone:</abbr>
        (201) 692-2000
    </address>

    <address style="margin-top:5%">
        <strong>General Questions:</strong>   <a href="mailto:Support@example.com">General@mobileranker.com</a><br />
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@mobileranker.com</a><br />
        <strong>Sales:</strong> <a href="mailto:Marketing@example.com">Sales@mobileranker.com</a>
    </address>
</div> 
</asp:Content>
