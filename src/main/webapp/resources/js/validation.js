	ttest = function() {
		alert("asdasdf");
	}
	
	check = function(param) {
		// 		공백없는 숫자와 대소문자
		xyy = /^[a-z0-9_-]{2,10}$/;
/* 		myRe = /^[a-z0-9]{2,10}$/;
		myRe = /^[a-z0-9]$/; */
		
		if(xyy.test($.trim(param)) == false) {
			alert("공백없는 숫자와 대소문자만 입력 가능합니다.");
			$("#ifcgName").focus();
			return false;
		} else {
// 			by pass
		}
		
	}

