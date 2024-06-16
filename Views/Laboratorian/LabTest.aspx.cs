using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UKZNHS.Views.Admin;

namespace UKZNHS.Views.Laboratorian
{
    public partial class LabTest : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowLabTests();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowLabTests()
        {
            string Query = "Select * from UKZNLabTestTb";
            LabTestGV.DataSource = Con.GetDatas(Query);
            LabTestGV.DataBind();
        }
        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string TestName = TestNameTb.Value;
                string TestCost = TestCostTb.Value;
                

                string Query = "update UKZNLabTestTb set TestName = '{0}', TestCost= '{1}' where TestId = {2}";
                Query = string.Format(Query, TestName, TestCost, LabTestGV.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowLabTests();
                ErrMsg.InnerText = "Test updated successfully";
                TestNameTb.Value = "";
                TestCostTb.Value = "";
                
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
                string TestName = TestNameTb.Value;
                string TestCost = TestCostTb.Value;
                

                string Query = "insert into UKZNLabTestTb values('{0}', '{1}', '{2}')";
                Query = string.Format(Query, TestName, TestCost, 1);
                Con.SetDatas(Query);
                ShowLabTests();
                ErrMsg.InnerText = "Test added successfully";
                TestNameTb.Value = "";
                TestCostTb.Value = "";
               
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
                if (TestNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Select a Test";
                }
                else
                {
                    string Query = "delete from UKZNLabTestTb where TestId ={0}";
                    Query = string.Format(Query, LabTestGV.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowLabTests();
                    ErrMsg.InnerText = "Test deleted successfully";
                    Key = 0;
                    TestNameTb.Value = "";
                    TestCostTb.Value = "";
                   
                }
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText += ex.Message;
            }
        }

        protected void LaboratoriansGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            TestNameTb.Value = LabTestGV.SelectedRow.Cells[2].Text;
            TestCostTb.Value = LabTestGV.SelectedRow.Cells[3].Text;
            
           
            if (TestNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(LabTestGV.SelectedRow.Cells[1].Text);
            }
        }
    }
}