using Comp229_TeamAssign.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamAssign
{
    public partial class AlbumDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindAlbum();
            }
        }

        /// <summary>
        /// This method gets the album from the Database
        /// </summary>
        private void BindAlbum()
        {
            int albumId = Convert.ToInt32(Request.QueryString["AlbumId"]);

            using (MusicStoreContext db = new MusicStoreContext())
            {
                var album = (from oneAlbum in db.Albums
                             join artist in db.Artists
                             on oneAlbum.ArtistId equals artist.ArtistId
                             join genre in db.Genres
                             on oneAlbum.GenreId equals genre.GenreId
                             where oneAlbum.AlbumId == albumId
                             select new {AlbumArtUrl=oneAlbum.AlbumArtUrl,Title=oneAlbum.Title,Genre=genre.Name,Name=artist.Name,Price=oneAlbum.Price });

                AlbumDetailRepeater.DataSource = album.ToList();
                AlbumDetailRepeater.DataBind();
            }

        }
    }
}