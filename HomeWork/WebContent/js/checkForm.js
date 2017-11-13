/**
 * 
 */
function photoChange() {
		alert("dfasf");
		var photo = $("#photo option:selected");
		var photoshow = $("#photoshow");
		alert(photo.val()+"");
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
		alert("用户名长度不合格");
	}
	return false;
}
function checkPassword()
{
	var regs = /^[a-zA-Z0-9_\u4ee0-\u9fa5] + $/;
	var password = $("#password");
	if(password.val().length < 3 || password.val().length>8 || 
			regs.test(password))
	{
		alert("密码输入不正确！！！请重新输入")
	}
}

function reCheckPassword()
{
	var repassword = $("#repassword");
	var password = $("#password");
	if(repassword.val() != password.val())
	{
		alert("两次密码输入不一致！！！");
	}
}


function checkPhoneNumber()
{
	var pattern1 = /[0-9]{11}/;
	var phonenumber = $("#phonenumber");
	if(pattern1.test(phonenumber.val()) == false || phonenumber.val().length >11)
	{
		alert("联系电话不符合规范");
	}
}
function checkEmail()
{
	var pattern  = /^[a-zA-Z0-9#_\^\$\.\*\+\-\?\=\!\:|\\\/\(\)\[\]\{\}]+@[a-zA-z0-9]+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
	var email = $("#email");
	if(!pattern.test(email.val()))
	{
		alert("邮箱输入不正确！！！")
	}
}

function check()
{
	if((document.getElementById("textUser").value.length) <= 0)
	{
		alert("用户名不能空");
		return false;
	}
	else
	{
		
	}
}


