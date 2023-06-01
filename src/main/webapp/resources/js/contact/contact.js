function sendMessage() {
	var name = $("#name").val();
	var email = $("#email").val();
	var message = $("#message").val();

	// Check if any of the fields are empty
	if (name === "" || email === "" || message === "") {
		alert("Please fill in all the required fields.");
		return;
	}

	$.ajax({
		type : 'POST',
		url : getContextPath() + '/contact/insertMessage.json',
		data : {
			"name" : name,
			"email" : email,
			"message" : message
		},
		success : function(response) {
			// Handle the success response
			console.log('Message sent successfully!');
			alert("Message sent successfully!");
			$("#name").val("");
			$("#email").val("");
			$("#message").val("");
		},
		error : function(error) {
			// Handle the error response
			console.log('An error occurred while sending the message.');
			alert("An error occurred while sending the message.");
		}
	});
}