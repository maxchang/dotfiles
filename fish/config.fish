alias vi=vim
set -x PATH /home/mwchang/gpfs/bin /home/mwchang/gpfs/anaconda2/bin $PATH /home/mwchang/gpfs/bin/homer/bin /home/mwchang/gpfs/bin/ngsplot/bin
set -x NGSPLOT /home/mwchang/gpfs/bin/ngsplot

source (conda info --root)/etc/fish/conf.d/conda.fish
set -gx CONDA_LEFT_PROMPT 1
set -g theme_color_scheme base16

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
