%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %% <UTF-8>
%% %% 基于ctexbook
%% %%
%% %% 建议采用等宽字体查看本文档
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 模板标识
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{stdthesis}[2019 v1.0 STD thesis class]
\typeout{This is LaTeX template std, Version 1.0 (based on CTex) 12-19-2018}

%% 选项
%% 论文类型
\DeclareOption{bachelor}{\gdef\@thesis{bachelor}}
\DeclareOption{thesis}{\ClassWarning{std}{%fan
  You have not specified the THESIS option. The word thesis should be replaced by one of the following thesis type: bachelor(default), professional, doctor.
}}

%% 打印设置
\DeclareOption{oneside}{\gdef\@printtype{oneside}} % 单面打印
\DeclareOption{twoside}{\gdef\@printtype{twoside}} % 双面打印

%% 适应首字母大写
\DeclareOption{bachelor}{\gdef\@thesis{bachelor}}

%% 选项传递给ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}

%% 默认选项配置
\ExecuteOptions{bachelor,oneside,a4paper,sub4section}
\ProcessOptions\relax

% 引用ctexbook: 小4,20磅行距
\LoadClass[UTF8,zihao=-4,linespread=1.4]{ctexbook}%1.5+0.2行间距
\setcounter{secnumdepth}{5}

\usepackage{graphicx}
\def\STDThesisVer{v1.0}
\def\STDThesis{%
 S%
 {\fontsize{0.8em}{\baselineskip}\selectfont
 \kern-.12em\lower.5ex\hbox{T}%
 \kern-.32em\raise.48ex\hbox{D}%
}
 \kern-.35emT%
 \kern-.22em\lower.5ex\hbox{H}%
 \kern-.08em E%
 \kern-.05em\lower.5ex\hbox{S}%
 \kern-.26em I%
 \kern-.26em\raise.5ex\hbox{\rotatebox[origin=c]{180}{S}}%
}
%% 预声明
\RequirePackage{ifthen}       % ifthenelse/equal/isundefined等判断比较命令
\RequirePackage{geometry}     % 设置页边距
\RequirePackage{fancyhdr}     % 设置页眉页脚
\RequirePackage{setspace}     % 设置行间距
%\RequirePackage{times}        % Times New Roman字体
\RequirePackage{float}        % 图片
\RequirePackage{graphicx}     % 图片
\RequirePackage{subfigure}    % 图片
\RequirePackage{epstopdf}     % 图片
\RequirePackage{array}        %
\RequirePackage{enumitem}     %
\RequirePackage{booktabs}     % 表格上下粗线
\RequirePackage{longtable}    % 长表格
\RequirePackage{multirow}     % 多行表格
\RequirePackage{caption}      % 标题设置
\RequirePackage{algorithm2e}  % 算法环境
\RequirePackage{listings}     % 代码环境
\RequirePackage{amsmath}      % 数学
\RequirePackage{amsthm}       % 定理
\RequirePackage{newtxtext}    % Times New Roman字体
\RequirePackage{newtxmath}    % 公式的Times New Roman字体，需放置于amsthm之后
\RequirePackage{titletoc}     % 目录
\RequirePackage{remreset}     % 计数器设置
\RequirePackage{hyperref}     % 超链接
\RequirePackage{etoolbox}     % \AtBeginDocument等宏命令
\RequirePackage{pifont}       % 画五角星
\RequirePackage{color}        % To provide color for soul
\RequirePackage{soul}         % To highlight text
\RequirePackage[sort&compress]{natbib}              % BibTex
\DeclareGraphicsExtensions{.eps,.ps,.png,.jpg,.bmp} % 声明使用图像格式
\newcommand{\highlight}[1]{\colorbox{yellow}{#1}}   % 高亮注释

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 数学环境
% 数学符号：
\newcommand\eu{\mathrm{e}}
\newcommand\iu{\mathrm{i}}
\newcommand*{\diff}{\mathop{}\!\mathrm{d}}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}
% 数学定理：
% 以下定义数学定理环境默认风格为 std。
\newtheoremstyle{std}%
{0pt}% measure of space to leave above the theorem.
{0pt}% measure of space to leave below the theorem.
{}% name of font to use in the body of the theorem.
{2\ccwd}% measure of space to indent.
{\bfseries}% name of head font.
{.}% punctuation between head and body.
{\ccwd}% space after theorem head; " " = normal interword space
{}% manually specify head (can be left empty, meaning `normal').

\theoremstyle{std}
% 定义新的定理
\newcommand{\theoremname}{定理}
\newcommand{\assertionname}{断言}
\newcommand{\axiomname}{公理}
\newcommand{\corollaryname}{推论}
\newcommand{\lemmaname}{引理}
\newcommand{\propositionname}{命题}
\newcommand{\definitionname}{定义}
\newcommand{\examplename}{例}
\newcommand{\remarkname}{注}
\renewcommand{\proofname}{证明}
\renewcommand{\lstlistingname}{代码}
\renewcommand{\algorithmcfname}{算法}

\newtheorem{theorem}                {\theoremname}     [chapter]
\newtheorem{assertion}  [theorem]   {\assertionname}
\newtheorem{axiom}      [theorem]   {\axiomname}
\newtheorem{corollary}  [theorem]   {\corollaryname}
\newtheorem{lemma}      [theorem]   {\lemmaname}
\newtheorem{proposition}[theorem]   {\propositionname}
\newtheorem{definition}             {\definitionname}  [chapter]
\newtheorem{example}                {\examplename}     [chapter]
\newtheorem*{remark}                {\remarkname}
% From MDPI.cls
%\renewcommand{\qed}{\unskip\nobreak\quad\qedsymbol} %% This places the symbol right after the text instead of placing it at the end on the line.
\renewenvironment{proof}[1][\proofname]{\par %% \proofname allows to have "Proof of my theorem"
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \bfseries %% "Proof" is bold
    #1\@addpunct{.}]\ignorespaces %% Period instead of colon
}{%
  \popQED\endtrivlist\@endpefalse
}

% 代码环境
\lstset{
    basicstyle=\small\ttfamily,
    xleftmargin=2pc,
    xrightmargin=2pc,
    frame=single,
    columns=flexible,
    numbers=left,
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 输入
\def\@refcolor{} % 给注释及引用使用颜色 on/off
\newcommand{\refcolor}[1]{\gdef\@refcolor{#1}}
%\def\@emptypagewords{} % 空白页留字
%\newcommand{\emptypagewords}[1]{\gdef\@emptypagewords{#1}}
\def\@beginright{} % 摘要、目录、第一章右侧打开 on/off
\newcommand{\beginright}[1]{\gdef\@beginright{#1}}

\newcommand{\Grade}[1]{\gdef\@grade{#1}}

\newcommand{\Title}[2]{\gdef\@titlecn{#1} \gdef\@titleen{#2}}
\newcommand{\Department}[1]{\gdef\@department{#1}}
\newcommand{\Major}[1]{\gdef\@major{#1}}
\newcommand{\Tutor}[1]{\gdef\@tutorcn{#1}}% \gdef\@tutordegree{#2}}
\newcommand{\Author}[1]{\gdef\@authorcn{#1}}
\newcommand{\StudentID}[1]{\gdef\@studentid{#1}}

\newcommand{\DateSubmit}[3]{%
  \gdef\@datesubmitm{#1}
  \gdef\@datesubmitd{#2}
  \gdef\@datesubmity{#3}}

\newcommand{\Abstract}[2]{\gdef\@abstrctcn{#1} \gdef\@abstrcten{#2}}
\newcommand{\Keyword}[2]{\gdef\@keywordcn{#1} \gdef\@keyworden{#2}}
\newcommand{\Listfigtab}[1]{\gdef\@listfigtab{#1}} % on/off
\newcommand{\Abbreviations}[1]{\gdef\@abbreviations{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CTeX调整
% 半角/缩进/行伸缩设置
\ctexset{%
  punct=quanjiao, % 全角
  autoindent=2,  % 缩进
  linestretch=2, % 行伸缩
}
% 目录页标题修改
\ctexset{%
  contentsname={目~~~~录},
  listfigurename={图~清~单},
  listtablename={表~清~单},
}
% 正文标题样式修改
\ctexset{%
  chapter={%章标题 : 三号黑体居中 单倍行距 段前/段后0.5行 另起新页
    name = {第,章},
    number = {\arabic{chapter}},
    format=\zihao{-3} \heiti \centering \thispagestyle{fancy},
    fixskip=true,
    beforeskip=30pt,
    afterskip=35pt,
    break=\clearpage,
  },
  section={%节标题 : 四号黑体居左 单倍行距 段前/段后0.5行
    format=\zihao{4} \heiti \raggedright,
    fixskip=true,
    beforeskip=22pt,
    afterskip=22pt,
  },
  subsection={%条标题 : 小四号黑体居左 单倍行距 段前/段后0.5行
    format=\fontsize{13pt}{20pt} \heiti \raggedright,
    fixskip=true,
    beforeskip=14pt,
    afterskip=14pt,
  },
  subsubsection={% 附加4级标题 : 小四号宋体加粗居左
    format=\zihao{-4} \heiti \raggedright ,
    fixskip=true,
    beforeskip=8pt,
    afterskip=8pt,
  },
  paragraph={% 附加5级标题 : 小四号宋体居左
    format=\zihao{-4} \songti \raggedright,
  },
  subparagraph={% 附加6级标题 : 小四号宋体居左
    format=\zihao{-4} \songti \raggedright,
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 页面设置
% 设置页面大小
% 上3.2cm，下2.8cm，左右空2.5cm(靠装订线一侧增加0.5cm空白用于装订)。
% 页眉2.2cm，页脚2.0cm；行间距：20磅。
\geometry{papersize={210mm,297mm}}
\ifthenelse{\equal{\@printtype}{twoside}}{% 双面面
  \geometry{top=3.2cm,bottom=2.8cm,left=2.5cm,right=2.5cm,headheight=1cm,footskip=0.8cm}
}{%
  \ifthenelse{\equal{\@printtype}{oneside}}{% 单面
    \geometry{top=32mm,bottom=28mm,left=25mm,right=25mm,headheight=10mm,footskip=8mm}
    \geometry{layouthoffset=5mm}}{}
}

% 设置空白页眉页脚
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}

% 设置目录格式
\titlecontents{chapter}[0pt]{\songti\zihao{-4}}{\thecontentslabel\quad }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{section}[1em]{\songti\zihao{-4}}{\thecontentslabel\quad }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{subsection}[2em]{\songti\zihao{-4}}{\thecontentslabel\quad }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{figure}[0pt]{\songti\zihao{5}}{图~\thecontentslabel\quad }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{table}[0pt]{\songti\zihao{5}}{表~\thecontentslabel\quad }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}

%段落间距设置，默认不开启
\setlength{\parskip}{0pt}

% 图表环境设置
\let\org@table\table
\let\org@endtable\endtable
\renewenvironment{table}[1][h!]
{\begin{spacing}{1.2} \org@table[#1] \songti\zihao{5}}
{\org@endtable \end{spacing}}

\let\org@longtable\longtable
\let\org@endlongtable\endlongtable
\renewenvironment{longtable}[1][h!]
{\begin{spacing}{1.2} \songti\zihao{5}\org@longtable[#1]}
{\org@endlongtable \end{spacing}}


%去掉图标环境中的多余空白
% 定公式、图、表、算法、代码的编号为"3-1"的形式
% 此处注释的语句会将计数保存，每章开始不会重新计数
%\@removefromreset{table}{chapter}
%\@removefromreset{figure}{chapter}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}%\enskip}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}%\enskip}
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\DeclareCaptionFormat{tabfigformat}{\heiti\zihao{5}{#1~~#3}}
\captionsetup[figure]{
  position=bottom, margin=0mm, format=tabfigformat,
  aboveskip=6pt, belowskip=-15pt, justification=centerlast}
\captionsetup[table]{
  position=top, margin=0mm, format=tabfigformat,
  aboveskip=0pt, belowskip=0pt, justification=centerlast}

%出现在页面中间的浮动对象与上下方文本之间的垂直距离
%缺省为 12pt plus 2pt minus 2pt。
%\setlength{\intextsep}{12pt \@plus2pt \@minus 2pt}

%出现在页面的顶部或底部的浮动对象之间的垂直距离
%缺省为 12pt plus 2pt minus 2pt
%\setlength{\floatsep}{12pt \@plus2pt \@minus2pt}

%出现在页面的顶部或底部的浮动对象与文本之间的垂直距离
% 缺省为 20pt plus 2pt minus 4pt。
%\setlength{\textfloatsep}{20bp \@plus2pt \@minus4pt}

% 设置参考文献格式
\renewcommand{\bibfont}{\small\baselineskip=20pt}
\newcommand\bibstyle@super{\bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\newcommand\bibstyle@numbers{\bibpunct{[}{]}{,}{n}{,}{,}}
\newcommand\bibstyle@authoryear{\bibpunct{(}{)}{;}{a}{,}{,}}
\bibpunct{[}{]}{,}{n}{}{}
%\setlength{\labelsep}{40pt} %序号之间的间距
\setlength{\bibsep}{0pt}
%定义引用上标
%\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}



%定义颜色
\definecolor{pink}{RGB}{255,192,203}
\definecolor{lime}{RGB}{0,255,0}
\definecolor{cyan}{RGB}{0,255,255}
% 设置PDF
\hypersetup{%
  colorlinks=true,
  bookmarksnumbered=true,
  bookmarksopen=true,
  pdffitwindow=true,
  pdfsubject={std thesis},
  pdfcreator={LaTeXed~By~WW}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 工具函数
\newcommand{\checkinput}{%检测输入元素
  \ifthenelse{\isundefined{\@titlecn}}{\errmessage{%
    Please set title by 'Title'.}}{}
  \ifthenelse{\isundefined{\@department}}{\errmessage{%
    Please set department by 'Department'.}}{}
  \ifthenelse{\isundefined{\@major}}{\errmessage{%
    Please set major by 'Major'.}}{}
  \ifthenelse{\isundefined{\@tutorcn}}{\errmessage{%
    Please set tutor name by 'Tutor'.}}{}
  \ifthenelse{\isundefined{\@authorcn}}{\errmessage{%
    Please set author name by 'Author'.}}{}
  \ifthenelse{\isundefined{\@studentid}}{\errmessage{%
    Please set student ID date by 'StudentID'.}}{}
  %\ifthenelse{\isundefined{\@dateenrolly}}{\errmessage{%
  %  Please set enroll date by 'DateEnroll'.}}{}
  %\ifthenelse{\isundefined{\@dategraduatey}}{\errmessage{%
  %  Please set graduate date by 'DateGraduate'.}}{}
  \ifthenelse{\isundefined{\@datesubmity}}{\errmessage{%
    Please set submite date by 'DateSubmit'.}}{}
  %\ifthenelse{\isundefined{\@datedefencey}}{\errmessage{%
  %  Please set defence date by 'DateDefence'.}}{}
  \ifthenelse{\equal{\@refcolor}{\empty}}{}{%
    \ifthenelse{\equal{\@refcolor}{on} \OR \equal{\@refcolor}{off}}{}{
    \errmessage{Please use 'on' of 'off' for refcolor.}}
  }
  \ifthenelse{\equal{\@beginright}{\empty}}{}{%
    \ifthenelse{\equal{\@beginright}{on} \OR \equal{\@beginright}{off}}{}{
    \errmessage{Please use 'on' of 'off' for beginright.}}
  }
  \ifthenelse{\isundefined{\@listfigtab}}{}{%
    \ifthenelse{\equal{\@listfigtab}{on} \OR \equal{\@listfigtab}{off}}{}{
    \errmessage{Please use 'on' of 'off' for listfigtab.}}
  }
}
\newcommand{\clearautopage}{%右侧起新页
  \clearpage
  \ifthenelse{\equal{\@printtype}{twoside}}{% 双面
    \ifodd\c@page
    \else
%     \hbox{}
%      \vspace*{\fill}
%      \begin{center}
%        {\textcolor[rgb]{0.75,0.75,0.75}{\@emptypagewords}}
%      \end{center}
%      \vspace{\fill}
%      \thispagestyle{empty}
%      \newpage
      \if@twocolumn \hbox{} \newpage \fi
    \fi
  }{}
}
\newcommand{\sethyper}{%设置链接引用颜色
  \hypersetup{%
    pdftitle={\@titlecn},
    pdfkeywords={\@keywordcn},
    pdfauthor={\@authorcn}
  }
  \ifthenelse{\equal{\@refcolor}{on}}{%
    \hypersetup{
      allcolors=blue,
    }
  }{%
    \hypersetup{
      allcolors=black,
    }
  }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AfterPreamble = AtBeginDocument
% AtEndPreamble -> AtBeginDocument -> AfterEndPreamble -> AtEndDocument -> AfterEndDocument
\AtBeginDocument{%
  \checkinput
  \sethyper
}
%默认不开启注释表
\AfterEndPreamble{%
  \makecover
  \abstructkeyword
  %\denotioan
  \makecontextlist

  \renewcommand{\headrulewidth}{0.4pt}
  \fancyfoot[C]{\zihao{5} \thepage}
  \fancyhead[C]{\zihao{5} 石家庄铁道大学毕业设计}
  \setcounter{page}{1}
}


%% 制作封面及声明
\newcommand{\makecover}{% 中文封面
{\pdfbookmark[0]{中文封面}{makecover}
  {\zihao{4} \heiti \noindent
    \makebox[11\ccwd][s]{\uline{石家庄铁道大学毕业设计}}%：{\bfseries \@clc}%
  }
  \vspace{50pt}

  \begin{spacing}{1.2}
  	\centering
    \ifthenelse{\isundefined{\@titlecn}}{\vspace{20pt}}{}
    \zihao{-1} \heiti \@titlecn

    \ifthenelse{\isundefined{\@titlecn}}{\vspace{20pt}}{%
     \vspace{10pt}
      \zihao{2} \@titleen
   }
  \end{spacing}

  \vspace{122pt}
  \begin{spacing}{1.3}
  	\centering
    \ziju{0.1}
    \zihao{3} \songti
    \begin{tabular}{cl}
    \uline{\makebox[2cm]\@grade}届 &\uline{\makebox[7cm]\@department}\\
      专 \qquad 业  & \uline{\makebox[7cm]\@major} \\
      姓 \qquad 名  & \uline{\makebox[7cm]\@authorcn} \\
      学 \qquad 号  & \uline{\makebox[7cm]\@studentid} \\
      指导教师  		& \uline{\makebox[7cm]\@tutorcn}
    \end{tabular}
  \end{spacing}

  \vspace{5cm}
  \centering
  \begin{spacing}{1.2}
  {\songti \zihao{3}
  完成日期：\@datesubmity 年  \@datesubmitm 月  \@datesubmitd 日}
  \end{spacing}
  \clearautopage
}}

\newcommand{\abstructkeyword}{% 摘要
{\pdfbookmark[0]{中英摘要}{abstructkeyword}
 \thispagestyle{empty}
  \begin{spacing}{1.43}%1.5+0.2
    \chapter*{摘\quad 要}
    {\zihao{-4} \songti ~
      \@abstrctcn \par ~\par
      {\noindent \heiti 关键字：} \@keywordcn
    }

    \clearpage

    \chapter*{ABSTRACT}
    {\zihao{-4} ~
      \@abstrcten \par ~\par
      {\noindent \bfseries Key words:} \@keyworden
    }

  \end{spacing}

  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}
\newcommand{\makecontextlist}{% 目录
{\pdfbookmark[0]{目录}{makecontextlist}
  \thispagestyle{empty}
  \tableofcontents
  \ifthenelse{\isundefined{\@listfigtab}}{}{%
    \ifthenelse{\equal{\@listfigtab}{on}}{%
      \thispagestyle{empty}
      \clearpage
      \pdfbookmark[0]{图目录}{listoffigures}
      \listoffigures
      \clearpage
      \pdfbookmark[0]{表目录}{listoftables}
      \listoftables
    }{}
  }
  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}
\newcommand{\denotioan}{% 缩写定义
{\pdfbookmark[0]{主要符号表}{denotioan}

  \chapter*{主要符号表}
  \ifthenelse{\isundefined{\@abbreviations}}{}{%
    %\centering
    %\begin{tabular}{cl}
      \@abbreviations
    %\end{tabular}%
  }
  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}


\newcommand{\chaptera}[1]{%无章号但编入目录
  \ctexset{chapter/numbering=false}
  \chapter{#1}
}
\newcommand{\summary}{%结论
  \ctexset{chapter/numbering=false}
  \chapter{结~~~~论}
}
\newcommand{\Bib}[2]{%参考文献
  \bibliographystyle{#1}
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{参考文献}
  \bibliography{#2}
}
\renewcommand{\appendix}{% 附录
  \ctexset{chapter/numbering=false}
  \chapter{附~~~~录}
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}

\newcommand{\acknowledgments}{%致谢
  \ctexset{chapter/numbering=false}
  \chapter{致~~~~谢}
}
\newcommand{\biography}{%作者简介
  \ctexset{chapter/numbering=false}
  \chapter{作者简介}
}

%% --END--
\endinput
