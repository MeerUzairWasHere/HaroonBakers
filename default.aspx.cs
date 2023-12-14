using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace HaroonBakersLatest
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {





            string jsonFilePath = @"U:\Workspace\NITS\HaroonBakersLatest\data.json";

            // Read the entire JSON file as a string
            string jsonString = File.ReadAllText(jsonFilePath);

            List<CardModel> data = Newtonsoft.Json.JsonConvert.DeserializeObject<List<CardModel>>(jsonString);

            StringBuilder htmlBuilder = new StringBuilder();

            foreach (var card in data)
            {
                htmlBuilder.AppendLine($@"
        <li class=""splide__slide"" id=""{card.Id}"" >
            <div class=""splide-card"">
<div class=""splide-card-container"">
                <img src=""{card.ImageUrl}"" class=""card-img-top"" alt=""{card.Title}"">
                    <a id=""cart-btn-{card.Id}"" class=""cart-btn"" href=""cart.aspx"">View Cart</a>
                <span class=""card-price"">Rs. {card.Price}/=</span>
                <div class=""card-body"">
                    <h5 class=""card-title"">{card.Title}</h5>
                    <p class=""card-text"">{card.Description}</p>
                    <div class=""card-btns"">
                            <button class=""btn"" style=""color:#fff"" onclick=""addToCart(event, '{card.Id}');"">Add To Cart</button> </div>
</div>     
                </div>
            </div>
        </li>");


            }

            string dynamicHtml = htmlBuilder.ToString();
            cardsection.InnerHtml = dynamicHtml;
        }

        
    }
}