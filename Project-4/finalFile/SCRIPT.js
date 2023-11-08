$(document).ready(function(){
	$("#resetData").click(function(){
		
		$( "#first_name_input").next().text("");
		$( "#last_name_input").next().text("");
		
		$( "#email_address_input").next().text("");
		$( "#phone_number_input").next().text("");
		
		$( "#COM").text("");
		
	});
	
	
	$("#submition").click(function(){
		
		var TrueOrNot = true;
		
		var Fname = $("#first_name_input").val();
		var Lname = $( "#last_name_input").val();
		var email = $( "#email_address_input").val();
		var phone = $( "#phone_number_input").val();
		var comments = $( "#comment").val();
		
		if ( Fname ==="")
		{
			TrueOrNot = false;
			$( "#first_name_input" ).next().text("Please enter a valid first name.");
		}
		else
		{
			$( "#first_name_input").next().text("");
		}
		
		
		
		if ( Lname ==="")
		{
			TrueOrNot = false;
			$( "#last_name_input" ).next().text("Please enter a valid last name.");
		}
		else
		{
			$( "#last_name_input").next().text("");
		}
		
		
		
		if ( email === "" || 
                !email.match(/^[\w\.\-]+@[\w\.\-]+\.[a-zA-Z]+$/) ) 
        {
			TrueOrNot = false;
            $( "#email_address_input" ).next().text("Please enter a valid email.");
        }
		else
		{
			$( "#email_address_input").next().text("");
		}
		
		
		
		if ( phone === "" || !phone.match(/^\d{3}-\d{3}-\d{4}$/) ) { 
			TrueOrNot = false;
            $( "#phone_number_input" ).next().text(
                "Please enter a phone number in NNN-NNN-NNNN format.");
        }
		else
		{
			$( "#phone_number_input").next().text("");
		}
		
		
		
		if ( comments === "")
		{
			TrueOrNot = false;
			$( "#COM" ).text("Please enter some valid comments.");
		}
		else
		{
			$( "#COM").text("");
		}
		
		if (TrueOrNot === true)
		{
			alert( "The first name is:   " + Fname);
			alert( "The last name is:   " + Lname);
			alert( "Your email address is:   " + email);
			alert( "Your phone number is:    " + phone);
			alert( "Your comment is:    " + comments);
		}
		
		
		
	});
	$( "#first_name_input" ).focus();
	
});