/**
 * 
 */
function photoChange() {
		//alert("dfasf");
		var photo = $("#photo option:selected");
		var photoshow = $("#photoshow");
		//alert(photo.val()+"");
		switch(photo.val()+"")
		{
		case "1":
			photoshow.attr('src','../imgs/1.jpg');
			break;
		case "2":
			photoshow.attr('src','../imgs/2.jpg');
			break;
		case "3":
			photoshow.attr('src','../imgs/3.jpg');
			break;
		case "4":
			photoshow.attr('src','../imgs/4.jpg');
			break;
		default:
			break;
			
		}
}

function checkUserName()
{
	var username = $("#textUser");
	//alert(username.val());
	if(username.val().length < 3 || username.val().length>8)
	{
		$("#tips_username").css("color","red");
	}
	else
	{
		$("#tips_username").css("color","blue");
	}
}
function checkPassword()
{
	var regs = /^[a-zA-Z0-9_\u4ee0-\u9fa5] + $/;
	var password = $("#password");
	if(password.val().length < 3 || password.val().length>8 || 
			regs.test(password))
	{
		//alert("密码输入不正确！！！请重新输入")
		$("#tips_password").css("color","red");
	}
	else
	{
		$("#tips_password").css("color","blue");
	}
}

function reCheckPassword()
{
	var repassword = $("#repassword");
	var password = $("#password");
	if(repassword.val() != password.val())
	{
		//alert("两次密码输入不一致！！！");
		$("#tips_repeatpassword").css("color","red");
	}
	else
	{
		$("#tips_repeatpassword").css("color","blue");
	}
}

function checkGender()
{
	
}

function checkPhoneNumber()
{
	var pattern1 = /[0-9]{11}/;
	var phonenumber = $("#phonenumber");
	if(pattern1.test(phonenumber.val()) == false || phonenumber.val().length >11)
	{
		//alert("联系电话不符合规范");
		$("#tips_phonenumber").css("color","red");
	}
	else
	{
		$("#tips_phonenumber").css("color","blue");
	}
}
function checkEmail()
{
	var pattern  = /^[a-zA-Z0-9#_\^\$\.\*\+\-\?\=\!\:|\\\/\(\)\[\]\{\}]+@[a-zA-z0-9]+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
	var email = $("#email");
	if(!pattern.test(email.val()))
	{
		//alert("邮箱输入不正确！！！")
		$("#tips_email").css("color","red");
	}
	else
	{
		$("#tips_email").css("color","blue");
	}
}

function check()
{
	//用户名验证
	var username = $("#textUser");
	//alert(username.val());
	if(username.val().length < 3 || username.val().length>8)
	{
		$("#tips_username").css("color","red");
		return false;
	}
	else
	{
		$("#tips_username").css("color","blue");
	}
	
	//密码验证
	var regs = /^[a-zA-Z0-9_\u4ee0-\u9fa5] + $/;
	var password = $("#password");
	if(password.val().length < 3 || password.val().length>8 || 
			regs.test(password))
	{
		//alert("密码输入不正确！！！请重新输入")
		$("#tips_password").css("color","red");
		return false;
	}
	else
	{
		$("#tips_password").css("color","blue");
	}
	//
	
	//密码二次验证
	var repassword = $("#repassword");
	//var password = $("#password");
	if(repassword.val() != password.val())
	{
		//alert("两次密码输入不一致！！！");
		$("#tips_repeatpassword").css("color","red");
		return false;
	}
	else
	{
		$("#tips_repeatpassword").css("color","blue");
	}
	
	//手机号码验证
	var pattern1 = /[0-9]{11}/;
	var phonenumber = $("#phonenumber");
	if(pattern1.test(phonenumber.val()) == false || phonenumber.val().length >11)
	{
		//alert("联系电话不符合规范");
		$("#tips_phonenumber").css("color","red");
		return false;
	}
	else
	{
		$("#tips_phonenumber").css("color","blue");
	}
	
	//email验证
	var pattern  = /^[a-zA-Z0-9#_\^\$\.\*\+\-\?\=\!\:|\\\/\(\)\[\]\{\}]+@[a-zA-z0-9]+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
	var email = $("#email");
	if(!pattern.test(email.val()))
	{
		//alert("邮箱输入不正确！！！")
		$("#tips_email").css("color","red");
		return false;
	}
	else
	{
		$("#tips_email").css("color","blue");
	}
	return true;
}


