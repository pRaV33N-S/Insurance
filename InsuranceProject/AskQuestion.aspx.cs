using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsuranceProject
{
    public partial class AskQuestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InsertQuestionButton_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-FDHH6M8;Initial Catalog=InsuranceDb;Integrated Security=true";
            SqlConnection connection = new SqlConnection(connectionString);

            try
            {
                connection.Open();

                string insertQuery = "INSERT INTO questions (question, asked_date) VALUES (@question, @askedDate)";

                using (SqlCommand cmd = new SqlCommand(insertQuery, connection))
                {
                    cmd.Parameters.AddWithValue("@question", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@askedDate", DateTime.Now);

                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions or errors that may occur during the process.
                // For example, you can log the error, display an error message to the user, or take other appropriate actions.
            }
            finally
            {
                connection.Close();
            }
        }
    }
}