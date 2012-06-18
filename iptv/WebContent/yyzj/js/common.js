/***
 * ������Ƶ
 * @param {} serverIp EPG��������̬IP
 * @param {} progId ��ĿID
 * @param {} winMode ����ģʽ(ȫ����С����),full,small
 * @param {} left ��߾�
 * @param {} top  �ϱ߾�
 * @param {} width  ���ڿ�
 * @param {} height  ���ڸ�
 */
function play_video(serverIp,progId,winMode,left,top,width,height){
	
	if(winMode == 'full'){
		//var url = "http://"+serverIp+":8082/EPG/jsp/defaultwg/en/au_PlayFilm.jsp?CONTENTTYPE=0&PLAYTYPE=1&"
		 // 		   +"PROGID="+ progId +"&BUSINESSTYPE=1";
		
		/**var url = "http://125.88.102.150:8082/EPG/jsp/defaultwg/en/au_PlayFilm.jsp?			CONTENTTYPE=0&PLAYTYPE=1&PROGID=652711&BUSINESSTYPE=1";
*/

var url = "http://125.88.102.150:8082/EPG/jsp/defaultwg/en/au_PlayFilm.jsp?CONTENTTYPE=0&PLAYTYPE=1&PROGID=534519&BUSINESSTYPE=1";
		location.href = url;
	}
	else{
		/**var url = "http://"+serverIp+":8082/EPG/jsp/defaultwg/en/PlayTrailerInVas.jsp?left="
				 + left +"&top="+ top+"&width="+ width +"&height="+ height +"&type=VOD&value="+ progId;
		alert(url);
	*/
	var url = "http://125.88.102.150:8082/EPG/jsp/defaultwg/en/PlayTrailerInVas.jsp?left=240&top=122&width=388&height=87&type=VOD&value=107";
		location.href = url;
	}
	//return;
}
/**ȫ������**/
function startVideo(progId){
	alert(progId);
	 var ip = "125.88.102.150";
	 play_video(ip,progId,"full");
}

/**С������**/
function startVideoInSmallWindow(progId,left,top,width,height){
		alert(progId);
		alert("left:"+ left +"top:"+top);
	 var ip = "125.88.102.150";
	 play_video(ip,progId,"small",left,top,width,height);
}

/** ��rtsp��ַ���� ***/
function playUrl(rtspUrl){
	
	//alert(rtspUrl);
	if(rtspUrl == null || rtspUrl == "" ){
		return ;
	}
	
	var mp = new MediaPlayer();
	var nativePlayerInstanceId = mp.getNativePlayerInstanceId ();
	var mediaStr = [{mediaUrl:rtspUrl}];

	mp.setSingleMedia(mediaStr);
	mp.play();
	
}