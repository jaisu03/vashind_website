<%@ Page Title="" Language="C#" MasterPageFile="~/headfooter.master" AutoEventWireup="true" CodeFile="job.aspx.cs" Inherits="job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
.ListView2{width:50%;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Main -->
			<section id="main" class="wrapper">
				<div class="container">

					<header class="major">
						<h2>JOBS</h2>
						<p>We help you get more from your Job. Here You can get experts in Jobs.</p>
						
						<div class="12u$ 12u$(medium) ">
						<ul class="actions pull-right">
								
								<li><a href="#" class="button icon fa-download ">Post your Job</a></li>
								<li><a href="#" class="button icon fa-download ">Edit your Job</a></li>
							</ul>
					</div>
					</header>
				<div class="12u$ 12u$(medium)">
					
					
				</div>
				
					<!-- Table -->
						<section>
							
                            <asp:SqlDataSource ID="sqljobs" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Loveservices %>" 
                        SelectCommand="SELECT [Id], [Name], [abstract], [experience], [expires], [img],[Category] FROM [job]">
                    </asp:SqlDataSource>
                                               
                            <h4>&nbsp;</h4>
							<div class="table-wrapper">
								<table class="alt tabjob">
									<tr class="headerrow">
											<th class="col1 bbot">List of JobsOffers</th>
                                            <th class="clo2 bbot" style="border-left-width:0;">Jobs</th>
											<th class="col3 bbot" style="border-left-width:0;">Apply below</th>
									</tr>
									
									<tr>
											<td><b> Actor Jobs </b></td>
											<td>											
										   <asp:ListView ID="ListView2" runat="server" DataKeyNames="ID" DataSourceID="sqljobs">
          <EmptyDataTemplate>
           <div id="Table1" runat="server">          
             No data was returned.          
          </div>
          </EmptyDataTemplate>
           
          <GroupTemplate>
            <div ID="itemPlaceholderContainer" runat="server">
             <div ID="itemPlaceholder" runat="server"></div>
            </div>
          </GroupTemplate>
           <ItemTemplate>
           
                    <div class="title">
                         <strong><%# Eval("ID")%> : <%# Eval("name")%></strong> <span class="floatr"><strong>Category: <%# Eval("Category") %></strong></span>
                    </div>
                    <div>
                     <div class="floatl w20">
                      <a href="">
                      <img src="<%# Eval("img")%>" style="width:90%" /></a>
                     </div>                
                     <div class="floatl w70">
                       <span>
                         <b>Description: </b><%# Eval("abstract")%>
                       </span>
                       <br />
                       <span>
                         <b>Experience: </b><%# Eval("experience")%>
                       </span>
              <p></p>
                    <a href="#" class="button small">Apply</a>
                     </div>
                    </div>
                    <div style="clear:both;margin:0"></div>
                    <br />
                    
                    <p class="hr1" ></p>
                  </ItemTemplate>
        </asp:ListView>
    
                                         
											</td>
									        <td><a href="#" class="button small">Apply</a></td>
		</tr>
										
								
									<tfoot>
										<tr>
											<td colspan="2"></td>
											<td>100.00</td>
										</tr>
									</tfoot>
								</table>
							</div>
						</section>

					

				</div>
			</section>
</asp:Content>

