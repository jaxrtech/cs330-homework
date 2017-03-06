\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2017/01/03 Homework Assigment LaTeX class]

\LoadClass[11pt]{article}

\RequirePackage[margin=0.75in, nomarginpar]{geometry} 
\RequirePackage{layout}
\RequirePackage[fleqn]{amsmath}
\RequirePackage{amsthm,amssymb}
\RequirePackage{xparse}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{titling}
\RequirePackage{etoolbox}
\RequirePackage{scrextend}
%\RequirePackage{listings}

%\edef\restoreparindent{\parindent=\the\parindent\relax}
\RequirePackage{parskip}
%\restoreparindent

\newcommand{\Mod}[1]{\ (\text{mod}\ #1)}

\newcommand{\R}{\mathbb{R}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\N}{\mathbb{N}}

\newcommand{\T}{\text{T}}

\let\tt\text
\let\bicond\leftrightarrow
\let\cond\rightarrow
\let\then\Longleftrightarrow % same as `\implies`

%%

\NewDocumentEnvironment{problem}{s O{Problem} m o}
  {\vspace*{0pt}
   \begin{trivlist}
     \item[\hskip \labelsep {\bfseries #2}\hskip \labelsep {\bfseries #3.}]
     \IfValueTF{#4}
       {#4 \IfBooleanT{#1}{\hspace*{\fill}\\}}
       {\hspace*{\fill}\\}
    \begin{addmargin}[2em]{0em} % 1em left, 0em right
  }
  {\end{addmargin}
   \end{trivlist}
   \vspace*{2em}}

\newenvironment{quoted}
  {\quote\makebox[0pt][r]{``}\ignorespaces}
  {\unskip''\endquote}

\setlength{\topskip}{0cm}
\setlength{\droptitle}{-1.25cm}
\everypar{\setlength\hangindent{1em}}

% restart equation numbering each block
% http://tex.stackexchange.com/a/261982/44533
\preto\equation{\setcounter{equation}{0}}
\makeatletter
\pretocmd\start@gather{\setcounter{equation}{0}}{}{}
\pretocmd\start@align{\setcounter{equation}{0}}{}{}
\pretocmd\start@multline{\setcounter{equation}{0}}{}{}
\makeatother

\makeatletter
\pretocmd\start@align{\vspace*{-7mm}}{}{}
\makeatother
