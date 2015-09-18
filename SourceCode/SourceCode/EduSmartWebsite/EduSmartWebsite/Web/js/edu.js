var reg = /^[a-zA-Z]+$/;
var emailreg = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
var regex_malasia = /\+60[-]\d{2,4}[-]?\d{6,9}\b/;
var mobile_pattern = /^\d{10}$/;
var password_full_pattern = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[&%$!]).{8,}$/;
var password_pattern = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,}$/;
/* datepicker script*/

/* hkid validation script */




function dateDiffInDays(a, b) {
	// Discard the time and time-zone information.
	var diffDays = (b - a) / 1000 / 60 / 60 / 24;
	return diffDays + 1;
}



function isAlphaNumeric(evt) {
	evt = (evt) ? evt : event;
	var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : ((evt.which) ? evt.which : 0));
	if (charCode > 32 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122) && (charCode < 47 || charCode > 57)) {
		return false;
	}
	return true;
}
function replaceAlphaNumeric(id) {
	var string = id.value;
	string = string.replace(/[^a-zA-Z0-9 ]/g, '');
	id.value = string;
}
function isNumeric(evt) {
	var charCode = (evt.which) ? evt.which : event.keyCode
			if (charCode > 31 && (charCode < 48 || charCode > 57))
				return false;

	return true;
}
function replaceNumeric(id) {
	var string = id.value;
	string = string.replace(/[^0-9]/g, '');
	id.value = string;
}
function alphaOnly(evt) {
	evt = (evt) ? evt : event;
	var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : ((evt.which) ? evt.which : 0));
	if (charCode > 32 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122)) {
		return false;
	}
	return true;
}
function replaceAlpha(id) {
	var string = id.value;
	string = string.replace(/[^\sa-zA-Z]/g, '');
	id.value = string;
}

/* flight page apply for no button validation */



/* join us page validation */
function validateRegForm() {


	var valid = true;

	
	var FName = $("#FName").val();
	var Contact = $("#Contact").val();
	
	var Email = $("#Email").val();


	document.getElementById("errFName").innerHTML = "";
	document.getElementById("errContact").innerHTML = "";
	document.getElementById("errEmail").innerHTML= "";
	


	// FULL NAME VALIDATION
	if (FName.trim() == "") {
		document.getElementById("errFName").innerHTML = "Please enter your Name.";

		valid = false;

	} 
	// Mobile Number Validation
	if (Contact.trim() == "") {
		document.getElementById("errContact").innerHTML = "Please enter your mobile No.";

		valid = false;

	} else {
		if (mobile_pattern.test(Contact) == false) {
			document.getElementById("errContact").innerHTML = "Please enter an valid 10 digit mobile No.";

			valid = false;
		}
	}

	// Email Address Validation
	if (Email.trim() == "") {
		document.getElementById("errEmail").innerHTML = "Please enter your Email Address.";

		valid = false;
	} else {
		if (emailreg.test(Email) == false) {
			document.getElementById("errEmail").innerHTML = "Please enter a valid Email Address.";

			valid = false;
		}

		
}
	
	
	


	return valid;

}


