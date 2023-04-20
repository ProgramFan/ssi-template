\def\sci@fileversion{2.14}
\def\sci@filedate{2023/01/08}
\def\@journal{中国科学: 信息科学}
\def\@issn{1674-7267}
\def\@copyright{$\copyright$~2023~}
\def\@website{\url{www.scichina.com}~~~~\url{infocn.scichina.com}}

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{SCIS2023cn}[\sci@filedate, \sci@fileversion]

\LoadClass[fontset=fandol]{ctexart}
\csname ctex_at_end_package:nn\endcsname
  {hyperref}{\let\C\undefined}
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm,upgreek,multicol,mathrsfs,pifont,amscd,latexsym,geometry,color,fancyhdr}
%% graphics packages
\RequirePackage{graphicx,subfig}
%% other packages
\RequirePackage{algorithm,algorithmic,multirow,tabularx,url,float,booktabs}
%% check pdfTeX mode
\RequirePackage{ifpdf}
\RequirePackage{fancyhdr,lastpage}
\RequirePackage{supertabular}
\RequirePackage[pdfstartview=FitH,colorlinks,breaklinks,linkcolor=black,citecolor=black,filecolor=black,urlcolor=black,hyperindex,CJKbookmarks]{hyperref}
\RequirePackage{titlesec}%章节号
\urlstyle{same}%定义url字体和正文相同
\renewcommand{\today}{\number\year-\number\month-\number\day}%日期格式

%-------------------------- Page layout ------------------------------
\paperwidth=21truecm
\paperheight=28truecm 
\textwidth=160truemm
\textheight=218truemm
\topmargin=0pt
\headsep=7truemm
\oddsidemargin=2pt
\evensidemargin=2pt
\parindent=22pt
\footskip=10mm
\renewcommand{\baselinestretch}{1.3}
\renewcommand{\arraystretch}{1.2}
\newcommand{\sanhao}{\fontsize{18pt}{\baselineskip}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}{2\baselineskip}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10pt}{\baselineskip}\selectfont}
\newcommand{\jiuhao}{\fontsize{9pt}{\baselineskip}\selectfont}
\newcommand{\bahao}{\fontsize{8pt}{\baselineskip}\selectfont}
\newcommand{\qihao}{\fontsize{7pt}{0.8\baselineskip}\selectfont}
\newcommand{\liuhao}{\fontsize{6pt}{0.8\baselineskip}\selectfont}

