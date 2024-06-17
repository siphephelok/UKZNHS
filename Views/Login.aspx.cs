using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UKZNHS.Views
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void EditBtn_Click(object sender, EventArgs e)
        {
            if (RoleCb.SelectedIndex == 0)
            {
                ErrMsg.InnerText ="Select a Role";
            }
            else if (RoleCb.SelectedIndex == 1)
            {
                string Query = "select * from UKZNDoctorTb where DocEmail = '{0}' and DocPass = '{1}'";
                Query = string.Format(Query, RoleEmailTb.Value, RolePassTb.Value);
                DataTable dt = Con.GetDatas(Query);
                if(dt.Rows.Count == 0)
                {
                    ErrMsg.InnerText = "Invalid Doctor";
                }
                else
                {
                    string role = "Docto";
                    Session["uid"] = dt.Rows[0][0].ToString();
                    Session["role"] = role;
                    Session.Timeout = 10;
                    string r_url = "{0}/Prescri.aspx";
                    r_url = string.Format(r_url, role);
                    Response.Redirect(r_url);
                }
            }
            else if (RoleCb.SelectedIndex == 2)
            {
                string Query = "select * from UKZNReceptionistTb where RecEmail = '{0}' and RecPassword = '{1}'";
                Query = string.Format(Query, RoleEmailTb.Value, RolePassTb.Value);
                DataTable dt = Con.GetDatas(Query);
                if (dt.Rows.Count == 0)
                {
                    ErrMsg.InnerText = "Invalid Receptionist";
                }
                else
                {
                    string role = "Receptionist";
                    Session["uid"] = dt.Rows[0][0].ToString();
                    Session["role"] = role;
                    Session.Timeout = 10;
                    string r_url = "{0}/Patients.aspx";
                    r_url = string.Format(r_url, role);
                    Response.Redirect(r_url);
                }

            }
            else if (RoleCb.SelectedIndex == 3) 
            {
                string Query = "select * from UKZNLaboratorianTb where LabEmail = '{0}' and LabPass = '{1}'";
                Query = string.Format(Query, RoleEmailTb.Value, RolePassTb.Value);
                DataTable dt = Con.GetDatas(Query);
                if (dt.Rows.Count == 0)
                {
                    ErrMsg.InnerText = "Invalid Laboratorian";
                }
                else
                {
                    string role = "Laboratorian";
                    Session["uid"] = dt.Rows[0][0].ToString();
                    Session["role"] = role;
                    Session.Timeout = 10;
                    string r_url = "{0}/LabTest.aspx";
                    r_url = string.Format(r_url, role);
                    Response.Redirect(r_url);
                }

            }
            else if (RoleCb.SelectedIndex == 4)
            {
                if(RoleEmailTb.Value == "admin@ukzn.ac.za" &&  RolePassTb.Value == "Root2024")
                {
                    string role = "Admin";
                    Session["uid"] = 1;
                    Session["role"] = role;
                    Session.Timeout = 10;
                    string r_url = "{0}/Doctors.aspx";
                    r_url = string.Format(r_url, role);
                    Response.Redirect(r_url);
                }
                else
                {
                    ErrMsg.InnerText = "Invalid Admin";
                }
            }
            else
            {
                Response.Redirect("~/Views/Guest/Home.aspx");
            }
        }

        protected void HomeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Guest/Home.aspx");
        }
    }
}