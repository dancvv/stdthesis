%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %% <UTF-8>
%% %% 北航研究生毕业论文模板 - LaTeX 12-19-2018
%% %% 论文样式参考自《研究生手册--二〇一五年八月》
%% %% 基于ctexbook
%% %%
%% %% 初始版本作者:
%% %%   Wei Quanmao (weiqm@buaa.edu.cn)
%% %% 建议采用等宽字体查看本文档
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 模板标识
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{stdthesis}[2019 v1.0 STD thesis class]
\typeout{This is LaTeX template std, Version 2.1 (based on CTex) 12-19-2018}

%% 选项
%% 论文类型
\DeclareOption{bachelor}{\gdef\@thesis{bachelor}}             % 学术硕士论文
\DeclareOption{professional}{\gdef\@thesis{professional}} % 专业硕士论文
\DeclareOption{doctor}{\gdef\@thesis{doctor}}             % 博士论文
\DeclareOption{thesis}{\ClassWarning{std}{%fan
  You have not specified the THESIS option. The word thesis should be replaced by one of the following thesis type: bachelor(default), professional, doctor.
}}

%% 密级
\DeclareOption{public}{\gdef\@permission{public}}             % 公开
\DeclareOption{privacy}{\gdef\@permission{privacy}}           % 内部
\DeclareOption{secret}{\gdef\@permission{secret3}}            % 秘密 = 秘密3年
\DeclareOption{secret3}{\gdef\@permission{secret3}}           % 秘密3年
\DeclareOption{secret5}{\gdef\@permission{secret5}}           % 秘密5年
\DeclareOption{secret10}{\gdef\@permission{secret10}}         % 秘密10年
\DeclareOption{secret*}{\gdef\@permission{secret*}}           % 秘密永久
\DeclareOption{classified}{\gdef\@permission{classified5}}    % 机密 = 机密5年
\DeclareOption{classified3}{\gdef\@permission{classified3}}   % 机密3年
\DeclareOption{classified5}{\gdef\@permission{classified5}}   % 机密5年
\DeclareOption{classified10}{\gdef\@permission{classified10}} % 机密10年
\DeclareOption{classified*}{\gdef\@permission{classified*}}   % 机密永久
\DeclareOption{topsecret}{\gdef\@permission{topsecret10}}     % 绝密 = 绝密10年
\DeclareOption{topsecret3}{\gdef\@permission{topsecret3}}     % 绝密3年
\DeclareOption{topsecret5}{\gdef\@permission{topsecret5}}     % 绝密5年
\DeclareOption{topsecret10}{\gdef\@permission{topsecret10}}   % 绝密10年
\DeclareOption{topsecret*}{\gdef\@permission{topsecret*}}     % 绝密永久
\DeclareOption{permission}{\ClassWarning{std}{%
  You have not specified the PERMISSION option. The word permission should be replaced by one of the following thesis type: public, privacy, secret, classified, topsecret.
}}

%% 打印设置
\DeclareOption{oneside}{\gdef\@printtype{oneside}} % 单面打印
\DeclareOption{twoside}{\gdef\@printtype{twoside}} % 双面打印

%% 适应首字母大写
\DeclareOption{bachelor}{\gdef\@thesis{bachelor}}
\DeclareOption{Professional }{\gdef\@thesis{professional }}
\DeclareOption{Doctor}{\gdef\@thesis{doctor}}
\DeclareOption{Public}{\gdef\@permission{public}}
\DeclareOption{Privacy}{\gdef\@permission{privacy}}
\DeclareOption{Secret}{\gdef\@permission{secret3}}
\DeclareOption{Secret3}{\gdef\@permission{secret3}}
\DeclareOption{Secret5}{\gdef\@permission{secret5}}
\DeclareOption{Secret10}{\gdef\@permission{secret10}}
\DeclareOption{Secret}*{\gdef\@permission{secret*}}
\DeclareOption{Classified}{\gdef\@permission{classified5}}
\DeclareOption{Classified3}{\gdef\@permission{classified3}}
\DeclareOption{Classified5}{\gdef\@permission{classified5}}
\DeclareOption{Classified10}{\gdef\@permission{classified10}}
\DeclareOption{Classified*}{\gdef\@permission{classified*}}
\DeclareOption{TopSecret}{\gdef\@permission{topsecret10}}
\DeclareOption{TopSecret3}{\gdef\@permission{topsecret3}}
\DeclareOption{TopSecret5}{\gdef\@permission{topsecret5}}
\DeclareOption{TopSecret10}{\gdef\@permission{topsecret10}}
\DeclareOption{TopSecret*}{\gdef\@permission{topsecret*}}
\DeclareOption{Oneside}{\gdef\@printtype{oneside}}
\DeclareOption{Twoside}{\gdef\@printtype{twoside}}

