<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="contactUs.aspx.cs" Inherits="HaroonBakersLatest.contactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Stylesheets/contactUs.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BODY" runat="server">
     <div class="header-container">
        <div class="overlay">
             <asp:Image ID="Image3" ImageUrl="~/assets/big-rect.svg" Width="200" CssClass="rect-left" runat="server" />
        <asp:Image ID="Image4" ImageUrl="~/assets/big-rect.svg" Width="200" CssClass="rect-right" runat="server" />
             <div class="header-container-content">
            <h1 class="header-container-title">Contact Us</h1>
        <span class="header-container-navigation"><a href="/">Home</a> <i class="fa-solid fa-angles-right fa-xs" style="color: #fff;"></i> Contact Us</span>
      </div>
        </div>
         <asp:Image ID="Image1" ImageUrl="~/assets/carousel-image-1.jpg"  CssClass="carousal-img" AlternateText="carousel-image-1" runat="server" />
       
     
    </div>

   <section class="contact-us-section">
    <div class="container">
            <div class="contact-us-cards">
                <div  class="contact-us-card ">
                <div class="shop-image-div">
                    <asp:Image ID="Image2" ImageUrl="~/assets/shop2.jpg" runat="server" />
                </div>
                    <div class="contact-us-card-content">
                        <h1 class="contact-us-card-content-title">Main Branch</h1>
                        <ul>
                            <li>
                                <asp:Image ID="Image6" ImageUrl="~/assets/location.svg" runat="server" />
                                <a href="https://maps.app.goo.gl/8U5wWhri4Q2dfUuh9">Qamarwari, Hilal Abad, Srinagar, Jammu & Kashmir, 190010.</a> </li>
                            <li>
                                <asp:Image ID="Image7"  ImageUrl="~/assets/phone.svg" runat="server" />
                                <a href="tel:7006575308">+91 7006575308</a> </li>
                            <li>
                                <asp:Image ID="Image8"  ImageUrl="~/assets/mail.svg" runat="server" />
                                <a href="mailto:haroonbakers451@gmail.com">haroonbakers451@gmail.com</a> </li>
                        </ul>
                    </div>
                </div>
            </div>
    </div>
   
    <div data-aos="fade-up" class="container form-section">
            <h2>Contact Us</h2>
        <h1>Get in Touch</h1>

       <div class="form-container">
           <div class="input-container">
     <input id="inp1" name="Name" required type="text" placeholder="Name" />
                <input id="inp2" name="Email" required type="email" placeholder="Email" />
             </div>
           <div class="message-box">
                   <textarea id="TextArea1" placeholder="Message..." cols="20" name="Message" required rows="5"></textarea>
                                 
             </div>
           <button id="Button1" type="submit">Send Message</button>
          
           </div>

       </div>
   
  <iframe data-aos="fade-up" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3304.531833062586!2d74.80038317791937!3d34.08151370390455!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38e18fc1b4efb02b%3A0xfdbec1db953218ae!2sHaroon%20Bakers!5e0!3m2!1sen!2sin!4v1701944095965!5m2!1sen!2sin" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>


   </section>

</asp:Content>
