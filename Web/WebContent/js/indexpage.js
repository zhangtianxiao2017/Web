/**
 * 
 */

//音乐界面的加载方方法
function musicLoad(){
	//alert("test");
	$.ajax({
		type:'post',
		url:'musiclist',
		dataType:'html',
		success: function(msg){
			document.getElementById("bodypage").innerHTML = msg;  
		},
		error: function () {
			alert('error');
		}
	});
	mediaLeftChange();
}


//媒体界面（音乐，电影，小说）右边导航栏的加载
function mediaLeftChange(){
	$.ajax({
		type:'post',
		url:'mediarightpage',
		dataType:'html',
		success: function(msg){
			document.getElementById("right_page").innerHTML = msg;  
		},
		error: function () {
			alert('error');
		}
	});
}

//电影列表的加载
function movieLoad() {
		$.ajax({
			type:'post',
			url:'movelist',
			dataType:'html',
			success: function(msg){
				document.getElementById("bodypage").innerHTML = msg;  
			},
			error: function () {
				alert('error');
			}
		});

		mediaLeftChange();
}


//小说列表加载
function novelLoad(){
	$.ajax({
		type:'post',
		url:'novellist',
		dataType:'html',
		success: function(msg){
			document.getElementById("bodypage").innerHTML = msg;  
		},
		error: function () {
			alert('error');
		}
	});

	mediaLeftChange();	
}


function photoLoad(){
	$.ajax({
		type:'post',
		url:'photolist',
		dataType:'html',
		success: function(msg){
			document.getElementById("bodypage").innerHTML = msg;  
		},
		error: function () {
			alert('error');
		}
	});

	mediaLeftChange();	
}

//显示加载电影管理界面
function movieManage(){
	$.ajax({
		type:'post',
		url:'moviemanage',
		dataType:'html',
		success: function(msg){
			document.getElementById("bodypage").innerHTML = msg;  
		},
		error: function () {
			alert('error');
		}
	});

	mediaLeftChange();	
}

function imgPreview(fileDom){
	var reader = new FileReader();
	var file = fileDom.files[0];
	reader.onload = function(e){
		//获取图片dom
        var img = document.getElementById("preview");
        //图片路径设置为读取的图片
        img.src = e.target.result;
	};
	reader.readAsDataURL(file);
}

//上传电影信息
function uploadMovie(){
	var name = $("#moviename").val();
	var picture = $("#moviepicture")
	
	alert(name+"sdf" + picture.val());
	
	var formData = new FormData();
	formData.append("moviename",name);
	formData.append("moviepicture",$('#moviepicture')[0].files[0]);
	formData.append("moviecontent",$("#moviecontent").val());
	formData.append("moviepicturetype",picture.val())
	
	alert(formData)
	
	$.ajax({
		type:'post',
		url:'moveUpload',
		processData: false, // 告诉jQuery不要去处理发送的数据
	    contentType: false, // 告诉jQuery不要去设置Content-Type请求头
		data:formData,
		success:function(responseStr){
			document.getElementById("bodypage").innerHTML = responseStr;
		},
		errot:function(res){
			alert(res);
		}
	});
	
	
	
}