\ProvidesClass{awesome-cv}
\NeedsTeXFormat{LaTeX2e}

\LoadClass{article}

\RequirePackage{array}
\RequirePackage{enumitem}
\RequirePackage{ragged2e}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage{ifxetex}
\RequirePackage{xifthen}
\RequirePackage{etoolbox}
\RequirePackage{setspace}
\RequirePackage[quiet]{fontspec}
\defaultfontfeatures{Ligatures=TeX}
\RequirePackage{unicode-math}
\RequirePackage{fontawesome}
\RequirePackage[default,opentype]{sourcesanspro}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{parskip}
\RequirePackage[hidelinks,unicode]{hyperref}

\geometry{left=1.4cm, top=.8cm, right=1.4cm, bottom=1.8cm, footskip=.5cm}

\definecolor{awesome}{HTML}{131A28}
\definecolor{darktext}{HTML}{414141}
\definecolor{text}{HTML}{333333}
\definecolor{graytext}{HTML}{5D5D5D}
\definecolor{lighttext}{HTML}{797979}

\renewcommand{\acvHeaderSocialSep}{\quad\textbar\quad}

\newcommand{\@fontdir}{fonts/}

\fancyhfoffset{0em}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\pagestyle{fancy}

\newfontfamily\headerfont[
Path=\@fontdir,
UprightFont=*-Regular,
ItalicFont=*-Italic,
BoldFont=*-Bold,
BoldItalicFont=*-BoldItalic,
]{Roboto}

\newfontfamily\headerfontlight[
Path=\@fontdir,
UprightFont=*-Thin,
ItalicFont=*-ThinItalic,
BoldFont=*-Medium,
BoldItalicFont=*-MediumItalic,
]{Roboto}

\newcommand*{\footerfont}{\sourcesanspro}
\newcommand*{\bodyfont}{\sourcesanspro}
\newcommand*{\bodyfontlight}{\sourcesansprolight}

