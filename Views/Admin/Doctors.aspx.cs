using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UKZNHS.Views.Admin;

namespace UKZNHS.Views
{
    public partial class Doctors : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowDoctors();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowDoctors()
        {
            string Query = "Select * from UKZNDoctorTb";
            DoctorsGV.DataSource = Con.GetDatas(Query);
            DoctorsGV.DataBind();
        }
        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string DocName = DocNameTb.Value;
                string DocPhone = DocPhoneTb.Value;
                string DocExp = DocExpTb.Value;
                string DocSpec = DocSpecTb.Value;
                string DocGen = DocGenderTb.SelectedValue;
                string DocAdd = DocAddressTb.Value;
                string DocDOB = DocDoBTb.Value;
                string DocPass = DocPasswordTB.Value;
                string DocEmail = DocEmailTB.Value;

                string Query = "update UKZNDoctorTb set DocName = '{0}', DocPhone= '{1}', DocExp = '{2}', DocSpec = '{3}', DocGen = '{4}', DocAdd = '{5}', DocDOB = '{6}', DocPass = '{7}', DocEmail = '{8}' where DocId = {9}";
                Query = string.Format(Query, DocName, DocPhone, DocExp, DocSpec, DocGen, DocAdd, DocDOB, DocPass, DocEmail, DoctorsGV.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowDoctors();
                ErrMsg.InnerText = "Doctor updated successfully";
                DocNameTb.Value = "";
                DocPhoneTb.Value = "";
                DocExpTb.Value = "";
                DocSpecTb.Value = "";
                DocGenderTb.SelectedValue = "";
                DocAddressTb.Value = "";
                DocDoBTb.Value = "";
                DocPasswordTB.Value = "";
                DocEmailTB.Value = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string DocName = DocNameTb.Value;
                string DocPhone = DocPhoneTb.Value;
                string DocExp = DocExpTb.Value;
                string DocSpec = DocSpecTb.Value;
                string DocGen = DocGenderTb.SelectedValue;
                string DocAdd = DocAddressTb.Value;
                string DocDOB = DocDoBTb.Value;
                string DocPass = DocPasswordTB.Value;
                string DocEmail = DocEmailTB.Value;

                string Query = "insert into UKZNDoctorTb values('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}')";
                Query = string.Format(Query, DocName, DocPhone, DocExp, DocSpec, DocGen, DocAdd, DocDOB, DocPass, DocEmail);
                Con.SetDatas(Query);
                ShowDoctors();
                ErrMsg.InnerText = "Doctor added successfully";
                DocNameTb.Value = "";
                DocPhoneTb.Value = "";
                DocExpTb.Value = "";
                DocSpecTb.Value = "";
                DocGenderTb.SelectedValue = "";
                DocAddressTb.Value = "";
                DocDoBTb.Value = "";
                DocPasswordTB.Value = "";
                DocEmailTB.Value = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            try
            {
                if (DocNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a doctor";
                }
                else
                {
                    string Query = "delete from UKZNDoctorTb where DocId={0}";
                    Query = string.Format(Query, DoctorsGV.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowDoctors();
                    ErrMsg.InnerText = "Doctor deleted successfully";
                    Key = 0;
                    DocNameTb.Value = "";
                    DocPhoneTb.Value = "";
                    DocExpTb.Value = "";
                    DocSpecTb.Value = "";
                    DocGenderTb.SelectedValue = "";
                    DocAddressTb.Value = "";
                    DocDoBTb.Value = "";
                    DocPasswordTB.Value = "";
                    DocEmailTB.Value = "";
                }
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText += ex.Message;
            }
        }
        int Key = 0;
        protected void DoctorsGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            DocNameTb.Value = DoctorsGV.SelectedRow.Cells[2].Text;
            DocPhoneTb.Value = DoctorsGV.SelectedRow.Cells[3].Text;
            DocExpTb.Value = DoctorsGV.SelectedRow.Cells[4].Text;
            DocSpecTb.Value = DoctorsGV.SelectedRow.Cells[5].Text;
            DocGenderTb.SelectedValue = DoctorsGV.SelectedRow.Cells[6].Text;
            DocAddressTb.Value = DoctorsGV.SelectedRow.Cells[7].Text;
            DocDoBTb.Value = Convert.ToDateTime(DoctorsGV.SelectedRow.Cells[8].Text).ToString("yyyy-MM-dd");
            DocPasswordTB.Value = DoctorsGV.SelectedRow.Cells[9].Text;
            DocEmailTB.Value = DoctorsGV.SelectedRow.Cells[10].Text;
            if (DocNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(DoctorsGV.SelectedRow.Cells[1].Text);
            }
        }
    }
}