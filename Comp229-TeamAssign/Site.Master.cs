using Comp229_TeamAssign.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Comp229_TeamAssign
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {

                    MusicStorePlaceHolder.Visible = true;
                    PublicPlaceHolder.Visible = false;
                }
                else
                {

                    MusicStorePlaceHolder.Visible = false;
                    PublicPlaceHolder.Visible = true;
                }
            }
            SetActivePage();


        }

        private void SetActivePage()
        {
            switch (Page.Title)
            {
                case "Home":
                    home.Attributes.Add("class", "active");
                    Page.Title = string.Format("Music Store::Home ::");
                    break;
                case "AboutUs":
                    about.Attributes.Add("class", "active");
                    Page.Title = string.Format("Music Store::AboutUs :: ");
                    break;
                case "ContactUs":
                    contact.Attributes.Add("class", "active");
                    Page.Title = string.Format("Music Store::ContactUs :: ");
                    break;
                case "Registration":
                    register.Attributes.Add("class", "active");
                    Page.Title = string.Format("Music Store::Registration :: ");
                    break;
                case "Login":
                    login.Attributes.Add("class", "active");
                    Page.Title = string.Format("Music Store::Login :: ");
                    break;



            }
        }


    }
}