alias vi=vim
set -x PATH /home/mwchang/gpfs/bin /home/mwchang/gpfs/anaconda2/bin $PATH /gpfs/data01/cbenner/software/homer/bin /gpfs/data01/cbenner/software/homer/scripts /gpfs/data01/mchang/bin/ngsplot/bin
set -x NGSPLOT /gpfs/data01/mchang/bin/ngsplot

source (conda info --root)/etc/fish/conf.d/conda.fish
set -gx CONDA_LEFT_PROMPT 1
set -g theme_color_scheme base16
