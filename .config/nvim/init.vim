" Share settings with Vim; resolve symlinks so the repo can live anywhere.
execute 'source' fnameescape(fnamemodify(resolve(expand('<sfile>:p')), ':h:h:h') . '/.vimrc')
