<%@ taglib prefix="s" uri="/struts-tags"%>

<style type="text/css">
body {
	padding-top: 60px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}

.profile-bx {
	
}

.profile-menu {
	background-color: #fff;
}

.mrg1 {
	margin: 5px;
}
</style>

<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container-fluid">
			<button type="button" class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<s:url id="viewHome" action="home"></s:url> 
			<s:a href="%{viewHome}" cssClass="brand"><img src="img/edus-logo.png" alt="" /></s:a>
		</div>
	</div>
</div>