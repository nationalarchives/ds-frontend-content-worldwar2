// some variables to save
var currentPosition;
var currentVolume;
var prevVolume;	
var currentItem;


// these functions are caught by the JavascriptView object of the player.
function sendEvent(typ,prm) { thisMovie("mpl").sendEvent(typ,prm); };
function getUpdate(typ,pr1,pr2,pid) {
	if(typ == "time") { currentPosition = pr1; }
	else if(typ == "volume") { prevVolume=currentVolume;currentVolume = pr1; }
	else if(typ == "item") { currentItem = pr1; setTimeout(0,100);}
	var id = document.getElementById(typ);
	id.innerHTML = typ+ ": "+Math.round(pr1);
	pr2 == undefined ? null: id.innerHTML += ", "+Math.round(pr2);
	if(pid != "null") {
		document.getElementById("pid").innerHTML = "(received from the player with id <i>"+pid+"</i>)";
	}
};

// This is a javascript handler for the player and is always needed.
function thisMovie(movieName) {
	if(navigator.appName.indexOf("Microsoft") != -1) {
		return window[movieName];
	} else {
		return document[movieName];
	}
};

function showControls(){
	// generates controls for audio player
	var controlstr = "";
	controlstr += "<a href=\"javascript:sendEvent('playpause')\" class=\"play\"><img src=\"/education/worldwar2/images/audio/button-play.gif\" alt=\"Play/Pause\" /></a>";
	controlstr += "<a href=\"javascript:sendEvent('volume',currentVolume + 10)\"><img src=\"/education/worldwar2/images/audio/button-volume-up.gif\" alt=\"Volume up\" /></a>";
	controlstr += "<a href=\"javascript:sendEvent('volume',currentVolume - 10)\"><img src=\"/education/worldwar2/images/audio/button-volume-down.gif\" alt=\"Volume down\" /></a>";
	controlstr += "<a href=\"javascript:sendEvent('volume',0)\" class=\"mute\"><img src=\"/education/worldwar2/images/audio/button-volume-mute.gif\" alt=\"Mute\" /></a>";
	document.getElementById('jsControls').innerHTML = controlstr;
};
function showControls_video(type){

	var controlstr = "";	
	controlstr +="<a href=\"javascript:sendEvent('playpause')\" class=\"play\"><img src=\"/education/worldwar2/images/video/button-play.gif\" alt=\"Play/Pause\" /></a>";
	
	if(type!='noSound')
	{
		controlstr +="<a href=\"javascript:sendEvent('volume',currentVolume + 10)\"><img src=\"/education/worldwar2/images/video/button-volup.gif\" alt=\"Volume up\" /></a>";
		controlstr +="<a href=\"javascript:sendEvent('volume',currentVolume - 10)\"><img src=\"/education/worldwar2/images/video/button-voldown.gif\" alt=\"Volume down\" /></a>";																						
		controlstr +="<a href=\"javascript:sendEvent('volume',0)\"><img src=\"/education/worldwar2/images/video/button-mute.gif\" alt=\"Mute\" /></a>";	
	}
	else
	{
		controlstr +="<p class=\"noaudio\">This video does not contain audio.</p>";
	}
	document.getElementById('jsControls').innerHTML = controlstr;
};
function showControls_videoEnlarge(type){

	var controlstr = "";	
	controlstr +="<a href=\"javascript:sendEvent('playpause')\" class=\"play\"><img src=\"/education/worldwar2/images/video/button-play.gif\" alt=\"Play/Pause\" /></a>";
	
	if(type!='noSound')
	{
		controlstr +="<a href=\"javascript:sendEvent('volume',currentVolume + 10)\"><img src=\"/education/worldwar2/images/video/button-volup.gif\" alt=\"Volume up\" /></a>";
		controlstr +="<a href=\"javascript:sendEvent('volume',currentVolume - 10)\"><img src=\"/education/worldwar2/images/video/button-voldown.gif\" alt=\"Volume down\" /></a>";																						
		controlstr +="<a href=\"javascript:sendEvent('volume',0)\"><img src=\"/education/worldwar2/images/video/button-mute.gif\" alt=\"Mute\" /></a>";	
	}
	else
	{
		controlstr +="<span class=\"noaudio\">This video has no audio</span>";
	}
	document.getElementById('jsControls').innerHTML = controlstr;
};