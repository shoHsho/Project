<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="NewCustody.aspx.cs" Inherits="CustodySystem.NewCustody" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/mstyles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
            color: #000000;
            font-size: medium;
        }
        .style2
        {
            font-weight: bold;
            width: 151px;
            text-align: center;
        }
        .textbox
        {
            text-align:center;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 477px;
        }
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: left;
            width: 122px;
        }
        .auto-style3 {
            width: 122px;
        }
        .auto-style4 {
            margin-top: 23;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
   
   <h1 id="titleh1" runat="server" 
        style="border: thin solid #C0C0C0; height: 40px; text-align: right; line-height: 45px; color: #FFFFFF; background-color: #4D4D4D; padding-right: 10px; margin-bottom: 10px;">اضافة عهدة</h1>  
             <div dir="rtl" style="border: thin solid #808080">
                 <table class="style1">
                     <tr>
                         <td class="style2">
                             رقم العهدة</td>
                         <td dir="rtl" style="text-align: right">
                             <asp:TextBox ID="txtid" runat="server" Height="26px" Width="111px" 
                                 CssClass="textbox"></asp:TextBox>
                             <asp:ScriptManager ID="ScriptManager1" runat="server">
                             </asp:ScriptManager>
                         </td>
                     </tr>
                     <tr>
                         <td class="style2">
                             اسم العهدة</td>
                         <td dir="rtl" style="text-align: right">
                             <asp:TextBox ID="txtcname" runat="server" Height="26px" Width="250px" 
                                 CssClass="textbox"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                 ControlToValidate="txtcname" Display="Dynamic" ErrorMessage="*" 
                                 ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td class="style2">
                             تاريخ الإضافة</td>
                         <td dir="rtl" style="text-align: right">
                             <telerik:RadDatePicker ID="radDate" Runat="server">
                             </telerik:RadDatePicker>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                 ControlToValidate="radDate" Display="Dynamic" ErrorMessage="*" 
                                 ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
                           
                         </td>
                     </tr>
                     <tr>
                         <td class="style2">
                             الكمية او العدد</td>
                         <td dir="rtl" style="text-align: right">
                             <asp:TextBox ID="txtqty" runat="server" Height="26px" Width="111px" 
                                 CssClass="textbox"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                 ControlToValidate="txtqty" Display="Dynamic" ErrorMessage="*" 
                                 ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td class="style2">
                             ملاحظات</td>
                         <td dir="rtl" style="text-align: right">
                             <asp:TextBox ID="txtNotes" runat="server" Height="57px" TextMode="MultiLine" 
                                 Width="250px" CssClass="textbox"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="style2">
                             &nbsp;</td>
                         <td dir="rtl">
                             &nbsp;</td>
                     </tr>
                     </table>
    </div>
        <div style="border: thin solid #808080; margin-top: 10px;">
            <table class="style3">
                <tr>
                    <td class="style4">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#CCCCCC" 
    BorderStyle="None" BorderWidth="1px" 
                            CellPadding="4" ForeColor="Black" 
    GridLines="Horizontal" ShowHeader="False" 
                            Width="100%">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                &nbsp;<asp:TextBox ID="txtsp" runat="server" Height="26px" 
                                            style="text-align: center" TabIndex="1" Text='<%# Bind("sp") %>' 
                                            Width="100%"></asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="#">
                                            <ItemTemplate>
                                                <br />
                                                <asp:TextBox ID="txtindex" runat="server" BackColor="#E6F2F2" Height="26px" 
                                                    ReadOnly="True" style="text-align: center" TabIndex="1" Width="35px" Text='<%# Bind("index") %>'></asp:TextBox>
                                            </ItemTemplate>
                                            <ItemStyle Width="40px" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="btnPlus" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="btnMinus" EventName="Click" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </td>
                    <td>
                        <strong>المواصفات</strong></td>
                </tr>
                <tr>
                    <td class="style4" style="text-align: right">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnMinus" runat="server"  
                                            style="font-weight: 700; font-size: large" Text="-" 
                            Width="38px" CssClass="textbox" onclick="btnMinus_Click" />
                                    &nbsp;
                                        <asp:Button ID="btnPlus" runat="server" onclick="btnPlus_Click" 
                                            style="font-weight: 700; font-size: large" Text="+" 
                            Width="38px" CssClass="textbox" />
                                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:Button ID="Button2" runat="server" Text="اضافة" CssClass="button11" 
                            onclick="Button2_Click" ValidationGroup="a" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
               

            </table>
          
    </div>
       <h1 id="H1" runat="server" 
        style="border: thin solid #C0C0C0; height: 40px; text-align: right; line-height: 45px; color: #FFFFFF; background-color: #4D4D4D; padding-right: 10px; margin-bottom: 10px;">حذف عهدة</h1> 
    <div class="auto-style1">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" DeleteCommand="DELETE FROM [Custody] WHERE [Custody_ID] = @Custody_ID" InsertCommand="INSERT INTO [Custody] ([Notes], [Custody_ID], [Custody_Name], [Added_Date], [Amount]) VALUES (@Notes, @Custody_ID, @Custody_Name, @Added_Date, @Amount)" SelectCommand="SELECT [Notes], [Custody_ID], [Custody_Name], [Added_Date], [Amount] FROM [Custody]" UpdateCommand="UPDATE [Custody] SET [Notes] = @Notes, [Custody_Name] = @Custody_Name, [Added_Date] = @Added_Date, [Amount] = @Amount WHERE [Custody_ID] = @Custody_ID">
            <DeleteParameters>
                <asp:ControlParameter ControlID="txtDelete" Name="Custody_ID" PropertyName="Text" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Custody_ID" Type="Int32" />
                <asp:Parameter Name="Custody_Name" Type="String" />
                <asp:Parameter Name="Added_Date" DbType="Date" />
                <asp:Parameter Name="Amount" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Custody_Name" Type="String" />
                <asp:Parameter Name="Added_Date" DbType="Date" />
                <asp:Parameter Name="Amount" Type="Int32" />
                <asp:Parameter Name="Custody_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="auto-style1">
            <br />
            <table class="style3">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="117px"  />
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtDelete" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style1">
                        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" CssClass="auto-style4" DataKeyNames="Custody_ID">
                            <Columns>
                                <asp:BoundField DataField="Custody_ID" HeaderText="Custody_ID" ReadOnly="True" SortExpression="Custody_ID" />
                                <asp:BoundField DataField="Custody_Name" HeaderText="Custody_Name" SortExpression="Custody_Name" />
                                <asp:BoundField DataField="Added_Date" HeaderText="Added_Date" SortExpression="Added_Date" />
                                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>

    </div>
        </asp:Content>

