var reg = /^[a-zA-Z]+$/;
var emailreg = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
var regex_malasia = /\+60[-]\d{2,4}[-]?\d{6,9}\b/;
var mobile_pattern = /^\d{8}$/;
var password_full_pattern = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[&%$!]).{8,}$/;
var password_pattern = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,}$/;
/* datepicker script*/

/* hkid validation script */
function IsHKID(str) {
    var strValidChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    // basic check length
    if (str.length < 8)
        return false;

    // handling bracket
    if (str.charAt(str.length - 3) == '(' && str.charAt(str.length - 1) == ')')
        str = str.substring(0, str.length - 3) + str.charAt(str.length - 2);

    // convert to upper case
    str = str.toUpperCase();

    // regular expression to check pattern and split
    var hkidPat = /^([A-Z]{1,2})([0-9]{6})([A0-9])$/;
    var matchArray = str.match(hkidPat);

    // not match, return false
    if (matchArray == null)
        return false;

    // the character part, numeric part and check digit part
    var charPart = matchArray[1];
    var numPart = matchArray[2];
    var checkDigit = matchArray[3];

    // calculate the checksum for character part
    var checkSum = 0;
    if (charPart.length == 2) {
        checkSum += 9 * (10 + strValidChars.indexOf(charPart.charAt(0)));
        checkSum += 8 * (10 + strValidChars.indexOf(charPart.charAt(1)));
    } else {
        checkSum += 9 * 36;
        checkSum += 8 * (10 + strValidChars.indexOf(charPart));
    }

    // calculate the checksum for numeric part
    for (var i = 0, j = 7; i < numPart.length; i++, j--)
        checkSum += j * numPart.charAt(i);

    // verify the check digit
    var remaining = checkSum % 11;
    var verify = remaining == 0 ? 0 : 11 - remaining;

    return verify == checkDigit || (verify == 10 && checkDigit == 'A');
}

$(function () {
    /*get now date*/
    var nowTemp = new Date();
    var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);
    


    /* desktoip datepicker*/
        var checkin = $('#dp1').datepicker({
        beforeShowDay: function (date) {
            return date.valueOf() >= now.valueOf();
        },
        autoclose: true,
        todayHighlight: true,
        format: "dd MM yyyy"

    }).on('changeDate', function (ev) {
        if (ev.date.valueOf() > checkout.datepicker("getDate").valueOf() || !checkout.datepicker("getDate").valueOf()) {
            var newDate = new Date(ev.date);
            newDate.setDate(newDate.getDate());
            checkout.datepicker("update", newDate);
        }
        $('#dp2')[0].focus();
    });
    var checkout = $('#dp2').datepicker({
        beforeShowDay: function (date) {
            if (!checkin.datepicker("getDate").valueOf()) {

                return date.valueOf() >= new Date().valueOf();
            } else {
                return date.valueOf() >= checkin.datepicker("getDate").valueOf();
            }
        },
        autoclose: true,
        format: "dd MM yyyy"

    }).on('changeDate', function (ev) { });



    /* mobile datepicker */
    var checkin2 = $('#dp3').datepicker({
        beforeShowDay: function (date) {
            return date.valueOf() >= now.valueOf();
        },
        autoclose: true,
        todayHighlight: true,
        format: "dd MM yyyy"

    }).on('changeDate', function (ev) {
        if (ev.date.valueOf() > checkout2.datepicker("getDate").valueOf() || !checkout2.datepicker("getDate").valueOf()) {
            var newDate = new Date(ev.date);
            newDate.setDate(newDate.getDate());
            checkout2.datepicker("update", newDate);
        }
        $('#dp4')[0].focus();
    });
    var checkout2 = $('#dp4').datepicker({
        beforeShowDay: function (date) {
            if (!checkin2.datepicker("getDate").valueOf()) {

                return date.valueOf() >= new Date().valueOf();
            } else {
                return date.valueOf() >= checkin2.datepicker("getDate").valueOf();
            }
        },
        autoclose: true,
        format: "dd MM yyyy"

    }).on('changeDate', function (ev) { });



    /* bottom datepicker */
    var checkin3 = $('#dp5').datepicker({
        beforeShowDay: function (date) {
            return date.valueOf() >= now.valueOf();
        },
        autoclose: true,
        todayHighlight: true,
        format: "dd MM yyyy"

    }).on('changeDate', function (ev) {
        if (ev.date.valueOf() > checkout3.datepicker("getDate").valueOf() || !checkout3.datepicker("getDate").valueOf()) {
            var newDate = new Date(ev.date);
            newDate.setDate(newDate.getDate());
            checkout3.datepicker("update", newDate);
        }
        $('#dp6')[0].focus();
    });
    var checkout3 = $('#dp6').datepicker({
        beforeShowDay: function (date) {
            if (!checkin3.datepicker("getDate").valueOf()) {

                return date.valueOf() >= new Date().valueOf();
            } else {
                return date.valueOf() >= checkin3.datepicker("getDate").valueOf();
            }
        },
        autoclose: true,
        format: "dd MM yyyy"

    }).on('changeDate', function (ev) { });

});//]]>  

/* No spinner */




function dateDiffInDays(a, b) {
    // Discard the time and time-zone information.
    var diffDays = (b - a) / 1000 / 60 / 60 / 24;
    return diffDays + 1;
}

