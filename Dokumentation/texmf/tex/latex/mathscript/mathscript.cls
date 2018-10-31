\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{mathscript}[2018/08/05 mathscript]

%programming related packages
\RequirePackage{zref-base}
\RequirePackage{etoolbox}
\RequirePackage{xparse}%better macros
\RequirePackage{calc}
\RequirePackage{xstring}
\RequirePackage{xkeyval}

\DeclareOptionX*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptionsX
\LoadClass[ngerman,a4paper]{article}

\RequirePackage{ifpdf,ifluatex}

%decent space; change explicitly the space between header and content and footer and content
\RequirePackage[left=2.1cm,right=3.1cm,bottom=3cm,footskip=0.75cm,headsep=0.5cm]{geometry}
\RequirePackage{babel}


\ifpdf
	\ifluatex
		%new lualatex needs explicit fontspec to draw properly e.g. german umlauts
		\RequirePackage{fontspec}
		%\RequirePackage{lua-visual-debug} %for debugging
	\else
		%old pdflatex needs explicitly utf-8-support
		\RequirePackage[utf8]{inputenc}
		\RequirePackage{chngcntr}
		\RequirePackage{eufrak}
	\fi
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Layout related packages
\RequirePackage{parskip}  	%split paragraphs by vspace instead of intendations
\RequirePackage{fancyhdr} 	%customize header / footer
\RequirePackage{titlesec} 	%customize titles
\RequirePackage{tocloft}	%customize toc

%tabulars
\RequirePackage{tabularx} 	%tabularx-environment (explicitly set width of columns)
\RequirePackage{longtable} %Tabellen mit Seitenumbrüchen
\RequirePackage{multirow}
\RequirePackage{booktabs}	%improved rules
\usepackage{colortbl} %einfärben von Spalten, Zeilen und Zellen

\RequirePackage[title,titletoc]{appendix}

\RequirePackage{environ}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Math related packages
%basic ams-math and enhancments
\RequirePackage{amsmath,amssymb,amsfonts,mathtools}

%add some font-related stuff
\RequirePackage{latexsym}
\RequirePackage{marvosym} 	%lightning (contradiction)
\RequirePackage{stmaryrd} 	%Lightning symbol
\RequirePackage{bbm} 		%unitary matrix
\RequirePackage{wasysym}	%add some symbols
\RequirePackage[bb=boondox]{mathalfa} %special zero using \mathbb{0}

%further support for different equation setting
\RequirePackage{cancel}
\RequirePackage{xfrac}		%sfrac -> fractions e.g. 3/4
\RequirePackage{nicefrac}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Graphics-related packages
\RequirePackage[table,dvipsnames]{xcolor}
\RequirePackage{graphicx}
\RequirePackage{tcolorbox}

\RequirePackage{pgfplots}
\pgfplotsset{compat=1.10}
\usepgfplotslibrary{fillbetween}
\RequirePackage{pgf}
\RequirePackage{tikz}
\usetikzlibrary{patterns,arrows,calc,decorations.pathmorphing,backgrounds, positioning,fit,petri,decorations.fractals}
\usetikzlibrary{matrix}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Text-related packages
%increase line spacing
\RequirePackage[onehalfspacing]{setspace} %increase row-space
\RequirePackage{ulem} 		%better underlines
\RequirePackage{marginnote}	%notes at the edge

%enumeration
\RequirePackage{enumerate}
\RequirePackage{enumitem} 		%customize label

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Pakete für Programmierung

\RequirePackage{lmodern}
\RequirePackage{listings}

%Konfiguration dazu
\definecolor{lightlightgray}{rgb}{0.95,0.95,0.95}
\definecolor{lila}{rgb}{0.8,0,0.8}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mygreen}{rgb}{0,0.8,0.26}

\lstset{language=[95]Fortran,
  basicstyle=\ttfamily,
  keywordstyle=\color{lila},
  commentstyle=\color{lightgray},
  morecomment=[l]{!\ },% Comment only with space after !
  stringstyle=\color{mygreen}\ttfamily,
  backgroundcolor=\color{white},
  showstringspaces=false,
  numbers=left,
  numbersep=10pt,
  numberstyle=\color{mygray}\ttfamily,
  identifierstyle=\color{blue},
  xleftmargin=.2\textwidth, 
  xrightmargin=.2\textwidth,
  escapechar=\%
}

\RequirePackage[unicode,bookmarks=true]{hyperref}
\hypersetup{
	colorlinks,
	citecolor=green,
	filecolor=green,
	linkcolor=blue,
	urlcolor=blue
}
\RequirePackage{cleveref}
\RequirePackage{bookmark}	%pdf-bookmarks

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 						End Packages							%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Additional features

