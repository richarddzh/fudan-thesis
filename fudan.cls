%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  复旦大学（硕士）学位论文模版 (UTF-8/XeLaTex)
%%  2013-03 richard@bbs.fudan.edu.cn
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fudan}[2015/11/10 Fudan University Dissertation Format]

\LoadClass[12pt,a4paper,oneside,openany]{book}

\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}
\RequirePackage[slantfont,boldfont]{xeCJK} %% 不再使用CJKnumber选项
\RequirePackage{zhnumber} %% 用来取代CJKnumb宏包
\RequirePackage{titlesec} %% 产生中文章节样式
\RequirePackage{titletoc} %% 产生目录中的中文章节样式
\RequirePackage{tocbibind} %% 产生目录中的中文章节样式
\RequirePackage[numbers,sort&compress]{natbib} %% 根据使用gb7714.bst的要求添加
\RequirePackage[bookmarksnumbered]{hyperref}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{amsmath}
\RequirePackage{indentfirst}

\defaultfontfeatures{Mapping=tex-text} %% 使tex命令忽略双引号、连字符等
\setromanfont{Times New Roman}
\setCJKmainfont{宋体}
\settowidth{\parindent}{空格} %% 设置段首空格两个中文字符
\setCJKfamilyfont{youyuan}{黑体} %% 用来产生封面论文标题

%% 以下将水平方向左右边距全部调整为3cm
\setlength{\oddsidemargin}{0pt}
\setlength{\evensidemargin}{0pt}
\setlength{\marginparsep}{0pt}
\setlength{\hoffset}{0.46cm}
\setlength{\textwidth}{15cm}

%% 以下将垂直方向上下边距全部调整为3cm
\setlength{\voffset}{0.46cm}
\setlength{\topmargin}{0pt}
\setlength{\headheight}{0pt}
\setlength{\headsep}{0pt}
\setlength{\textheight}{23.7cm}

\linespread{1.3} %% 将行距调整至大约20磅的效果
\pagestyle{plain} %% 去掉页眉

%% 调整中文标题样式
\renewcommand{\contentsname}{目\hspace{1.5em}录}
\renewcommand{\chaptername}{第\zhnumber{\thechapter}章}
\titleformat{\chapter}[block]{\bfseries\Large\filcenter}{\chaptertitlename}{1em}{}
\titleformat{\section}{\bfseries\large}{\thesection}{1em}{}
\titleformat{\subsection}{\bfseries\fontsize{13}{16}}{\thesubsection}{1em}{}
\renewcommand{\bibname}{参考文献}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\appendixname}{附录\thechapter} %% 附录格式

%% 重新使用titletoc调整目录样式
\titlecontents{chapter}[0pt]{}{\contentspush{%
\ifnum0<0\thecontentslabel\relax
第\zhnumber{\thecontentslabel}章\ %
\else
附录\thecontentslabel\ 
\fi
}}{}{\titlerule*[8pt]{.}\contentspage}

%% 用来产生封面的命令
%% 需要fudan.png图片文件
\newcommand{\makefrontcover}[8]{\thispagestyle{empty} %% 去掉页码
\begin{flushright} 
\fontsize{9pt}{11pt}\selectfont
\begin{tabular}{rl}
学校代码：& #1 \\
学\hspace{2em}号：& #2 \\
\end{tabular}
\end{flushright}
\vspace{1.2cm}
\begin{center}
\includegraphics[width=7.68cm,height=2.86cm]{fudan.png}
\end{center}
\vspace{0.3cm}
\begin{center}
\fontsize{22pt}{22pt}\selectfont
硕\hspace{.5em}士\hspace{.5em}学\hspace{.5em}位\hspace{.5em}论\hspace{.5em}文
\end{center}
\vspace{1.5cm}
\begin{center}
\CJKfamily{youyuan}
\fontsize{18pt}{18pt}\selectfont
\textbf{#3}
\end{center}
\vspace{4.1cm}
\begin{flushright}
\fontsize{14pt}{24pt}\selectfont
\begin{tabular}{p{90pt}p{200pt}}
院\hspace{3.5em}系：& #4 \\
专\hspace{3.5em}业：& #5 \\
姓\hspace{3.5em}名：& #6 \\
指\hspace{.5em}导\hspace{.5em}教\hspace{.5em}师：& #7 \\
完\hspace{.5em}成\hspace{.5em}日\hspace{.5em}期：& #8 \\
\end{tabular}
\end{flushright}\newpage}

%% 引用gb7714标准的参考文献格式
%% bst文件下载自：http://bbs.ctex.org/forum.php?mod=viewthread&tid=33571
%% 进行了部分修改以减少编译错误
\bibliographystyle{gb7714}

\newcommand{\makebackcover}{\newpage\thispagestyle{empty} %% 去掉页码
\begin{spacing}{2.0}
\centerline{\textbf{\Large 论文独创性声明}}
\vspace{2em}

本论文是我个人在导师指导下进行的研究工作及取得的研究成果。
论文中除了特别加以标注和致谢的地方外，不包含其他人或其它机构已经发表或撰写过的研究成果。
其他同志对本研究的启发和所做的贡献均已在论文中作了明确的声明并表示了谢意。
\vspace{3em}

\rightline{作者签名: \rule{6em}{1pt}\hspace{2em} 日期: \rule{6em}{1pt}}
\vspace{7em}

\centerline{\textbf{\Large 论文使用授权声明}}
\vspace{2em}

本人完全了解复旦大学有关保留、使用学位论文的规定，
即：学校有权保留送交论文的复印件，允许论文被查阅和借阅；
学校可以公布论文的全部或部分内容，可以采用影印、缩印或其它复制手段保存论文。
保密的论文在解密后遵守此规定。
\vspace{3em}

\rightline{作者签名: \rule{6em}{1pt}\hspace{1em} 导师签名: \rule{6em}{1pt}\hspace{1em} 日期: \rule{6em}{1pt}}
\end{spacing}}





