% v2.03 -- 2025/03/17
% For any question, please contact publishing-editor@melba-journal.org
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{melba}

\LoadClass[twoside,11pt]{article}

% This style file was based on the JLMR style file.
\RequirePackage{amsmath}
\RequirePackage[switch]{lineno} % for line numbers. TODO: make this opnly called in submission
\typeout{Document Style `melba-jmlr' v2.01 -- 2024.}

\newif\if@abbrvbib\@abbrvbibfalse
\DeclareOption{abbrvbib}{\@abbrvbibtrue}

\newif\if@usehyper\@usehypertrue
\DeclareOption{nohyperref}{\@usehyperfalse}
\DeclareOption{hyperref}{\@usehypertrue}

\newif\if@arxiv{\@arxivfalse}
\DeclareOption*{\PackageWarning{melba}{Unknown ‘\CurrentOption’}}
\DeclareOption{arxiv}{\@arxivtrue}

\newif\if@accepted{\@acceptedfalse}
\DeclareOption*{\PackageWarning{melba}{Unknown ‘\CurrentOption’}}
\DeclareOption{accepted}{\@acceptedtrue}

\newif\if@specialissue{\@specialissuefalse}
\DeclareOption*{\PackageWarning{melba}{Unknown ‘\CurrentOption’}}
\DeclareOption{specialissue}{\@specialissuetrue}


\ProcessOptions\relax

\if@accepted
\else
  \if@arxiv
  \else % not accepted nor arxiv
    \linenumbers
  \fi
\fi


\RequirePackage{lmodern}
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage{lettrine}
\newcommand{\enluminure}[2]{\lettrine[lines=3, findent=0.5em, nindent=0em]{\textcolor{melba}{#1}}{\bf#2}}

\RequirePackage{microtype}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                             REQUIRED PACKAGES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{epsfig}
\RequirePackage{amssymb}
\RequirePackage{natbib}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{booktabs}
\RequirePackage{multirow}
% \RequirePackage{ebgaramond}



\if@usehyper
\RequirePackage[hidelinks]{hyperref}
\fi

\if@abbrvbib
\bibliographystyle{abbrvnat}
\else
\bibliographystyle{plainnat}
\fi

\bibpunct{(}{)}{;}{a}{,}{,}

% Incompatibility:
\AtBeginDocument{
\@ifpackageloaded{times}{%
  \PackageError{melba}{Package 'times' detected.\MessageBreak
  This package overrides the default font. Please remove its import.%
  }{}}{}
}
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                             P A G E   S I Z E
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Change the overall width of the page.  If these parameters are
%       changed, they will require corresponding changes in the
%       maketitle section.
%
\renewcommand{\topfraction}{0.95}   % let figure take up nearly whole page
\renewcommand{\textfraction}{0.05}  % let figure take up nearly whole page

% Specify the dimensions of each page

% \oddsidemargin .25in    %   Note \oddsidemargin = \evensidemargin
% \evensidemargin .25in
% \marginparwidth 0.07 true in
% %\marginparwidth 0.75 true in
% %\topmargin 0 true pt           % Nominal distance from top of page to top of
% %\topmargin 0.125in
% \topmargin -0.5in
% \addtolength{\headsep}{0.25in}
% \textheight 8.5 true in       % Height of text (including footnotes & figures)
% \textwidth 6.0 true in        % Width of text line.
% \widowpenalty=10000
% \clubpenalty=10000
% \@twosidetrue \@mparswitchtrue \def\ds@draft{\overfullrule 5pt}
\RequirePackage[paper=a4paper,
                top=10mm,
                left=10mm,
                bottom=10mm,
                right=10mm,
                includeheadfoot,
                % showframe
                ]{geometry}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               S E C T I O N S
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Definitions for nicer (?) sections, etc., ideas from Pat Langley.
% Numbering for sections, etc. is taken care of automatically.

\def\@startsiction#1#2#3#4#5#6{\if@noskipsec \leavevmode \fi
   \par \@tempskipa #4\relax
   \@afterindenttrue
   \ifdim \@tempskipa <\z@ \@tempskipa -\@tempskipa \@afterindentfalse\fi
   \if@nobreak \everypar{}\else
     \addpenalty{\@secpenalty}\addvspace{\@tempskipa}\fi \@ifstar
     {\@ssect{#3}{#4}{#5}{#6}}{\@dblarg{\@sict{#1}{#2}{#3}{#4}{#5}{#6}}}}

\def\@sict#1#2#3#4#5#6[#7]#8{\ifnum #2>\c@secnumdepth
     \def\@svsec{}\else
     \refstepcounter{#1}\edef\@svsec{\csname the#1\endcsname}\fi
     \@tempskipa #5\relax
      \ifdim \@tempskipa>\z@
        \begingroup #6\relax
          \@hangfrom{\hskip #3\relax\@svsec.\hskip 0.1em}
                    {\interlinepenalty \@M #8\par}
        \endgroup
       \csname #1mark\endcsname{#7}\addcontentsline
         {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                      \protect\numberline{\csname the#1\endcsname}\fi
                    #7}\else
        \def\@svsechd{#6\hskip #3\@svsec #8\csname #1mark\endcsname
                      {#7}\addcontentsline
                           {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                             \protect\numberline{\csname the#1\endcsname}\fi
                       #7}}\fi
     \@xsect{#5}}

\def\@sect#1#2#3#4#5#6[#7]#8{\ifnum #2>\c@secnumdepth
     \def\@svsec{}\else 
     \refstepcounter{#1}\edef\@svsec{\csname the#1\endcsname\hskip 0.5em }\fi
     \@tempskipa #5\relax
      \ifdim \@tempskipa>\z@ 
        \begingroup #6\relax
          \@hangfrom{\hskip #3\relax\@svsec}{\interlinepenalty \@M #8\par}
        \endgroup
       \csname #1mark\endcsname{#7}\addcontentsline
         {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                      \protect\numberline{\csname the#1\endcsname}\fi
                    #7}\else
        \def\@svsechd{#6\hskip #3\@svsec #8\csname #1mark\endcsname
                      {#7}\addcontentsline
                           {toc}{#1}{\ifnum #2>\c@secnumdepth \else
                             \protect\numberline{\csname the#1\endcsname}\fi
                       #7}}\fi
     \@xsect{#5}}

\def\thesection {\arabic{section}}
\def\thesubsection {\thesection.\arabic{subsection}}
\def\section{\@startsiction{section}{1}{\z@}{-0.24in}{0.10in}
             {\color{melba}\large\bf\raggedright}}
\def\subsection{\@startsection{subsection}{2}{\z@}{-0.20in}{0.08in}
                {\color{melba}\normalsize\raggedright}}
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}{-0.18in}{0.08in}
                {\color{melba}\normalsize\it\raggedright}}
\def\paragraph{\@startsiction{paragraph}{4}{\z@}{1.5ex plus
  0.5ex minus .2ex}{-1em}{\normalsize\bf}}
\def\subparagraph{\@startsiction{subparagraph}{5}{\z@}{1.5ex plus
  0.5ex minus .2ex}{-1em}{\normalsize\bf}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              F O O T N O T E S
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Change the size of the footnote rule
%
% \renewcommand{\footnoterule}{\vspace{10pt}\hrule width 0mm}

\long\def\@makefntext#1{\@setpar{\@@par\@tempdima \hsize 
             \advance\@tempdima-15pt\parshape \@ne 15pt \@tempdima}\par
             \parindent 2em\noindent \hbox to \z@{\hss{\@thefnmark}. \hfil}#1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               A B S T R A C T
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% use \begin{abstract} .. \end{abstract} for abstracts.
% \renewenvironment{abstract}
% {\centerline{\large\bf Abstract}\vspace{0.7ex}%
%   \bgroup\leftskip 20pt\rightskip 20pt\small\noindent\ignorespaces}%
% {\par\egroup\vskip 0.25ex}
\def\abstract#1{\gdef\@abstract{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               KEYWORDS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% use \begin{keywords} .. \end{keywords} for keywordss.
% \newenvironment{keywords}
% {\vskip 5pt \bgroup \leftskip 20pt \rightskip 20pt \topskip 10pt \small\noindent{\bf Keywords:} }%
% {\par\egroup\vskip 0.25ex}
\def\keywords#1{\gdef\@keywords{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        FIRST PAGE, TITLE, AUTHOR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Author information can be set in various styles:
% For several authors from the same institution:
% \author{Author 1 \and ... \and Author n \\
%         \addr{Address line} \\ ... \\ \addr{Address line}}
% if the names do not fit well on one line use
%         Author 1 \\ {\bf Author 2} \\ ... \\ {\bf Author n} \\
% To start a seperate ``row'' of authors use \AND, as in
% \author{Author 1 \\ \addr{Address line} \\  ... \\ \addr{Address line}
%         \AND
%         Author 2 \\ \addr{Address line} \\ ... \\ \addr{Address line} \And
%         Author 3 \\ \addr{Address line} \\ ... \\ \addr{Address line}}

% Title stuff, borrowed in part from aaai92.sty

\newlength\aftertitskip     \newlength\beforetitskip
\newlength\interauthorskip  \newlength\aftermaketitskip

%% Changeable parameters.
\setlength\aftertitskip{0.1in plus 0.2in minus 0.2in}
\setlength\beforetitskip{-0.1in plus 0.08in minus 0.08in}
\setlength\interauthorskip{0.08in plus 0.1in minus 0.1in}
\setlength\aftermaketitskip{0.3in plus 0.1in minus 0.1in}

%% overall definition of maketitle, @maketitle does the real work
\def\maketitle{\par
 \thispagestyle{titlepage}
 \begingroup
   \def\thefootnote{\fnsymbol{footnote}}
   \def\@makefnmark{\hbox to 0pt{$^{\@thefnmark}$\hss}}
   \@maketitle \@thanks
 \endgroup
 \hypersetup{
  pdftitle={\@title},
  pdfauthor={\@melbaauthors}
}
\setcounter{footnote}{0}
 \let\maketitle\relax \let\@maketitle\relax
 \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\thanks\relax}

% \def\@startauthor{\noindent \normalsize}
% \def\@endauthor{}
\def\affiliations#1{\gdef\@affiliations{#1}}
\def\@starteditor{\noindent \small {\bf Editor:~}}
\def\@endeditor{\normalsize}
% \def\@maketitle{}
\def\@maketitle{\hsize\textwidth
 \linewidth\hsize \vskip \beforetitskip
 \if@accepted
   {\parbox[c]{.3\textwidth}{\includegraphics[width=.3\textwidth]{logo.png}}%
    \hfill%
    \parbox[c]{.68\textwidth}{\LARGE Machine Learning\\for Biomedical Imaging}}
  \fi
  {\noindent\color{melba}\rule{\textwidth}{5pt}}
 {\LARGE\bf \@title \par}%
  {\noindent\color{melba}\rule{\textwidth}{1pt}}
 {\def\aff{~\reset@font\scriptsize\textsuperscript}%
  \def\name{\reset@font\normalsize}%
  \def\firstname{\reset@font\normalsize}%
  \def\surname{\reset@font\bf\normalsize}%
   \@author  \reset@font\normalsize}

 \vspace{1em}%
%
 \noindent{\def\num{\bf}%
  \def\addr{\reset@font}%
   \@affiliations \reset@font\normalsize}

  % \vskip \aftermaketitskip

 \vspace{1em}
  {\color{melba}\bf Abstract}

  \@abstract

 \vspace{1em}
  {\color{melba}\bf Keywords}

  \@keywords

 \vspace{1em}
  {\color{melba}\bf Article informations}

  {\scriptsize%
    \if@accepted\url{https://doi.org/\@doi}\fi\hfill\copyright\@melbayear~\@melbaauthors.~License:~\href{https://creativecommons.org/licenses/by/4.0/}{CC-BY 4.0}\\%
    \if@accepted Received: \@datesubmitted, Published \@datepublished \hfill \parbox[c]{.2\textwidth}{\href{https://crossmark.crossref.org/dialog?doi=\@doi&domain=pdf&date_stamp=\@datepublished}{\includegraphics[width=.2\textwidth]{CROSSMARK_Color_horizontal-eps-converted-to.pdf}}}\\\fi
    Corresponding author: \href{mailto:\@email}{\@email}\\%
    \if@specialissue\@melbaspecialissue\\%
    \@melbaspecialissueeditors\fi%
  }



  \vskip \aftermaketitskip
}

%\def\editor#1{\gdef\@editor{#1}}
%\def\editors#1{\gdef\@editors{#1}}

\def\orcid#1{\href{https://orcid.org/#1}{\includegraphics[width=.8em]{orcid.png}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Pagestyle
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\def\firstpageno#1{\setcounter{page}{#1}\gdef\@firstpageno{#1}}
\RequirePackage{lastpage}

\def\melbaid#1{\gdef\@melbaid{#1}}
\def\doi#1{\gdef\@doi{#1}}
\def\volume#1{\gdef\@volume{#1}}
\def\melbaauthors#1{\gdef\@melbaauthors{#1}}
\def\email#1{\gdef\@email{#1}}
\def\melbayear#1{\gdef\@melbayear{#1}}
\def\datesubmitted#1{\gdef\@datesubmitted{#1}}
\def\datepublished#1{\gdef\@datepublished{#1}}

\gdef\@melbaspecialissue{}
\gdef\@melbaspecialissueeditors{}
\if@specialissue
  \def\melbaspecialissue#1{\gdef\@melbaspecialissue{Special issue: #1}}
  \def\melbaspecialissueeditors#1{\gdef\@melbaspecialissueeditors{\parbox{.8\textwidth}{Guest editors: #1}}}
\else
  % Do nothing
  \def\melbaspecialissue#1{}
  \def\melbaspecialissueeditors#1{}
\fi

% \setlength{\headheight}{3em}
\if@accepted
  \fancypagestyle{titlepage}{%
    \fancyhf{}
    \setlength{\headheight}{0pt}
    \lhead{}
    \rhead{}
    \renewcommand{\headrule}{}
    \cfoot{\small\thepage}
  }
\else
  \fancypagestyle{titlepage}{%
    \fancyhf{}
    \setlength{\headheight}{11pt}
    \rhead{}
    \cfoot{\small\thepage}
    \renewcommand{\headrule}{}
  }
\fi

%% Defines the pagestyle for the rest of the pages
%% Usage: \ShortHeadings{Minimizing Conflicts}{Minton et al}
%%        \ShortHeadings{short title}{short authors}
\def\ShortHeadings#1#2{%
\pagestyle{fancy}%
\renewcommand{\headrule}{\color{melba}\rule{\textwidth}{1.5pt}}%
\fancyhead{}%
\fancyhead[CO]{\small#1}%
\fancyhead[CE]{\small#2, \@melbayear}%
\fancyfoot{}
\fancyfoot[CO]{\hfill\small\thepage}
\fancyfoot[CE]{\small\thepage\hfill}
}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               MISCELLANY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define macros for figure captions and table titles

% Figurecaption prints the caption title flush left.
% \def\figurecaption#1#2{\noindent\hangindent 42pt
%                        \hbox to 36pt {\sl #1 \hfil}
%                        \ignorespaces #2}
% \def\figurecaption#1#2{\noindent\hangindent 46pt
%                        \hbox to 41pt {\small\sl #1 \hfil}
%                        \ignorespaces {\small #2}}
% \def\figurecaption#1#2{\noindent\hangindent 40pt
%                        \hbox to 36pt {\small\sl #1 \hfil}
%                        \ignorespaces {\small #2}}
% % Figurecenter prints the caption title centered.
% \def\figurecenter#1#2{\centerline{{\sl #1} #2}}
% \def\figurecenter#1#2{\centerline{{\small\sl #1} {\small #2}}}

% %
% %  Allow ``hanging indents'' in long captions
% %
% \long\def\@makecaption#1#2{
%    \vskip 10pt
%    \setbox\@tempboxa\hbox{#1: #2}
%    \ifdim \wd\@tempboxa >\hsize               % IF longer than one line:
%        \begin{list}{#1:}{
%        \settowidth{\labelwidth}{#1:}
%        \setlength{\leftmargin}{\labelwidth}
%        \addtolength{\leftmargin}{\labelsep}
%         }\item #2 \end{list}\par   % Output in quote mode
%      \else                                    %   ELSE  center.
%        \hbox to\hsize{\hfil\box\@tempboxa\hfil}
%    \fi}


\RequirePackage{enumitem}
\setlist[itemize]{leftmargin=1em}
\setlist[enumerate]{leftmargin=1em}


% Define strut macros for skipping spaces above and below text in a
% tabular environment.
\def\abovestrut#1{\rule[0in]{0in}{#1}\ignorespaces}
\def\belowstrut#1{\rule[-#1]{0in}{#1}\ignorespaces}

% Acknowledgments
\long\def\acks#1{\vskip 0.3in\noindent{\color{melba}\large\bf Acknowledgments}\vskip 0.2in
	\noindent #1}

% Ethics
\long\def\ethics#1{\vskip 0.3in\noindent{\color{melba}\large\bf Ethical Standards}\vskip 0.2in
\noindent #1}

% COI
\long\def\coi#1{\vskip 0.3in\noindent{\color{melba}\large\bf Conflicts of Interest}\vskip 0.2in
	\noindent #1}

% Data availability
\long\def\data#1{\vskip 0.3in\noindent{\color{melba}\large\bf Data availability}\vskip 0.2in
  \noindent #1}

% Research Note
\long\def\researchnote#1{\noindent {\LARGE\it Research Note} #1}

\renewcommand{\appendix}{\par
  \setcounter{section}{0}
  \setcounter{subsection}{0}
  \def\thesection{\Alph{section}}
\def\section{\@ifnextchar*{\@startsiction{section}{1}{\z@}{-0.24in}{0.10in}%
             {\large\bf\raggedright}}%
{\@startsiction{section}{1}{\z@}{-0.24in}{0.10in}
             {\color{melba}\large\bf\raggedright Appendix\ }}}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               PROOF, THEOREM, and FRIENDS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\BlackBox}{\rule{1.5ex}{1.5ex}}  % end of proof
\newenvironment{proof}{\par\noindent{\bf Proof\ }}{\hfill\BlackBox\\\vspace{2mm}}
\newtheorem{example}{Example} 
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}[theorem]{Lemma} 
\newtheorem{proposition}[theorem]{Proposition} 
\newtheorem{remark}[theorem]{Remark}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{conjecture}[theorem]{Conjecture}
\newtheorem{axiom}[theorem]{Axiom}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               UTILS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Messy yet redable LaTeX if/elses:
\if@accepted
  \newcommand{\revision}[1]{#1}
  \definecolor{melba}{HTML}{4a89a3}
\else
  \definecolor{melba}{HTML}{000000}
  \if@arxiv
    \newcommand{\revision}[1]{#1}
  \else
    \if@specialissue
      \newcommand{\revision}[1]{#1}
    \else
      \newcommand{\revision}[1]{{\color{blue} #1}}
    \fi
  \fi
\fi
