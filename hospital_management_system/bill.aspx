<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="hospital_management_system.bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="links/bill/boot.css"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="links/bill/j.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="links/bill/boot.js"></script>

   <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="links/bill/311_jq.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="links/bill/183_jq.js"></script>
    <style>
        body
    {
        font-family: Arial;
        font-size: 10pt;
    }
    .GridPager a, .GridPager span
    {
        display: block;
        height: 25px;
        width: 15px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
    }
    .GridPager a
    {
        background-color: #f5f5f5;
        color: #969696;
        border: 1px solid #969696;
    }
    .GridPager span
    {
        background-color: #A1DCF2;
        color: #000;
        border: 1px solid #3AC0F2;
    }
    </style>
<script type="text/javascript">
    $("[src*=plus]").live("click", function () {
        $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
        $(this).attr("src", "images/minus.jpg");
    });
    $("[src*=minus]").live("click", function () {
        $(this).attr("src", "images/plus.png");
        $(this).closest("tr").next().remove();
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="align-content:center;margin-top:50px;margin-left:150px;margin-right:150px;">
        <div class="well" style="align-content:center;">
             <form class="form-horizontal" runat="server" style="background-color:#f5f5f5;border-color:aqua;border:thin;" >
                
                 <blockquote style="background-color: #ededef;"><p>Case Details</p></blockquote>
                 <div class="form-group">
                     <asp:Label runat="server" ID="case_no_lb" CssClass="col-sm-2 control-label">CaseNo</asp:Label>
                     <div class="col-sm-2" style="padding-top:6px;">
                         <asp:Label runat="server" ID="casemaster_no_lb" CssClass="control-label"></asp:Label>
                     </div>
                     <asp:Label runat="server" ID="date_lb" CssClass="col-sm-2 control-label">Case Date</asp:Label>
                     <div class="col-sm-2"  style="padding-top:6px;">
                         <asp:Label runat="server" ID="casedate_lb" CssClass="control-label"></asp:Label>
                     </div>
                      
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="doctornm_lb" CssClass="col-sm-2 control-label">Doctor's Name</asp:Label>
                     <div class="col-sm-2" style="padding-top:6px;">
                         <asp:Label runat="server" ID="Doctorname_lb" CssClass="control-label"></asp:Label>
                     </div>
                     <asp:Label runat="server" ID="room_lb" CssClass="col-sm-2 control-label">Room No</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="roomno_lb" CssClass="control-label"></asp:Label>
                     </div>
                 </div>
                 
                 <blockquote style="background-color: #ededef;"><p>Patient Information</p></blockquote>
                 <div class="form-group">
                     <asp:Label runat="server" ID="name_lb" CssClass="col-sm-2 control-label">Name</asp:Label>
                     <div class="col-sm-6" style="padding-top:6px;">
                         <asp:Label runat="server" ID="patient_name_lb" CssClass="control-label"></asp:Label>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="gender_lb" CssClass="col-sm-2 control-label">Gender</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="patient_gender_lb"  CssClass="control-label"></asp:Label>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="age_lb" CssClass="col-sm-2 control-label">Age</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="patient_age_lb"  CssClass="control-label"></asp:Label>
                     </div>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" ID="bg_lb" CssClass="col-sm-2 control-label">Bloodgroup</asp:Label>
                     <div class="col-sm-1" style="padding-top:6px;">
                         <asp:Label runat="server" ID="patient_bg_lb"  CssClass="control-label"></asp:Label>
                     </div>
                 </div>
                 <blockquote style="background-color: #ededef;"><p>Case Summary</p></blockquote>
                 <div class="row">
                    <div class="form-group">
                        <asp:Label runat="server" ID="complaint" CssClass="col-sm-2 control-label">Chief Complaint</asp:Label>
                        <div class="col-sm-10" style="padding-top:6px;">
                             <asp:Label runat="server" ID="chiefcomplaint_lb"  CssClass="control-label">ril 1910, the ship was equipped with armour 10 inches (254 mm) thick, and ten 12-inch guns. She served in the Home Fleet and Grand Fleet, at times as the flagship of Rear-Admiral Ernest Gaunt. Prince Albert (later King George VI) spent several years aboard the ship before and during World War I. At the Battle of Jutland in 1916, the largest naval battle of the war, Collingwood was in the middle of the battleline; she did some damage to the German battlecruiser SMS Derfflinger, and shelled the light cruiser SMS Wiesbaden. Apart from that battle and the inconclusive Action of 19 August, her service during the war generally consisted of routine patrols and training in the North Sea. The ship was deemed obsolete after the war, reduced to reserve, and used as a training ship before being sold for scrap in 1922. (Full article...)</asp:Label>
                        </div>
                    </div>
                 </div>
                 <div class="row">
                    <div class="form-group">
                        <asp:Label runat="server" ID="Ex_result_lb" CssClass="col-sm-2 control-label">Examination Result</asp:Label>
                        <div class="col-sm-10" style="padding-top:6px;">
                             <asp:Label runat="server" ID="Examination_result_lb"  CssClass="control-label">ril 1910, the ship was equipped with armour 10 inches (254 mm) thick, and ten 12-inch guns. She served in the Home Fleet and Grand Fleet, at times as the flagship of Rear-Admiral Ernest Gaunt. Prince Albert (later King George VI) spent several years aboard the ship before and during World War I. At the Battle of Jutland in 1916, the largest naval battle of the war, Collingwood was in the middle of the battleline; she did some damage to the German battlecruiser SMS Derfflinger, and shelled the light cruiser SMS Wiesbaden. Apart from that battle and the inconclusive Action of 19 August, her service during the war generally consisted of routine patrols and training in the North Sea. The ship was deemed obsolete after the war, reduced to reserve, and used as a training ship before being sold for scrap in 1922. (Full article...)</asp:Label>
                        </div>
                    </div>
                 </div>
                 <div class="row">
                    <div class="form-group">
                        <asp:Label runat="server" ID="report" CssClass="col-sm-2 control-label">Report Required</asp:Label>
                        <div class="col-sm-10" style="padding-top:6px;">
                             <asp:Label runat="server" ID="report_lb"  CssClass="control-label">ril 1910, the ship was equipped with armour 10 inches (254 mm) thick, and ten 12-inch guns. She served in the Home Fleet and Grand Fleet, at times as the flagship of Rear-Admiral Ernest Gaunt. Prince Albert (later King George VI) spent several years aboard the ship before and during World War I. At the Battle of Jutland in 1916, the largest naval battle of the war, Collingwood was in the middle of the battleline; she did some damage to the German battlecruiser SMS Derfflinger, and shelled the light cruiser SMS Wiesbaden. Apart from that battle and the inconclusive Action of 19 August, her service during the war generally consisted of routine patrols and training in the North Sea. The ship was deemed obsolete after the war, reduced to reserve, and used as a training ship before being sold for scrap in 1922. (Full article...)</asp:Label>
                        </div>
                    </div>
                 </div>
                 <div class="row">
                    <div class="form-group">
                        <asp:Label runat="server" ID="trplan_lb" CssClass="col-sm-2 control-label">Treatment Plan</asp:Label>
                        <div class="col-sm-10" style="padding-top:6px;">
                             <asp:Label runat="server" ID="treatmentplan_lb"  CssClass="control-label">ril 1910, the ship was equipped with armour 10 inches (254 mm) thick, and ten 12-inch guns. She served in the Home Fleet and Grand Fleet, at times as the flagship of Rear-Admiral Ernest Gaunt. Prince Albert (later King George VI) spent several years aboard the ship before and during World War I. At the Battle of Jutland in 1916, the largest naval battle of the war, Collingwood was in the middle of the battleline; she did some damage to the German battlecruiser SMS Derfflinger, and shelled the light cruiser SMS Wiesbaden. Apart from that battle and the inconclusive Action of 19 August, her service during the war generally consisted of routine patrols and training in the North Sea. The ship was deemed obsolete after the war, reduced to reserve, and used as a training ship before being sold for scrap in 1922. (Full article...)</asp:Label>
                        </div>
                    </div>
                 </div>  
                 <blockquote style="background-color: #ededef;"><p>Bills Details</p></blockquote>
                 <div class="well" style="margin-left:100px;margin-right:100px;margin-top:50px;padding:100px;">
                     <asp:Label runat="server" ID="grid_not_visible" CssClass="text-center"></asp:Label>
                 <asp:GridView ID="billgv" runat="server" AllowPaging="true"  AutoGenerateColumns="false" OnPageIndexChanging="billgv_PageIndexChanging" CssClass="Grid" DataKeyNames="billid"  OnRowDataBound="OnRowDataBound" PageSize="1">
                     <HeaderStyle BackColor="#d7d7d7" /> 
                     <FooterStyle  BackColor="#d7d7d7"/>
                      <pagerstyle BackColor="#d7d7d7"   HorizontalAlign="Center"  CssClass="GridPager"/>
                     <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <img alt = "" style="cursor: pointer" src="images/plus.png" />
                               
                                <asp:Panel ID="pnlOrders" runat="server" Style="display: none;">
                                    <div style="padding-left:70px;padding-right:70px;padding-top:70px;">
                                    <asp:GridView ID="itemgv" runat="server" AutoGenerateColumns="false" CssClass = "ChildGrid">
                                       <HeaderStyle BackColor="#d7d7d7" />
                                        <Columns>
                                        <asp:BoundField ItemStyle-Width="100px" DataField="itemid" HeaderText="Id" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" />
                                        <asp:BoundField ItemStyle-Width="100px" DataField="name" HeaderText="Drug" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"/>
                                        <asp:BoundField ItemStyle-Width="100px" DataField="qty" HeaderText="Quantity" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"/>
                                        <asp:BoundField ItemStyle-Width="100px" DataField="cost_per_item" HeaderText="CostperItem" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"/>
                                       </Columns>
                                    </asp:GridView>
                                        
                                  <div style="padding-left:162px;padding-top:10px;padding-bottom:30px;">
                                       
                                           <div class="col-sm-4" style="padding-bottom:10px;">
                                           </div>
                                       </div>                           
                                </div>
                                        </div>
                                        </asp:Panel>
                                              
                            </ItemTemplate>
                            
                        </asp:TemplateField>

                        <asp:BoundField ItemStyle-Width="200px" DataField="billid" HeaderText="BillNo" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" />
                        <asp:BoundField ItemStyle-Width="200px" DataField="caseid" HeaderText="CaseNo" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" />
                        <asp:BoundField ItemStyle-Width="200px" DataField="date" DataFormatString="{0:dd-MM-yyyy}" HeaderText="Date" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"/>
                      <asp:BoundField ItemStyle-Width="200px" DataField="paid" HeaderText="paid" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" />
                        
                        <asp:BoundField ItemStyle-Width="200px" DataField="total" HeaderText="total" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" />
                     
                          </Columns>
                </asp:GridView>  
                  <asp:Button runat="server" ID="pay_btn" CssClass="btn btn-info" Text="Pay" OnClick="pay_btn_Click"  CommandName="pay"  />
                     <asp:Label runat="server" ID="l1"></asp:Label>
                                
                     </div>        
             </form>
        </div>
    </div>
</asp:Content>
