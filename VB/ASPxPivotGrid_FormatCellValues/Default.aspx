<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb"
		   Inherits="FormatCellValues._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v21.2, Version=21.2.12.0,
		   Culture=neutral, PublicKeyToken=b88d1754d700e49a"
		   Namespace="DevExpress.Web.ASPxPivotGrid"
		   TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
		  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
        <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" 
            DataSourceID="SqlDataSource1" OptionsData-DataProcessingEngine ="Optimized" ClientIDMode="AutoID" IsMaterialDesign="False">
            <Fields>
                <dx:PivotGridField ID="fieldRegion" Area="ColumnArea"
                    AreaIndex="1">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="Region" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldCity" Area="ColumnArea"
                    AreaIndex="2">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="City" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldCountry" Area="ColumnArea"
                    AreaIndex="0">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="Country" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldUnitPrice" Area="DataArea"  AreaIndex="0" 
                    GrandTotalCellFormat-FormatType="Numeric"
                    GrandTotalCellFormat-FormatString="c0">
<GrandTotalCellFormat FormatString="c0" FormatType="Numeric"></GrandTotalCellFormat>
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="UnitPrice" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldQuantity" Area="DataArea" AreaIndex="1" 
                    CellFormat-FormatType="Custom"
                    CellFormat-FormatString="({0})">
<CellFormat FormatString="({0})" FormatType="Custom"></CellFormat>
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="Quantity" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldProductName" Area="RowArea"
                    AreaIndex="0">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="ProductName" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
            </Fields>

<OptionsData DataProcessingEngine="Optimized"></OptionsData>
        </dx:ASPxPivotGrid>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT [Region], [City], [Country],
                     [UnitPrice], [Quantity], [ProductName]
                     FROM [Invoices]"></asp:SqlDataSource>
	</div>
	</form>
</body>
</html>