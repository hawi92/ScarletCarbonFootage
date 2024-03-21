<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataHistory.aspx.cs" Inherits="WebApplication1.DataHistory" %>
 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <h2>Data History</h2>
 
        <div>
<h3>Transport Emissions</h3>
<div>
<asp:GridView runat="server" ID="gvTransportData" AutoGenerateColumns="False">
<Columns>
<asp:BoundField DataField="VehicleType" HeaderText="Vehicle Type" />
<asp:BoundField DataField="Distance" HeaderText="Distance(KM)" />
<asp:BoundField DataField="FuelType" HeaderText="Fuel Type" />
<asp:BoundField DataField="FuelEfficiency" HeaderText="Fuel Efficiency(L/KM)" />
<asp:BoundField DataField="EntryDate" HeaderText="Entry Date" />
<asp:BoundField DataField="CarbonEmission" HeaderText="Carbon Emission(CO2.kg)" />
</Columns>
</asp:GridView>
</div>
</div>
 
        <div>
<h3>Electricity Consumption</h3>
<div>
<asp:GridView runat="server" ID="gvElectricityData" AutoGenerateColumns="False">
<Columns>
<asp:BoundField DataField="EnergySource" HeaderText="Energy Source" />
<asp:BoundField DataField="ElectricityUsage" HeaderText="Electricity Usage(KW)" />
<asp:BoundField DataField="EntryDate" HeaderText="Entry Date" />
<asp:BoundField DataField="CarbonEmission" HeaderText="Carbon Emission(g CO2e)" />
</Columns>
</asp:GridView>
</div>
</div>
    </form>
</body>
</html>