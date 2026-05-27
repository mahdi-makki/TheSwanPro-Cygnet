using System;
using System.Web.UI;

public partial class Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ErrorWrapper.Visible = false;
        }
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        ErrorWrapper.Visible = false;

        string username = UsernameTextBox.Text.Trim();
        string password = PasswordTextBox.Text;

        if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
        {
            ShowError("Please enter both username and password.");
            return;
        }

        if (!username.Contains("@"))
        {
            ShowError("Invalid email address.");
            return;
        }

        // TODO: Add real authentication logic here.
        Response.Redirect("Default.aspx");
    }

    private void ShowError(string message)
    {
        ErrorMessageText.Text = message;
        ErrorWrapper.Visible = true;
    }
}
