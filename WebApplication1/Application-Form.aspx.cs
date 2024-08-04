using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Application_Form : System.Web.UI.Page
    {
        protected void Submit_Input(object sender, EventArgs e)
        {
            if(Enter_name.Text != "") 
            {
                Label1.Text = Enter_name.Text;
            }
            else
            {
                Label1.Text = "Please Enter Name!";
            }



            if (Male.Checked)
            {
                Label2.Text = Male.Text;
            }
            else if (Female.Checked)
            {
                Label2.Text = Female.Text;
            }
            else if (Others.Checked)
            {
                Label2.Text = Others.Text;
            }
            else 
            {
                Label2.Text = "Please Select Gender!";
            }



            List<string> Education = new List<string>();

            if (class10.Checked)
            {
                Education.Add(class10.Text);
            }

            if (class12.Checked)
            {
                Education.Add(class12.Text);
            }

            if (Btech.Checked)
            {
                Education.Add(Btech.Text);
            }

            if (Mtech.Checked)
            {
                Education.Add(Mtech.Text);
            }

            if(!class10.Checked && !class12.Checked && !Btech.Checked && !Mtech.Checked)
            {
                Education.Add("Please Select At Least One Educational Qualification!");
            }

            Label3.Text = string.Join(",", Education);



            if (City.SelectedValue == "")
            {
                Label4.Text = "Please Select City!";
            }
            else
            {
                Label4.Text = City.SelectedValue;
            }


            
            if(Upload.PostedFile != null)
            {
                try
                {
                    DateTime CurrentTime = DateTime.Now;

                    string GetFileName = System.IO.Path.GetFileName(Upload.PostedFile.FileName);
                    string SavePath = @"D:\Working\C#\Uploads\" + GetFileName;
                    Upload.PostedFile.SaveAs(SavePath);
                    Label5.Text = GetFileName + " has been uploaded successfully!";
                }
                catch (Exception ex) 
                {
                    Label5.Text = ex.Message;
                }
            }
            else
            {
                Label5.Text = "No File Has Uploaded!";
            }



            //Multiple File Upload
            if (FileUploadMultiple.PostedFiles != null)
            {
                try
                {
                    foreach (HttpPostedFile httpPostedFile in FileUploadMultiple.PostedFiles)
                    {
                        string MultipleFileName = System.IO.Path.GetFileName(httpPostedFile.FileName);
                        string SavePathMultiple = @"D:\Working\C#\Uploads\" + MultipleFileName;
                        httpPostedFile.SaveAs(SavePathMultiple);
                        Label6.Text = MultipleFileName + " has been uploaded successfully!";
                    }
                }
                catch (Exception ex)
                {
                    Label6.Text = ex.Message;
                }
            }
            else
            {
                Label6.Text = "No Files(Multiple) selected to upload!";
            }

        }

     
    }
}