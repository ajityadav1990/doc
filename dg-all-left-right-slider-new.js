/*Start Right Slider*/
$(document).ready(function()
{
 if ((screen.width<=1024) && (screen.height<=768))
 {
 //do nothing
    }
 else
 {
$('body').append('<div style="right: 0 !important; top: 0 !important; position:absolute;" id="rtsl"><div id="slide" style="width: 120px;height: 600px;position:relative;top: 178px;right:0px !important;display:block;z-index: 9999;"><div style="float:left;background:url(https://www.dgreetings.com/style/images/advertisement1.png) no-repeat;width:90px;height:9px;margin:10px 0 5px 5px;"></div><div height="600" width="120"><div id="div-gpt-ad-1416915223284-1"></div></div></div></div>');
$('#rtsl').animate({right:0},1000,'swing',function(){});
$('#hide').click(function(){
$('#slide').animate({right:-127},1000,'swing',function(){});
$('#hide').animate({right:-127},1000,'swing',function(){});
$('#slide').hide('slow');
});

/*$('body').append('<div style="left: 0 !important; top: 0 !important; position:absolute;" id="ltsl"><div id="slide2" style="width: 120px;height: 600px;position:relative;top: 178px;right:0px;display:block;z-index: 9999;"><div style="float:left;background:url(https://www.dgreetings.com/style/images/advertisement1.png) no-repeat;width:90px;height:9px;margin:10px 0 5px 5px;"></div><div height="600" width="120"><div id="div-gpt-ad-1416915223284-0"></div></div></div></div>');
$('#ltsl').animate({left:0},1000,'swing',function(){});
$('#hide2').click(function(){
$('#slide2').animate({left:-127},1000,'swing',function(){});
$('#hide2').animate({left:-127},1000,'swing',function(){});
$('#slide2').hide('slow');
});*/
}
 if ((screen.width<=1280) && (screen.height<=800))
 {
 //do nothing
    }
 else
 {
$('body').append('<div style="right: 0 !important; top:0px !important; position:absolute;" id="rts3"><div id="slide1" style="width: 160px;height: 600px;position:relative;top:910px;right:0px !important;display:block;z-index: 9999;"><div style="float:left;background:url(https://www.dgreetings.com/style/images/advertisement1.png) no-repeat;width:90px;height:9px;margin:10px 0 5px 5px;"></div><iframe src="https://www.dgreetings.com/style/right_slider_ad2.html" frameborder=0 scrolling=no marginwidth=0 marginheight=0 height="600" width="160"></iframe></div></div>');
$('#rtsl').animate({right:0},1000,'swing',function(){});
$('#hide').click(function(){
$('#slide').animate({right:-127},1000,'swing',function(){});
$('#hide').animate({right:-127},1000,'swing',function(){});
$('#slide').hide('slow');
});
$(document).scroll(function() {
var y = $(this).scrollTop();
if (y > 800) {
$('#slide1').css({"position":"fixed","top":"50px"});
} else {
$('#slide1').css({"position":"absolute","top":"900"+"px"});
}
});
}


$("#div-gpt-ad-1442579943111-0").css({'margin-left': '12px'});
$("#div-gpt-ad-1399289554738-10, #div-gpt-ad-1399360534789-0").remove();
 if(screen.width<=768){
  var append='<div id="DG-responsive-top"></div>';
var append2='<div style="float:left;margin-top:-9px;"><img src="https://www.dgreetings.com/js/advertisement-wht.png"></div><div id="div-gpt-ad-1472119274192-0" style="height:50px; width:320px;margin-left:1%;"></div>';
    $(".mobile-ad-728").html(append);
     $('body').append('<div id="responsive_bottom_ad">'+append2+'</div>');
    $('body').css("padding-bottom","150px");
     $("#responsive_bottom_ad").css({"position":"fixed","z-index":"9999","bottom":"0px","height":"65px","width":"100%","background":"#808080","text-align":"center","padding": "6px 0"});
  }
  /*if(screen.width>=500){
   var append3='<div class="append3"></div>';*/
});
 /*End Right Slider*/

  /*copy button code*/
$(document).ready(function(){
	$('.message').each(function(index){
		$(this).find('.msgText').attr('id','msg'+index);
		$(this).find('.copy-msg').attr('data-id','msg'+index);
	
	});

});

let copyBtn = Array.from(document.querySelectorAll('.copy-msg'));
copyBtn.forEach(function(el,i){
	copyBtn[i].addEventListener("click", function () {
		let containerid = this.getAttribute('data-id');
		 if (document.selection) { 
			var range = document.body.createTextRange();
			range.moveToElementText(document.getElementById(containerid));
			document.getSelection().removeAllRanges(); 
			range.select().createTextRange();
			document.execCommand("copy"); 

		} else if (window.getSelection) {
			var range = document.createRange();
			 range.selectNode(document.getElementById(containerid));
			 document.getSelection().removeAllRanges(); 
			 window.getSelection().addRange(range);
			 document.execCommand("copy");
			 alert("text copied") 
		}
	},false);
});
