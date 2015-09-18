<%@ taglib prefix="s" uri="/struts-tags"%>

<link href="css/jquery.dynatable.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.dynatable.js" type="text/javascript"></script>
	

<style type="text/css">

.searchFileBox {
	width: 270px;
	position: relative;
	margin: 10px;
	float: left;
}

.remove_input_btn {
	position: absolute;
	right: 10px;
	top: -8px;
	width: 20px;
	height: 20px;
	padding: 0;
	margin: 0;
	background: red;
	border: none;
	color: white;
	border-radius: 15px;
}
</style>

<script type="text/javascript">
	
$(document).ready(function() {
	searchDatabase("");
	$("body").on("change", "#searchInput", function(){
		
		if($(this).val() !== "0"){
			var searchInputObj = '<div class="searchFileBox">' +
									'<input type="text" class="form-control" placeholder="' + 
									$("#searchInput option:selected").text() + '"' + 
									'name="' + $(this).val() + '">' +
									'<button class="remove_input_btn">X</button></div>';
			$("#searchInputFields").append(searchInputObj);
			$("#searchInput option:selected").remove();
		}
	});
	
	$("body").on("click", "button.remove_input_btn", function(){
		var optionObj = '<option value="' + $(this).parent("div.searchFileBox").children("input").attr("name") + '">'+
							$(this).parent("div.searchFileBox").children("input").attr("placeholder") +'</option>';
		$("#searchInput").append(optionObj);
		
		$(this).parent("div.searchFileBox").remove();
	});
	
	$("body").on("click", "#searchBtn", function(){
		
		//$('#content').load('login.jsp');
		
		var query = "";
		$("#searchInputFields input").each(function(){
			if($(this).val() !== ""){
				query = query + $(this).attr("name") + " like '" + $(this).val() + "%' AND ";
			}
		});
		query = query + " 1 = 1";
		searchDatabase(query);
	});		
});

function searchDatabase(query) {
	$.ajax({
		type : "GET",
		url : "getSearchEngineTable",
		data : { query : query },
		success : function(data) {
			$("#content").html(data);
			/* var $records = data.productJSONArray;
			 $('#searchOutputTable').dynatable({
				features: {
					search: false,
				    recordCount: false,
				    sorting: false,
				    perPageSelect: false
				},
				dataset: {
			    	records: $records
			  	}
			});		 */
		}
	});
}

</script>


<div id="main-wrapper" style="margin-top: 50px;">
	<div class="container-fluid" style="margin: 0px !important;">

		<section class="content">
			<label for="FirstName">Select Search input fields :</label>

			<div>
				<s:select list="inputTypes" listKey="key" id="searchInput"
					listValue="value" headerKey="0" headerValue="--- Select ---"
					cssClass="form-control" />
			</div>

			<div>
				<div id="searchInputFields">
					<!-- <div class="col-xs-2 form-group">
												<input type="text" class="form-control" placeholder="" name="">
												<Button class="remove_input_btn">X</Button>
											</div> -->
				</div>
				<div class="col-xs-2 form-group">
					<button id="searchBtn">Search</button>
				</div>
			</div>
			<div id="searchOutput" style="display: none;">
				<table id="searchOutputTable" class="table table-bordered search">
					<thead>
						<tr>
						<th width="1%">&nbsp;</th>
						<s:iterator value="inputTypes">
							<th data-dynatable-column='<s:property value="key"/>'><s:property
									value="value" /></th>
						</s:iterator>
						</tr>
					</thead>
					<tbody></tbody>
				</table>
			</div>
		</section>
		
		<div id="content"></div>

		<div class="bs-docs-example" style="display: none;">
			<table class="table table-bordered search">
				<thead>
					<tr>
						<th width="1%">&nbsp;</th>
						<th>SubjectName</th>
						<th>FacultyName</th>
						<th>AcademyName</th>
						<th>StateName</th>
						<th>CityName</th>
						<th>ClassName</th>
						<th>BranchName</th>
						<th>Fee</th>
						<th>Add To</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>
	</div>
	<div class="clearfix"></div>
	<br>

</div>
