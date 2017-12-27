using Comp229_TeamAssign.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamAssign
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindGenre();
            }
            SetActivePage();
        }

        private void SetActivePage()
        {
            switch (Page.Title)
            {
                case "Home":
                    home.Attributes.Add("class", "active");
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