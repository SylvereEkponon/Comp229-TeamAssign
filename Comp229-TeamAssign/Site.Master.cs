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
                this.BindGenre();
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
                case "home":
                    home.Attributes.Add("class", "active");
                    Page.Title = string.Format("Music Store :: Home :: {0:d}", DateTime.Now);
                    break;
                case "about":
                    about.Attributes.Add("class", "active");
                    break;
                case "contact":
                    contact.Attributes.Add("class", "active");
                    break;
                case "register":
                    register.Attributes.Add("class", "active");
                    break;
                case "login":
                    login.Attributes.Add("class", "active");
                    break;



            }
        }

        private void BindGenre()
        {
            using (MusicStoreContext db = new MusicStoreContext())
            {
                var genres = (from allgenre in db.Genres select allgenre);
                GenreGridView.DataSource = genres.ToList();
                GenreGridView.DataBind();
            }
        }
    }
}