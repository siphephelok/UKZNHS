using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UKZNHS.Views.Admin
{
    public partial class Laboratorians : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowLaboratorians();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowLaboratorians()
        {
            string Query = "Select * from UKZNLaboratorianTb";
            LaboratoriansGV.DataSource = Con.GetDatas(Query);
            LaboratoriansGV.DataBind();
        }
        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string LabName = LabNameTb.Value;
                string LabEmail = LabEmailTB.Value;
                string LabPass = LabPasswordTB.Value;
                string LabPhone = LabPhoneTb.Value;
                string LabAddress = LabAddressTb.Value;
                string LabGen = LabGenderTb.SelectedValue;

                string Query = "update UKZNLaboratorianTb set LabName = '{0}', LabEmail= '{1}', LabPass = '{2}', LabPhone = '{3}', LabAddress = '{4}', LabGen = '{5}'where LabId = {6}";
                Query = string.Format(Query, LabName, LabEmail, LabPass, LabPhone, LabAddress, LabGen, LaboratoriansGV.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowLaboratorians();
                ErrMsg.InnerText = "Laboratorian updated successfully";
                LabNameTb.Value = "";
                LabEmailTB.Value = "";
                LabPasswordTB.Value = "";
                LabPhoneTb.Value = "";
                LabAddressTb.Value = "";
                LabGenderTb.SelectedValue = "";
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
                string LabName = LabNameTb.Value;
                string LabEmail = LabEmailTB.Value;
                string LabPass = LabPasswordTB.Value;
                string LabPhone = LabPhoneTb.Value;
                string LabAddress = LabAddressTb.Value;
                string LabGen = LabGenderTb.SelectedValue;

                string Query = "insert into UKZNLaboratorianTb values('{0}', '{1}', '{2}', '{3}', '{4}', '{5}')";
                Query = string.Format(Query, LabName, LabEmail, LabPass, LabPhone, LabAddress, LabGen);
                Con.SetDatas(Query);
                ShowLaboratorians();
                ErrMsg.InnerText = "Laboratorian added successfully";
                LabNameTb.Value = "";
                LabEmailTB.Value = "";
                LabPasswordTB.Value = "";
                LabPhoneTb.Value = "";
                LabAddressTb.Value = "";
                LabGenderTb.SelectedValue = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }
        int Key = 0;
        protected void Delete_Click(object sender, EventArgs e)
        {
            try
            {
                if (LabNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Laboratorian";
                }
                else
                {
                    string Query = "delete from UKZNLaboratorianTb where LabId={0}";
                    Query = string.Format(Query, LaboratoriansGV.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowLaboratorians();
                    ErrMsg.InnerText = "Laboratorian deleted successfully";
                    Key = 0;
                    LabNameTb.Value = "";
                    LabEmailTB.Value = "";
                    LabPasswordTB.Value = "";
                    LabPhoneTb.Value = "";
                    LabAddressTb.Value = "";
                    LabGenderTb.SelectedValue = "";
                }
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText += ex.Message;
            }
        }

        protected void LaboratoriansGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabNameTb.Value = LaboratoriansGV.SelectedRow.Cells[2].Text;
            LabEmailTB.Value = LaboratoriansGV.SelectedRow.Cells[3].Text;
            LabPasswordTB.Value = LaboratoriansGV.SelectedRow.Cells[4].Text;
            LabPhoneTb.Value = LaboratoriansGV.SelectedRow.Cells[5].Text;
            LabAddressTb.Value = LaboratoriansGV.SelectedRow.Cells[6].Text;
            LabGenderTb.SelectedValue = LaboratoriansGV.SelectedRow.Cells[7].Text;
            if (LabNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(LaboratoriansGV.SelectedRow.Cells[1].Text);
            }
        }
    }
}