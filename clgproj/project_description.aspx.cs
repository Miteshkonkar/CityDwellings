using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace clgproj
{
    public partial class project_description : System.Web.UI.Page
    {
        SqlConnection sc = new SqlConnection(@"Data Source=LAPTOP-5UCEC7CO\SQLEXPRESS;Initial Catalog=CityDwellings;Integrated Security=True;MultipleActiveResultSets = True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            int proj_id = Int32.Parse(Request.QueryString["ID"]);

            if (sc.State == System.Data.ConnectionState.Closed)
                sc.Open();
            SqlCommand cmd = new SqlCommand("get_page_info", sc);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pgid", proj_id);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            byte[] bytes1 = (byte[])sdr[0];
            string mainimg = Convert.ToBase64String(bytes1);
            //Image1.ImageUrl = "data:image/png;base64," + strbase64;
            bgimg.Style["background-image"] = "data:image/png;base64," + mainimg;

            header.Text = sdr[1].ToString();
            header2.Text = sdr[1].ToString();
            header_desc.Text = sdr[2].ToString();
            auth_desc.Text = sdr[3].ToString();

            byte[] bytes2 = (byte[])sdr[4];
            string ovimg = Convert.ToBase64String(bytes2);
            contimg.Style["background-image"] = "data:image/png;base64," + ovimg;


            byte[] bytes3 = (byte[])sdr[5];
            string ovimg2 = Convert.ToBase64String(bytes3);
            cont2.Style["background-image"] = "data:image/png;base64," + ovimg2;

            overview_description.Text = sdr[6].ToString();
            plan_heading.Text = sdr[7].ToString();
            plan_desc.Text = sdr[8].ToString();

            byte[] bytes4 = (byte[])sdr[9];
            string fplan = Convert.ToBase64String(bytes4);
            clxpln.ImageUrl = "data:image/png;base64," + fplan;

            byte[] bytes5 = (byte[])sdr[10];
            string cplan = Convert.ToBase64String(bytes5);
            flrpln.ImageUrl = "data:image/png;base64," + cplan;

            amenity_heading.Text = sdr[11].ToString();
            amenity_desc.Text = sdr[12].ToString();

            byte[] bytes6 = (byte[])sdr[13];
            string amimg1 = Convert.ToBase64String(bytes6);
            amenimg1.ImageUrl = "data:image/png;base64," + amimg1;

            string amm1 = sdr[14].ToString();

            string[] ammenity1 = amm1.Split(',');
            amenity1_desc.Text = "<ul>";
            foreach (string word1 in ammenity1)
            {
                amenity1_desc.Text = amenity1_desc.Text + "<li>" + word1 + "</li>";
            }
            amenity1_desc.Text = amenity1_desc.Text + "</ul>";

            byte[] bytes7 = (byte[])sdr[15];
            string amimg2 = Convert.ToBase64String(bytes7);
            amenimg2.ImageUrl = "data:image/png;base64," + amimg2;

            string amm2 = sdr[16].ToString();

            string[] ammenity2 = amm2.Split(',');
            amenity2_desc.Text = "<ul>";
            foreach (string word2 in ammenity2)
            {
                amenity2_desc.Text = amenity2_desc.Text + "<li>" + word2 + "</li>";
            }
            amenity2_desc.Text = amenity2_desc.Text + "</ul>";

            byte[] bytes8 = (byte[])sdr[17];
            string amimg3 = Convert.ToBase64String(bytes8);
            amenimg3.ImageUrl = "data:image/png;base64," + amimg3;

            string amm3 = sdr[18].ToString();

            string[] ammenity3 = amm3.Split(',');
            amenity3_desc.Text = "<ul>";
            foreach (string word3 in ammenity3)
            {
                amenity3_desc.Text = amenity3_desc.Text + "<li>" + word3 + "</li>";
            }
            amenity3_desc.Text = amenity3_desc.Text + "</ul>";
            location_header.Text = sdr[19].ToString();

            byte[] bytes9 = (byte[])sdr[20];
            string locimg = Convert.ToBase64String(bytes9);
            lcimg.ImageUrl = "data:image/png;base64," + locimg;

            sc.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                int proj_id = Int32.Parse(Request.QueryString["ID"]);
                Response.Redirect("~/BillDemo.aspx?ID=" + proj_id);
            }
            else
            {
                Label1.Text = "Please Login to move Further";
            }

        }

    }
}