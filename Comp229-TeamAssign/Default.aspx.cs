using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//using statements that are required to connect to Entity Framework
using Comp229_TeamAssign.Models;
using System.Web.ModelBinding;

namespace Comp229_TeamAssign
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getMusicItem();
        }
        /// <summary>
        /// This Method gets the products data from the DataBase
        /// </summary>
        /*private void getMusicItem()
        {
            using (MusicStoreContext dataSource = new MusicStoreContext()) 
            {
                //Query the Album Table using EF and LINQ
                var albums = (from allAlbums in dataSource.Albums
                                select allAlbums);
                // bind the result to the Album GridView
                MusicGridView.DataSource = albums.ToList();

                ///MusicGridView.DataSource = albums.AsQueryable().OrderBy(SortString).ToList();
                MusicGridView.DataBind();
            }
        }*/
        private void getMusicItem()
        {
            using (MusicStoreContext dataSource = new MusicStoreContext())
            {
                //Query the Album Table using EF and LINQ
                var albums = (from allAlbums in dataSource.Albums
                              select allAlbums);
                // bind the result to the Album GridView
                AlbamDataList.DataSource = albums.ToList();

                ///MusicGridView.DataSource = albums.AsQueryable().OrderBy(SortString).ToList();
                AlbamDataList.DataBind();
            }
        }


    }
}