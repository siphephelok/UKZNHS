using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UKZNHS.Views.Admin;

namespace UKZNHS.Views.Receptionist
{
    public partial class Patients : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowPatients();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowPatients()
        {
            string Query = "Select * from UKZNPatientTb";
            PatientListGV.DataSource = Con.GetDatas(Query);
            PatientListGV.DataBind();
        }
        //Method to validate phone number
        private bool IsPhoneNumberValid(string phoneNumber)
        {
            return phoneNumber.Length == 10 && phoneNumber.All(char.IsDigit);
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string PatName = PatNameTb.Value;
                string PatPhone = PatPhoneTb.Value;
                string PatGen = PatGenderTb.SelectedValue;
                string PatDOB = PatDOBTb.Value;
                string PatAdd = PatAddressTb.Value;
                string PatAllergies = PatAllergyTB.Value;

                if (!IsPhoneNumberValid(PatPhone))
                {
                    ErrMsg.InnerText = "Phone number must be exactly 10 digits.";
                    return;
                }

                string Query = "insert into UKZNPatientTb values('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}')";
                Query = string.Format(Query, PatName, PatPhone, PatGen, PatDOB, PatAdd, PatAllergies, 103);
                Con.SetDatas(Query);
                ShowPatients();
                ErrMsg.InnerText = "Patient added successfully";
                PatNameTb.Value = "";
                PatPhoneTb.Value = "";
                PatGenderTb.SelectedValue = "";
                PatDOBTb.Value = "";
                PatAddressTb.Value = "";
                PatAllergyTB.Value = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PatNameTb.Value == " ")
                {
                    ErrMsg.InnerText = "Select a patient";
                }
                else
                {
                    string PatName = PatNameTb.Value;
                    string PatPhone = PatPhoneTb.Value;
                    string PatGen = PatGenderTb.SelectedValue;
                    string PatDOB = PatDOBTb.Value;
                    string PatAdd = PatAddressTb.Value;
                    string PatAllergies = PatAllergyTB.Value;

                    if (!IsPhoneNumberValid(PatPhone))
                    {
                        ErrMsg.InnerText = "Phone number must be exactly 10 digits.";
                        return;
                    }

                    string Query = "update UKZNPatientTb set PatName = '{0}', PatPhone= '{1}', PatGen = '{2}', PatDOB = '{3}', PatAdd = '{4}', PatAllergies = '{5}'where PatId = {6}";
                    Query = string.Format(Query, PatName, PatPhone, PatGen, PatDOB, PatAdd, PatAllergies, PatientListGV.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowPatients();
                    ErrMsg.InnerText = "Patient updated successfully";
                    PatNameTb.Value = "";
                    PatPhoneTb.Value = "";
                    PatGenderTb.SelectedValue = "";
                    PatDOBTb.Value = "";
                    PatAddressTb.Value = "";
                    PatAllergyTB.Value = "";
                }
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
                if (PatNameTb.Value == " ")
                {
                    ErrMsg.InnerText = "Select a patient";
                }
                else
                {
                    string Query = "delete from UKZNPatientTb where PatId={0}";
                    Query = string.Format(Query, PatientListGV.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowPatients();
                    ErrMsg.InnerText = "Patient deleted successfully";
                    Key = 0;
                    PatNameTb.Value = "";
                    PatPhoneTb.Value = "";
                    PatGenderTb.SelectedValue = "";
                    PatDOBTb.Value = "";
                    PatAddressTb.Value = "";
                    PatAllergyTB.Value = "";
                }
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText += ex.Message;
            }
        }

        protected void PatientListGV_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PatNameTb.Value = PatientListGV.SelectedRow.Cells[2].Text;
            PatPhoneTb.Value = PatientListGV.SelectedRow.Cells[3].Text;
            PatGenderTb.SelectedValue = PatientListGV.SelectedRow.Cells[4].Text;
            PatDOBTb.Value = Convert.ToDateTime(PatientListGV.SelectedRow.Cells[5].Text).ToString("yyyy-MM-dd");
            PatAddressTb.Value = PatientListGV.SelectedRow.Cells[6].Text;
            PatAllergyTB.Value = PatientListGV.SelectedRow.Cells[7].Text;

            if (PatNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(PatientListGV.SelectedRow.Cells[1].Text);
            }
        }
    }
}