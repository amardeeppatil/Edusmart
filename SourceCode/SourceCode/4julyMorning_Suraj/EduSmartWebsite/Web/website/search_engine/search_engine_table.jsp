<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.edusmart.dao.*, com.edusmart.controller.*"%>
<%@page contentType="text/html" import="java.util.*"%>

<%
	UserProfileTB user = UserProfileTB.class.cast(session.getAttribute("USER"));
%>

<script type="text/javascript">
	$(document).ready(function() {
	});

	function displayPOPup(id){
		
	}
</script>

<div class="bs-docs-example">
	<table id="searchOutputTable" class="table table-bordered search">
		<%
			String query = request.getParameter("query");
			System.out.println("2Query : " + query);

			List<ProductTB> products = new ArrayList<ProductTB>();

			List<String> typeList = new ArrayList<String>();
			typeList.add("Subject");
			typeList.add("Faculty");
			typeList.add("Academy");
			typeList.add("State");
			typeList.add("City");
			typeList.add("Branch");
			typeList.add("TuitionFee");

			/* typeList.add("Subject");
			typeList.add("Academy");
			typeList.add("City");
			typeList.add("Branch");
			typeList.add("TuitionFee"); */

			List<Class<?>> list = new ArrayList<Class<?>>();

			if (query.contains("AND")) {
				list = CommonController.getAllObjects(ProductTB.class, query);
			} else {
				list = CommonController.getAllObjects(ProductTB.class,
						"Status = 1");
			}
			for (int i = 0; i < list.size(); i++) {
				ProductTB d = ProductTB.class.cast(list.get(i));
				products.add(d);
				System.out.println(products);
			}

			/* ProductTB product1 = new ProductTB(); */
			/* product1.setSubject("IDT");
			product1.setFaculty("Vishal");
			product1.setAcademy("EduSmart");
			product1.setState("Maharashtra");
			product1.setCity("Pune");
			product1.setCategory("Coaching Class");
			product1.setCategoryType("Online Class");
			product1.setBranch("EduSmart");
			product1.setTuitionFee(1000);
			products.add(product1);
					
			product1.setSubject("Law");
			product1.setFaculty("Reddy");
			product1.setAcademy("EduSmart");
			product1.setState("Maharashtra");
			product1.setCity("Mumbai");
			product1.setCategory("Coaching Class");
			product1.setCategoryType("Virtual Class");
			product1.setBranch("EduSmart"); */
			/* product1.setTuitionFee(1500);
			products.add(product1); */
		%>
		<thead>
			<tr>
				<th width="1%">&nbsp;</th>
				<%
					for (int j = 0; j < typeList.size(); j++) {
						String type = typeList.get(j);
				%>
				<th><%=type%></th>
				<%
					}
				%>
				<th>Add To</th>
			</tr>
		</thead>
		<tbody>
			<%
				for (int i = 0; i < products.size(); i++) {
					ProductTB product = products.get(i);
			%>
			<tr>
				<td style="font-size: 14px; font-weight: bold;" class="">+</td>
				<%
					for (int j = 0; j < typeList.size(); j++) {
							String type = typeList.get(j);
							if (type.equals("Subject")) {
				%>
				<td><%=product.getSubjectName()%></td>
				<%
					} else if (type.equals("Faculty")) {
				%>
				<td><a data-toggle="modal" href="#myModal" onclick="displayPOPup('<%= product.getProductId()%>')" ><img
						src="img/addto-class-room.png" alt="" width="30"/><%=product.getOwnerName()%></a></td>
				<%
					} else if (type.equals("Academy")) {
				%>
				<td><%=product.getAcademyName()%></td>
				<%
					} else if (type.equals("State")) {
				%>
				<td><%=product.getStateName()%></td>
				<%
					} else if (type.equals("City")) {
				%>
				<td><%=product.getCityName()%></td>
				<%
					} else if (type.equals("Branch")) {
				%>
				<td><%=product.getBranchName()%></td>
				<%
					} else if (type.equals("TuitionFee")) {
				%>
				<td><%=product.getTuitionFee()%></td>
				<%
					}
						}
				%>
				<td><s:a data-toggle="modal" href="#myModal">
						<img src="img/addto-class-room.png" alt="" width="30" />
					</s:a>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
</div>

<div class="bs-docs-example" style="display: none;">
	<table class="table table-bordered search">
		<thead>
			<tr>
				<th width="1%">&nbsp;</th>
				<th>Subject</th>
				<th>Faculty</th>
				<th>Academy</th>
				<th>State</th>
				<th>City</th>
				<th>Class</th>
				<th>Coaching Center</th>
				<th>Fee</th>
				<th>Add To</th>
			</tr>
		</thead>
		<tbody>

		</tbody>
	</table>
</div>



<!--POPUP-->

<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true"
	style="z-index: 9999;">
	
	<div class="modal-body">
		<div class="span11">
			<div class="hero-unit">
				<div class="span3">

					<img data-src="holder.js/140x140"
						class="img-polaroid mrg1 img-circle" alt="140x140"
						src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIwAAACMCAYAAACuwEE+AAAFOUlEQVR4Xu3YZ0ujURCG4YkgFuyoiGLBiiJi+f+/QLGBqNjLBwvG3sCyzIGIyeqSwTEks7dfXHGYN/PMtScnZrLZ7LvwRQJFJpABTJFJUZYSAAwQTAkAxhQXxYDBgCkBwJjiohgwGDAlABhTXBQDBgOmBABjiotiwGDAlABgTHFRDBgMmBIAjCkuigGDAVMCgDHFRTFgMGBKADCmuCgGDAZMCQDGFBfFgMGAKQHAmOKiGDAYMCUAGFNcFAMGA6YEAGOKi2LAYMCUAGBMcVEMGAyYEgCMKS6KAYMBUwKAMcVFMWAwYEoAMKa4KAYMBkwJAMYUF8WAwYApAcCY4qIYMBgwJQAYU1wUAwYDpgQAY4qLYsBgwJQAYExxUQwYDJgSAIwpLooBgwFTAoAxxUUxYDBgSgAwprgoBgwGTAkAxhQXxYDBgCkBwJjiohgwGDAlABhTXBQDBgOmBABjiotiwGDAlABgTHFRDBgMmBIAjCkuigGDAVMCgDHFRTFgMGBKoOLBPD4+ytLSUhp6dnZWamtr8wLY2NiQ4+NjGR4eloGBgfS7g4MD2d3dldfXV2lsbJSJiYn0vZivUj+vmNdUypqKBfP+/i7n5+eyubkpz8/PUl9f/xeYbDYrq6ur8vLy8gHm+vpaVlZWpLm5OQHSfyuW6elpyWQy32Zf6ueVEoHlWRUL5vb2VhYXF0UX+fb2lk6WzyeMnh6K4fLyMtXkThg9Xba2tmRkZET6+/tlfn5enp6eZGZmJgHUk6ejoyPVLy8vp1NoampKqqqq3J/X0NBg2VVZ1FYsmLu7u7T47u5u0bed6urqPDCHh4eys7MjLS0tcnFx8QFmbW1Nzs7OZHx8XLq6uj5QTU5OplpF+PDwIE1NTQmbnkJDQ0PyG89rb28vCwSWF1GxYHJD5k6az2By94y6urqEQOHkTphCMIU/n5ycyPr6ejpZ9ASYm5tLGH/reZZllUNtSDB64ugpom8lV1dXsr29XdQJo//j9b6zsLCQTpS+vj4ZHR3N29NXQH/yvHJAYHkN4cDo8Lm3lcIg9JTRi+13dxg9Ufb29tI9Ru89NTU1CZ1ekL87YX76PMuyyqE2HJjCj9X7+/t5J4zeS/Qy3NraKoODg+liq1D0U9L9/X36iK6oOjs75ejoSNra2vI+QX11wnxepOV5//pUVg44vnoN/x0YDUEh6L1G335yf4dRNHqfOT09TZB6e3sTppubGxkbG5Oenp6UnxXMd88r9u8+5Qan4sGUW6DRXw9gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/YeT7AOAcavR1gom/Yeb4/HZAutcoP83oAAAAASUVORK5CYII="
						style="width: 140px; height: 140px; position: relative; bottom: 0px;">
					<br>
				</div>



				<div class="clearfix"></div>

			</div>



			<div class="row-fluid">
				<h4>Our products</h4>
				<div class="row-fluid" id="productList">
					<div class="span12" style="margin: 0px !important;">
						<%
																								
			for(int i=0; i< products.size(); i++){
				ProductTB product1 = products.get(i);
										if (i % 6 == 0) {
									%>
						    <div class="span2 text-center" style="margin-left: 0px;">
							  <%
											} else {
										%>
							<div class="span2 text-center">
								<%
												}
											%>

								<div class="edu-pro">
									<h4>
										<%= product1.getProductName() %>
									</h4>
									<p>
										<% if(product1.getStartDate().contains("/")){%>
										<%= product1.getStartDate() %>
										<% } else {%>
										&nbsp;
										<%} %>
									</p>
									<p>
										<%= product1.getDuration() %>(min)
									</p>
									<p>
										<%= product1.getFromTime() %>to<%= product1.getToTime() %>
									</p>
									<p>
										Rs:<%= product1.getTuitionFee() %>
									</p>
									<a href="addToCart?newProductId=<%=product1.getProductId()%>"
											class="btn btn-primary">Add to Cart</a> <br><br>
								</div>
								<p>
									
								</p>
							</div>
							<%} %>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
					<button class="btn btn-primary">Share</button>
				</div>
			</div> <!-- row fluid -->
		</div>
	</div>
</div>
	<!--POPUP END-->