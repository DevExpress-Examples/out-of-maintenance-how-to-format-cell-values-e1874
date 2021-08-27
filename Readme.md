<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128577470/13.1.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1874)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/ASPxPivotGrid_FormatCellValues/Default.aspx) (VB: [Default.aspx](./VB/ASPxPivotGrid_FormatCellValues/Default.aspx))
<!-- default file list end -->
# How to Format Cell Values
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e1874/)**
<!-- run online end -->


<p>The following example shows how to format data that corresponds to 'Quantity' and 'Unit Price' data fields in a sample ASPxPivotGrid control.</p><p>For the 'Quantity' field the PivotFieldBase.CellFormat property is used to format data in a custom manner. Values that correspond to this field are enclosed with round brackets. The formatting settings specified by the PivotFieldBase.CellFormat property also affect the representation of total and grand total cells.</p><p>The 'Unit Price' field is bound to a field that contains currency data. By default the cell values that correspond to such fields are formatted as currency amounts (the formatting settings are determined by the regional settings). For English (United States) culture the currency values are represented using two digits to the right of the decimal point. In the example, the PivotFieldBase.GrandTotalCellFormat property is used to format grand total cell values for the 'Unit Price' field in a different manner. The data in these cells is formatted as integer currency values (without fractional portions).</p>

<br/>


