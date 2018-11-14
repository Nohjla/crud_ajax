$(document).ready(()=>{

	$("#btn_login").click(()=>{

		let	username = $("#username").val();
		let	password = $("#password").val();

		let error_flag = 0;
		if(username == ""){
			$("#username").next().css("color","red");
			$("#username").next().html("username is required!");
			error_flag = 1;
		}
		else{
			$("#username").next().html("");
		}

		if(password == ""){
			$("#password").next().css("color","red");
			$("#password").next().html("password is required!");
			error_flag = 1;
		}
		else{
			$("#password").next().html("");
		}

		if (error_flag == 0) {
			$.ajax({
				"url": "process_login.php",
				"data": {"username" : username, "password" : password},
				"type": "POST",
				"success": (dataFromPHP) =>{
					if(dataFromPHP == "Success"){
						// $("#error_message").css("color", "green");
						// $("#error_message").html(dataFromPHP);
						$('#form_login').submit();
					}
					else{
						$("#error_message").css("color", "red");
						$("#error_message").html(dataFromPHP);
					}
				}
			});
		}


	})
});