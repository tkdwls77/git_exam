$(function(){
	//회원가입
	$('#writeBtn').click(function(){
		$('#nameDiv').empty();
		$('#idDiv').empty();
      	$('#pwdDiv').empty();
      	$('#repwdDiv').empty();

		//name 속성
		if($('input[name="name"]').val() == '') {
			$('#nameDiv').html('이름 입력');
			$('#name').focus();
		}else if($('input[name="id"]').val()=='')
			$('#idDiv').html('아이디 입력');
		else if($('input[name="pwd"]').val()=='')
			$('#pwdDiv').html('비밀번호 입력');
		else if($('input[name="pwd"]').val() != $('input[name="repwd"]').val())
			$('#repwdDiv').html('비밀번호 틀림');
			
		else if($('#id').val() != $('#check').val())
			$('#idDiv').html('중복체크 하세요');
		
		else 
			$('form[name="writeForm"]').submit();
	});
	
	//로그인
	$('#loginBtn').click(function(){
		$('#idDiv').empty();
      	$('#pwdDiv').empty();

		if($('input[name="id"]').val()=='')
			$('#idDiv').html('아이디 입력');
		else if($('input[name="pwd"]').val()=='')
			$('#pwdDiv').html('비밀번호 입력');
		else 
			$('form[name="loginForm"]').submit();
	});
	
});

//우편번호


//아이디 중복 체크
$('#checkIdBtn').click(function(){
	//var id = document.getElementById("id").value;
	var id = $('#id').val();
	if(id == "")
		alert("먼저 아이디를 입력하세요");
	else
		window.open("/mvcmember/member/checkId.do?id="+id, "checkId", "width=400 height=200 top=200 left=700");	
});

$('#checkIdClose').click(function(){
	//alert($('#checkId').val());
	
	/************** 
	//opener.document.getElementById("id").value = $('#checkId').val();
	opener.writeForm.id.value = $('#checkId').val();
	window.close();
	opener.writeForm.pwd.focus();
	*****************/
	
	$('#id', opener.document).val($('#checkId').val());
	$('#check', opener.document).val($('#checkId').val()); //중복체크 버튼을 눌렀는지 확인
	window.close();
	$('#pwd', opener.document).focus();
});

$('#zipcodeBtn').click(function(){
	window.open("/mvcmember/member/checkPost.do", "checkPost", "width=500 height=500 top=200 left=700");
});

$('.addressA').click(function(){
	//alert($(this).text()); - 주소
	//alert($(this).parent().prev().text()); - 우편번호
	
	$('#zipcode', opener.document).val($(this).parent().prev().text());
	$('#addr1', opener.document).val($(this).text());
	window.close();
	$('#addr2', opener.document).focus();
});









































