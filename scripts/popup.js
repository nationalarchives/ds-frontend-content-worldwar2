function popitup() {
	newwindow=window.open('transcript.htm','nationalarchivespopup','width=625,height=600,scrollbars=yes,toolbar=no,menubar=no,status=no');
	if (window.focus) {newwindow.focus()}
	return false;
}
function popitup_other(pageurl) {
	finalurl=pageurl+'transcript.htm';
	newwindow=window.open(finalurl,'nationalarchivespopup','width=625,height=600,scrollbars=yes,toolbar=no,menubar=no,status=no');
	if (window.focus) {newwindow.focus()}
	return false;
}


function zoompopup(zoomurl) {
	newwindow2=window.open(zoomurl,'nationalarchiveszoompopup','width=600,height=455,resizable=yes,scrollbars=no,toolbar=no,menubar=no,status=no');
	if (window.focus) {newwindow2.focus()}
	return false;
}
