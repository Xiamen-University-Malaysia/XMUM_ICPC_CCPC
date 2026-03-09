\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xmum_icpc_ccpc_article}[2026/03/09 XMUM_ICPC_CCPC article class]

\LoadClass[11pt,a4paper]{ctexart}

\RequirePackage{fontspec}
\RequirePackage{microtype}
\RequirePackage{xeCJK}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{amsmath,amssymb}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{float}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{fancyhdr}
\RequirePackage{tikz}
\RequirePackage{zref-user,zref-lastpage,zref-hyperref}

\geometry{left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm}

\definecolor{headercolor}{HTML}{182e60}

\definecolor{cppbg}{HTML}{F7F9FC}
\definecolor{cppkeyword}{HTML}{005CC5}
\definecolor{cppcomment}{HTML}{2F7D32}
\definecolor{cppstring}{HTML}{B35C00}
\definecolor{cppnumber}{HTML}{6A737D}
\definecolor{cppstl}{HTML}{6F42C1}
\definecolor{cppfunc}{HTML}{0B7A75}
\definecolor{cppio}{HTML}{9A3412}
\definecolor{cppmacro}{HTML}{AF3A03}
\definecolor{cppinclude}{HTML}{C62828}

\lstdefinestyle{cpp}{
    language=C++,
    basicstyle=\ttfamily\small,
    keywordstyle=\color{cppkeyword}\bfseries,
    keywordstyle=[2]\color{cppstl}\bfseries,
    keywordstyle=[3]\color{cppfunc},
    keywordstyle=[4]\color{cppio}\bfseries,
    keywordstyle=[5]\color{cppinclude}\bfseries,
    morekeywords=[2]{
        vector,array,deque,list,forward_list,
        queue,priority_queue,stack,
        set,multiset,unordered_set,
        map,multimap,unordered_map,
        pair,tuple,bitset,string,
        function,greater,less
    },
    morekeywords=[3]{
        push_back,emplace_back,pop_back,
        push,pop,top,front,back,
        insert,emplace,erase,clear,
        begin,end,rbegin,rend,
        size,empty,resize,reserve,
        sort,stable_sort,reverse,
        lower_bound,upper_bound,binary_search,
        next_permutation,prev_permutation,
        max,min,max_element,min_element,
        accumulate,iota,unique,swap,find,count,fill,
        memset,memcpy
    },
    morekeywords=[4]{
        include,define,ifdef,ifndef,endif,if,else,elif,pragma,undef
    },
    moredelim=[l][\color{cppmacro}\bfseries]{\#},
    commentstyle=\color{cppcomment}\itshape,
    stringstyle=\color{cppstring},
    numbers=left,
    numberstyle=\scriptsize\color{cppnumber},
    stepnumber=1,
    numbersep=8pt,
    tabsize=4,
    showstringspaces=false,
    breaklines=true,
    frame=single,
    rulecolor=\color{headercolor},
    backgroundcolor=\color{cppbg},
    columns=fullflexible,
    keepspaces=true
}
\lstset{style=cpp}

\newcommand{\xmum@logopath}{../logo}
\newcommand{\xmum@covertypecn}{模板}
\newcommand{\xmum@covertypeen}{TEMPLATE}
\newcommand{\xmum@covermaincn}{厦门大学马来西亚分校\\算法竞赛兴趣小组}
\newcommand{\xmum@covermainen}{Xiamen University Malaysia\\Algorithm Contest Interest Group}
\newcommand{\xmum@logoblue}{xiamen_university_logo_blue.png}
\newcommand{\xmum@logowhite}{xiamen_university_logo_white.png}
\newcommand{\xmum@buildingblue}{xmum_building_blue.png}
\newcommand{\xmum@buildingwhite}{xmum_building_white.png}
\newcommand{\xmum@buildingcolor}{xmum_building.png}

\newcommand{\XMUMSetLogoPath}[1]{\gdef\xmum@logopath{#1}}
\newcommand{\XMUMSetCoverTypeCN}[1]{\gdef\xmum@covertypecn{#1}}
\newcommand{\XMUMSetCoverTypeEN}[1]{\gdef\xmum@covertypeen{#1}}
\newcommand{\XMUMSetCoverMainCN}[1]{\gdef\xmum@covermaincn{#1}}
\newcommand{\XMUMSetCoverMainEN}[1]{\gdef\xmum@covermainen{#1}}
\newcommand{\XMUMSetLogoBlue}[1]{\gdef\xmum@logoblue{#1}}
\newcommand{\XMUMSetLogoWhite}[1]{\gdef\xmum@logowhite{#1}}
\newcommand{\XMUMSetBuildingBlue}[1]{\gdef\xmum@buildingblue{#1}}
\newcommand{\XMUMSetBuildingWhite}[1]{\gdef\xmum@buildingwhite{#1}}
\newcommand{\XMUMSetBuildingColor}[1]{\gdef\xmum@buildingcolor{#1}}

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\fancyhead[C]{
    \begin{tikzpicture}[remember picture,overlay]
        \fill[headercolor] (current page.north west) rectangle ([yshift=-2.0cm]current page.north east);

        \node[anchor=west] at ([xshift=2.4cm,yshift=-1.05cm]current page.north west)
            {\includegraphics[height=1.2cm]{\xmum@logopath/xmum_logo_new_white.png}};

        \node[anchor=east] at ([xshift=-4.2cm,yshift=-0.90cm]current page.north east)
            {\includegraphics[height=1.2cm]{\xmum@logopath/icpc_logo.png}};

        \node[anchor=east] at ([xshift=-2.4cm,yshift=-1.05cm]current page.north east)
            {\includegraphics[height=1.2cm]{\xmum@logopath/ccpc_logo.png}};
    \end{tikzpicture}
}

\fancyfoot[R]{\raisebox{-15pt}[0pt][0pt]{\color{white}\Large\bfseries{第 \thepage\ 页 / 共 \hyperlink{RealLastPage}{\zref[page]{RealLastPage}} 页}}}
\fancyfoot[L]{
    \begin{tikzpicture}[remember picture,overlay]
        \fill[headercolor] (current page.south west) rectangle ([yshift=2.0cm]current page.south east);
    \end{tikzpicture}
    {\raisebox{-15pt}[0pt][0pt]{\color{white}\Large\bfseries\leftmark}}
}

\fancypagestyle{titlepage}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
    \fancyhead[C]{
        \begin{tikzpicture}[remember picture,overlay]
            \fill[headercolor] (current page.north west) rectangle ([yshift=-2.0cm]current page.north east);

            \node[anchor=west] at ([xshift=2.4cm,yshift=-1.05cm]current page.north west)
                {\includegraphics[height=1.2cm]{\xmum@logopath/xmum_logo_new_white.png}};

            \node[anchor=east] at ([xshift=-4.2cm,yshift=-0.90cm]current page.north east)
                {\includegraphics[height=1.2cm]{\xmum@logopath/icpc_logo.png}};

            \node[anchor=east] at ([xshift=-2.4cm,yshift=-1.05cm]current page.north east)
                {\includegraphics[height=1.2cm]{\xmum@logopath/ccpc_logo.png}};
        \end{tikzpicture}
    }
    \fancyfoot[L]{
        \begin{tikzpicture}[remember picture,overlay]
            \fill[headercolor] (current page.south west) rectangle ([yshift=2.0cm]current page.south east);
        \end{tikzpicture}
    }
}

\setmainfont{TeX Gyre Termes}
\setsansfont{Arial}
\setmonofont{Consolas}

\setCJKmainfont[BoldFont={SimHei},ItalicFont={SimSun},SlantedFont={SimSun}]{SimSun}
\setCJKsansfont[BoldFont={Microsoft YaHei},ItalicFont={Microsoft YaHei},SlantedFont={Microsoft YaHei}]{Microsoft YaHei}
\setCJKmonofont[BoldFont={FangSong},ItalicFont={FangSong},SlantedFont={FangSong}]{FangSong}

\setlist[itemize,enumerate,description]{itemsep=2pt,parsep=0pt,topsep=2pt,partopsep=0pt}

\newcommand{\XMUMMakeCover}{
    \thispagestyle{empty}
    \begin{tikzpicture}[remember picture,overlay]
        \node[anchor=north,inner sep=0] at ([yshift=-2.4cm]current page.north)
            {\includegraphics[width=0.20\paperwidth]{\xmum@logopath/\xmum@logoblue}};

        \node[inner sep=0, align=center, text=headercolor, font=\Huge\bfseries] at ([yshift=2cm]current page.center)
            {\xmum@covermaincn\xmum@covertypecn};

        \node[inner sep=0, align=center, text=headercolor, font=\LARGE] at ([yshift=-1cm]current page.center)
            {\xmum@covermainen};

        \node[inner sep=0, align=center, text=headercolor, font=\Huge] at ([yshift=-3cm]current page.center)
            {\xmum@covertypeen};

        \node[anchor=south,inner sep=0] at ([yshift=1.2cm]current page.south)
            {\includegraphics[width=0.9\paperwidth]{\xmum@logopath/\xmum@buildingblue}};
    \end{tikzpicture}
    \newpage
}

\newcommand{\XMUMMakeCoverWithBackground}{
    \thispagestyle{empty}
    \begin{tikzpicture}[remember picture,overlay]
        \fill[headercolor] (current page.north west) rectangle (current page.south east);

        \node[anchor=north,inner sep=0] at ([yshift=-2.4cm]current page.north)
            {\includegraphics[width=0.20\paperwidth]{\xmum@logopath/\xmum@logowhite}};

        \node[inner sep=0, align=center, text=white, font=\Huge\bfseries] at ([yshift=2cm]current page.center)
            {\xmum@covermaincn\xmum@covertypecn};

        \node[inner sep=0, align=center, text=white, font=\LARGE] at ([yshift=-1cm]current page.center)
            {\xmum@covermainen};

        \node[inner sep=0, align=center, text=white, font=\Huge] at ([yshift=-3cm]current page.center)
            {\xmum@covertypeen};

        \node[anchor=south,inner sep=0] at ([yshift=1.2cm]current page.south)
            {\includegraphics[width=0.9\paperwidth]{\xmum@logopath/\xmum@buildingwhite}};
    \end{tikzpicture}
    \newpage
}

\newcommand{\XMUMLogoPage}{
    \thispagestyle{empty}
    \begin{tikzpicture}[remember picture,overlay]
        \node[anchor=west] at ([xshift=2.4cm]current page.west|-current page.center)
            {\includegraphics[height=1.2cm]{\xmum@logopath/xmum_logo_new_blue.png}};

        \node[anchor=east] at ([xshift=-4.2cm,yshift=0.15cm]current page.east|-current page.center)
            {\includegraphics[height=1.2cm]{\xmum@logopath/icpc_logo.png}};

        \node[anchor=east] at ([xshift=-2.4cm]current page.east|-current page.center)
            {\includegraphics[height=1.2cm]{\xmum@logopath/ccpc_logo.png}};
    \end{tikzpicture}
    \newpage
}

\newcommand{\XMUMLogoPageWithBackground}{
    \thispagestyle{empty}
    \begin{tikzpicture}[remember picture,overlay]
        \fill[headercolor] (current page.north west) rectangle (current page.south east);

        \node[anchor=west] at ([xshift=2.4cm]current page.west|-current page.center)
            {\includegraphics[height=1.2cm]{\xmum@logopath/xmum_logo_new_white.png}};

        \node[anchor=east] at ([xshift=-4.2cm,yshift=0.15cm]current page.east|-current page.center)
            {\includegraphics[height=1.2cm]{\xmum@logopath/icpc_logo.png}};

        \node[anchor=east] at ([xshift=-2.4cm]current page.east|-current page.center)
            {\includegraphics[height=1.2cm]{\xmum@logopath/ccpc_logo.png}};
    \end{tikzpicture}
}

\newcommand{\XMUMCenterTextPage}[1]{
    \thispagestyle{titlepage}
    \vspace*{\fill}
    \begin{center}
        {\Huge\bfseries #1}
    \end{center}
    \vspace*{\fill}
    \newpage
}

\newcommand{\XMUMSchoolBackgroundPageBlue}{
    \clearpage
    \pagenumbering{gobble}
    \thispagestyle{empty}
    \begin{tikzpicture}[remember picture,overlay]
        \node[anchor=south,inner sep=0] at ([yshift=1.2cm]current page.south)
            {\includegraphics[width=0.9\paperwidth]{\xmum@logopath/\xmum@buildingblue}};
    \end{tikzpicture}
    \newpage
}

\newcommand{\XMUMSchoolBackgroundPageWhite}{
    \clearpage
    \pagenumbering{gobble}
    \thispagestyle{empty}
    \begin{tikzpicture}[remember picture,overlay]
        \fill[headercolor] (current page.north west) rectangle (current page.south east);

        \node[anchor=south,inner sep=0] at ([yshift=1.2cm]current page.south)
            {\includegraphics[width=0.9\paperwidth]{\xmum@logopath/\xmum@buildingwhite}};
    \end{tikzpicture}
    \newpage
}

\newcommand{\XMUMSchoolBackgroundPageColor}{
    \clearpage
    \pagenumbering{gobble}
    \thispagestyle{empty}
    \begin{tikzpicture}[remember picture,overlay]
        \node[anchor=south,inner sep=0] at ([yshift=1.2cm]current page.south)
            {\includegraphics[width=0.9\paperwidth]{\xmum@logopath/\xmum@buildingcolor}};
    \end{tikzpicture}
    \newpage
}

\newcommand{\XMUMMarkRealLastPage}{
    \hypertarget{RealLastPage}{}
    \zlabel{RealLastPage}
}
