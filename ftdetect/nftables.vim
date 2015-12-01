function! s:DetectFiletype()
    if index(['#!/usr/bin/nft -f', '#!/usr/sbin/nft -f', '#!/usr/bin/env nft -f'], getline(1)) != -1
        setl ft=nftables
    endif
endfunction

au BufRead,BufNewFile * call s:DetectFiletype()
au BufRead,BufNewFile *.nft setl filetype=nftables
