<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="HaroonBakersLatest.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Stylesheets/cart.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BODY" runat="server">
        <div class="header-container">
        <div class="overlay">
             <asp:Image ID="Image3" ImageUrl="~/assets/big-rect.svg" Width="200" CssClass="rect-left" runat="server" />
        <asp:Image ID="Image4" ImageUrl="~/assets/big-rect.svg" Width="200" CssClass="rect-right" runat="server" />
             <div class="header-container-content">
            <h1 class="header-container-title">Cart</h1>
        <span class="header-container-navigation"><a href="/">Home</a> <i class="fa-solid fa-angles-right fa-xs" style="color: #fff;"></i> Cart</span>
      </div>
        </div>
         <asp:Image ID="Image1" ImageUrl="~/assets/carousel-image-3.jpg"  CssClass="carousal-img" AlternateText="carousel-image-1" runat="server" />
       
     
    </div>
   <div class="container cart-container" id="cart-div">
   <div class="left-cart-container">
    <div class="cartItem-list-thead">
        <div></div>
        <div>Product</div>
        <div>Price</div>
        <div>Quantity</div>
        <div>Total</div>
    </div>
    <div class="cartItem-list-tr" id="cartItem-container">
       
    </div>
</div>

     <div class="overview-list">
    <h2>CART OVERVIEW</h2>

    <div class="overview-item">
        <span>Subtotal:</span>
        <span id="sub-total"></span>
    </div>

    <div class="overview-item">
        <span>Total:</span>
        <span id="total"></span>
    </div>

    <button class="btn">Proceed to checkout</button>
</div>



   </div>
    
    <%--   <div class="spacer"></div>--%>
    <script>
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

        let cart = JSON.parse(localStorage.getItem('cart')) || [];

        const cartItemContainer = document.getElementById("cartItem-container");
        const cartDiv = document.getElementById("cart-div");
        const subTotal = document.getElementById("sub-total");
        const Total = document.getElementById("total");

        const fetchDataFromServer = async () => {
            try {
                const resp = await fetch("../db/    data.json");
                const data = await resp.json();
                renderProducts(data); // Render products after data is fetched
            } catch (err) {
                console.log(err);
            }
        };

        fetchDataFromServer();

        function renderProducts(data) {
            
            // Check if data is an array before using reduce
            if (!Array.isArray(data)) {
                console.error("Data is not an array");
                return;
            }

            // Initialize the total variable
            let total = 0;

            const mappedItemsInCart = data.reduce((result, item) => {
                const cartItem = cart.find(cartItem => cartItem.cardId === String(item.id));

                // If the item is in the cart, add it to the result array with quantity
                if (cartItem) {
                    const itemInCart = { ...item, quantity: cartItem.quantity };
                    result.push(itemInCart);

                    // Add the product's total to the overall total
                    total += item.price * cartItem.quantity;
                }

                return result;
            }, []);

            const cartHTML = mappedItemsInCart.map(item => {
                return ` 
      <div class="cart-item" id="${item.id}">
 <button class="remove-btn" onClick="removeItem(event,${item.id})"><img src="../assets/trash-solid.svg" /></button>
           <a target="_blank" href="${item.imageUrl}"> <img src="${item.imageUrl}" width="50" height="50" alt="${item.title}"></a>
            <div> <span class="hidden-for-pc">Product:</span>${item.title}</div>
            <div> <span class="hidden-for-pc">Price:</span>Rs. ${item.price}/=</div>
            <div>
<span class="hidden-for-pc">Quantity:</span>
                <div class="table-btns">
                    <button onClick="decrease(event, ${item.id})">—</button>
                    <span>${item.quantity}</span>
                    <button onClick="increase(event,${item.id})">+</button>
                </div>
<button class="remove-btn-mobile " onClick="removeItem(event,${item.id})"><img src="../assets/trash-solid.svg" /></button>
            </div>
            <div> <span class="hidden-for-pc">Total:</span>Rs. ${item.price * item.quantity}/=</div>
        </div>`;
            });

            mappedItemsInCart.length >= 1 ? (cartItemContainer.innerHTML = cartHTML.join("")) : (cartDiv.innerHTML = `<h1>Your cart is currently empty.</h1><br><a style="color:blue; cursor:pointer; " href="/#ordernow">Return to Shop</a>`);

            subTotal.innerHTML = `Rs. ${total}/=`;
            Total.innerHTML = `Rs. ${total + 100}/=`;
        }

        function increase(e, id) {
            e.preventDefault();

            // Find the item in the cart
            const cartItem = cart.find(item => item.cardId === String(id));

            // If the item is in the cart, increase its quantity
            if (cartItem) {
                cartItem.quantity += 1;
            }

            // Update local storage
            localStorage.setItem('cart', JSON.stringify(cart));

            // Fetch data and render the updated cart
            fetchDataFromServer();
        }

        function decrease(e, id) {
            e.preventDefault();

            // Find the item in the cart
            const cartItem = cart.find(item => item.cardId === String(id));

            // If the item is in the cart and quantity is greater than 1, decrease its quantity
            if (cartItem && cartItem.quantity > 1) {
                cartItem.quantity -= 1;
            } else {
                // If the quantity becomes less than 1, remove the item from the cart
                const itemIndex = cart.findIndex(item => item.cardId === String(id));
                if (itemIndex !== -1) {
                    cart.splice(itemIndex, 1);
                }
            }

            // Update local storage
            localStorage.setItem('cart', JSON.stringify(cart));

            // Fetch data and render the updated cart
            fetchDataFromServer();
        }

        function removeItem(e, id) {
            e.preventDefault();

            // Find the index of the item in the cart
            const itemIndex = cart.findIndex(item => item.cardId === String(id));

            // If the item is in the cart, remove it
            if (itemIndex !== -1) {
                cart.splice(itemIndex, 1);
            }

            // Update local storage
            localStorage.setItem('cart', JSON.stringify(cart));

            // Fetch data and render the updated cart
            fetchDataFromServer();
        }
    </script>
</asp:Content>
