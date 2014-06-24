#!/usr/bin/env ruby

DOCBOOK_ELEMENTS = ["/abbrev", "/abstract", "/accel", "/ackno", "/acronym", "/action", "/address", 
"/affiliation", "/alt", "/anchor", "/answer", "/appendix", "/appendixinfo", 
"/application", "/area", "/areaset", "/areaspec", "/arg", "/article/title", 
"/articleinfo", "/artpagenums", "/attribution", "/audiodata", "/audioobject", 
"/author", "/authorblurb", "/authorgroup", "/authorinitials", "/beginpage", 
"/bibliocoverage", "/bibliodiv", "/biblioentry", "/bibliography", 
"/bibliographyinfo", "/biblioid", "/bibliolist", "/bibliomisc", "/bibliomixed", 
"/bibliomset", "/biblioref", "/bibliorelation", "/biblioset", "/bibliosource", 
"/blockinfo", "/blockquote[descendant::para]", "/book", "/bookinfo", "/bridgehead", "/callout", 
"/calloutlist", "/caption/para", "/caution", "/chapter", "/chapterinfo", "/citation", 
"/citebiblioid", "/citerefentry", "/citetitle", "/city", "/classname", 
"/classsynopsis", "/classsynopsisinfo", "/cmdsynopsis", "/co", "/code", "/col", 
"/colgroup", "/collab", "/collabname", "/colophon", "/colspec", "/command", 
"/computeroutput", "/confdates", "/confgroup", "/confnum", "/confsponsor", 
"/conftitle", "/constant", "/constraint", "/constraintdef", 
"/constructorsynopsis", "/contractnum", "/contractsponsor", "/contrib", 
"/copyright", "/coref", "/corpauthor", "/corpcredit", "/corpname", "/country", 
"/database", "/date", "/dedication", "/destructorsynopsis", "/edition", "/editor", 
"/email", "/emphasis", "/entry", "/entrytbl", "/envar", "/epigraph", "/equation", 
"/errorcode", "/errorname", "/errortext", "/errortype", "/example", 
"/exceptionname", "/fax", "/fieldsynopsis", "/figure[title]", "/filename", "/firstname", 
"/firstterm", "/footnote", "/footnoteref", "/foreignphrase", "/formalpara", 
"/funcdef", "/funcparams", "/funcprototype", "/funcsynopsis", "/funcsynopsisinfo", 
"/function", "/glossary", "/glossaryinfo", "/glossdef", "/glossdiv", "/glossentry", 
"/glosslist", "/glosssee", "/glossseealso", "/glossterm", "/graphic", "/graphicco", 
"/group", "/guibutton", "/guiicon", "/guilabel", "/guimenu", "/guimenuitem", 
"/guisubmenu", "/hardware", "/highlights", "/holder", "/honorific",
"/imagedata", "/imageobject", "/imageobjectco", "/important", "/index", 
"/indexdiv", "/indexentry", "/indexinfo", "/indexterm", "/informalequation", 
"/informalexample", "/informalfigure", "/informaltable", "/initializer", 
"/inlineequation", "/inlinegraphic", "/inlinemediaobject", "/interface", 
"/interfacename", "/invpartnumber", "/isbn", "/issn", "/issuenum", "/itemizedlist", 
"/itermset", "/jobtitle", "/keycap", "/keycode", "/keycombo", "/keysym", "/keyword", 
"/keywordset", "/label", "/legalnotice", "/lhs", "/lineage", "/lineannotation", 
"/link", "/listitem", "/literal", "/literallayout", "/lot", "/lotentry", 
"/manvolnum", "/markup", "/mathphrase", "/medialabel", "/mediaobject", 
"/mediaobjectco", "/member", "/menuchoice", "/methodname", "/methodparam", 
"/methodsynopsis", "/modespec", "/modifier", "/mousebutton", "/msg", 
"/msgaud", "/msgentry", "/msgexplan", "/msginfo", "/msglevel", "/msgmain", 
"/msgorig", "/msgrel", "/msgset", "/msgsub", "/msgtext", "/nonterminal", "/note", 
"/objectinfo", "/olink", "/ooclass", "/ooexception", "/oointerface", "/option", 
"/optional", "/orderedlist", "/orgdiv", "/orgname", "/otheraddr", "/othercredit", 
"/othername", "/package", "/pagenums", "/para", "/paramdef", "/parameter", "/part", 
"/partinfo", "/partintro", "/personblurb", "/personname", "/phone", "/phrase", 
"/pob", "/postcode", "/preface", "/prefaceinfo", "/primary", "/primaryie", 
"/printhistory", "/procedure", "/production", "/productionrecap", 
"/productionset", "/productname", "/productnumber", "/programlisting", 
"/programlistingco", "/prompt", "/property", "/pubdate", "/publisher", 
"/publishername", "/pubsnumber", "/qandadiv", "/qandaentry", "/qandaset", 
"/question", "/quote", "/refclass", "/refdescriptor", "/refentry", "/refentryinfo", 
"/refentrytitle", "/reference", "/referenceinfo", "/refmeta", "/refmiscinfo", 
"/refname", "/refnamediv", "/refpurpose", "/refsect1", "/refsect1info", 
"/refsect2", "/refsect2info", "/refsect3", "/refsect3info", "/refsection", 
"/refsectioninfo", "/refsynopsisdiv", "/refsynopsisdivinfo", "/releaseinfo", 
"/remark", "/replaceable", "/returnvalue", "/revdescription", "/revhistory", 
"/revision", "/revnumber", "/revremark", "/rhs", "/row", "/sbr", "/screen", 
"/screenco", "/screeninfo", "/screenshot", "/secondary", "/secondaryie", "/sect1", 
"/sect1info", "/sect2", "/sect2info", "/sect3", "/sect3info", "/sect4", 
"/sect4info", "/sect5", "/sect5info", "/section", "/sectioninfo", "/see", 
"/seealso", "/seealsoie", "/seeie", "/seg", "/seglistitem", "/segmentedlist", 
"/segtitle", "/seriesvolnums", "/set", "/setindex", "/setindexinfo", "/setinfo", 
"/sgmltag", "/shortaffil", "/shortcut", "/sidebar", "/sidebarinfo", "/simpara", 
"/simplelist", "/simplemsgentry", "/simplesect", "/spanspec", "/state", "/step", 
"/stepalternatives", "/street", "/structfield", "/structname", "/subject", 
"/subjectset", "/subjectterm", "/subscript", "/substeps", "/subtitle", 
"/superscript", "/surname", "/symbol", "/synopfragment", 
"/synopfragmentref", "/synopsis", "/systemitem", "/table[title]", "/task", 
"//taskprerequisites", "/taskrelated", "/tasksummary", "/tbody", "/td", "/term", 
"/termdef", "/tertiary", "/tertiaryie", "/textdata", "/textobject", "/tfoot", 
"/tgroup", "/th", "/thead", "/tip", "/title", "/titleabbrev", "/toc", "/tocback", 
"/tocchap", "/tocentry", "/tocfront", "/toclevel1", "/toclevel2", "/toclevel3", 
"/toclevel4", "/toclevel5", "/tocpart", "/token", "/tr", "/trademark", "/type", 
"/ulink", "/uri", "/userinput", "/varargs", "/variablelist", "/varlistentry", 
"/varname", "/videodata", "/videoobject", "/void", "/volumenum", "/warning", 
"/wordasword", "/xref", "/year"]
