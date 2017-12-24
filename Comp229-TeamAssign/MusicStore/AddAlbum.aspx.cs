using Comp229_TeamAssign.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamAssign.MusicStore
{
    public partial class AddAlbum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Default.aspx");
        }

        /// <summary>
        /// This method will store data to Album Table
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            
            using (MusicStoreContext dataSource = new MusicStoreContext())
            {                
                Album newAlbum = new Album();
                int AlbumId = 0;

                newAlbum = (from album in dataSource.Albums                            
                                  select album).FirstOrDefault();

                newAlbum.GenreId = Convert.ToInt32(GenreIdTextBox.Text);
                newAlbum.ArtistId= Convert.ToInt32(ArtistIdTextBox.Text);
                newAlbum.Title = TitleTextBox.Text;
                newAlbum.Price = Convert.ToInt32(PriceTextBox.Text);
                newAlbum.AlbumArtUrl = AlbumArtUrlTextBox.Text;
                
                if (AlbumId == 0)
                {
                    dataSource.Albums.Add(newAlbum);
                }                
                dataSource.SaveChanges();
                Response.Redirect("../Default.aspx");
            }

        }
    }
}