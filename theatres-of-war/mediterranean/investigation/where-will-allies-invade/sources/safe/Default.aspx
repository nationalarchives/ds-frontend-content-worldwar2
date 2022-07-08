<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="DC.identifier" scheme="DCTERMS.URI" content="http://www.nationalarchives.gov.uk/education/worldwar2/theatres-of-war/mediterranean/investigation/where-will-allies-invade/sources/safe/default.aspx" />

<meta name="DC.title" content="The National Archives | World War II | Mediterranean &amp; N.Africa | Where will the Allies invade? " />

<meta name="DC.rights" content="http://www.nationalarchives.gov.uk/legal/copyright.htm" />

<meta name="DC.publisher" content="The National Archives, Kew, Surrey TW9 4DU" />

<meta name="DC.creator" content="The National Archives" />

<meta name="DC.language" scheme="ISO 639-2/T" content="eng" />

<meta name="DC.format" scheme="DCTERMS.IMT" content="text/html" />

<meta name="DC.date.created" scheme="DCTERMS.W3CDTF" content="2007-7-09" />

<meta name="DC.date.modified" scheme="DCTERMS.W3CDTF" content="2007-7-09" />

<meta name="DC.coverage.temporal" content="1939-1945" /> 

<meta name="DC.coverage.spacial" content="England, USA, USSR, Germany, Japan, Pacific, Asia, Europe, North Africa, Mediterranean, Atlantic" />

<meta name="eGMS.subject.category" scheme="GCL" content="Libraries and archives" />

<meta name="eGMS.subject.keyword" content="World War 2, Second World War, Key stage 3, National Curriculum, Resources, sources, evidence, audio, film, photographs, September 1939, theatres of war, Western Europe, Eastern Europe, Atlantic, North Africa, Mediterranean, Pacific, Asia, animated maps" />

<meta name="keywords" content="World War 2, Second World War, Key stage 3, National Curriculum, resources, sources, evidence, audio, film, photographs, September 1939, theatres of war, Western Europe, Eastern Europe, Atlantic, North Africa, Mediterranean, Pacific, Asia, animated maps" />

<meta name="DC.description" content="Learn about the Second World War by using our animated maps and investigations containing original documents, film, photographs and audio." />

<meta name="description" content="Learn about the Second World War by using our animated maps and investigations containing original documents, film, photographs and audio" />

    <title>The National Archives Learning Curve | World War II | MED &amp; N.Africa 1940-1945 | Where will the Allies invade?</title>
    <link rel="stylesheet" href="/education/worldwar2/css/screen.css" media="screen" />
    <link rel="stylesheet" href="/education/worldwar2/css/print.css" media="print" />
    <link rel="stylesheet" href="/education/worldwar2/css/navigation.css" media="screen" />
    <link rel="stylesheet" href="/css/menusmicrosites/breadcrumb.css" type="text/css" />
    <script type="text/javascript" src="/education/worldwar2/scripts/swfobject.js"></script>
    <!--[if IE 6]><link rel="stylesheet" href="/education/worldwar2/css/ie6.css"><![endif]-->
    <!--[if IE 7]><link rel="stylesheet" href="/education/worldwar2/css/ie7.css"><![endif]-->
</head>
<body class="safeBody">
<form id="form1" runat="server">
<!-- NA own header code -->
<!--#include virtual="/includes/ww2-breadcrumb.inc" -->

