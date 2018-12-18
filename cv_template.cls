\LoadClass{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_template}[2018/12/17 CV template by Victor Sun] % template made by Victor Sun, please credit

\RequirePackage{titlesec} % spacing for titles
\pagenumbering{gobble} % no page numbers
%\RequirePackage{fontspec}\setmainfont{calibri} % font
\RequirePackage[top=1.5cm, bottom=1.5cm, left=1.65cm, right=1.65cm]{geometry}

% sectioning
% line spacing is 0.5
% before section is 16pt, after section is 6pt
% before each subsection is 10pt, after subsection is 3pt
% before list is 3pt, between list is 0pt, after list is ____
% before multicol is 3pt, after multicol is ___
% 
\RequirePackage{setspace}\setstretch{0.5} % spacing for whole doc
\RequirePackage{enumitem}\setitemize{topsep=3pt, parsep=0pt} % spacing before list, between list
\RequirePackage{multicol}\setlength\multicolsep{3pt}
\titleformat{\section}
	{\Large\scshape\raggedright} % large, all caps, align left \scshape \bfseries
	{}{0em} % prefix
	{} % code before heading
	[\titlerule] % h line after heading
\titleformat{\subsection}
	{\large\bfseries\scshape\raggedright}
	{}{0em} 
	{} 
\titlespacing{\section}
	{0pt}
	{16pt} % spacing before section
	{6pt} % spacing after section
\titlespacing{\subsection}
	{0pt}
	{10pt} % spacing before each subsection
	{3pt} % spacing after each subsection

% header
\newcommand{\name}[1]{
	\center {\Huge\bfseries{#1}}
}
\newcommand{\contact}[4]{
	{\center\large {\hfill #1 \hfill \hfill #2 \hfill \hfill #3 \hfill \hfill #4 \hfill}}
}

% first argument is regular, second argument pushes to the right of page
\newcommand{\subsectiontitle}[2]{
	\subsection{#1 \hfill #2}
}

\newcommand{\achievements}[2]{
	#1 \hfill \textit{#2}
}

% entry style with scshape
\newcommand{\entry}[5]{
	\subsection{#1 \hfill #2} % position, date \large\textbf
	{\large\textit {#3 \hfill #4}} % employer, location
	{#5} % description list \normalsize
}