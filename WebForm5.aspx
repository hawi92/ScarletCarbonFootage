<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication1.DataEntry" %>
 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Entry Page</title>
</head>
<body>
    <div class="container" style ="display: flex; height: 100vh;">
<div class="left" style="overflow: hidden;
  display: flex;
  flex-wrap: wrap;
  flex-direction: column;
  justify-content: center;
  animation-name: left;
  animation-duration: 1s;
  animation-fill-mode: both;
  animation-delay: 1s;">

<div class="header">
    <form id="form1" runat="server" style="min-width: 80%;
  display: flex;
  flex-direction: column;">

        <h2 class="animation a1" style="margin: 0;
  color: #4f46a5;" > Carbon Emission Activities </h2>
 
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
<asp:TextBox runat="server" ID="txtDistance" style="
  height: 20px;
  padding: 0 2px;
  border: 2px solid #ddd;
  border-radius: 4px;
  font-family: 'Rubik', sans-serif;
  outline: 0;
  transition: .2s;
  margin-top: 10px;
"></asp:TextBox>
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
<asp:Button runat="server" Text="Submit Transport data" style=" padding: 16px 10px;
  border: 0;
  background: linear-gradient(to right, #383268 0%,#0097ff 100%); 
  border-radius: 3px;
  margin-top: 10px;
  color: #fff;
  letter-spacing: 1px;
  font-family: 'Rubik', sans-serif;" ID="SubmitTransport" OnClick="SubmitTransportData" />
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
<asp:Button runat="server" Text="Submit Electricity Data" style=" padding: 16px 10px;
  border: 0;
  background: linear-gradient(to right, #383268 0%,#0097ff 100%); 
  border-radius: 3px;
  margin-top: 10px;
  color: #fff;
  letter-spacing: 1px;
  font-family: 'Rubik', sans-serif;" ID="SubmitElectricity" OnClick="SubmitElectricityData"  />
</div>
</div>
    <div>
                            <asp:Button runat="server"
 OnClick="DataHistory" Text="View History" style=" padding: 16px 10px;
  border: 0;
  background: linear-gradient(to right, #383268 0%,#0097ff 100%); 
  border-radius: 3px;
  margin-top: 10px;
  color: #fff;
  letter-spacing: 1px;
  font-family: 'Rubik', sans-serif;" CssClass="btn btn-outline-dark" />
        </div>
</form>
    </div>
    </div>
   <div class="right" style="flex: 1;
 max-width: 90%;
  background-color: black;
  transition: 1s;
  background-image: url(Scarlet1.jpg);
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;">

   </div>
    </div>
</body>
</html>