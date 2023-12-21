    <%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="aboutUs.aspx.cs" Inherits="HaroonBakersLatest.aboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Stylesheets/aboutUs.css">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BODY" runat="server">
    <div class="header-container">
        <div class="overlay">
             <asp:Image ID="Image3" ImageUrl="~/assets/big-rect.svg" Width="200" CssClass="rect-left" runat="server" />
        <asp:Image ID="Image4" ImageUrl="~/assets/big-rect.svg" Width="200" CssClass="rect-right" runat="server" />
             <div class="header-container-content">
            <h1 class="header-container-title">About</h1>
        <span class="header-container-navigation"><a href="/">Home</a> <i class="fa-solid fa-angles-right fa-xs" style="color: #fff;"></i> About</span>
      </div>
        </div>
         <asp:Image ID="Image1" ImageUrl="~/assets/carousel-image-2.jpg"   CssClass="carousal-img" AlternateText="carousel-image-1" runat="server" />
       
     
    </div>
 
    <div class="container about-us-section">
        <div class="about-us-container">
            <div  class="about-us-content">
                <h4 data-aos="fade-right" class="about-us-content-title">Introduction of Haroon Bakers</h4>
                <h4 class="about-us-content-sub-title">Welcome to Haroon Bakery, where the art of baking meets unparalleled expertise!</h4>
                <div data-aos="fade-right" class="about-us-content-mission">
                      <h3 class="about-us-content-mission-title">Our Mission</h3>
                    <p class="about-us-content-mission-description">With years of experience, Haroon Bakery takes pride in being your go-to destination for delightful baked goods. Our mission is to provide an exceptional culinary experience that has stood the test of time, much like the enduring quality of our products.</p>
                    <asp:Image ID="Image223" ImageUrl="~/assets/mission.svg" CssClass="mission-svg" runat="server" />
                </div>
                <div data-aos="fade-right" class="about-us-tags">
            <span>
                <asp:Image ID="Image2123" ImageUrl="~/assets/check.svg" runat="server" />Delicious Creations.</span>
            <span><asp:Image ID="Image2" ImageUrl="~/assets/check.svg" runat="server" />Cost-Effective Delights.</span>
            <span><asp:Image ID="Image6" ImageUrl="~/assets/check.svg" runat="server" />Innovative Flavors.</span>
            <span><asp:Image ID="Image7" ImageUrl="~/assets/check.svg" runat="server" />Expert Culinary Team.</span>
            <span><asp:Image ID="Image8" ImageUrl="~/assets/check.svg" runat="server" />Quality Ingredients.</span>
            <span><asp:Image ID="Image9" ImageUrl="~/assets/check.svg" runat="server" />Nutrient-Rich Offerings.</span>  
                    <span><asp:Image ID="Image921" ImageUrl="~/assets/check.svg" runat="server" />Artisanal Craftsmanship.</span> 
                    <span><asp:Image ID="Image9123" ImageUrl="~/assets/check.svg" runat="server" />Exquisite Variety.</span>
                    <span><asp:Image ID="Image94" ImageUrl="~/assets/check.svg" runat="server" />Warm Customer Service.</span>
        </div>
                <div data-aos="fade-right" class="about-us-welcome-message">
                    <p>"Welcome to Haroon Bakery! We take pride in offering the best in delicious food and nutrition worldwide. Our commitment to quality, expertise, and a clean, inviting environment makes every visit a delightful experience. Savor the taste of excellence at Haroon Bakery!"</p>
                </div>
            </div>
            <div  class="about-us-images">
                <asp:Image ID="Image123" data-aos="fade-left" ImageUrl="~/assets/about-image-1.jpg" CssClass="about-us-images-1"  runat="server" />
                <asp:Image ID="Image231" data-aos="fade-left"  ImageUrl="~/assets/about-image-2.jpg"  CssClass="about-us-images-2" runat="server" />

                <div data-aos="fade-left"  class="about-us-cards">
                    <div class="about-us-card">
                        <asp:Image ID="Image10" ImageUrl="~/assets/food.svg" runat="server" />
                        <div class="about-us-cards-content">
                            <span class="about-us-cards-content-number">200+</span>
                            <span class="about-us-cards-content-title">Food Category</span>
                        </div>
                    </div>
                    <div class="about-us-card">
                        <asp:Image ID="Image103213" ImageUrl="~/assets/satisfy.svg"  runat ="server" />
                        <div class="about-us-cards-content">
                            <span class="about-us-cards-content-number">1000+</span>
                            <span class="about-us-cards-content-title">Customer Satisfy</span>
                        </div>
                    </div>
                </div>
               
            </div>
            
        </div>
        
    </div>



    <script>

       
    </script>
</asp:Content>
