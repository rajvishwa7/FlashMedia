using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FlashMedia
{
    public partial class viewClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        static string flashStr = ConfigurationManager.ConnectionStrings["flashConnection"].ConnectionString;
        SqlConnection conn = new SqlConnection(flashStr);
        protected void btn_clFetch_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("sp_clientFetch", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataSet ds = new DataSet();

                da.Fill(ds);

                grd_fetch.DataSource = ds.Tables[0];
                grd_fetch.DataBind();

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_clSearch_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("sp_clientSearch", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param1 = new SqlParameter("@searchClient", SqlDbType.VarChar);
                cmd.Parameters.Add(param1).Value = txt_searchBox.Text;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                grd_fetch.DataSource = ds.Tables[0];
                grd_fetch.DataBind();

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}