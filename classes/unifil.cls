%%%%%%%%%%%%%%%%
% Classe que define as regras ABNT no padrão UniFil
% 2015/09/15 v0.5 Modelo do Centro Universitario Filadelfia baseado em abntex2
%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{./classes/unifil}

\DeclareOption*{
  \PassOptionsToClass{
    12pt,
    openright,
    oneside,
    a4paper,
    english,
    brazil,
    chapter=TITLE, % títulos de capítulos convertidos em letras maiúsculas
    %section=TITLE, % títulos de seções convertidos em letras maiúsculas
    %subsection=TITLE, % títulos de subseções convertidos em letras maiúsculas
    %subsubsection=TITLE, % títulos de subsubseções em letras maiúsculas
    %subsubsubsection=TITLE % títulos de subsubsubseções em letras maiúsculas
  }{abntex2}
}

\ProcessOptions\relax
\LoadClass{abntex2}

\RequirePackage[inner=30mm,outer=20mm,top=30mm,bottom=20mm]{geometry}
\RequirePackage{indentfirst}
\RequirePackage{parskip}
\RequirePackage[utf8]{inputenc}
\RequirePackage{textcomp}
\RequirePackage[brazil]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{helvet}
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage[intlimits]{amsmath}
\RequirePackage{chemfig}
\RequirePackage{lipsum}
\RequirePackage{multirow}
\RequirePackage[subentrycounter,seeautonumberlist]{glossaries}
\RequirePackage[brazilian,hyperpageref]{backref}
\RequirePackage[alf]{abntex2cite}

%%%%%%%%%%%%%%%
\renewcommand*\contentsname{Summary}
\renewcommand{\ABNTEXchapterfontsize}{\Large}

\setlrmarginsandblock{3cm}{2cm}{*}
\setulmarginsandblock{3cm}{2cm}{*}
\checkandfixthelayout

\setsecheadstyle{\ABNTEXchapterfont\ABNTEXsectionfontsize\MakeUppercase}
\setlength{\parindent}{1.5cm}

\makeatother
  \hypersetup{
    pdftitle={Hibridização do algoritmo PSO aplicado ao problema FJSP},
    pdfauthor={Matheus Muriel},
    pdfcreator={LaTeX with abnTeX2},
    colorlinks=true,
    linkcolor=black,
    citecolor=black,
    urlcolor=black,
    pdfkeywords={PSO}{FJSP}{Otimização por Algoritmo de Enxame de Partículas}{Inteligencia Populacional},
    pdfsubject={Ciência da Computação},
  }
\makeatletter

\renewcommand{\familydefault}{\sfdefault}

% Comandos customizados %
\newcommand{\code}[1]{\texttt{#1}}

% Margens Esquerda e Direita %
\setlength\absleftindent{0cm}
\setlength\absrightindent{0cm}
  
% Fonte do Ambiente %
\abstracttextfont{\normalfont\normalsize}

% Intentação e Espaçamento Entre Parágrafos %
\setlength{\parindent}{1.5cm}
\setlength{\absparindent}{1.5cm}
\setlength{\absparsep}{18pt}  

% Criando Lista de Quadros %
\newcommand{\quadroname}{Quadro}
\newcommand{\listofquadrosname}{Lista de quadros}

\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}

% Configurações para atender às regras da ABNT %
\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space} 
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}
  
\makeatletter
\newcommand\footnoteref[1]{\protected@xdef\@thefnmark{\ref{#1}}\@footnotemark}
\makeatother

\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \begin{figure}[htb]
      \centering
      \includegraphics[scale=0.35]{assets/logo-unifil.pdf}
    \end{figure}
    
    \begin{center}
      \line(1,0){400}
      \par\vspace*{1cm}
      {\ABNTEXchapterfont\MakeTextUppercase{\imprimirpreambulo}}
      \par
      \vspace{3cm}
      {\ABNTEXchapterfont\MakeTextUppercase{\imprimirautor}}
      \par
      \vspace{3cm}
      \ABNTEXchapterfont\bfseries\large\MakeTextUppercase{\imprimirtitulo}
      \vfill
      \par
      \vspace*{1cm}
      \line(1,0){400}
      \par
      \large\imprimirlocal
      \par
      \large\imprimirdata
    \end{center}
  \end{capa}
}

\definecolor{mygreen}{rgb}{0,0.6,0}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mymauve}{rgb}{0.58,0,0.82}

\lstset{
  backgroundcolor=\color{white},   % choose the background color; you must add \usepackage{color} or \usepackage{xcolor}
  basicstyle=\footnotesize,        % the size of the fonts that are used for the code
  breakatwhitespace=false,         % sets if automatic breaks should only happen at whitespace
  breaklines=true,                 % sets automatic line breaking
  captionpos=b,                    % sets the caption-position to bottom
  commentstyle=\color{mygreen},    % comment style
  deletekeywords={...},            % if you want to delete keywords from the given language
  escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
  extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
  frame=single,                    % adds a frame around the code
  keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
  keywordstyle=\color{blue},       % keyword style
  language=Python,                 % the language of the code
  morekeywords={*,...},            % if you want to add more keywords to the set
  numbers=left,                    % where to put the line-numbers; possible values are (none, left, right)
  numbersep=5pt,                   % how far the line-numbers are from the code
  numberstyle=\tiny\color{mygray}, % the style that is used for the line-numbers
  rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
  showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
  showstringspaces=false,          % underline spaces within strings only
  showtabs=false,                  % show tabs within strings adding particular underscores
  stepnumber=2,                    % the step between two line-numbers. If it's 1, each line will be numbered
  stringstyle=\color{mymauve},     % string literal style
  tabsize=2,                       % sets default tabsize to 2 spaces
  title=\lstname                   % show the filename of files included with \lstinputlisting; also try caption instead of title
}

\endinput