using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace WebApplication1
{
    public partial class DataHistory : System.Web.UI.Page
    {

        static List<TransportData> transList = new List<TransportData>();
        static List<ElectricityData> electricityDataList = new List<ElectricityData>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack && !Page.IsCallback)
            {
            
                // Bind data to the grids on the first load
                var path = Server.MapPath("WebApplication1TransportationData.txt");
                //string transportData = File.ReadAllText(@"C:\Users\Lenovo\source\repos\CarbonFootprint\CarbonFootprint\bin\TransportData.txt");
                //var path = Server.MapPath("bin");
                string transportData = File.ReadAllText(path);
                var transtList = JsonConvert.DeserializeObject<List<TransportData>>(transportData);

                //var transportDataList = JsonConvert.DeserializeObject<TransportData[]>(transportData);

                //dataGridView.DataSource = transportDataList;
                gvTransportData.DataSource = transtList;
                gvTransportData.DataBind();
                var path1 = Server.MapPath("WebApplication1ElectricityData.txt");
                //string transportData = File.ReadAllText(@"C:\Users\Lenovo\source\repos\CarbonFootprint\CarbonFootprint\bin\TransportData.txt");
                //var path = Server.MapPath("bin");
                string ElectricityData = File.ReadAllText(path1);
                var electricityDataList = JsonConvert.DeserializeObject<List<ElectricityData>>(ElectricityData);

                gvElectricityData.DataSource = electricityDataList;
                gvElectricityData.DataBind();
                return;


            }

        }

        private void BindTransportData()
        {
            // Retrieve and bind transport data to the GridView
            // Replace this with actual logic to fetch data from the backend
            // For now, let's assume you have a list of TransportData objects.


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


        private void BindElectricityData()
        {
            // Retrieve and bind electricity data to the GridView
            // Replace this with actual logic to fetch data from the backend
            // For now, let's assume you have a list of ElectricityData objects
            //gvElectricityData.DataSource = GetElectricityDataFromBackend();
            // gvElectricityData.DataBind();
        }



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



