$(document).ready(function() {
	$("#log").click(function() {
		$.ajax({
			type: "POST",
		    url:"../account/check.do",
		    dataType:"json"
		})
		.done(function(response) {
			var num = 0;
		    response.forEach(function (item , index ) {
		    	if(item.username == $("#username").val() && item.password == $("#password").val()) {
		    		$("#lform").submit();
		    		num = 1;
		    		return;
		        };
		    });
		    if(num == 0){
		    	alert("Check your id and password");              
		    }
		})
	});
});

// check id and password input length 
// ban put special character
document.addEventListener("DOMContentLoaded", function() {
  var usernameInput = document.getElementById("username");
  var passwordInput = document.getElementById("password");

  usernameInput.addEventListener("input", restrictUsername);
  passwordInput.addEventListener("input", restrictPassword);

  function restrictUsername() {
    var username = usernameInput.value;
    var alphanumericRegex = /^[a-zA-Z0-9]+$/;

    // Remove any non-alphanumeric characters from the username
    username = username.replace(/[^a-zA-Z0-9]/g, "");

    // Limit the username to a maximum length of 20 characters
    if (username.length > 20) {
      username = username.slice(0, 20);
    }

    // Update the input field value with the restricted username
    usernameInput.value = username;
  }

  function restrictPassword() {
    var password = passwordInput.value;

    // Limit the password to a maximum length of 12 characters
    if (password.length > 12) {
      password = password.slice(0, 12);
    }

    // Update the input field value with the restricted password
    passwordInput.value = password;
  }
});

