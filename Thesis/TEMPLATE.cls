\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TEMPLATE}

%=================== DOCUMENT FOUNDATION ===================
\LoadClass[12pt, a4paper, oneside]{report}
\usepackage{fontspec}
\usepackage[top=4cm, left=4cm, bottom=3cm, right=3cm]{geometry}
\usepackage{polyglossia}
\setmainlanguage{english}
\setotherlanguage{arabic}
\setmainfont{Times New Roman}
\newfontfamily\arabicfont[Script=Arabic, Scale=1.2]{Amiri}
\usepackage[pdfauthor={Qoqokoi}, bookmarksnumbered, pdfborder={0 0 0}]{hyperref}

%===================== CHAPTER & SECTION CONFIGURATION ===============
\usepackage{titlesec}
\usepackage{titletoc}

\renewcommand{\thechapter}{\Roman{chapter}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}

\AtBeginDocument{
	\titleformat{name=\chapter,numberless}[display]
	{\normalfont\bfseries\centering\fontsize{14pt}{16pt}\selectfont}
	{}
	{0pt}
	{\MakeUppercase}
	\titlespacing{name=\chapter,numberless}{0pt}{-38pt}{10pt}
	
	\titleformat{\chapter}[display]
	{\normalfont\bfseries\centering\fontsize{14pt}{16pt}\selectfont}
	{\MakeUppercase{\chaptertitlename}\ \thechapter}
	{5pt}
	{}
	\titlespacing{\chapter}{0pt}{-15pt}{10pt}
	
	\titleformat{\section}[hang]
	{\normalfont\bfseries}
	{\thesection}
	{0.5em}
	{}
	\titlespacing{\section}{0.7cm}{10pt}{7pt}
	
	\titleformat{\subsection}[hang]
	{\normalfont\bfseries}
	{\thesubsection}
	{0.5em}
	{}
	\titlespacing{\subsection}{1.4cm}{10pt}{7pt}
	
	% =================== TOC CONFIGURATION ===================
	\contentsmargin{2.5em}
	
	\titlecontents{chapter}[1.5em]
	{\bfseries}{\MakeUppercase{\chaptername~\thecontentslabel:}\hspace{1em}}{}{\dotfill\contentspage}
	
	\titlecontents{section}[3em]
	{}{\thecontentslabel\enspace}{}{\dotfill\contentspage}
	
	\titlecontents{subsection}[4.5em]
	{}{\thecontentslabel\enspace}{}{\dotfill\contentspage}
}
% =================== VISUAL CONTENT ===================
\usepackage{setspace}
\usepackage{graphicx}
\usepackage{float}
\usepackage{amsmath}
\usepackage{booktabs}
\usepackage{longtable}
\usepackage{multirow}
\usepackage{subcaption}
\usepackage[table]{xcolor}
\usepackage{ragged2e}
\usepackage{indentfirst}
\usepackage{lipsum}
\usepackage{xstring}
%==================== ENUMERATE ====================
\usepackage{enumitem}

\newlist{secenumerate}{enumerate}{3}
\setlist[secenumerate,1]{label=\arabic*.,leftmargin=3em}
\setlist[secenumerate,2]{label=(\alph*),leftmargin=*}

\newlist{subsecenumerate}{enumerate}{3}
\setlist[subsecenumerate,1]{label=\Alph*.,leftmargin=5em}
\setlist[subsecenumerate,2]{label=(\roman*),leftmargin=*}

\newlist{sysenumerate}{enumerate}{3}
\setlist[sysenumerate,1]{label=\arabic*.,leftmargin=3em}
\setlist[sysenumerate,2]{label=\thesysenumeratei\arabic*,leftmargin=*}
\setlist[sysenumerate,3]{label=\thesysenumerateii.\arabic*,leftmargin=*}

% =================== PREFERENCES ===================
\usepackage{csquotes}
\usepackage[style=chicago-notes, backend=biber]{biblatex}

%=================== COSTUMIZATION ==========================
\addto\captionsenglish{
	\renewcommand{\chaptername}{Chapter}
	\renewcommand{\bibname}{BIBLIOGRAPHY}
	\renewcommand{\contentsname}{Table of Contents}
	\renewcommand{\listfigurename}{List of Figures}
	\renewcommand{\listtablename}{List of Tables}
}

\justifying
\setlength{\parindent}{1.27cm}

\endinput
































%made by: Muhammad Dafi Al Haq												