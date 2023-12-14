<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="HaroonBakersLatest._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Stylesheets/default.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BODY" runat="server">
    <div class="swiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide ">
                <asp:Image ID="Image1" ImageUrl="~/assets/carousel-image-1.jpg" class="carousal-img" AlternateText="carousel-image-1" runat="server" />

                <div class="hero-section">
                    <div class="container-fluid">
                        <span class="hero-section-title slide-top-bottom ">
                            <asp:Image ID="Image3" ImageUrl="~/assets/rect.svg" runat="server" />
                            Welcome to Fresh Flavors Bakery
      <asp:Image ID="Image4" ImageUrl="~/assets/rect.svg" runat="server" />

                        </span>
                        <h1 class="hero-section-body slide-top-bottom ">Experience Freshness in Every Bite.</h1>
                        <p class="hero-section-description slide-bottom-top">Savor the essence of handpicked ingredients and the passion we put into creating each delectable treat.</p>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/aboutUs.aspx" class="slide-bottom-top" runat="server">Discover More</asp:HyperLink>
                    </div>


                </div>
            </div>
            <div class="swiper-slide">
                <asp:Image ID="Imagasdae2" ImageUrl="~/assets/carousel-image-2.jpg" class="carousal-img" AlternateText="carousel-image-2" runat="server" />
                <div class="hero-section">
                    <div class="container-fluid slide-top-bottom">
                        <span class="hero-section-title">
                            <asp:Image ID="Image5" ImageUrl="~/assets/rect.svg" runat="server" />Welcome to Artisan Delights Bakery<asp:Image ID="Image265465" ImageUrl="~/assets/rect.svg" runat="server" /></span>
                        <h1 class="hero-section-body  slide-top-bottom">Artisanal Elegance, Baked to Perfection.</h1>
                        <p class="hero-section-description slide-bottom-top">Immerse yourself in the artistry of our bakers as they blend traditional techniques with a modern touch for a taste that transcends expectations.</p>
                        <asp:HyperLink ID="HyperLink231" NavigateUrl="~/aboutUs.aspx" class="slide-bottom-top" runat="server">Discover More</asp:HyperLink>

                    </div>


                </div>

            </div>
            <div class="swiper-slide">

                <asp:Image ID="Image22312" ImageUrl="~/assets/carousel-image-3.jpg" class="carousal-img" AlternateText="carousel-image-3" runat="server" />
                <div class="hero-section">
                    <div class="container-fluid">
                        <span class="hero-section-title slide-top-bottom">
                            <asp:Image ID="Image324322" ImageUrl="~/assets/rect.svg" runat="server" />Welcome to Diverse Tastes Bakery<asp:Image ID="Image4324232" ImageUrl="~/assets/rect.svg" runat="server" /></span>
                        <h1 class="hero-section-body slide-top-bottom">Diverse Delights for Every Palate.</h1>
                        <p class="hero-section-description slide-bottom-top">Explore a world of flavors with our extensive range of baked goods, where there's something delightful for every taste preference.</p>
                        <asp:HyperLink ID="HyperLink1231" NavigateUrl="~/aboutUs.aspx" class="slide-bottom-top" runat="server">Discover More</asp:HyperLink>

                    </div>


                </div>
            </div>
        </div>
    </div>


    <div class="container carousal-card-container">
        <section class="splide" aria-label="Splide Basic HTML Example">
            <div class="splide__track">
                <ul class="splide__list">
                    <li class="splide__slide">
                        <div class="carousal-card">
                            <img src="assets/wedding-cake.png" class="rotate-center" />
                            <div class="carousal-card-details">
                                <span class="carousal-card-details-title">Wedding Cakes</span>
                                <p class="carousal-card-details-desc">Elaborate, tiered cake for weddings, matching theme or colors.</p>
                            </div>
                        </div>

                    </li>
                    <li class="splide__slide">
                        <div class="carousal-card">
                            <asp:Image ID="Image321212" ImageUrl="~/assets/aniversary-cake.png" class="rotate-center" AlternateText="cake" runat="server" />
                            <div class="carousal-card-details">
                                <span class="carousal-card-details-title">Anniversary Cake</span>
                                <p class="carousal-card-details-desc">Celebratory cake marking marriage milestones, tailored to years celebrated.</p>
                            </div>
                        </div>
                    </li>
                    <li class="splide__slide">
                        <div class="carousal-card">
                            <asp:Image ID="Image32312" ImageUrl="~/assets/birthday-cake.png" class="rotate-center" AlternateText="cake" runat="server" />
                            <div class="carousal-card-details">
                                <span class="carousal-card-details-title">Birthday Cake</span>
                                <p class="carousal-card-details-desc">Festive cakes in varied shapes, sizes, adorned with candles.</p>
                            </div>
                        </div>
                    </li>
                    <li class="splide__slide">
                        <div class="carousal-card">
                            <asp:Image ID="Image2876876" ImageUrl="~/assets/chocolate-cake.png" class="rotate-center" AlternateText="cake" runat="server" />
                            <div class="carousal-card-details">
                                <span class="carousal-card-details-title">Chocolate Cake</span>
                                <p class="carousal-card-details-desc">Classic cocoa-infused dessert, enjoyed on various occasions.</p>
                            </div>
                        </div>
                    </li>
                    <li class="splide__slide">
                        <div class="carousal-card">
                            <asp:Image ID="Image3211232" ImageUrl="~/assets/red-velvet.png" class="rotate-center" AlternateText="cake" runat="server" />

                            <div class="carousal-card-details">
                                <span class="carousal-card-details-title">Red Velvet Cake</span>
                                <p class="carousal-card-details-desc">Distinctive red cocoa cake, layered, topped with cream cheese.</p>
                            </div>
                        </div>
                    </li>
                    <li class="splide__slide">
                        <div class="carousal-card">
                            <asp:Image ID="Imag213e2" ImageUrl="~/assets/cheese-cake.png" class="rotate-center" AlternateText="cake" runat="server" />

                            <div class="carousal-card-details">
                                <span class="carousal-card-details-title">Cheese Cake</span>
                                <p class="carousal-card-details-desc">Creamy dessert with crust, featuring cream cheese, sugar, and variations.</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
    </div>

    <div id="ordernow" class="container ">
        <div class="product-section">
            <div class="product-list">
                <ul>
                    <li>

                        <asp:Button ID="Button2" class="btns" runat="server" Text="Wedding Cakes" />
                    </li>
                    <li>
                        <asp:Button ID="Button3" class="btns" runat="server" Text="Birthday Cakes" />
                    </li>
                    <li>
                        <asp:Button ID="Button4" class="btns" runat="server" Text="Chocolate Cakes" />
                    </li>
                    <li>
                        <asp:Button ID="Button5"  class="btns" runat="server" Text="Normal Cakes" />
                    </li>
                    <li>
                        <asp:Button ID="Button6" class="btns" runat="server" Text="Anniversary Cakes" />
                    </li>
                    <li>
                        <asp:Button ID="Button7" class="btns" runat="server" Text="Pastries" />
                    </li>

                </ul>
            </div>
            <section class="splide mySplide" aria-label="Splide Basic HTML Example">
                <div class="splide__track">
                    <ul runat="server" id="cardsection" class="splide__list">
                    </ul>
                   
                </div>
            </section>
        </div>
    </div>

    <div class="container about-section" data-aos="fade-right" data-aos-delay="50">
        <div class="about-images">
            <div class="about-images-container">
                <asp:Image ID="Image23123" ImageUrl="~/assets/cake1.jpg" class="about-image-1 polygon" Width="220" Height="220" AlternateText="cake-1" runat="server" />
                <asp:Image ID="Image233123" ImageUrl="~/assets/cake2.jpg" class="about-image-2 polygon" Width="220" Height="220" AlternateText="cake-2" runat="server" />
                <asp:Image ID="Image231423" ImageUrl="~/assets/cake3.jpg" class="about-image-3 polygon" Width="220" Height="220" AlternateText="cake-3" runat="server" />
                <asp:Image ID="Image231223" ImageUrl="~/assets/cake4.jpg" class="about-image-4 polygon" Width="220" Height="220" AlternateText="cake-4" runat="server" />
            </div>
        </div>

        <div class="about-body">
            <span data-aos="fade-left" class="about-body-header">About Haroon Bakers
            </span>
            <h2 data-aos="fade-left" class="about-body-title">Discover Delightful Moments at Haroon Bakers</h2>
            <p data-aos="fade-left" class="about-body-description">Indulge in irresistible delights at Haroon Bakers! Our artisanal bakery brings you the perfect blend of passion and perfection in every bite. From fresh bread to decadent pastries, experience the magic of quality baking. Elevate your everyday moments with the extraordinary flavors of Haroon Bakers.</p>

            <div data-aos="fade-left" class="about-body-experience">
                <div class="about-body-experience-food">
                    <div class="about-body-experience-inner">
                        <h4>Pure Fresh Bakery Delights</h4>
                        <p>Savor a variety of freshly baked goods crafted by expert chefs at our bakery.</p>
                    </div>
                </div>
                <div data-aos="fade-left" class="about-body-experience-chef">
                    <div class="about-body-experience-inner">
                        <h4>Expertly Baked Goodies</h4>
                        <p>Indulge in the finest baked treats prepared by our skilled chefs at the bakery.</p>
                    </div>
                </div>
            </div>

            <a href="aboutUs.aspx" data-aos="fade-left" class="discover-more">Discover More</a>
        </div>
    </div>









    <script>
        const fetchDataFromServer = async (productId) => {
            try {
                const resp = await fetch("../data.json");
                const data = await resp.json();
                showCartBtn(data, productId) // Render products after data is fetched
            } catch (err) {
                console.log(err);
            }
        };
        function showCartBtn(data, productId) {
            const object = data.find(item => item.id == productId)

            Toastify({
                text: `"${object.title}" added to your cart! `,
                duration: 3000,
                destination: "/cart.aspx",
                close: true,
                gravity: "bottom", // `top` or `bottom`
                position: "right", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                style: {
                    background: "#15594E",
                    "font-family": "Jost",
                    "font-size": "1rem",
                },
                onClick: function () { } // Callback after click
            }).showToast();
             
        }

        function addToCart(e, productId) {

            e.preventDefault()
        // Prevent default form submission
            // Use cardId as needed, for example, send it to the server using AJAX

            // Use cardId as needed
            // For simplicity, I'm using an array to represent the cart items
            let cart = JSON.parse(localStorage.getItem('cart')) || [];

            // Check if the item is already in the cart
            let existingItem = cart.find(item => item.cardId === productId);

            if (existingItem) {
                existingItem.quantity += 1; // Increase quantity if the item is already in the cart
            } else {
                // Add the new item to the cart
                cart.push({ cardId: productId, quantity: 1 });
            }

            // Save the updated cart to localStorage
            localStorage.setItem('cart', JSON.stringify(cart));
            renderCount();

        


            fetchDataFromServer(productId);

        }

        //function viewCart(e) {
        //    e.preventDefault();
        //    // Retrieve the cart items from localStorage
        //    var cart = JSON.parse(localStorage.getItem('cart')) || [];

      

        //    // Perform additional logic to display the cart items on the cart page
        //    // You might want to update the DOM dynamically to show the cart contents
        //}



        const screenWidth = window.innerWidth;
        let perPage = 3; // Default perPage value
        let padding = "30px"
        let mobilePadding = "30px"
        if (screenWidth <= 768) {
            perPage = 1; // Set perPage to 1 for screens with a width less than or equal to 768px
            padding = "25px"
            mobilePadding = "0";
        }
        else if (screenWidth >= 1440) {
            perPage = 4; // Set perPage to 1 for screens with a width less than or equal to 768px
        }

        document.addEventListener('DOMContentLoaded', function () {
            let splide = new Splide('.splide', {
                type: 'loop',
                perPage: perPage,
                perMove: 1,
                padding: mobilePadding
            });
            splide.mount();
        });

        document.addEventListener('DOMContentLoaded', function () {
            let splide = new Splide('.mySplide', {
                type: 'loop',
                perPage: perPage,
                perMove: 1,
                padding: padding,
            });
            splide.mount();
        });


        document.addEventListener('DOMContentLoaded', function () {
            const swiper = new Swiper('.swiper', {
                // Optional parameters
                direction: 'horizontal',
                loop: true,
                centeredSlides: true,
                autoplay: {
                    delay: 10000,
                    disableOnInteraction: false,
                },
            });
            swiper.mount();
        });
      
    </script>

</asp:Content>
