function! s:DetectFiletype()
    let first_line = getline(1)
    if first_line == '#!/usr/bin/nft -f'
        setl ft=nftables
    endif
endfunction

au BufRead,BufNewFile *.conf call s:DetectFiletype()
au BufRead,BufNewFile *.nft setl filetype=nftables
