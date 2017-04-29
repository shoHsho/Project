<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="CustodySystem.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="css/mstyles.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p style="color: #FF0000; font-size: xx-large;">
                  محتوى الأدمن</p>
               <div  id ="MainPanels" >
               <div id="permiDiv"><asp:Panel ID="permiPanel" runat="server" Height="456px" Width="568px" > <!-- style="visibility: hidden;"-->
    <br /> 
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:constr %>" 
                          
                       SelectCommand="SELECT [Employee_ID], [Employee_Name], [Phone_No], [Department], [Job], [Access] FROM [Employee]"></asp:SqlDataSource>
    <br />
                      <asp:GridView ID="GridViewEmp" runat="server" AllowSorting="True" 
                          AutoGenerateColumns="False" DataKeyNames="Employee_ID" 
                          DataSourceID="SqlDataSource1" Height="134px" Width="513px">
                          <Columns>
                              <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" 
                                  ReadOnly="True" SortExpression="Employee_ID" />
                              <asp:BoundField DataField="Employee_Name" HeaderText="Employee_Name" 
                                  SortExpression="Employee_Name" />
                              <asp:BoundField DataField="Phone_No" HeaderText="Phone_No" 
                                  SortExpression="Phone_No" />
                              <asp:BoundField DataField="Department" HeaderText="Department" 
                                  SortExpression="Department" />
                              <asp:BoundField DataField="Job" HeaderText="Job" SortExpression="Job" />
                              <asp:BoundField DataField="Access" HeaderText="Access" 
                                  SortExpression="Access" />
                          </Columns>
                      </asp:GridView>
    <form id="permiForm" action="suspend.aspx" >
        <br />
    
        </form>
    </asp:Panel></div>

     </div>         
</asp:Content>