%-------------------- Article Information ----------------------------
\let\@Luntan\@empty \def\Luntan#1{\def\@Luntan{#1}}
\let\@ArticleType\@empty \def\ArticleType#1{\def\@ArticleType{#1}}
\let\@SpecialTopic\@empty \def\SpecialTopic#1{\def\@SpecialTopic{#1}}
\let\@Year\@empty \def\Year#1{\def\@Year{#1}}
\let\@Vol\@empty \def\Vol#1{\def\@Vol{#1}}
\let\@No\@empty \def\No#1{\def\@No{#1}}
\let\@AuthorMark\@empty \def\AuthorMark#1{\def\@AuthorMark{#1:~}}
\let\@AuthorCitation\@empty \def\AuthorCitation#1{\def\@AuthorCitation{#1}}
\let\@enAuthorCitation\@empty \def\enAuthorCitation#1{\def\@enAuthorCitation{#1}}
\let\@BeginPage\@empty \def\BeginPage#1{\def\@BeginPage{#1}}
\let\@DOI\@empty \def\DOI#1{\def\@DOI{#1}}
\let\@ReceiveDate\@empty \def\ReceiveDate#1{\def\@ReceiveDate{#1}}
\let\@ReviseDate\@empty \def\ReviseDate#1{\def\@ReviseDate{#1}}
\let\@AcceptDate\@empty \def\AcceptDate#1{\def\@AcceptDate{#1}}
\let\@OnlineDate\@empty \def\OnlineDate#1{\def\@OnlineDate{#1}}
\let\@Foundation\@empty \def\Foundation#1{\def\@Foundation{#1}}
\let\@comment\@empty \def\comment#1{\def\@comment{#1}}
\let\@encomment\@empty \def\encomment#1{\def\@encomment{#1}}
\let\@abstract\@empty \renewcommand\abstract[1]{\def\@abstract{#1}}
\let\@enabstract\@empty \def\enabstract#1{\def\@enabstract{#1}}
\let\@keywords\@empty \def\keywords#1{\def\@keywords{#1}}
\let\@enkeywords\@empty \def\enkeywords#1{\def\@enkeywords{#1}}
\let\@onlinetag\@empty
\let\@ReferenceName\@empty \def\ReferenceName#1{\def\@ReferenceName{#1}}
%-------------------------- Online ------------------------------------
\newcommand\online{
\def\@onlinetag{1}
}

%-------------------------- Title ------------------------------------
\let\@title\@empty
\renewcommand\title[2]{
    \def\@title{#1}
    \def\@titlehead{#2}
    \def\@titlecitation{#2}
}

\let\@entitle\@empty
\newcommand\entitle[2]{
    \def\@entitle{#1}
    \def\@entitlecitation{#2}
}

\let\@author\@empty
\let\@enauthor\@empty
\let\@authoremaillist\@empty
\let\@onlyoneauthor\@empty
\renewcommand*{\author}[4][]{
  \ifx\@author\@empty
    \def\@author{#2\@authornote{#1}{#4}}
    \def\@enauthor{#3\@enauthornote{#1}{#4}}
    \let\@enauthortemp\@enauthor
  \else
    \def\@onlyoneauthor{No}
    \let\@enauthor\@enauthortemp
    \expandafter\def\expandafter\@author\expandafter{\@author,\,\, #2\@authornote{#1}{#4}}
    \expandafter\def\expandafter\@enauthor\expandafter{\@enauthor~{\&}~#3\@enauthornote{#1}{#4}}
    \expandafter\def\expandafter\@enauthortemp\expandafter{\@enauthortemp,~#3\@enauthornote{#1}{#4}}
  \fi
  \ifx#4\@empty\else
      \ifx\@authoremaillist\@empty \def\@authoremaillist{#4}
      \else \expandafter\def\expandafter\@authoremaillist\expandafter{\@authoremaillist,~#4}
      \fi
  \fi
  \let\@enauthoremaillist\@authoremaillist
}

\newcommand{\enauthoremaillist}[1]{
    \def\@enauthoremaillist{#1}
}


\def\@authornote#1#2{%
  \ifx#1\@empty
  \else \textsuperscript{\footnotesize #1}%
  \fi

  \ifx#2\@empty\else
  \ifx\@onlyoneauthor\@empty\else
  \ifx\@comment\@empty
  \textsuperscript{\hspace{-0.15mm}\bahao{*}}%
  \fi\fi\fi
}

\def\@enauthornote#1#2{%
  \ifx#1\@empty
  \else \textsuperscript{#1}%
  \fi

  \ifx#2\@empty\else
  \ifx\@onlyoneauthor\@empty\else
  \ifx\@comment\@empty
  \textsuperscript{\hspace{-0.15mm}*}%
  \fi\fi\fi
}

\def\@address{}
\newcommand*{\address}[3][]{
  \def\@addressnote{#1}
  \ifx\@address\@empty
    \ifx\@addressnote\@empty
        \def\@address{#2}
        \def\@enaddress{{\it #3}}
    \else
        \def\@address{#1.~#2}
        \def\@enaddress{#1.~{\it #3}}
    \fi
  \else
    \ifx\@addressnote\@empty
        \expandafter\def\expandafter\@address\expandafter{\@address\\{#2}}
        \expandafter\def\expandafter\@enaddress\expandafter{\@enaddress;\\{\it #3}}
    \else
        \expandafter\def\expandafter\@address\expandafter{\@address\\{#1.~#2}}
        \expandafter\def\expandafter\@enaddress\expandafter{\@enaddress;\\{#1.~{\it #3}}}
    \fi
  \fi
}


\renewcommand\maketitle{
\ifthenelse{\pageref{LastPage}=\@BeginPage}
        {\def\@pagerank{\@BeginPage}}
        {\def\@pagerank{\@BeginPage--\pageref{LastPage}}}

\ifthenelse{\equal{\@DOI}{\@empty}}
    {\def\@oddheadtext{中国科学\,:\,信息科学}}
    {\ifthenelse{\equal{\@onlinetag}{\@empty}}
        {\def\@oddheadtext{中国科学\,:\,信息科学\hspace{3mm}第~\@Vol~卷\hspace{3mm}第~\@No~期}}
        {\def\@oddheadtext{中国科学\,:\,信息科学}}
    }
    %首页页眉页脚
    \begin{picture}(0,0)
        \put(-21,17){\parbox[c]{120mm}{\zihao{-5} SCIENTIA SINICA~\,\,Informationis}}
        \ifx\@DOI\@empty
            \put(-21,35){\parbox[c]{120mm}{\jiuhao 中国科学\,: 信息科学}}
            \put(-21,29){\thicklines\line(1,0){455}}
        \else
            \ifx\@onlinetag\@empty \put(-21,35){\parbox[c]{120mm}{\jiuhao 中国科学\,: 信息科学\hspace{5mm}\@Year\,年\hspace{3mm}第\,\@Vol\,卷\hspace{3mm}第\,\@No\,期:~\@pagerank}}
            \else \put(-21,35){\parbox[c]{120mm}{\jiuhao 中国科学\,: 信息科学}}
            \fi
            \put(-21,29){\thicklines\line(1,0){335}}
            \ifx\@Luntan\@empty\else
                \put(-21,17){\makebox[118truemm][r]{\heiti\zihao{-5}\@Luntan}}
                \put(-21,-110){\makebox[160truemm][r]{\vbox{\hbox{\includegraphics{kxjslt.eps}}}}}
            \fi
            \put(-21,17){\makebox[160truemm][r]{\includegraphics{SB-F.eps}}}
            \put(-21,-9){\makebox[160truemm][r]{\href{http://crossmark.crossref.org/dialog/?doi=\@DOI&domain=pdf&date_stamp=\today}{\includegraphics{Print-CrossMark.eps}}}}
            \put(-21,-640){\makebox[160truemm][l]{\scriptsize\bf\@copyright《中国科学》杂志社}}
            \put(-21,-640){\makebox[160truemm][r]{\scriptsize\bf\@website}}
        \fi
        \ifx\@SpecialTopic\@empty
            \ifx\@ArticleType\@empty\else
                \put(-21,-2){\colorbox[cmyk]{0,0,0,.3}{\heiti\zihao{-4}~~~\@ArticleType~~~}}
            \fi
        \else
            \ifx\@ArticleType\@empty
                \put(-21,-2){\colorbox[cmyk]{0,0,0,.3}{\heiti\zihao{-4}~~~\@SpecialTopic~~~}}
            \else
                \put(-21,-2){\colorbox[cmyk]{0,0,0,.3}{\heiti\zihao{-4}~~~\@SpecialTopic~{\bf\sanhao\raisebox{2pt}{.}}~\@ArticleType~~~}}
            \fi
        \fi
    \end{picture}

    \ifx\@AuthorCitation\@empty
    \else
        \ifx\@enAuthorCitation\@empty
            \begin{figure}[!b]
            \centering
            \fcolorbox[rgb]{1,1,1}{0.8,0.8,0.8}{\parbox[t]{144.6truemm{\bf\scriptsize 引用格式:\ }}{\scriptsize \@AuthorCitation. \@titlecitation. 中国科学: 信息科学,
                \ifx\@DOI\@empty{在审文章}\else{\@Year}{\ifx\@onlinetag\@empty{, \@Vol: \@pagerank}\fi}{, doi: }\href{https://doi.org/\@DOI}{\url{\@DOI}}\fi}}
            \end{figure}
        \else
            \begin{figure}[!b]
            \centering
            \fcolorbox[rgb]{1,1,1}{0.8,0.8,0.8}{\parbox[t]{144.6truemm{\bf\scriptsize 引用格式:\ }}
                {\scriptsize \@AuthorCitation. \@titlecitation. 中国科学: 信息科学,
                \ifx\@DOI\@empty{在审文章}\else{\@Year}{\ifx\@onlinetag\@empty{, \@Vol: \@pagerank}\fi}{, doi: }\href{https://doi.org/\@DOI}{\url{\@DOI}}\fi\\
                \@enAuthorCitation. \@entitlecitation~(in Chinese). Sci Sin Inform,
                \ifx\@DOI\@empty{for review}\else{\@Year}{\ifx\@onlinetag\@empty{, \@Vol: \@pagerank}\fi}{, doi: }\href{https://doi.org/\@DOI}{\url{\@DOI}}\fi}}
            \end{figure}
        \fi
    \fi
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}
    \def\@makefnmark{\hbox{\@textsuperscript{\normalfont\@thefnmark}}}
    \long\def\@makefntext##1{\noindent\@textsuperscript{\normalfont\@thefnmark}##1}
    \@maketitle
    \thispagestyle{empty}
    \long\def\@makefntext##1{\parindent 7mm \indent\hbox{\hss{\@thefnmark)\ }}\baselineskip 10pt ##1}
    \def\@makefnmark{\hbox\textsuperscript{\@thefnmark)}}
    \renewcommand\thefootnote{\arabic{footnote}}
    \setcounter{footnote}{0}
    \setcounter{page}{\@BeginPage}
}

\renewcommand{\raggedright}{\leftskip=0pt \rightskip=0pt plus 0cm}
\def\@maketitle{
  \noindent
  \vspace{5mm}
    \begin{flushleft}
        %标题
        \renewcommand{\baselinestretch}{0.9}
        \bfseries\huge\heiti\zihao{2}\@title
    \end{flushleft}
    \ifx\@author\@empty
    \else
        \vskip 4 true mm
        \begin{flushleft}
            %作者
            \renewcommand{\baselinestretch}{0.9}
            {\rmfamily\Large\kaishu\zihao{4}\begin{tabular}[t]{@{}l@{}}\@author\end{tabular}}
        \end{flushleft}
        \vspace{-4mm}
        \begin{flushleft}
            \renewcommand{\baselinestretch}{1.35}
            \rmfamily\footnotesize\songti\zihao{6}
            %单位
            \@address\\
            %email
            \ifx\@onlyoneauthor\@empty
                E-mail: \@authoremaillist
            \else
                *~通信作者. E-mail: \@authoremaillist
            \fi
            %其他信息
            \ifx\@comment\@empty
            \else\\\@comment
            \fi
        \end{flushleft}
        \vspace{-4mm}
        \begin{flushleft}
            \renewcommand{\baselinestretch}{1.2}
            \rmfamily\footnotesize\songti\zihao{6}
            %日期
            \ifx\@DOI\@empty\else
            \ifx\@ReviseDate\@empty
                \ifx\@OnlineDate\@empty收稿日期: \@ReceiveDate;\ \ 接受日期: \@AcceptDate\\
                \else收稿日期: \@ReceiveDate;\ \ 接受日期: \@AcceptDate;\ \ 网络出版日期: \@OnlineDate\\
                \fi
            \else
                \ifx\@OnlineDate\@empty收稿日期: \@ReceiveDate;\ \ 修回日期: \@ReviseDate;\ \ 接受日期: \@AcceptDate\\
                \else收稿日期: \@ReceiveDate;\ \ 修回日期: \@ReviseDate;\ \ 接受日期: \@AcceptDate;\ \ 网络出版日期: \@OnlineDate\\
                \fi
            \fi\fi
        \end{flushleft}
        \ifx\@Foundation\@empty\vspace{-4mm}
        \else\vspace{-6mm}\hspace{-2.2mm}\begin{tabular}{p{\textwidth}!}\renewcommand{\baselinestretch}{1.2}\rmfamily\footnotesize\songti\zihao{6}\@Foundation\end{tabular}
        \fi
        \vspace{-4mm}
  \fi


  %摘要和关键词
  \ifx\@abstract\@empty
  \else
  \noindent
  \begin{picture}(0,0){\put(0,-5){\color[rgb]{0.4,0.4,0.4}\line(1,0){455}}}\end{picture}
  {\vskip2.3mm\noindent{\heiti 摘要\quad\,\,}\ignorespaces\fangsong\@abstract\vspace{1mm}\\
  \noindent{\heiti 关键词\quad\,\,}\ignorespaces\fangsong\@keywords\\}
  \begin{picture}(0,0){\put(0,5){\color[rgb]{0.4,0.4,0.4}\line(1,0){455}}}\end{picture}
  \fi
}


\def\makeentitle{
    \begin{flushleft}
        %英文标题
        \renewcommand{\baselinestretch}{0.85}
        \bfseries\xiaosanhao\@entitle
    \end{flushleft}
    \ifx\@enauthor\@empty
    \else
        \begin{flushleft}
            %英文作者
            \renewcommand{\baselinestretch}{0.9}
            \normalsize
            \begin{tabular}[t]{@{}l@{}}\@enauthor\end{tabular}
        \end{flushleft}
        \begin{flushleft}
            \renewcommand{\baselinestretch}{0.8}
            \jiuhao
            %英文单位
            \@enaddress\\
            %email
            \ifx\@onlyoneauthor\@empty
                E-mail: \@enauthoremaillist
            \else
                *~Corresponding author. E-mail: \@enauthoremaillist
            \fi
            %其他信息
            \ifx\@encomment\@empty
            \else
                \\\@encomment
            \fi
        \end{flushleft}
    \fi
    %英文摘要关键词
    \ifx\@enabstract\@empty
    \else
    \noindent\hspace*{-2.9mm}
    \begin{tabular}{p{\textwidth}}
    \renewcommand{\baselinestretch}{0.8}\jiuhao\textbf{Abstract}\quad\@enabstract\\
    \renewcommand{\baselinestretch}{0.8}\jiuhao\textbf{Keywords}\quad\@enkeywords
    \end{tabular}
    \fi
}

\columnsep 0.7cm  %两栏之间的距离

%普通文章作者简介
\let\@authorcount\@empty
\newcommand*{\authorcv}[3][]{
    \def\@authorphoto{#1}
    \ifx\@authorcount\@empty
        \noindent
        \begin{tabular*}{\textwidth}{c}
            \hspace*{-1em}
            \begin{minipage}[t]{0.48\textwidth}
                \renewcommand{\baselinestretch}{1.25}
                \baselineskip 9pt
                \parindent=9pt
                \ifx\@authorphoto\@empty
                \else \parpic{\includegraphics[width=25mm]{#1}}
                \fi
                {\noindent\qihao{\bf #2}~#3\par}
            \end{minipage}
        \def\@authorcount{1}
    \else
            \begin{minipage}[t]{0.48\textwidth}
                \renewcommand{\baselinestretch}{1.25}
                \baselineskip 9pt
                \parindent=9pt
                \ifx\@authorphoto\@empty
                \else \parpic{\includegraphics[width=25mm]{#1}}
                \fi
                {\noindent\qihao{\bf #2}~#3\par}
            \end{minipage}
        \end{tabular*}
        \let\@authorcount\@empty
    \fi
}

%----------------------- Running heads ---------------------------------
\def\ps@myheadings{
    \def\@evenhead{\vbox{\hbox to \textwidth{\rmfamily\small\songti\zihao{-5}\@AuthorMark\@titlehead \hfill}\vspace{1.5truemm}\hrule depth 0pt height 0.25truemm width\textwidth}}
    \def\@oddhead{\vbox{\hbox to \textwidth{\rmfamily\small\songti\zihao{-5} \hfill\@oddheadtext}\vspace{1.5truemm}\hrule depth 0pt height 0.25truemm width\textwidth}}
    \def\@evenfoot{\vbox{\hbox to \textwidth{\footnotesize\rm\hbox to 1cm{\songti\rm\zihao{-5}\small\thepage\hfill}\hfill}}}
    \def\@oddfoot{\vbox{\hbox to \textwidth{\hfill\hbox to 1cm{\hfill\songti\rm\zihao{-5}\small\hspace{2mm}\thepage}}}}

    \thispagestyle{fancy}\fancyfoot{}
}
\pagestyle{myheadings}



%-------------------------- Sections ----------------------------------
\newcommand*\Acknowledgements[1]{
    \vskip 5mm
    \baselineskip 16pt
    {\textbf{致谢}\quad{\fangsong#1}}\par
}

\newcommand*\Supplements[1]{
    \vskip 5mm
    \baselineskip 16pt
    {\textbf{补充材料}\quad{\fangsong#1~本文的补充材料见网络版infocn.scichina.com.
    补充材料为作者提供的原始数据, 作者对其学术质量和内容负责.}}\par
}
\titleformat{\section}{\large\bfseries\heiti}{\thesection}{1em}{}
\titleformat{\subsection}{\normalsize\bfseries\heiti}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\normalsize\bfseries\heiti}{\thesubsubsection}{1em}{}

%\renewcommand\sectionname{\thesection}
%\renewcommand\sectionformat{}
%\renewcommand\section{
    %\@startsection{section}{1}{\z@}%
    %{-4.5ex \@plus -1ex \@minus -.2ex}%
    %{2.5ex \@plus.1ex}%
    %{\normalfont\large\bfseries\heiti\zihao{-4}}
%}

%\renewcommand\subsection{
%    \@startsection{subsection}{2}{\z@}%
%    {-2ex\@plus -2ex \@minus -.1ex}%
%    {2ex \@plus .2ex}%
%    {\normalfont\normalsize\bfseries\heiti}
%}

%\renewcommand\subsubsection{
%    \@startsection{subsubsection}{3}{\z@}%
%    {-3ex\@plus -1ex \@minus -.1ex}%
%    {1ex \@plus .1ex}%
%    {\normalfont\normalsize\bfseries\heiti}
%}

\let\oldappendix\appendix
\renewenvironment{appendix}{
    \oldappendix
    \setcounter{section}{0}
    \def\thesection{\Alph{section}}
    \renewcommand{\theequation}{\Alph{section}\arabic{equation}}
    \renewcommand{\thefigure}{\Alph{section}\arabic{figure}}
    \renewcommand{\thetable}{\Alph{section}\arabic{table}}
    \renewcommand{\thealgorithm}{\Alph{section}\arabic{algorithm}}
    \renewcommand{\section}{
        \setcounter{equation}{0}
        \setcounter{table}{0}
        \setcounter{figure}{0}
        \setcounter{algorithm}{0}
        \@startsection{section}{1}{\z@}%
        {-2ex\@plus -2ex \@minus -.1ex}%
        {2ex \@plus .2ex}%
        {\normalfont\normalsize\bfseries}
    }
    \footnotesize
}

\newenvironment{supplement}{
    \newpage
    \oldappendix
    \setcounter{page}{1}
    \setcounter{section}{0}
    \setcounter{equation}{0}
    \setcounter{table}{0}
    \setcounter{figure}{0}
    \setcounter{algorithm}{0}
    \def\sectionname{补充材料(\thesection)}
    \def\thesection{\Roman{section}}
    \renewcommand{\theequation}{S\arabic{equation}}
    \renewcommand{\thefigure}{S\arabic{figure}}
    \renewcommand{\thetable}{S\arabic{table}}
    \renewcommand{\thealgorithm}{S\arabic{algorithm}}
    \renewcommand{\section}{
        \@startsection{section}{1}{\z@}%
        {-2ex\@plus -2ex \@minus -.1ex}%
        {2ex \@plus .2ex}%
        {\normalfont\normalsize\bfseries}
    }
    \footnotesize
}

%-------------------------- Bibliography ------------------------------
\def\@biblabel#1{#1~}

\renewenvironment{thebibliography}[1]{
    \vspace{6mm}\noindent
    \ifx\@ReferenceName\@empty
    \parbox[c]{20mm}{\heiti\zihao{5}参考文献}
    \else
    \parbox[c]{20mm}{\heiti\zihao{5}\@ReferenceName}
    \fi
    \hspace{-6mm}
    \rule[0.01\baselineskip]{0.9\textwidth}{0.5pt}
    \vskip0.1in \baselineskip 11.5pt \vspace{-4mm}
    \list{\@biblabel{\@arabic\c@enumiv}}{
        \settowidth\labelwidth{\@biblabel{#1}}%
        \leftmargin\labelwidth
        \advance\leftmargin\labelsep
        \@openbib@code
        \usecounter{enumiv}%
        \let\p@enumiv\@empty
        \renewcommand\theenumiv{\@arabic\c@enumiv}
    }
    \itemsep 0ex \parskip 0ex
    \footnotesize\sloppy
}

\usepackage{cite}
\newcommand{\upcite}[1]{\hspace*{-4pt}\textsuperscript{\cite{#1}}}
\let\citedash\relax\makeatletter
\providecommand{\citedash}{\hbox{$\sim$}\penalty\@m}\makeatother

%------------------ Figures, tables, algorithms -----------------------

\setlength{\floatsep}{16pt plus 1pt minus 1pt}%页面顶部/底部的浮动对象间的垂直距离, 缺省为12pt plus 2pt minus 2pt
\setlength{\textfloatsep}{16pt plus 1pt minus 1pt}%页顶部/底部的浮动对象与文本间垂直距离, 缺省20pt plus 2pt minus 4pt
\setlength{\intextsep}{12pt plus 3pt minus 2pt}%页中浮动对象与上下方文本间垂直距离, 缺省12pt plus 2pt minus 2pt
\setlength{\belowrulesep}{0pt}%横线和其下文字的间距
\setlength{\aboverulesep}{0pt}%横线和其上文字的间距
\setlength{\doublerulesep}{0.4pt}
\newcommand\Times{\fontfamily{ptm}\selectfont}
\newcommand{\picsize}{\fontsize{8pt}{0.4\baselineskip}\selectfont}
\usepackage[font={bf,footnotesize},labelsep=quad]{caption}
\captionsetup[subfloat]{labelformat=simple,captionskip=0pt}
\captionsetup[table]{aboveskip=1mm}
\captionsetup[figure]{aboveskip=3mm}
\captionsetup[algorithm]{font=footnotesize}
\floatname{algorithm}{算法}

\newcommand*{\cnfigurename}{图}
\newcommand*{\enfigurename}{Figure}
\newcommand*{\cnenfigcaption}[2]{%
    \def\figurename{\cnfigurename}
    \caption{\baselineskip 10pt\jiuhao\bf #1}
    \addtocounter{figure}{-1}
    \vspace*{-3mm}
    \def\figurename{\enfigurename}
    \caption{\baselineskip 10pt #2}
}

\newcommand*{\cntablename}{表}
\newcommand*{\entablename}{Table}
\newcommand*{\cnentablecaption}[2]{%
    \def\tablename{\cntablename}
    \caption{\baselineskip 10pt\jiuhao\bf #1}
    \addtocounter{table}{-1}
    \vspace*{-1mm}
    \def\tablename{\entablename}
    \caption{\baselineskip 10pt #2}
}


%------------------------------ Math ----------------------------------
\def\leq{\leqslant}
\def\geq{\geqslant}
\def\le{\leqslant}
\def\ge{\geqslant}
\abovedisplayskip=11pt plus 0pt minus 6pt
\belowdisplayskip=11pt plus 0pt minus 6pt
\newcommand{\set}[1]{\ensuremath{\left\{ #1 \right\}}}%
\newcommand{\Set}[2]{\ensuremath{\left\{ #1 \left| \right. #2 \right\}}}%
\newcommand{\abs}[1]{\ensuremath{\left| #1 \right|}}%
\newcommand{\map}[3]{\ensuremath{#1 : #2 \rightarrow #3}}%
\newcommand{\C}[1]{\ensuremath{\mathcal{#1}}}%
\newcommand{\restrict}[2]{\ensuremath{#1 \left|_{#2}\right.}}%
\newcommand{\NN}{\mathbb{N}^0}
\newcommand{\PN}{\mathbb{N}}
\newcommand{\syn}{\mathbf{S}}
\newcommand{\Syn}{\mathbf{M}}
\allowdisplaybreaks
\setlength{\arraycolsep}{2.0pt}

%----------------------------- Theorems -------------------------------
\def\proof{{\heiti 证明}\quad}
\renewcommand{\qedsymbol}{} %去掉小方框
\newtheoremstyle{newdefinition}%
    {2pt}% Space above
    {2pt}% Space below
    {\normalfont}% Body font
    {1.83em}% Indent amount
    {\bfseries}% Theorem head font
    {}% Punctuation after theorem head
    {10pt plus 1pt minus 1pt}% Space after theorem head
    {}% Theorem head spec (can be left empty, meaning `normal')
\theoremstyle{newdefinition}%
\newtheorem{definition}{定义}
\newtheorem{theorem}{定理}
\newtheorem{lemma}{引理}
\newtheorem{corollary}{推论}
\newtheorem{axiom}{公理}
\newtheorem{propsition}{命题}
\newtheorem{example}{例}
\newtheorem{exercise}{习题}
\newtheorem{solution}{解}
\newtheorem{notation}{注}
\newtheorem{assumption}{假设}
\newtheorem{remark}{注释}
\newtheorem{property}{性质}
\iffalse
\makeatletter
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt\@xiipt
   \abovedisplayskip 9\p@ \@plus4\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip  \abovedisplayskip
   \let\@listi\@listI}
\makeatother
\fi

%--------------------------------- list ---------------------------------
\renewenvironment{itemize}{
\begin{list}{$\bullet$}{
\labelwidth=4em
\labelsep=0.5em
\leftmargin=0em
\rightmargin=0em
\parsep=\parskip
\itemsep=0em
\topsep=0em
\itemindent=2.1em
}
}{\end{list}}

\endinput