<div id="page">
	<div id="header">
		<div id="header-content">
			<a href="http://www.nationalarchives.gov.uk"><img src="/education/worldwar2/images/logo-na.gif" width="87" height="78" alt="The National Archives" class="na-logo" /></a>		
			<a href="/education/worldwar2/default.htm"><img src="/education/worldwar2/images/logo-ww2.gif" alt="Learning Curve - World War II" width="269" height="78" class="logo" /></a>
			<div id="header-buttons">
				<a href="/education/worldwar2/default.htm" class="button"><img src="/education/worldwar2/images/buttons/home.gif" alt="Homepage" width="91" height="29" /></a>
				<a href="/education/worldwar2/index-of-resources" class="button"><img src="/education/worldwar2/images/buttons/home-index.gif" width="166" height="29" alt="Index of resources" /></a>
			</div>
		</div>
	</div>
	

	<div id="sub-header">
		<div id="sub-header-content">
			<div class="minHeight"></div>
			<h1>MED &amp; N.Africa 1940-1945: Where will the Allies Invade?</h1>
		</div>	
	</div>		
	
	<!-- Remove class="tabs" to hide the tabs from the page -->
	<!-- Remove class="show-pen" to hide the pen from the page -->
	<div id="container">
		<div>
			<div>	
				<!-- Remove class="show-glasses" to remove the glasses from the page -->
				<div id="container-4-safe">
		
			
				<div id="pageContentContainer">
				<a href="?noflash=true" title="Screen Readers Click Here" id="accessibleLink">Alternative Accessible Version</a>
					  <div id="safe">
					  
					  <div id="alternativeSafe">
					  <p>&nbsp;</p>
					   <h2>WHERE <u>DID</u> THE ALLIES INVADE?</h2>
					  <asp:PlaceHolder runat="server" ID="Instructions">					  
	            <p>
	           
	           Find out the full story by answering the following questions. The answers can be found by carefully studying the other documents and photographs in the source box. Your answers will provide the code to crack the safe!
	            </p>
				<p>
				<strong>Instructions</strong><br/>
				As you type in each name you will be asked for a letter code. This can be worked out by taking the letter asked for from your answer and turning it into a number. 
				
	            <%--<p>When you have answered the questions use the chart below to work out the number code to unlock the safe. Each letter of the alphabet represents a number as shown below.</p>

