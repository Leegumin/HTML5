$(function(){
	$('.menu-title:not(only-child)'/* 외동을 제외한 객체들을 선택함 -> 메뉴3은 a가 "이용안내" 한놈임 */).click(function(event){
		$(this).siblings(".inner-menu").toggle();

		//드롭다운 메뉴 선택 시 다른 드롭다운 메뉴를 숨기기
		$(".inner-menu").not($(this).siblings()).hide();

		//이벤트 디폴트값 중지
		event.stopPropagation();
	});
	//드롭다운 메뉴 외 영역에 클릭 시 드롭다운 메뉴 숨기기
	$("html"). click(function(){
		$(".inner-menu").hide();
	})
})