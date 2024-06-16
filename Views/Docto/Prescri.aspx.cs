using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UKZNHS.Views.Receptionist;

namespace UKZNHS.Views.Docto
{
    public partial class Prescri : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowPrescriptions();
            GetTest();
            GetPatient();
            GetDoc();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowPrescriptions()
        {
            string Query = "Select * from UKZNPrescriptionTb";
            PrescriGV.DataSource = Con.GetDatas(Query);
            PrescriGV.DataBind();
        }
        //Get Lab Tests
        private void GetTest()
        {
            string Query = "select * from UKZNLabTestTb";
            TestCb.DataTextField = Con.GetDatas(Query).Columns["TestName"].ToString();
            TestCb.DataValueField = Con.GetDatas(Query).Columns["TestId"].ToString();
            TestCb.DataSource = Con.GetDatas(Query);
            TestCb.DataBind();
        }
        // Get Prescription
        private void GetPatient()
        {
            string Query = "select * from UKZNPatientTb";
            PatientCb.DataTextField = Con.GetDatas(Query).Columns["PatName"].ToString();
            PatientCb.DataValueField = Con.GetDatas(Query).Columns["PatId"].ToString();
            PatientCb.DataSource = Con.GetDatas(Query);
            PatientCb.DataBind();
        }
        // Get Doctor
        private void GetDoc()
        {
            string Query = "select * from UKZNDoctorTb";
            DoctorCb.DataTextField = Con.GetDatas(Query).Columns["DocName"].ToString();
            DoctorCb.DataValueField = Con.GetDatas(Query).Columns["DocId"].ToString();
            DoctorCb.DataSource = Con.GetDatas(Query);
            DoctorCb.DataBind();
        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
             try
            {
                string Doctor = DoctorCb.SelectedValue.ToString();
                string Patient = PatientCb.SelectedValue.ToString();
                string Medicines = PresMedTb.Value;
                string LabTest = TestCb.SelectedValue.ToString();
                string Cost = PresCostTb.Value;

                string Query = "insert into UKZNPrescriptionTb values({0}, {1}, '{2}', {3}, '{4}')";
                Query = string.Format(Query, Doctor, Patient, Medicines, LabTest, Cost);
                Con.SetDatas(Query);
                ShowPrescriptions();
                ErrMsg.InnerText = "Prescription added successfully";
                DoctorCb.SelectedValue = "";
                PatientCb.SelectedValue = "";
                PresMedTb.Value = "";
                TestCb.SelectedValue = "";
                PresCostTb.Value = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }

        }
    }
}