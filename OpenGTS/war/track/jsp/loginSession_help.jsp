<%@ taglib uri="./Track" prefix="gts" %>
<%@ page isELIgnored="true" contentType="text/html; charset=UTF-8" %>
<%
//response.setContentType("text/html; charset=UTF-8");
//response.setCharacterEncoding("UTF-8");
response.setHeader("CACHE-CONTROL", "NO-CACHE");
response.setHeader("PRAGMA"       , "NO-CACHE");
response.setHeader("P3P"          , "CP='IDC DSP COR ADM DEVi TAIi PSA PSD IVAi IVDi CONi HIS OUR IND CNT'");
response.setDateHeader("EXPIRES"  , 0         );
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- <!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> -->
<html xmlns='http://www.w3.org/1999/xhtml' xmlns:v='urn:schemas-microsoft-com:vml'>
<!-- jsp/loginSession.jsp: <gts:var>${version} [${privateLabelName}]</gts:var>
  =======================================================================================
  Copyright(C) 2007-2014 GeoTelematic Solutions, Inc., All rights reserved
  Project: OpenGTS - Open GPS Tracking System [http://www.opengts.org]
  =======================================================================================
-->
<gts:var ifKey="notDefined" value="true">
<!--
  Note: 
    - This section will not appear in the final generated HTML
    - To avoid any confusion the JSP interpreter may possibly have, all tags within this
      commented section are delimited with "[" and "]".
  =======================================================================================
  Tag definitions:
    gts:var   
    - This tag may be used to conditionally include sections of HTML which will be presented 
      to the client browser.  Additionally, it can replace certain ${key} references with their
      current replacement value.
      Here are some example uses:
        [gts:var]${copyright}[/gts:var]  
            - This will be replaces with the value of the [Copyright] tag in the 'private.xml' 
              file.  See 'RequestProperties' for a list of other possible replacement variables.
        [gts:var ifKey="isLoggedIn" value="true"]some html[/gts:var]
            - This will conditionally include the text inside the tags if the key specified
              on the "ifKey" attributes matches the value specified by the "value" attributes.
              See 'RequestProperties' for a list of other possible property keys.
    gts:track 
    - This tag will include specific HTML sections within this JSP file.  The current list of
      sections include:
        [gts:track section="stylesheet"/]
            - This includes any specific custom stylesheet information for the current page
              to be displayed
        [gts:track section="javascript"/]
            - This includes any specific custom JavaScript information for the current page
              to be displayed
        [gts:track section='body.onload'/]
            - This returns a JavaScript function name to be called then this page is loaded.
              It is used in the "Onload='...'" attribute on the 'Body' tag.
        [gts:track section='body.onunload'/]
            - This returns a JavaScript function name to be called then this page is unloaded.
              It is used in the "Onunload='...'" attribute on the 'Body' tag.
        [gts:track section='content.class.table'/]
            - This returns the style class name id for the table which contains the 'content'
              menubar/body/message information for this page.
        [gts:track section='content.class.cell'/]
            - This returns the style class name id for the table cell (<td class='...'>) which 
              contains the 'content' information for this page.
        [gts:track section='content.class.message'/]
            - This returns the style class name id for the table row 'message' which is 
              displayed at the bottom of the table.
        [gts:track section="content.menubar"/]
            - This will include the MenuBar html if the content class is 'contentTable'/'contentMapTable'.
        [gts:track section="content.body"/]
            - This includes the 'content' body (menu, map, reports, dialogs, etc).
        [gts:track section="content.message"/]
            - This includes any message that should be displayed for the user at the bottom
              of the content window.
  =======================================================================================
  Change History:
   2008/07/21  Martin D. Flynn
      -Extracted from PageDecorations section of 'private.xml'
  =======================================================================================
-->
</gts:var>

<!-- Head -->
<head>

  <!-- meta -->
  <gts:var>
  <meta name="author" content="GeoTelematic Solutions, Inc."/>
  <meta http-equiv="content-type" content='text/html; charset=UTF-8'/>
  <meta http-equiv="cache-control" content='no-cache'/>
  <meta http-equiv="pragma" content="no-cache"/>
  <meta http-equiv="expires" content="0"/>
  <meta name="copyright" content="${copyright}"/>
  <meta name="robots" content="none"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  </gts:var>

  <!-- page title -->
  <gts:var>
  <title>${pageTitle}</title>
  </gts:var>

  <!-- default style -->
  <link rel='stylesheet' type='text/css' href='css/General.css'/>
  <link rel='stylesheet' type='text/css' href='css/MenuBar.css'/>
  <link rel='stylesheet' type='text/css' href='css/Controls.css'/>

  <!-- custom overrides style -->
  <link rel='stylesheet' type='text/css' href='custom/General.css'/>
  <link rel='stylesheet' type='text/css' href='custom/MenuBar.css'/>
  <link rel='stylesheet' type='text/css' href='custom/Controls.css'/>

  <!-- javascript -->
  <gts:track section="javascript"/>
  <script>
   function getFirstBrowserLanguage() {
	   var nav = window.navigator;
	   var browserLanguagePropertyKeys = ['language', 'browserLanguage', 'systemLanguage', 'userLanguage'];
	   var i;
	   var language;
	   if (Array.isArray(nav.languages)) {
		 for (i = 0; i < nav.languages.length; i++) {
		   language = nav.languages[i];
		   if (language && language.length) {
			 return language;
		   }
		 }
	   }
	   for (i = 0; i < browserLanguagePropertyKeys.length; i++) {
		 language = nav[browserLanguagePropertyKeys[i]];
		 if (language && language.length) {
		   return language;
		 }
	   }
	   return null;
   }
  </script>
  <!-- local style -->
  <style type="text/css">
    BODY { 
<gts:var if="isLocaleRTL" value="true">
        direction: RTL;
</gts:var>
    }
    TD.titleText {
        font-family: arial,verdana,sans-serif;
        font-size: 18pt;
        font-weight: bold;
        text-align: center;
        color: #000000;
    }
  </style>

  <!-- page specific style -->
  <gts:track section="stylesheet"/>

  <!-- custom override style -->
  <link rel='stylesheet' type='text/css' href='custom/Custom.css'/>

</head>

<!-- ======================================================================================= -->

<body onload="<gts:track section='body.onload'/>" onunload="<gts:track section='body.onunload'/>">

<table width='100%' height='100%' border='0' cellspacing='0' cellpadding='0'>
<tbody>

  <!-- Begin Page header/navigation ======================================== -->
  <tr>
  <td>
     <table width="100%" border="0" cellpadding="0" cellspacing="0">
     <tbody>
     <tr>
       <td class="navBar" nowrap align="left">&nbsp;<gts:var ifKey="isLoggedIn" value="true"><i>${i18n.Account}:</i> ${accountDesc} (${userDesc})</gts:var></td>
       <td class="navBar" nowrap style="text-align:left;padding-left:20px"><div id="helpdiv"><i><a href="https://www.flytrace.com/documents/quick-start-guide/" style="color:yellow">Need help configuring your SmartPhone?</a></i></div></td>
       <td class="navBar" nowrap align="right" width="100%"><gts:var>&nbsp;${navigation}&nbsp;&nbsp;</gts:var></td>
     </tr>
     </tbody>
     </table>
  </td>
  </tr>
  <!-- End Page header/navigation ======================================== -->

  <!-- Begin Page contents ======================================== -->
  <tr height="100%">
  <td>
    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
    <tbody>
    <tr>
        <td valign='top' align='center' height='100%'>
           <table class="<gts:track section='content.class.table'/>" cellspacing='0' cellpadding='0' border='0'>
           <tbody>
              <tr height='100%'>
                <td class="<gts:track section='content.class.cell'/>">
                    <gts:track section="content.body"/>
                </td>
              </tr>
              <tr>
                <td id="<gts:track section='content.id.message'/>" class="<gts:track section='content.class.message'/>">
                    <gts:track section="content.message"/>
                </td>
              </tr>
           </tbody>
           </table>
        </td>
    </tr>
    </tbody>
    </table>
  </td>
  </tr>
  <!-- End Page contents ======================================== -->

  <!-- Begin Page footer ======================================== -->

  <!-- End Page footer ======================================== -->

</tbody>
</table>
<script>
  var langHelpDivHtml = ["<i><a href='https://www.flytrace.com/documents/quick-start-guide/' style='color:yellow'>Comment configurer un SmartPhone pour Live Tracking?</a></i>", "<i><a href='https://www.flytrace.com/documents/quick-start-guide/' style='color:yellow'>Как настроить смартфон для Live Tracking?</a></i>"];
  var lang;
  if(typeof TEXT_UNAVAILABLE === 'undefined') lang=getFirstBrowserLanguage();
  else if(TEXT_UNAVAILABLE!=null) {
   if(TEXT_UNAVAILABLE === "Indisponible") lang="fr";
   else if(TEXT_UNAVAILABLE === "нет") lang="ru";
  } else lang=getFirstBrowserLanguage();
  var helpDiv = document.getElementById("helpdiv");
  if(lang==="fr" || lang==="fr-fr") helpDiv.innerHTML=langHelpDivHtml[0];
  else if(lang==="ru" || lang==="ru-ru") helpDiv.innerHTML=langHelpDivHtml[1];
</script>
</body>

<!-- ======================================================================================= -->

</html>