%% 选项传递给ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}

%% 默认选项配置
\ExecuteOptions{bachelor,pubilc,oneside,a4paper,sub4section}
\ProcessOptions\relax

% 引用ctexbook: 小4,1.5倍行距
\LoadClass[UTF8,zihao=-4,linespread=1.7]{ctexbook}%1.5+0.2行间距
\setcounter{secnumdepth}{5}

\usepackage{graphicx}
\def\BUAAThesisVer{v2.1 12-19-2018}
\def\BUAAThesis{%
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
% 铁大版LaTex图标自定义
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
\RequirePackage[numbers,square,comma,super,sort&compress]{natbib}              % BibTex
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
\def\@emptypagewords{} % 空白页留字
\newcommand{\emptypagewords}[1]{\gdef\@emptypagewords{#1}}
\def\@beginright{} % 摘要、目录、第一章右侧打开 on/off
\newcommand{\beginright}[1]{\gdef\@beginright{#1}}

\newcommand{\Grade}[1]{\gdef\@grade{#1}}

\newcommand{\Title}[2]{\gdef\@titlecn{#1} \gdef\@titleen{#2}}
\newcommand{\Subtitle}[2]{\gdef\@subtitlecn{#1} \gdef\@subtitleen{#2}}

\newcommand{\Department}[1]{\gdef\@department{#1}}
\def\@branch{工学} % 学科大类
\newcommand{\Branch}[1]{\gdef\@branch{#1}}
\newcommand{\Major}[1]{\gdef\@major{#1}}
\newcommand{\Feild}[1]{\gdef\@feild{#1}}
\newcommand{\Tutor}[2]{\gdef\@tutorcn{#1} \gdef\@tutordegree{#2}}
\newcommand{\Cotutor}[3]{%
  \gdef\@cotutorcn{#1}
  \gdef\@cotutoren{#2}
  \gdef\@cotutordegree{#3}}
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
% 部分标题修改
\ctexset{%
  contentsname={目~~~~录},
  listfigurename={图~清~单},
  listtablename={表~清~单},
}
% 标题样式修改
\ctexset{%
  chapter={%章标题 : 三号黑体居中 单倍行距 段前/段后0.5行 另起新页
    name = {第,章},
    number = {\arabic{chapter}},
    format=\zihao{-3} \heiti \centering \thispagestyle{fancy},
    fixskip=true,
    beforeskip=35pt,
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
% A4纸页边距均25mm
% 打印留边平移5mm
\geometry{papersize={210mm,297mm}}
\ifthenelse{\equal{\@printtype}{twoside}}{% 双面面
  \geometry{top=25mm,bottom=25mm,left=27mm,right=27mm,headheight=10mm,footskip=7mm}
}{%
  \ifthenelse{\equal{\@printtype}{oneside}}{% 单面
    \geometry{top=25mm,bottom=25mm,left=27mm,right=27mm,headheight=10mm,footskip=7mm}
    \geometry{layouthoffset=5mm}}{}
}

% 设置空白页眉页脚
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}

% 设置目录格式
\titlecontents{chapter}[0pt]{\songti\zihao{-4}}{\thecontentslabel\ }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{section}[1em]{\songti\zihao{-4}}{\thecontentslabel\ }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{subsection}[2em]{\songti\zihao{-4}}{\thecontentslabel\ }{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{figure}[0pt]{\songti\zihao{5}}{图~\thecontentslabel\quad}{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{table}[0pt]{\songti\zihao{5}}{表~\thecontentslabel\quad}{}
{\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}

%段落间距设置，默认不开启
\setlength{\parskip}{0pt}

% 图表环境设置
\let\org@table\table
\let\org@endtable\endtable
\renewenvironment{table}[1][h!]
{\begin{spacing}{1.2} \org@table[#1] \heiti\zihao{5}}
{\org@endtable \end{spacing}}

\let\org@longtable\longtable
\let\org@endlongtable\endlongtable
\renewenvironment{longtable}[1][h!]
{\begin{spacing}{1.2} \heiti\zihao{5}\org@longtable[#1]}
{\org@endlongtable \end{spacing}}

\@removefromreset{table}{chapter}
\@removefromreset{figure}{chapter}
\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}
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
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}

% 设置PDF
\hypersetup{%
  colorlinks=true,
  bookmarksnumbered=true,
  bookmarksopen=true,
  pdffitwindow=true,
  %linkcolor=black,%将超链接字体颜色变为黑色
  pdfsubject={std thesis},
  pdfcreator={LaTeXed~By~WeiQM}
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
  \ifthenelse{\isundefined{\@feild}}{\errmessage{%
    Please set feild by 'Feild'.}}{}
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
      \hbox{}
      \vspace*{\fill}
      \begin{center}
        {\textcolor[rgb]{0.75,0.75,0.75}{\@emptypagewords}}
      \end{center}
      \vspace{\fill}
      \thispagestyle{empty}
      \newpage
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
\AfterEndPreamble{%
  \makecovercn
  %\makecoveren
  %\makecoverinner
  %\makestatementstd

  %\fancyfoot[C]{\zihao{5} \uppercase\expandafter{\romannumeral \thepage}}
  %\setcounter{page}{1}
  \abstructkeyword
  \makecontextlist
  %\denotioan

  \renewcommand{\headrulewidth}{0.4pt}
  \fancyfoot[C]{\zihao{5} \thepage}
  \fancyhead[C]{\zihao{5} 石家庄铁道大学毕业设计}
  \setcounter{page}{1}
}


%% 制作封面及声明
\newcommand{\makecovercn}{% 中文封面
{\pdfbookmark[0]{中文封面}{makecovercn}

  {\zihao{4} \heiti \noindent
    \makebox[11\ccwd][s]{\uline{石家庄铁道大学毕业设计}}%：{\bfseries \@clc}%

  }

  \vspace{80pt}


  %\vspace{20pt}
  \begin{spacing}{1.2}
  	\centering
    \ifthenelse{\isundefined{\@titlecn}}{\vspace{20pt}}{}
    \zihao{-1} \heiti \@titlecn

    \ifthenelse{\isundefined{\@titlecn}}{\vspace{20pt}}{%
     \vspace{10pt}
      \zihao{2} \@titleen
   }
  \end{spacing}

  \vspace{135pt}
  \begin{spacing}{1.3}
  	\centering
    \ziju{0.1}
    \zihao{3} \songti
    \begin{tabular}{cl}
    \uline{\makebox[2.5cm]\@grade}届 &\uline{\makebox[7cm]\@department}\\
      专 \qquad 业  & \uline{\makebox[7cm]\@major} \\
      姓 \qquad 名  & \uline{\makebox[7cm]\@authorcn} \\
      学 \qquad 号  & \uline{\makebox[7cm]\@studentid} \\
      指导教师  & \uline{\makebox[7cm]\@tutorcn} \\
               & \uline{\makebox[7cm]\@tutordegree}
    \end{tabular}
  \end{spacing}

  \vspace{100pt}
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
  \begin{spacing}{1.667}%1.5+0.2

    \chapter*{摘\quad 要}
    {\zihao{-4} \songti ~
      \@abstrctcn \par ~\par
      {\heiti 关键字：} \@keywordcn
    }

    \clearpage
    \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
    \chapter*{ABSTRACT}
    {\zihao{-4} ~
      \@abstrcten \par ~\par
      {\bfseries Key words:} \@keyworden
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
\newcommand{\achievement}{%学术成果
  \ctexset{chapter/numbering=false}
  \ifthenelse{\equal{\@thesis}{bachelor}}{\chapter{攻读硕士学位期间取得的学术成果}}{
  \ifthenelse{\equal{\@thesis}{professional}}{\chapter{攻读硕士学位期间取得的学术成果}}{
  \ifthenelse{\equal{\@thesis}{doctor}}{\chapter{攻读博士学位期间取得的研究成果}}{
  }}}
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
