using OnlineTrainTicketBooking;
using System;
using System.Data.SqlClient;


namespace OnlineTrainTicketBookingApp
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(@"Data Source = LENOVO\SQLEXPRESS; Initial Catalog = Railway; User ID = sa; Password = monika123");
            UserRepository userRepository = new UserRepository();
            User user = new User(firstnameID.Text, lastnameID.Text, short.Parse(ageID.Text), RadioButtonList1.SelectedItem.ToString(), gmailID.Text, long.Parse(phoneID.Text), passwordID.Text, "User");
            int row = userRepository.RegisterDetail(user, sqlConnection);            
            if (row >= 1)
            {
                string message = "Your details have been Registered successfully.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            else
                Response.Write("Not Registered Succesfully");
            

        }

        //protected void ServerValidation(object sender, ServerValidateEventArgs args)
        //{
        //    try
        //    {
        //        short data = short.Parse(args.Value);
        //        args.IsValid = (data > 18 && data < 100);
        //    }
        //    catch(Exception msg)
        //    {
        //        args.IsValid = false;
        //    }
        //}
    }
}