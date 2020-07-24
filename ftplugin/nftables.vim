if exists('b:did_ftplugin')
    finish
endif
let b:did_ftplugin = 1

let s:save_cpo = &cpoptions
set cpoptions&vim

setlocal smartindent nocindent
setlocal commentstring=#%s
setlocal formatoptions-=t formatoptions+=croqnlj

setlocal comments=b:#

setlocal textwidth=99

let b:undo_ftplugin = '
    \ setlocal formatoptions< comments< commentstring<
    \'

let &cpoptions = s:save_cpo
unlet s:save_cpo