%some minor commands
\newcommand*{\rom}[1]{\expandafter\@slowromancap\romannumeral #1@} %print integer in capital roman letters
\newcommand{\leqnos}{\tagsleft@true\let\veqno\@@leqno}	%set equation numbering left / right
\newcommand{\reqnos}{\tagsleft@false\let\veqno\@@eqno}

%declare a new label; store current chapter number
\newcommand*{\proplbl}[1]{%
	\@bsphack
	\begingroup
	\label{#1}%
	\zref@setcurrent{default}{\c@chapter}%
	\zref@wrapper@immediate{%
		\zref@labelbyprops{#1@chapter}{default}%
	}
	\endgroup
	\@esphack
}

%remove skip before / after amsmath-environments: default to 0pt. 1star: just before the environment, 2stars: just after the environment, no star: both
\NewDocumentCommand{\zeroAmsmathAlignVSpaces}{s s O{0 pt} O{0 pt}}{%
	\IfBooleanTF{#1}%
	{%
		\IfBooleanTF{#2}%
		{\setlength{\belowdisplayskip}{#4}}%
		{\setlength{\abovedisplayskip}{#3}}%
	}%
	{%
		\setlength{\abovedisplayskip}{#3}%
		\setlength{\belowdisplayskip}{#4}%
	}%
}

\NewDocumentCommand{\itemEq}{s m}{%
	\begingroup%
	\setlength{\abovedisplayskip}{\dimexpr -\parskip + 1pt\relax}%
	\setlength{\belowdisplayskip}{0pt}%
	\IfBooleanTF{#1}%
	{\parbox[c]{\linewidth}{\begin{flalign*}#2&&\end{flalign*}}}%}
	{\parbox[c]{\linewidth}{\begin{flalign}#2&&\end{flalign}}}%}
	\endgroup% 
}

%macro that defines the spacing between bracket and content of a matrix
\NewDocumentCommand{\matrixBracketSpacing}{}{\mspace{4.0mu plus 3.0mu minus 1.0mu}}
%macro width customized spacing between bracktes / content, lineheight and columnwidth
\newenvironment{henrysmatrix}{%
	\renewcommand*{\arraystretch}{1.2}
	\setlength\arraycolsep{5pt}
	\left(\matrixBracketSpacing
	\begin{matrix}
	}{%
	\end{matrix}
	\matrixBracketSpacing\right)
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%Settings

\pdfstringdefDisableCommands{%
	\def\\{}%
	\def\texttt#1{<#1>}%
	\def\mathbb#1{<#1>}%
}
\reqnos

%Headings
\titlelabel{\thetitle.\quad}%. behind section/sub... (3. instead of 3)
\renewcommand{\thepart}{\Alph{part}}
%italic chapters (due to titlesec package some more stuff)
%\titleformat{command}[shape]{format}{label}{sep}{before-code}[after-code]
\titleformat{\chapter}[display]{\bfseries}{\Large\chaptername\;\thechapter}{-5pt}{\huge\bfseries\itshape}
\titlespacing{\chapter}{0pt}{0pt}{10pt}
\titleformat{\section}[hang]{\bfseries\Large}{\thesection.}{8pt}{\Large\bfseries}
%\titlespacing{command}{left}{before-sep}{after-sep}
\titlespacing{\subsection}{0pt}{0pt}{5pt}

% Add new page-style (just footer), patch \chapter command to use this page style
\fancypagestyle{plainChapter}{%
	\fancyhf{}%
	\fancyfoot[C]{\thepage}%
	\renewcommand{\headrulewidth}{0pt}% Line at the header invisible
	\renewcommand{\footrulewidth}{0.4pt}% Line at the footer visible
}
%changes pagestyle; instead of empty page the normal footer is printed
\patchcmd{\chapter}{\thispagestyle{plain}}{\thispagestyle{plainChapter}}{}{}
%usually, after a new chapter the section counter needs to be reset manually. Instead, automatic reset

\pagestyle{fancy}
\pagenumbering{arabic}
%remember chapter-title in \leftmark and \rightmark
\renewcommand{\chaptermark}[1]{%
	\markboth{\chaptername
		\ \thechapter:\ #1}{}}
%remember section title in \leftmark
\renewcommand{\sectionmark}[1]{%
	\markright{\thesection.\ #1}{}}

%remove page number from part{}-pages
\let\sv@endpart\@endpart
\def\@endpart{\thispagestyle{empty}\sv@endpart}

%change header:
\renewcommand{\headrulewidth}{0.75pt}
\renewcommand{\footrulewidth}{0.3pt}
\lhead{\rightmark}%left: section-number. section-title
\rhead{\leftmark}%right: chapter chapternumber: chapter-title

%change numbering of equations to be section by section
\counterwithout{equation}{section}

%appendix:
\let\old@appendix\appendix
\def\appendix{%
	\old@appendix%
	\patchcmd{\chapter}{\thispagestyle{plainChapter}}{\thispagestyle{fancy}}{}{}%
	\renewcommand{\chaptername}{Anhang}%
	\renewcommand{\thesection}{\Alph{chapter}.\arabic{section}}%
	\titleformat{\chapter}[hang]{\bfseries}{\LARGE\chaptername\ \thechapter:}{0.5em}{\LARGE\bfseries}%
	\titlespacing{\chapter}{0pt}{-0.75cm}{0pt}%
}

\endinput
