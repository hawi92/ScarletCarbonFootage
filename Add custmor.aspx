<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add custmor.aspx.cs" Inherits="WebApplication1.Add_custmor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Entry Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Carbon Emission Activities</h2>


         <div>
<h3>Transport Emissions</h3>
<div>
    <asp:Label runat="server" Text="Vehicle Type:"></asp:Label>
    <asp:DropDownList runat="server" ID="ddlVehicleType">
    <asp:ListItem Text="Car" Value="Car" />
    <asp:ListItem Text="Truck" Value="Truck" />
    <asp:ListItem Text="Bus" Value="Bus" />
    </asp:DropDownList>
    </div>
     
                <div>
    <asp:Label runat="server" Text="Distance Travelled:"></asp:Label>
    <asp:TextBox runat="server" ID="txtDistance"></asp:TextBox>
    </div>
     
                <div>
    <asp:Label runat="server" Text="Fuel Type:"></asp:Label>
    <asp:DropDownList runat="server" ID="ddlFuelType">
    <asp:ListItem Text="Gasoline" Value="Gasoline" />
    <asp:ListItem Text="Diesel" Value="Diesel" />
    <asp:ListItem Text="Petrol" Value="Petrol" />
    <asp:ListItem Text="Electric" Value="Electric" />
    </asp:DropDownList>
    </div>
     
                <div>
    <asp:Label runat="server" Text="Fuel Efficiency:"></asp:Label>
    <asp:TextBox runat="server" ID="txtFuelEfficiency"></asp:TextBox>
    </div>
     
                <div>
    <asp:Button runat="server" Text="Submit Transport Data" ID="SubmitTransport" OnClick="Submit_Click" />
    </div>
    </div>
     
            <div>
    <h3>Electricity Consumption</h3>
    <div>
    <asp:Label runat="server" Text="Energy Source:"></asp:Label>
    <asp:DropDownList runat="server" ID="ddlEnergySource">
    <asp:ListItem Text="Grid" Value="Grid" />
    <asp:ListItem Text="Solar" Value="Solar" />
    <asp:ListItem Text="Wind" Value="Wind" />
    </asp:DropDownList>
    </div>
     
                <div>
    <asp:Label runat="server" Text="Electricity Usage:"></asp:Label>
    <asp:TextBox runat="server" ID="txtElectricityUsage"></asp:TextBox>
    </div>
     
                <div>
    <asp:Button runat="server" Text="Submit Electricity Data" ID="SubmitElectricity"  />
    </div>
    </div>
                <div>
<h3>Transport Emissions</h3>
<div>
<asp:GridView runat="server" ID="gvTransportData" AutoGenerateColumns="False">
<Columns>
<asp:BoundField DataField="VehicleType" HeaderText="Vehicle Type" />
<asp:BoundField DataField="Distance" HeaderText="Distance" />
<asp:BoundField DataField="FuelType" HeaderText="Fuel Type" />
<asp:BoundField DataField="FuelEfficiency" HeaderText="Fuel Efficiency" />
<asp:BoundField DataField="EntryDate" HeaderText="Entry Date" />
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
<asp:BoundField DataField="ElectricityUsage" HeaderText="Electricity Usage" />
<asp:BoundField DataField="EntryDate" HeaderText="Entry Date" />
</Columns>
</asp:GridView>
</div>
</div>
    </form>

</body>
<script>
    // $('#CustomerGridView').DataTable();
</script>
</html>