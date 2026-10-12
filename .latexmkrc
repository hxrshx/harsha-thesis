# Build settings picked up by latexmk (terminal and VS Code LaTeX Workshop).
@default_files = ('main.tex');
$pdf_mode = 1;                      # pdfLaTeX
$out_dir  = 'build';                # keep generated files out of the source folders
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# Biber lives in the user TeX tree, which is not on the default PATH.
$ENV{PATH} = "$ENV{HOME}/Library/texmf/bin:$ENV{PATH}";

# \include writes one .aux per subfolder, so those folders must exist in build/.
system('mkdir', '-p', map { "$out_dir/$_" } qw(frontmatter chapters appendix backmatter));
