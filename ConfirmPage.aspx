<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConfirmPage.aspx.cs" Inherits="SemesterProject.ConfirmPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
   <script runat="server">
         static class Sequence
            {
                private static int _value = -1;
                private static readonly object m_lock = new object();
                public static int Next
                {
                    get
                    {
                        lock (m_lock)
                        {
                            if (_value == Int32.MaxValue)
                                _value = -1;
                            return ++_value;
                        }
                    }
                }
            }
    </script>
</head>
<body>


    <center>
    <h1 style="font-weight:900; color:#001E45; margin-top:4%; font-size: 50px;">Your order has been received. </h1>
    <h2 style="font-weight:800; color:#cc5500; margin-top: 3%; margin-bottom:3%; font-size: 30px;" >Thank you for your purchase! </h2>
    <p style="font-weight:600; color:black; margin-top: 3%; margin-bottom:20%; font-size: 15px;"> Your order # is:
       

       <%  

           for (int i = 0; i< 1000; i++)
              Console.WriteLine(Sequence.Next);
           Response.Write(Sequence.Next);

       %>

    <br /> You will receive an order confirmation email with details of your order and a link to track its progress. 
    </p>
    </center>
         
</body></html>
</asp:Content>
