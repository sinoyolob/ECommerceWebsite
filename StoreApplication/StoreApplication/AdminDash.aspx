﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDash.aspx.cs" Inherits="StoreApplication.AdminDash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
         <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sithi Store Shopping</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
         <%--Botstrap theme for randoms--%>
         <link href="bootstrap.css" rel="stylesheet" />
            <%--DataTable--%>
         <link href="https://cdn.datatables.net/1.11.2/css/jquery.dataTables.min.css" rel="stylesheet" />
    

</head>
    <body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Sithi Store</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item">
                <asp:LinkButton CssClass="nav-link active" ID="UserAccounts" runat="server" OnClick="UserAccounts_Click">Customer Accounts</asp:LinkButton>
                            </li>
                         <li class="nav-item">
                             <asp:LinkButton CssClass="nav-link active" ID="LinkButton1" runat="server" >Sales Employee Accounts</asp:LinkButton>
                            </li>
                        <li class="nav-item">
                    <asp:LinkButton CssClass="nav-link active" ID="LogOutAdmin" runat="server" PostBackUrl="~/Default.aspx" OnClick="LogOutAdmin_Click">Log Out</asp:LinkButton>
                            </li>
                        <li class="nav-item">
                             <asp:LinkButton CssClass="nav-link active" ID="Help" runat="server">Help</asp:LinkButton>
                            </li>
                    </ul>
                 
                </div>
            </div>
        </nav>
            <header class="py-5 bg-dark" >
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Admin Dashboard</h1>
                   
                </div>
            </div>
        </header>
        </div>
        <div>
            <div class="container px-4 px-lg-5 mt-5">
               <p class="lead fw-normal text-black mb-0">Display a table with Inactive user accounts </p>
                </div>
            <div id="allUsersdiv" runat="server">
            <asp:GridView ID="AllUsers" runat="server"></asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
                </div>
             <div id="customers" runat="server">
                 <asp:GridView ID="CustomerAcc" runat="server"></asp:GridView>
            </div>
            <div id="unactiveAcc" runat="server">
                <asp:GridView ID="unactiveAccounts" runat="server"></asp:GridView>
            </div>
        </div>
    </form>
     <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Sithi Store created by Sinoyolo and Lithi</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
       <%-- DataTable--%>
        <script src="https://cdn.datatables.net/1.11.2/js/jquery.dataTables.min.js"></script>
</body>
</html>