<p>If a letter’s number has 2 digits you will need to add these digits together to make a single digit answer for the code 
e.g. p = 16   add 1 + 6 = 7  so the Code for p is 7</p>--%>
				</p>
				<ul id="lettersNumbers" runat="server" visible="false">
				</ul>
				<div class="clear"></div>
				</asp:PlaceHolder>
	            
            	<table style="width: 100%" runat="server" id="formTable">
					<tr>
						<td style="width: 788px">1. Sir Henry Wilson's nickname was:</td>
						<td style="width: 219px">
						<asp:TextBox runat="server" id="answer1"></asp:TextBox>
						<asp:Label runat="server" ID="answer1Feedback" ForeColor="Red"></asp:Label>
						</td>
						<td rowspan="7"><img alt="Safe" src="/worldwar2/theatre-assets/mediterranean/where-will-allies-invade/safe/safe.jpg" /></td>
					</tr>
					<tr>
						<td style="width: 788px" id="letter1" runat="server">Code at letter</td>
						<td style="width: 219px">
						<asp:TextBox runat="server" id="code1" Width="49px">
						</asp:TextBox>
						<asp:Label runat="server" ID="code1Feedback" ForeColor="Red"></asp:Label>
						<asp:HiddenField runat="server" id="codeNum1" />
						</td>
					</tr>
					<tr>
						<td style="width: 788px">2. Major Martin's first name was:</td>
						<td style="width: 219px">
						<asp:TextBox runat="server" id="answer2"></asp:TextBox>
						<asp:Label runat="server" ID="answer2Feedback" ForeColor="Red"></asp:Label>
						</td>
					</tr>
					<tr>
						<td style="width: 788px" id="letter2" runat="server">Code at letter</td>
						<td style="width: 219px">
						<asp:TextBox runat="server" id="code2" Width="49px">
						</asp:TextBox>
						<asp:Label runat="server" ID="code2Feedback" ForeColor="Red"></asp:Label>
						<asp:HiddenField runat="server" id="codeNum2" />
						</td>
					</tr>
					<tr>
						<td style="width: 788px">3. Pam's aunt was called: </td>
						<td style="width: 219px">
						<asp:TextBox runat="server" id="answer3"></asp:TextBox>
						<asp:Label runat="server" ID="answer3Feedback" ForeColor="Red"></asp:Label>
						</td>
					</tr>
					<tr>
						<td style="width: 788px" id="letter3" runat="server">Code at letter</td>
						<td style="width: 219px">
						<asp:TextBox runat="server" id="code3" Width="49px">
						</asp:TextBox>
						<asp:Label runat="server" ID="code3Feedback" ForeColor="Red"></asp:Label>
						<asp:HiddenField runat="server" id="codeNum3" />
						
						</td>
					</tr>
					<tr>
						<td style="width: 788px">
						<asp:HyperLink runat="server" ID="btnReset"><img src="/education/worldwar2/images/buttons/btn-reset.gif" alt="Reset" /></asp:HyperLink></td>
						<td style="width: 219px">
						
						<asp:ImageButton runat="server" id="btnCrack" OnClick="btnCrack_Click" ImageUrl="/worldwar2/images/buttons/btn-open-safe.gif" AlternateText="Unlock the Safe"/></td>
					</tr>
				</table><br /><br />
	<h2 runat="server" id="openTitle" visible="false">Safe Opened!</h2>
							
								<div class="investigate-mini" id="hiddenDocument" runat="server" visible="false">
	            	<a href="docs/"><img src="/education/worldwar2/theatre-assets/mediterranean/where-will-allies-invade/safe/document.gif" alt="The Full Story" /></a>
									<div class="title"><a href="docs/">The Full Story</a></div>
								</div>	
								
								<div class="investigate-mini" id="hiddenAudio" runat="server" visible="false">
	            	<a href="audio/"><img src="/education/worldwar2/theatre-assets/mediterranean/where-will-allies-invade/safe/audio-mini.gif" alt="Audio Extract" /></a>
									<div class="title"><a href="audio/">Audio Extract</a></div>
								</div>	
								<div class="investigate-mini" id="hiddenFilm" runat="server" visible="false">
	            	<a href="film/"><img src="/education/worldwar2/theatre-assets/mediterranean/where-will-allies-invade/safe/film-mini.gif" alt="Film Clip" /></a>
									<div class="title"><a href="film/">Film Clip</a></div>
								</div>	

								<div class="clear"></div>
								</div>					
						
	            </div>			
	           
            </div>
            <asp:PlaceHolder runat="server" ID="enableFlash">
            <script type="text/javascript">
                var so = new SWFObject('/education/worldwar2/swf/mediterranean/safe.swf?2', 'safe', '770', '570', '7');              
               so.addParam("wmode", "transparent");
               so.addParam('menu','false');
               so.write('safe');
            </script>
            </asp:PlaceHolder>
            
             <asp:PlaceHolder runat="server" ID="enableFlash2" Visible="false">
            <script type="text/javascript">
                var so = new SWFObject('/education/worldwar2/swf/mediterranean/safe-large.swf', 'safe', '770', '570', '7');              
               so.addParam("wmode", "transparent");
               so.addParam('menu','false');
               so.write('safe');
            </script>
            </asp:PlaceHolder>
            
					<div class="clear"></div>
					</div>
					 
				
				</div>
				
			</div>
		</div>			
	</div>	
<div class="clear"></div>
	<div id="footerSafe">
		<div class="minHeight"></div>
		<div id="footer-content">
			<ul>
				<li><a href="/contact/contactform.asp?id=6" target="_blank">Contact Us</a></li>
				<li><a href="/education/worldwar2/credits/index.htm">Credits</a></li>
				
				<li><a href="/education/worldwar2/help/index.htm">Help</a></li>												
				<li><a href="/education/worldwar2/teachers/index.htm">Teacher's Notes</a></li>										
				<li class="last"><a href="/education/worldwar2/glossary/index.htm">Glossary</a></li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>

</form>
<!--#include virtual="/includes/menu/sdc.inc" -->
</body>


          



</html>
