using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DataTable : System.Web.UI.Page
    {
        protected void GetDataTable(object sender, EventArgs e)
        {
            System.Data.DataTable Dt = new System.Data.DataTable();

            Dt.Columns.Add("Id");
            Dt.Columns.Add("Name");
            Dt.Columns.Add("Email");

            Dt.Rows.Add("1","John Doe", "John@gmail.com");
            Dt.Rows.Add("2", "Jani Doe", "Jani@gmail.com");
            Dt.Rows.Add("3", "William Johns", "William@gmail.com");
            Dt.Rows.Add("4", "Ritabrata Goswami", "Ritabrata@gmail.com");
            Dt.Rows.Add("5", "Gopus", "Gopus@gmail.com");

            DataList01.DataSource = Dt;
            DataGrid01.DataSource = Dt;


            DataList01.DataBind();
            DataGrid01.DataBind();
        }
    }
}