<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="CustodySystem.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/mstyles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            height: 512px;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: left;
            position: relative;
            left: 5px;
            top: 0px;
            width: 546px;
            height: 152px;
        }
        .auto-style6 {
            height: 77px;
            text-align: left;
            width: 439px;
        }
        .auto-style7 {
            width: 491px;
        }
        .auto-style8 {
            text-align: left;
            width: 438px;
        }
        .auto-style9 {
            text-align: left;
            width: 435px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 runat="server" id="titleh1" visible="False"></h1>
<div class="right-column-content">
    <table class="auto-style3">
        <tr >
            <td colspan="2" class="auto-style4"> <p class="auto-style5">Our system provides multible services in every user page to give them very easy ways to deal with to acomplish there work mor petter , simpler&nbsp; and easy to use.People who are intersted in custody procedures ,our system will provide to them the approprate services that allow each user to show thier 
                <br />
                custodies.Also requisting for another custody.The Admin for example has some services does not appeer to Custody Staff and other Employees.The same thing for Custody Staff .See the full discribtion for more anderstand : </p></td>
            
        </tr>
       <tr>
                <td class="auto-style11"> <div><img src="images/Admin.jpg" alt="1" class="auto-style10" height="100"  /></div></td>
                <td class="auto-style7" >
                    <h3 align="left" class="auto-style17" dir="ltr">Admin Page </h3>
                    <p class="auto-style6">The Admin sure need to supervise on his staffs,so this page facilitates the observation procedure with a special processes .It give him full overview of the other procedures and more.</p>

                </td>
            </tr>
        <tr>
                <td class="auto-style11"> <div><img src="images/CustodyStaff.jpg" alt="1" class="auto-style10" height="100"  /></div></td>
                <td class="auto-style7" >
                    <h3 align="left" class="auto-style17" dir="ltr">Custody Staff Page </h3>
                    <p class="auto-style8">In the middle between Admin and Employees.It deals with the Custody data and it&#39;s procedures .Also , it deals with Employees Custody Requests also they can show , return the Custody.</p>

                </td>
            </tr>
        <tr>
                <td class="auto-style11"> <div><img src="images/Employee.jpg" alt="1" class="auto-style10" height="100"  /></div></td>
                <td class="auto-style7" >
                    <h3 align="left" class="auto-style17" dir="ltr">Employee Page</h3>
                    <p class="auto-style9">In this page the Employees can order Custodes that they are allowed to request them.Also , they can return ,show ,accept or reject Custodes.They are very simple and clear processes.</p>

                </td>
            </tr>
    </table>

       
      </div>
</asp:Content>
