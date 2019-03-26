function getEmailDetails() {
	var email = "mailto:GroupHouseP@gmail.com?Subject=GHP Website Inquiry: ";
	email += document.getElementById("name").value;
	email += "&body=";
	email += document.getElementById("message").value;
	window.location.href = email;
	return false;
}