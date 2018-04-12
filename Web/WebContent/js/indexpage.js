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