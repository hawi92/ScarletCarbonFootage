using Microsoft.Ajax.Utilities;
using Microsoft.AspNet.Identity;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Add_custmor : System.Web.UI.Page
    {
        static List<TransportData> dataEntryList = new List<TransportData>();
        static List<ElectricityData> electricityDataList = new List<ElectricityData>();
        //static List<Customer> custList = new List<Customer>();
        protected void Page_Load(object sender, EventArgs e)
        {
           /* if (!Page.IsPostBack && !Page.IsCallback)
            {
                //Retrieve customer data from file
                var path = Server.MapPath("bin") + "CustomerList.txt";
                var custData = File.ReadAllText(path);
                var custList = JsonConvert.DeserializeObject<List<Customer>>(custData);


                //Bind data to CustomerGridView
                CustomerGridView.DataSource = custList;
                CustomerGridView.DataBind();


                //var totalEmissions = 0d;
                //foreach (var cust in custList)
                //{
                //    totalEmissions += cust.Emission;
                //}
                return;
            }*/

     }
        protected void Submit_Click(object sender, EventArgs e)
        {
            //Collect data
            string vehicleType = ddlVehicleType.SelectedValue;
            double distance = Convert.ToDouble(txtDistance.Text);
            string fuelType = ddlFuelType.SelectedValue;
            double fuelEfficiency = Convert.ToDouble(txtFuelEfficiency.Text);
            DateTime entryDate = DateTime.Now;

            //Assign data to custList object
            var data = new TransportData();
            data.VehicleType = vehicleType;
            data.Distance = distance;
            data.FuelType = fuelType;
            data.FuelEfficiency = fuelEfficiency;
            data.EntryDate = entryDate;

            dataEntryList.Add(data);


            //Bind data to CustoemrGridView
            gvTransportData.DataSource = dataEntryList;
            gvTransportData.DataBind();

            //Convert custList to Json 
            var jsonData = JsonConvert.SerializeObject(dataEntryList);

            //Save Json data to file
            var path = Server.MapPath("bin");
            File.WriteAllText(path + "CustomerList.txt", jsonData);
            //File.WriteAllText(@"C:\Users\icnok\source\repos\DataEntry\bin\CustomerList.txt", jsonData);


            //Clear data
            /*txtFirstName.Text = "";
            txtLastName.Text = "";
            dtDOB.Text = "";
            drpGender.SelectedValue = "0";*/


        }

        class TransportData
        {
            public string VehicleType { get; set; }
            public int ID { get; set; }
            public double Distance { get; set; }
            public string FuelType { get; set; }
            public double FuelEfficiency { get; set; }
            public DateTime EntryDate { get; set; }
        }
    }
}