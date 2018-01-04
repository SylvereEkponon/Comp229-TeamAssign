using Comp229_TeamAssign.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamAssign
{
    public partial class Albums : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.GetAllAlbums();
            }
        }

        /// <summary>
        /// This method gets all albums from the database
        /// </summary>
        private void GetAllAlbums()
        {

            using (MusicStoreContext dataSource = new MusicStoreContext())
            {
                //Query the Album Table using EF and LINQ
                var albums = (from allAlbums in dataSource.Albums
                              select allAlbums);
                
                AlbamDataList.DataSource = albums.ToList();

                // bind the result to the Album GridView
                AlbamDataList.DataBind();
            }
        }

        protected void AlbamDataList_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            //set current page startindex, max rows and rebind to false
            AlbumDataPager.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);

            //rebind List View
            this.GetAllAlbums();
        }
    }
}