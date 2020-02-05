using OnlineTrainTicketBooking;
using System;
using System.Data.SqlClient;

namespace OnlineTrainTicketBookingApp
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SignIn_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"Data Source = LENOVO\SQLEXPRESS; Initial Catalog = Railway; User ID = sa; Password = monika123");

            UserRepository userRepository = new UserRepository();
            short value = userRepository.VerifyWithDB(username.Text, password.Text);
            if (value > 100)
            {
                string message = "Sign in successfully.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            else
                Response.Redirect("SignIn.aspx");
        }
        protected void SignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}