using System;
using System.Data;
using System.Data.SqlClient;

namespace spCRUD
{
    public partial class lib : System.Web.UI.Page
    {
        SqlConnection Connect = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Connect.State == ConnectionState.Open)
            {
                Connect.Close();
            }
            Connect.Open();

        }

        protected void Create(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("spSrearch", Connect);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "Create");
            cmd.Parameters.AddWithValue("@Name", Name.Text);
            cmd.Parameters.AddWithValue("@Category", Category.Text);
            cmd.Parameters.AddWithValue("@Description", Description.Text);
            cmd.ExecuteNonQuery();

            Name.Text = "";
            Category.Text = "";
            Description.Text = "";

        }

        protected void Delete(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("spSrearch", Connect);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "Delete");
            cmd.Parameters.AddWithValue("@Name", Name.Text);
            cmd.ExecuteNonQuery();

            Name.Text = "";
            Category.Text = "";
            Description.Text = "";

        }

        protected void Update(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("spSrearch", Connect);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "Update");
            cmd.Parameters.AddWithValue("@Name", Name.Text);
            cmd.Parameters.AddWithValue("@Category", Category.Text);
            cmd.Parameters.AddWithValue("@Description", Description.Text);
            cmd.ExecuteNonQuery();

            Name.Text = "";
            Category.Text = "";
            Description.Text = "";


        }

        protected void View(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("spSrearch", Connect);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "View");
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            Name.Text = "";
            Category.Text = "";
            Description.Text = "";
        }
    }
}