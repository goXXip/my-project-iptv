<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="page-view-size" content="640*530" />
<title>孕育早教_订购确认</title>
<style type="text/css">
body {
	letter-spacing: -1px;margin: 0px;width: 640px;height: 530px;font-family: "黑体";background-color: #214c47;
}
.btn_watch_focus{width: 120px;height: 40px;text-align: center;border: 2px solid yellow;}
.btn_watch{width: 120px;height: 40px;text-align: center;}
.STYLE9 {color: #FFFFFF; font-size: 20px; font-family: "黑体";}
.STYLE18 {color: #f7d400; font-size: 16px; font-family: "黑体"; }
.msgDiv{margin: 0 auto;margin-top: 50px;width: 525px;color: #ffffff;font-size: 20px;padding-left: 20px;}
.messageinfo{margin: 0 auto;margin-top: 30px;width: 525px;color: #ffffff;font-size: 18px;line-height: 30px;text-align: left;padding-left: 20px;}
.tips{display:none;width:402px;height:200px;z-index:100;position:absolute;left: 119px;top:165px;background: url("${ctx}/images/yyzj_buy_tips_bq.png") no-repeat;}
</style>
<script type="text/javascript">

var $ = function(id){
	var o = document.getElementById(id);
	return o;
};
function keyEvent() {
	var keyCode;
	var keyCode = event.keyCode;
	if(!keyCode||keyCode=="undefined"){
		keyCode = event.which;
	}
	switch(keyCode) {
	case 38://up
		verticalChan(-1);
		return 0;
		break;
	case 40://down
		verticalChan(+1);
		return 0;
		break;
	case 37://left
		horizonChan(-1);
		return 0;
		break;
	case 39://right
		horizonChan(1);
		return 0;
		break;
	case 13:
		doSelect();
		return 0;
		break;
	case 8:
	case 109:
	case 283:
		location.href =  "${ctx}/yyzj/filmAction!detail.do?filmId=${film.id }";
		return 0;
		break;
	default:
		return 1;
	}
}
document.onirkeypress = keyEvent;
document.onkeypress = keyEvent;

var area = 0; //0 导航  1订购按钮  2二次订购窗口
var btn_pos = 0 ;
var menuArray = ["${ctx }/yyzj/filmAction!eduIndex.do","${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=1&channelId=1","${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=2&channelId=1","${ctx }/yyzj/filmAction!listFilmByColumnId.do?columnId=3&channelId=1"];

function initFocus(){
	area = 1;
	btn_pos = 0;
	$("defaultFocus").className = "btn_watch_focus";
}

//横向移动
function horizonChan(_num){
	if( area == 0 ){
		if(_num<0){
			if(btn_pos <= 0 ){
				btn_pos = 0;
				return ;
			}
		}
		else{
			if(btn_pos >= menuArray.length -1  ){
				btn_pos = menuArray.length -1;
				return;
			}
		}
		unfocusMenu();
		btn_pos += _num;
		focusMenu();
	}
	else if( area == 1){
	
	}
	else if(area == 2){
		if(_num<0){
			if(btn_pos <= 0 ){
				btn_pos = 0;
				return ;
			}
		}
		else{
			if(btn_pos >= 1  ){
				btn_pos = 1 ;
				return;
			}
		}
		$("t_2_"+btn_pos).className = "btn_watch";
		btn_pos += _num;
		$("t_2_"+btn_pos).className = "btn_watch_focus";
	}
}
function focusMenu(){
	var img_name = $("menu"+btn_pos).name;
	$("menu"+btn_pos).src = "${ctx }/yyzj/images/"+img_name+"-2.jpg";
}
function unfocusMenu(){
	var img_name = $("menu"+btn_pos).name;
	$("menu"+btn_pos).src = "${ctx }/yyzj/images/"+img_name+".jpg";
}
function second_confirm(){
	document.getElementById("second_confirm_div").style.display = "block";
	area = 2;
	btn_pos  = 0;
	$("t_2_0").className = "btn_watch_focus";
}
function close_confirm(){
	document.getElementById("second_confirm_div").style.display = "none";
}
//纵向移动
function verticalChan(_num){
	if( area == 0){
		if(_num > 0){
			unfocusMenu();
			area = 1;
			btn_pos  = 0;
			initFocus();
		}
	}
	else if( area == 1){
		if(_num>0){
			btn_pos = 0;
			return;
		}
		if(_num < 0 ){
			area = 0 ;
			btn_pos = 0;
			focusMenu();
			return;
		}
	}
	else if(area == 2){
		
	}
}

function doSelect(){
	if( area == 0 ){
		if( btn_pos < menuArray.length){
			var url = menuArray[btn_pos];
			location.href = url;
		}
	}
	else if(area == 1){
		second_confirm();
	}
	else if(area == 2 ){
		if( btn_pos == 0){
			var url = "${ctx }/servlet/order?ContentID=${film.contentId}&filmId=${film.id}&channelId=1";
			location.href = url;
		}
		else{
			close_confirm();
		}
	}	
}
</script>
</head>

<body>

<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="${ctx }/yyzj/images/menu0.jpg" width="184" height="70" name="menu0" border="0" id="menu0" /></td>
    <td><c:choose><c:when test="${requestScope.columnID == 1}"><img src="${ctx }/yyzj/images/menu1-2.jpg" name="menu1-2" width="136" height="70" border="0" id="menu1" /></c:when><c:otherwise><img src="${ctx }/yyzj/images/menu1-1.jpg" name="menu1-1" width="136" height="70" border="0" id="menu1" /></c:otherwise></c:choose></td>
    <td><c:choose><c:when test="${requestScope.columnID == 2}"><img src="${ctx }/yyzj/images/menu2-2.jpg" name="menu2-2" width="129" height="70" border="0" id="menu2" /></c:when><c:otherwise><img src="${ctx }/yyzj/images/menu2-1.jpg" name="menu2-1" width="129" height="70" border="0" id="menu2" /></c:otherwise></c:choose></td>
    <td><c:choose><c:when test="${requestScope.columnID == 3}"><img src="${ctx }/yyzj/images/menu3-2.jpg" name="menu3-2" width="195" height="70" border="0" id="menu3" /></c:when><c:otherwise><img src="${ctx }/yyzj/images/menu3-1.jpg" name="menu3-1" width="195" height="70" border="0" id="menu3" /></c:otherwise></c:choose></td>
  </tr>
</table>
<table width="644" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="35"><img src="${ctx }/yyzj/images/zyzj-2.jpg" width="35" height="434" /></td>
    <td width="575" valign="top"  bgcolor="#214c47">
   		<div class="msgDiv">	   		
   			<table border="0" cellpadding="0" cellspacing="0">
				  <tr>
				  	 <td width="144" rowspan="4" valign="top"><img src="${ctx }/uploadImages/${film.bigImage.id}.${film.bigImage.suffix}" width="128" height="170" /></td>
				     <td height="50" class="STYLE9" colspan="2">《${film.name }》</td>
				  </tr>
				  <tr>
				    <td height="40" valign="top"  class="STYLE18">集数：${film.serialCount }集</td>
				    <td valign="top"  class="STYLE18">所属产品包：孕育早教</td>
				  </tr>
				  <tr>
				    <td height="40" valign="top" class="STYLE18">价格：20元包月</td>
				     <td valign="top"  class="STYLE18">有效期：一个月</td>
				  </tr>
				  <tr>
				    <td height="44" valign="top" width="190">
					    <div id="defaultFocus" class="btn_watch">
					   		 <img src="images/anniu-01.jpg" name="Image13" width="90" height="38" border="0" id="Image13"/>
					    </div>
				    </td>
				    <td  width="190">&nbsp;</td>
				  </tr>
			</table>
		</div>
		<div class="messageinfo">
    		温馨提示：您即将订购的是孕育早教产品包（含孕育保健、婴幼早教、少儿成长），成功订购后您可在一个月内不限次数观看孕育早教产品包内的所有节目。如需取消包月服务，请在首页“帮助”中按提示操作“取消包月”。
    	</div>
    </td>
    <td width="34"><img src="${ctx }/yyzj/images/zyzj-3.jpg" width="34" height="434" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="${ctx }/yyzj/images/zyzj-4.jpg" width="644" height="26" /></td>
  </tr>
</table>

<div class="tips" id="second_confirm_div">
	<div style="margin-top: 110px;">
		<table border="0" cellpadding="0" cellspacing="0" width="400px;">
			<tr>
				<td width="125">&nbsp;</td>
				<td width="120">
					<div id="t_2_0"  class="btn_watch">
						<img src="${ctx }/images/buy_bq.png"/>
					</div>
				</td>
				<td width="20">&nbsp;</td>
				<td width="120">			
					<div id="t_2_1"  class="btn_watch">
						<img src="${ctx }/images/nobuy_bq.png"/>
					</div>
		   		</td>
				<td width="15">&nbsp;</td>
			</tr>
		</table>
	</div>
</div>

<script  type="text/javascript">
	initFocus();
</script>
</body>
</html>
