using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HaroonBakersLatest
{
    public partial class Site1 : System.Web.UI.MasterPage
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
    <li>
        <asp:HyperLink
            ID=""HyperLink{card.Id}""
            NavigateUrl=""#""
            runat=""server"">{card.Title}</asp:HyperLink>
    </li>");

            }

            string dynamicHtml = htmlBuilder.ToString();
            ULcontainer.InnerHtml = dynamicHtml;
            ULcontainerMobile.InnerHtml = dynamicHtml;

            StringBuilder footerHtmlBuilder = new StringBuilder();
            for (int card = 1 ; card <= 10; card++)
            {
                footerHtmlBuilder.AppendLine($@"
    <li>
        <asp:HyperLink
            ID=""HyperLink{data[card].Id}""
            NavigateUrl=""#""
            runat=""server"">{data[card].Title}</asp:HyperLink>
    </li>");

            }

            string dynamicFooter1 = footerHtmlBuilder.ToString();

            footerUL.InnerHtml = dynamicFooter1;


           






        }
    }

     
}