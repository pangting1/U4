$("#loginBtn").click(function(){
	var user=new Object();
	user.loginCode=$.trim($("#loginCode").val());
	user.password=$.trim($("#password").val());
	if(user.loginCode==""||user.loginCode==null){
		$("#loginCode").focus();
		$("#formtip").css("color","red");
		$("#formtip").html("对不起，登录账号不能为空。");
	}else if(user.password==""||user.password==null){
		$("#password").focus();
		$("#formtip").css("color","red");
		$("#formtip").html("对不起登录密码不能为空。");
	}else{
		$("#formtip").html("");
		
		$.ajax({
			type:'post',
			url:'/login.html',
			data:{user:JSON.stringify(user)},
			dataType:'html',
			timeout:1000,
			error:function(){
				$("#formtip").css("color","red");
				$("#formtip").html("登录失败！请从试。");
			},
			success:function(result){
				if(result!=""&&result=="success"){
					window.location.href='/main.html';
				}else if("failed"==result){
					$("#formtip").css("color","red");
					$("#formtip").html("登录失败，请从新登录");
					$("#loginCode").val('');
					$("#loginCode").focus();
					$("#password").val('');
				}else if(result=="nologincode"){
					$("#formtip").css("color","red");
					$("#loginCode").val('');
					$("#loginCode").focus();
					$("#formtip").html("登录账号不存在，请重新登录");
				}else if(result=="pwderror"){
					$("#formtip").css("color","red");
					$("#password").val('').focus();
					$("#formtip").html("登录密码不正确，请重新输入");
				}else if(result=="nodata"){
					$("#formtip").css("color","red");
					$("#formtip").html("对不起没有任何数据需要处理！请输入");
				}
			}
		});
	}
});