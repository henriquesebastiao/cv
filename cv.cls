\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}

\LoadClass[10pt]{article}
\RequirePackage[margin=0.9in,top=0.9in]{geometry}
\RequirePackage[brazil]{babel}
\RequirePackage[
  pdfauthor={Henrique Sebastião da Silva Rosa},
  pdftitle={Henrique Sebastião da Silva Rosa},
  pdfsubject={
    Desenvolvedor back-end com 1 ano e 8 meses de experiência.
    Tenho conhecimento em redes de computadores há mais de 3 anos
    e com sistemas Linux há mais de 4 anos.
    Atualmente estou em busca de uma transição de carreira para a
    área de desenvolvimento,
    visando crescer e contribuir em ambientes e projetos inovadores.
  },
  pdfkeywords={
    backend,
    python,
    fastapi,
    django,
    git,
    docker,
    github,
    linux,
    postgresql,
    selenium,
    restfull,
    scrum,
    kanban,
    agile,
    aws,
    tdd,
    shell script,
  },
]{hyperref}
\RequirePackage{fontspec}
\RequirePackage{microtype}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{ifthen}

\def\yourname#1{\def\@yourname{#1}}
\def\youraddress#1{\def\@youraddress{#1}}
\def\yourportifolio#1{\def\@yourportifolio{#1}}
\def\yourgithub#1{\def\@yourgithub{#1}}
\def\youremail#1{\def\@youremail{#1}}
\def\yourwebsite#1{\def\@yourwebsite{#1}}

\setmainfont{Times New Roman}[Scale=0.9]
% \setmonofont{Fira Code}[Scale=0.97]
\geometry{a4paper}
\setlength\parindent{0pt}
\bibliographystyle{abbrvnat}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\cfoot{\thepage}
\rfoot{\today}
\setlist{
  leftmargin=0.5cm,
  topsep=0cm,
  partopsep=0cm,
  parsep=-0.04cm,
  before=\vspace{0.12cm},
  after=\vspace{0.08cm},
}

\hypersetup{
  colorlinks,
  citecolor=blue,
  filecolor=black,
  linkcolor=black,
  urlcolor=blue
}

% github
\newcommand{\github}[1]{%
  GitHub: \href{https://github.com/#1}{%
  \texttt{#1}}%
}

% deploy
\newcommand{\deploy}[1]{%
  Deploy: \href{https://#1.henriquesebastiao.com}{%
  \texttt{https://#1.henriquesebastiao.com}}%
}

% title
\renewcommand{\maketitle}{%
  \vspace*{-1.2cm}
  \begin{huge}
    \@yourname
  \end{huge}

  \vspace{0.25cm}%

  \@youraddress

  \vspace{0.25cm}%

  Portifólio: \href{https://\@yourportifolio}{\nolinkurl{\@yourportifolio}}\\
  GitHub: \href{https://\@yourgithub}{\nolinkurl{\@yourgithub}}\\
  Email: \href{mailto:\@youremail}{\nolinkurl{\@youremail}}\\
  Telefone: (69) 99346-7069
}

% section
\renewcommand{\section}[1]{%
  \vspace{0.3cm}%
  \par\hbox{\large\textbf{#1}\strut}%
  \vspace{-0.25cm}%
  \rule{\textwidth}{0.8pt}%
  \vspace{-0.15cm}%
}

% subsection
\renewcommand{\subsection}[2]{%
  \vspace{0.30cm}%
  \textbf{#1}%
  \hfill{#2}%
  \vspace{0.03cm}%
}

% subsubsection
\renewcommand{\subsubsection}[1]{%
  \linebreak
  \textit{#1}%
  \vspace{0.05cm}%
}

\newcommand{\project}[2]{
  \vspace{0.30cm}%
  Projeto: \textbf{#1 - #2}%
  \vspace{0.03cm}%
}
