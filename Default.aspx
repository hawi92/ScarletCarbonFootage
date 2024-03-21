<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" style="
    width: 70%;
    height: 70%;
    position: absolute;
    top: 60%;
    left: 50%;
    color: aliceblue;
    text-decoration: none;
    transform: translate(-50%, -50%);
    text-align: center;
 
    background-position: center center;
    padding-top: 30px;
" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Welcome to Scarlet Technologies</h1>
            <p class="lead">
                is a startup organization with a strong commitment to environmental sustainability. 
                We are a renewable energy company committed to accelerating the global transition to a sustainable, 
                low carbon future. We offer a wide range of innovative and customized clean energy solutions designed
                to meet the unique needs of individuals and businesses. We are particularly interested in the 
                implementation of these technologies in Africa, 
                a continent with immense potential for renewable energy development.
            </p>
            <p><a href="/account/login" style=" color: aliceblue;
    border: 1px solid aliceblue;
    padding: 14px 34px;
    font-size: 13px;
    text-align: center;
    background: transparent;
    cursor: pointer;
    margin: 2px 2px 40px 2px; " class="btn btn-primary btn-md"id ="visitbtn">Log in </a></p>
        </section>

        
    </main>

</asp:Content>