\newcommand{\photo}[1]{
\def\@photo{#1}
}

% styles
\newcommand*{\headerfirstnamestyle}[1]{{\fontsize{32pt}{1em}\headerfontlight\color{graytext} #1}}
\newcommand*{\headerlastnamestyle}[1]{{\fontsize{32pt}{1em}\headerfont\bfseries\color{text} #1}}
\newcommand*{\headerpositionstyle}[1]{{\fontsize{7.6pt}{1em}\bodyfont\scshape\color{awesome} #1}}
\newcommand*{\headeraddressstyle}[1]{{\fontsize{8pt}{1em}\headerfont\itshape\color{lighttext} #1}}
\newcommand*{\headersocialstyle}[1]{{\fontsize{6.8pt}{1em}\headerfont\color{text} #1}}
\newcommand*{\footerstyle}[1]{{\fontsize{8pt}{1em}\footerfont\scshape\color{lighttext} #1}}
\newcommand*{\sectionstyle}[1]{{\fontsize{16pt}{1em}\bodyfont\bfseries\color{text}\@sectioncolor #1}}
\newcommand*{\subsectionstyle}[1]{{\fontsize{12pt}{1em}\bodyfont\scshape\textcolor{text}{#1}}}
\newcommand*{\paragraphstyle}{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{text}}

% For elements of entry
\newcommand*{\entrytitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\entrypositionstyle}[1]{{\fontsize{8pt}{1em}\bodyfont\scshape\color{graytext} #1}}
\newcommand*{\entrydatestyle}[1]{{\fontsize{8pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\entrylocationstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{awesome} #1}}
\newcommand*{\descriptionstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of subentry
\newcommand*{\subentrytitlestyle}[1]{{\fontsize{8pt}{1em}\bodyfont\mdseries\color{graytext} #1}}
\newcommand*{\subentrypositionstyle}[1]{{\fontsize{7pt}{1em}\bodyfont\scshape\color{graytext} #1}}
\newcommand*{\subentrydatestyle}[1]{{\fontsize{7pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\subentrylocationstyle}[1]{{\fontsize{7pt}{1em}\bodyfontlight\slshape\color{awesome} #1}}
\newcommand*{\subdescriptionstyle}[1]{{\fontsize{8pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of honor
\newcommand*{\honortitlestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\color{graytext} #1}}
\newcommand*{\honorpositionstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\honordatestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\color{graytext} #1}}
\newcommand*{\honorlocationstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{awesome} #1}}

% For elements of skill
\newcommand*{\skilltypestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\skillsetstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\color{text} #1}}

% Personal info
\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\firstname}[1]{\def\@firstname{#1}}
\newcommand*{\lastname}[1]{\def\@lastname{#1}}
\newcommand*{\familyname}[1]{\def\@lastname{#1}}
\def\@familyname{\@lastname}
\newcommand*{\address}[1]{\def\@address{#1}}
\newcommand*{\position}[1]{\def\@position{#1}}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\homepage}[1]{\def\@homepage{#1}}
\newcommand*{\github}[1]{\def\@github{#1}}
\newcommand*{\stackoverflow}[2]{\def\@stackoverflowid{#1}\def\@stackoverflowname{#2}}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}

% Header
\newcommand{\acvHeaderNameDelim}{\space}
\newcommand{\acvHeaderAfterNameSkip}{.4mm}
\newcommand{\acvHeaderAfterPositionSkip}{.4mm}
\newcommand{\acvHeaderAfterAddressSkip}{-.5mm}
\newcommand{\acvHeaderIconSep}{\space}
\newcommand{\acvHeaderSocialSep}{\quad\textbar\quad}
\newcommand{\acvHeaderAfterSocialSkip}{6mm}

% Others
\newcommand{\acvSectionTopSkip}{3mm}
\newcommand{\acvSectionContentTopSkip}{2.5mm}

% Arrange table
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% Rule style
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

\newcommand*{\ifempty}[3]{\ifthenelse{\isempty{#1}}{#2}{#3}}

\newcommand*{\makecvheader}[1][C]{
\newcommand*{\drawphoto}{
\newlength{\photodim}
\setlength{\photodim}{1.8cm}
\def\@photoborder{darkgray}
\begin{tikzpicture}
    \node[rectangle, draw=edge, line width=0.3mm, inner sep=\photodim, fill overzoom image=\@photo] () {};
\end{tikzpicture}
}
\newlength{\headertextwidth}
\newlength{\headerphotowidth}
\setlength{\headertextwidth}{0.76\textwidth}
\setlength{\headerphotowidth}{0.24\textwidth}
\begin{minipage}[c]{\headerphotowidth}
    \raggedright\drawphoto
\end{minipage}
\begin{minipage}[c]{\headertextwidth}
    \ifthenelse{\equal{#1}{L}}{\raggedright}{\ifthenelse{\equal{#1}{R}}{\raggedleft}{\centering}}
    \headerfirstnamestyle{\@firstname}\headerlastnamestyle{{}\acvHeaderNameDelim\@lastname}
    \\[\acvHeaderAfterNameSkip]%
    \ifthenelse{\isundefined{\@position}}{}{\headerpositionstyle{\@position\\[\acvHeaderAfterPositionSkip]}}
    \ifthenelse{\isundefined{\@address}}{}{\headeraddressstyle{\@address\\[\acvHeaderAfterAddressSkip]}}
    \headersocialstyle{
    \newbool{isstart}
    \setbool{isstart}{true}
    \ifthenelse{\isundefined{\@mobile}}
    {}
    {
    \faMobile\acvHeaderIconSep\@mobile%
    \setbool{isstart}{false}
    }
    \ifthenelse{\isundefined{\@email}}
    {}
    {
    \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
    \href{mailto:\@email}{\faEnvelope\acvHeaderIconSep\@email}
    }
    \ifthenelse{\isundefined{\@homepage}}
    {}
    {
    \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
    \href{http://\@homepage}{\faHome\acvHeaderIconSep\@homepage}
    }
    \ifthenelse{\isundefined{\@github}}
    {}
    {
    \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
    \href{https://github.com/\@github}{\faGithubSquare\acvHeaderIconSep\@github}
    }
    \ifthenelse{\isundefined{\@stackoverflowid}}
    {}
    {
    \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
    \href{https://stackoverflow.com/users/\@stackoverflowid}{\faStackOverflow\acvHeaderIconSep\@stackoverflowname}
    }
    \ifthenelse{\isundefined{\@linkedin}}
    {}
    {
    \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}
    \href{https://www.linkedin.com/in/\@linkedin}{\faLinkedinSquare\acvHeaderIconSep\@linkedin}
    }
    } \\[\acvHeaderAfterSocialSkip]
    %
\end{minipage}
}

\newcommand*{\makecvfooter}[3]{
\fancyfoot{}
\fancyfoot[L]{\footerstyle{#1}}
\fancyfoot[C]{\footerstyle{#2}}
\fancyfoot[R]{\footerstyle{#3}}
}

\newcommand{\cvsection}[1]{
\vspace{\acvSectionTopSkip}
\sectionstyle{#1}
\phantomsection
\color{gray}\vhrulefill{0.9pt}
}

\newcommand{\cvsubsection}[1]{
\vspace{\acvSectionContentTopSkip}
\vspace{-3mm}
\subsectionstyle{#1}
\phantomsection
}

\newenvironment{cvparagraph}{
\vspace{\acvSectionContentTopSkip}
\vspace{-3mm}
\paragraphstyle
}{
\par
\vspace{2mm}
}

\newenvironment{cventries}{
\vspace{\acvSectionContentTopSkip}
\begin{center}
}{
\end{center}
}

\newcommand*{\cventry}[5]{
\vspace{-2.0mm}
\setlength\tabcolsep{0pt}
\setlength{\extrarowheight}{0pt}
\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
\ifempty{#2#3}
{\entrypositionstyle{#1} & \entrydatestyle{#4} \\}
{\entrytitlestyle{#2} & \entrylocationstyle{#3} \\
\entrypositionstyle{#1} & \entrydatestyle{#4} \\}
\multicolumn{2}{L{\textwidth}}{\descriptionstyle{#5}}
\end{tabular*}
}

\newenvironment{cvsubentries}{
\begin{center}
}{
\end{center}
}

\newcommand*{\cvsubentry}[4]{
\setlength\tabcolsep{0pt}
\setlength{\extrarowheight}{0pt}
\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
\setlength\leftskip{0.2cm}
\subentrytitlestyle{#2} & \ifthenelse{\equal{#1}{}}
{\subentrydatestyle{#3}}{}
\ifthenelse{\equal{#1}{}}
{}
{\subentrypositionstyle{#1} & \subentrydatestyle{#3} \\}
\ifthenelse{\equal{#4}{}}
{}
{\multicolumn{2}{L{17.0cm}}{\subdescriptionstyle{#4}} \\}
\end{tabular*}
}

\newenvironment{cvhonors}{
\vspace{\acvSectionContentTopSkip}
\vspace{-2mm}
\begin{center}
\setlength\tabcolsep{0pt}
\setlength{\extrarowheight}{0pt}
\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} C{1.5cm} L{\textwidth - 4.0cm} R{2.5cm}}
}{
\end{tabular*}
\end{center}
}

\newcommand*{\cvhonor}[4]{
\honordatestyle{#4} & \honorpositionstyle{#1}, \honortitlestyle{#2} & \honorlocationstyle{#3} \\
}

\newenvironment{cvskills}{
\vspace{\acvSectionContentTopSkip}
\vspace{-2.0mm}
\begin{center}
\setlength\tabcolsep{1ex}
\setlength{\extrarowheight}{0pt}
\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} r L{\textwidth * \real{0.9}}}
}{
\end{tabular*}
\end{center}
}

\newcommand*{\cvskill}[2]{
\skilltypestyle{#1} & \skillsetstyle{#2} \\
}

\newenvironment{cvitems}{
\vspace{-4.0mm}
\begin{justify}
\begin{itemize}[leftmargin=2ex, nosep, noitemsep]
\setlength{\parskip}{0pt}
\renewcommand{\labelitemi}{\bullet}
}{
\end{itemize}
\end{justify}
\vspace{-4.0mm}
}
