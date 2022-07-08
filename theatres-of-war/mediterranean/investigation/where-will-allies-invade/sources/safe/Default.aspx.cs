using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Threading;

public partial class _Default : System.Web.UI.Page
{
	private string[] _answers = new string[] { "Jumbo", "William", "Marian" };
	private void Page_Load(object sender, EventArgs e)
	{
		if (Request["noflash"] == null)
		{
			btnReset.NavigateUrl = "/worldwar2/theatres-of-war/mediterranean/investigation/where-will-allies-invade/sources/safe";
		}
		else
		{
			btnReset.NavigateUrl = "/worldwar2/theatres-of-war/mediterranean/investigation/where-will-allies-invade/sources/safe?noflash=true";	
		}
		makeLetters();
		if (!Page.IsPostBack)
		{
			if (Request["loggedIn"] != null)
			{
				Session["loggedIn"] = Request["loggedIn"];
			}
			makeLetter(letter1, codeNum1, _answers[0]);
			makeLetter(letter2, codeNum2, _answers[1]);
			makeLetter(letter3, codeNum3, _answers[2]);
		}
		else
		{
			Instructions.Visible = false;
		}
		if (Request["noFlash"] == "true")
		{
			enableFlash.Visible = false;
		}

		if (Request["flashLarge"] == "true")
		{
			enableFlash.Visible = false;
			enableFlash2.Visible = true;
		}

	}
	private void makeLetters()
	{
		lettersNumbers.Visible = true;
		for (int i = 1; i <= 26; i++)
		{
			HtmlGenericControl letter = new HtmlGenericControl("li");
			letter.InnerHtml = String.Format("{0}={1}",((char)(i + 96)).ToString(),i.ToString());
			lettersNumbers.Controls.Add(letter);

			
		}
	}
	private int makeLetter(HtmlTableCell codeCell, HiddenField codeField, string answer)
	{
		Thread.Sleep(5);
		Random rand = new Random();
		int letter = 1 + rand.Next(answer.Length);
		codeField.Value = letter.ToString();
		codeCell.InnerHtml = String.Format("Code for letter {0}:", letter.ToString());
		return (letter);
	}
	protected void btnCrack_Click(object sender, EventArgs e)
	{


		feedback(answer1.Text.ToLower() == _answers[0].ToLower(), answer1Feedback);
		bool open1a = answer1.Text.ToLower() == _answers[0].ToLower();
		bool open1 = check(code1.Text, codeNum1.Value, _answers[0]);
		feedback(open1, code1Feedback);

		feedback(answer2.Text.ToLower() == _answers[1].ToLower(), answer2Feedback);
		bool open2a = answer2.Text.ToLower() == _answers[1].ToLower();
		bool open2 = check(code2.Text, codeNum2.Value, _answers[1]);
		feedback(open2, code2Feedback);

		feedback(answer3.Text.ToLower() == _answers[2].ToLower(), answer3Feedback);
		bool open3a = answer3.Text.ToLower() == _answers[2].ToLower();
		bool open3 = check(code3.Text, codeNum3.Value, _answers[2]);
		feedback(open3, code3Feedback);

		if (open1 && open2 && open3 && open1a && open2a && open3a)
		{
			formTable.Visible = false;
			hiddenAudio.Visible = true;
			hiddenDocument.Visible = true;
			hiddenFilm.Visible = true;
			openTitle.Visible = true;
			Session["loggedIn"] = true;
		}
		else
		{
			formTable.Visible = true;
			hiddenAudio.Visible = false;
			hiddenDocument.Visible = false;
			hiddenFilm.Visible = false;
			openTitle.Visible = false;
			Session["loggedIn"] = false;
		}
	}

	private void feedback(bool answer, Label feedback)
	{
		if (answer)
		{
			feedback.Text = "Correct";
			feedback.ForeColor = System.Drawing.Color.Green;
		}
		else
		{
			feedback.Text = "Incorrect";
		}
	}
	private bool check(string code, string position, string answer)
	{
		if (code != "")
		{
			int codeInt = int.Parse(code);
			int positionInt = int.Parse(position);
			string letter = ((char)(codeInt + 96)).ToString().ToLower();
			string answerLetter = answer.Substring(positionInt - 1, 1).ToLower();
			return (answerLetter == letter);
		}
		else
		{
			return (false);
		}
	}
}
