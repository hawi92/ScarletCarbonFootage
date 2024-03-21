using Microsoft.Ajax.Utilities;
using Newtonsoft.Json;
using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DataEntry : System.Web.UI.Page
    {
        static List<TransportData> dataEntryList = new List<TransportData>();
        static List<ElectricityData> electricityDataList = new List<ElectricityData>();


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DataHistory(object sender, EventArgs e)
        {
            Response.Redirect("DataHistory");
        }
            protected void SubmitTransportData(object sender, EventArgs e)
        {
            // Process and save transport data to the backend
            // You may want to save it to a database or perform other operations
            // Retrieve data from the controls
            string vehicleType = ddlVehicleType.SelectedValue;
            double distance = Convert.ToDouble(txtDistance.Text);
            string fuelType = ddlFuelType.SelectedValue;
            double fuelEfficiency = Convert.ToDouble(txtFuelEfficiency.Text);
            DateTime entryDate = DateTime.Now;

            double carbonEmission;
            switch (fuelType)
            {
                case "Gasoline":
                    carbonEmission = distance * fuelEfficiency * 2.5 ;
                    break;
                case "Diesel":
                    carbonEmission = distance * fuelEfficiency * 2.7 ;
                    break;
                case "Petrol":
                    carbonEmission = distance * fuelEfficiency * 1.7 ;
                    break;
                case "Electric":
                    carbonEmission = distance * fuelEfficiency * 0.5 ;
                    break;
                default:
                    carbonEmission = 0;
                    break;
            }
           
            var data = new TransportData();
            data.VehicleType = vehicleType;
            data.Distance = distance;
            data.FuelType = fuelType;
            data.FuelEfficiency = fuelEfficiency;
            data.EntryDate = entryDate;

            data.CarbonEmission = carbonEmission ;

            dataEntryList.Add(data);

            var jsonData = JsonConvert.SerializeObject(dataEntryList);

            var path = Server.MapPath("WebApplication1");
            File.WriteAllText(path + "TransportationData.txt", jsonData);
            //File.WriteAllText(@"C:\Users\Lenovo\source\repos\CarbonFootpri\CarbonFootprint\bin\TransportData.txt", jsonData);
            // Save the data to the backend

            // Redirect to the same page or another page as needed
            Response.Redirect(Request.RawUrl);
        }

        class TransportData
        {
            public string VehicleType { get; set; }
            public int ID { get; set; }
            public double Distance { get; set; }
            public string FuelType { get; set; }
            public double FuelEfficiency { get; set; }
            public DateTime EntryDate { get; set; }
            public double CarbonEmission { get; set; }
        }


        protected void SubmitElectricityData(object sender, EventArgs e)
        {
            // Process and save electricity data to the backend
            // You may want to save it to a database or perform other operations
            // Retrieve data from the controls
            string energySource = ddlEnergySource.SelectedValue;
            double electricityUsage = Convert.ToDouble(txtElectricityUsage.Text);
            DateTime entryDate = DateTime.Now;

            double carbonEmission;
            switch (energySource)
            {
                case "Grid":
                    carbonEmission = electricityUsage * 500;
                    break;
                case "Wind":
                    carbonEmission =  electricityUsage * 11;
                    break;
                case "Solar":
                    carbonEmission = electricityUsage * 50;
                    break;
                default:
                    carbonEmission = 0;
                    break;
            }

            var data = new ElectricityData();
            data.EnergySource = energySource;
            data.ElectricityUsage = electricityUsage;
            data.EntryDate = entryDate;
            data.CarbonEmission = carbonEmission;

            electricityDataList.Add(data);

            var jsonData = JsonConvert.SerializeObject(electricityDataList);

            var path = Server.MapPath("WebApplication1");
            File.WriteAllText(path + "ElectricityData.txt", jsonData);

            //File.WriteAllText(@"C:\Users\Lenovo\source\repos\CarbonFootprint\CarbonFootprint\bin\ElectricityData.txt", jsonData);

            // Save the data to the backend

            // Redirect to the same page or another page as needed
            Response.Redirect(Request.RawUrl);
        }
        class ElectricityData
        {
            public string EnergySource { get; set; }
            public int ID { get; set; }
            public double ElectricityUsage { get; set; }
            public DateTime EntryDate { get; set; }
            public double CarbonEmission { get; set; }
        }
    }
}