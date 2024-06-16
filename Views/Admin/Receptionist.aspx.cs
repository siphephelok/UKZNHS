using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UKZNHS.Views.Admin
{
    public partial class Receptionist : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowReceptionist();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
        private void ShowReceptionist() 
        {
            string Query = "Select * from UKZNReceptionistTb";
            ReceptionistGV.DataSource = Con.GetDatas(Query);
            ReceptionistGV.DataBind();
        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string RecName = RecNameTb.Value;
                string RecEmail = RecEmailTb.Value;
                string RecAdd = RecAddressTb.Value;
                string RecPhone = RecPhoneTb.Value;
                string RecPassword = RecPasswordTB.Value;
                string Query = "insert into UKZNReceptionistTb values('{0}', '{1}', '{2}', '{3}', '{4}')";
                Query = string.Format(Query, RecName, RecEmail, RecAdd, RecPhone, RecPassword);
                Con.SetDatas(Query);
                ShowReceptionist();
                ErrMsg.InnerText = "Receptionist added successfully";
                RecNameTb.Value = "";
                RecEmailTb.Value = "";
                RecAddressTb.Value = "";
                RecPhoneTb.Value = "";
                RecPasswordTB.Value = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }
        int Key = 0;
        protected void ReceptionistGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            RecNameTb.Value = ReceptionistGV.SelectedRow.Cells[2].Text;
            RecEmailTb.Value = ReceptionistGV.SelectedRow.Cells[3].Text;
            RecAddressTb.Value = ReceptionistGV.SelectedRow.Cells[4].Text;
            RecPhoneTb.Value = ReceptionistGV.SelectedRow.Cells[5].Text;
            RecPasswordTB.Value = ReceptionistGV.SelectedRow.Cells[6].Text;
            if (RecNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(ReceptionistGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            try
            {
                if (RecNameTb.Value == "") 
                {
                    ErrMsg.InnerText = "Select a Receptionist";
                }
                else
                {
                    string Query = "delete from UKZNReceptionistTb where RecId={0}";
                    Query = string.Format(Query, ReceptionistGV.SelectedRow.Cells[1].Text);
                    Con.SetDatas(Query);
                    ShowReceptionist();
                    ErrMsg.InnerText = "Receptionist deleted successfully";
                    Key = 0;
                    RecNameTb.Value = "";
                    RecEmailTb.Value = "";
                    RecAddressTb.Value = "";
                    RecPhoneTb.Value = "";
                    RecPasswordTB.Value = "";
                }
            }
            catch(Exception ex)
            {
                ErrMsg.InnerText += ex.Message;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string RecName = RecNameTb.Value;
                string RecEmail = RecEmailTb.Value;
                string RecAdd = RecAddressTb.Value;
                string RecPhone = RecPhoneTb.Value;
                string RecPassword = RecPasswordTB.Value;
                string Query = "update UKZNReceptionistTb set RecName = '{0}', RecEmail = '{1}', RecAdd = '{2}', RecPhone = '{3}', RecPassword = '{4}' where RecId = {5}";
                Query = string.Format(Query, RecName, RecEmail, RecAdd, RecPhone, RecPassword, ReceptionistGV.SelectedRow.Cells[1].Text);
                Con.SetDatas(Query);
                ShowReceptionist();
                ErrMsg.InnerText = "Receptionist updated successfully";
                RecNameTb.Value = "";
                RecEmailTb.Value = "";
                RecAddressTb.Value = "";
                RecPhoneTb.Value = "";
                RecPasswordTB.Value = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }
    }
}