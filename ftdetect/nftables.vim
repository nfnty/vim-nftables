function! s:DetectFiletype()
    if getline(1) =~# '^#!.*/nft\(\s\|$\)'
        setl ft=nftables
    endif
endfunction

au BufRead,BufNewFile * call s:DetectFiletype()
au BufRead,BufNewFile *.nft setl filetype=nftables
