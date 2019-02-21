% myschedule.cls
% Chinese weekly schedule template

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myschedule}[2017/5/26 v1.0 Normal article format]
\LoadClass[UTF8, scheme=chinese, zihao=-4]{ctexart}
\RequirePackage{geometry}
\RequirePackage{caption}
\RequirePackage{sty/cschedule}


% Page layout
\geometry{a4paper, left=3.18cm, right=3.18cm, top=2.54cm, bottom=2.54cm}
\pagestyle{empty}

% Font and format setting
\setCJKmainfont[BoldFont={[fonts/stzhongs.ttf]}, ItalicFont={[SimKai]}]{SimSun}
\setCJKsansfont{SimHei}
\setmainfont{Times New Roman}
\setsansfont{Arial}

\ctexset{
    section={
        format={\raggedright \sffamily \zihao{4}},
        number=\arabic{section}.,
    },
    subsection={
        format={\raggedright \bfseries \normalsize},
        number=\arabic{section}.\arabic{subsection}
    },
    subsubsection={
        format={\raggedright \normalsize},
        number=\arabic{section}.\arabic{subsection}.\arabic{subsubsection}
    },
    section/numberformat={\mdseries},
    subsection/numberformat={\mdseries}
}

\setcounter{secnumdepth}{3}
\captionsetup{font=small, labelfont=bf, labelsep=space}

\newcommand\SolidBox{\rule[-0.1em]{1em}{1em}}
\newcommand\HalfBox{\framebox[1em]{\rule[-0.1em]{1em}{0.5em}\rule[0.4em]{0pt}{0.5em}}}
\newcommand\EmptyBox{\framebox[1em]{\rule[-0.1em]{0pt}{1em}}}
\newcommand\None{\centering \large 无}
\newcommand*\DaySchedule[2]{%
 \noindent
 \framebox[\textwidth][c]{%
 \parbox[t][\height][t]{.45\textwidth}{%
 \medskip
 \centerline{\bfseries 目标} #1}
 \hspace{.05\textwidth}
 \parbox[t][\height][t]{.45\textwidth}{%
 \medskip
 \centerline{\bfseries 完成情况} #2}}
 \par \medskip}

% Special for schedule
\TextSize{\normalsize}
\CellHeight{0.9cm}
\CellWidth{3cm}
\TimeRange{8:30-22:00}
\SubUnits{30}
\BeginOn{Monday}
\SevenDay
\VPos{center}
\HPos{center}

\NewAppointment{Normal}{white}{black} % Normal task
\NewAppointment{Important}{white}{red} % Must be finish by one month
\NewAppointment{Emergent}{yellow}{red} % Must be finish by one week
