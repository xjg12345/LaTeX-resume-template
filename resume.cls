\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/05/25 An elegant Résumé class]
\LoadClass[11pt]{article}

% disable indent globally
\setlength{\parindent}{0pt}
% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}
% use xifthen
\RequirePackage{xifthen}
% use fontawesome
\RequirePackage{fontawesome}
% use xcolor for customizing color
\RequirePackage[dvipsnames]{xcolor}
\definecolor{ResumePrimary}{HTML}{1F3A5F}
\definecolor{ResumeText}{HTML}{222222}
\AtBeginDocument{\color{ResumeText}}
% loading fonts
\RequirePackage{fontspec}
% Main document font
\setmainfont[
  Path = fonts/Main/ ,
  Extension = .otf ,
  UprightFont = *-regular ,
  BoldFont = *-bold ,
  ItalicFont = *-italic ,
  BoldItalicFont = *-bolditalic ,
  SmallCapsFont = Fontin-SmallCaps
]{texgyretermes}

\RequirePackage[
	a4paper,
	left=0.55in,
	right=0.55in,
	top=0.50in,
	bottom=0.5in,
	nohead
]{geometry}

\RequirePackage{titlesec}
\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
%\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.2em, leftmargin=1.5pc, itemsep=0.2em}
\setlist[enumerate]{topsep=0.2em, leftmargin=1.5pc, itemsep=0.2em}
\RequirePackage[super]{nth}

\titleformat{\section}         % Customise the \section command 
  {\large\heiti\color{ResumePrimary}\raggedright} % Make the \section headers \large,
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\color{ResumePrimary!70}\titlerule]                 % Inserts a horizontal line after the heading
\titlespacing*{\section}{0cm}{*0.8}{*0.6}

\titleformat{\subsection}
  {\normalsize\bfseries\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*0.6}{*0.3}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}
\newcommand{\datedline}[2]{%
  {\par #1 \hfill #2 \par}%
}

\newcommand{\name}[1]{
  \centerline{\heiti\fontsize{22pt}{26pt}\selectfont\color{ResumePrimary}#1}
  \vspace{0.8ex}
}
\newcommand{\contactInfo}[2]{
  \centerline{\sffamily\large{\ 手机：{#1} \textperiodcentered\ \ 邮箱：{#2}}} 
  \vspace{1.2ex}
}
\newcommand{\otherInfo}[4]{
  \centerline{\normalsize{\ {#1}}
    \ifthenelse{\isempty{#2}}%
      { } % if {#2} is empty
      {\textperiodcentered\ \ {#2} } % homepage, no space before \text...
    \ifthenelse{\isempty{#3}}%
      { } % if {#3} is empty
      {\textperiodcentered\ \ {#3} } % homepage, no space before \text...
    \ifthenelse{\isempty{#4}}%
      { } % if {#3} is empty
      {\textperiodcentered\ \ {#4} }
  }
  \vspace{0.4ex}
}

\newcommand{\yourphoto}[1]{
  \hfill \smash{\includegraphics[width={#1}\paperwidth]{images/you.jpg}}
}

\newcommand{\role}[2]{
  {\par \textit{#1} ~ #2 \par}
  \vspace{0.5ex}
}
