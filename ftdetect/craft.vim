function! CheckCraftElseCfg()
    let content=getline(1,100)
    if match(content, "PART\|PROP\|EXPERIMENT_DEFINITION\|RESOURCE_DEFINITION\|INTERNAL") >= 0
        set filetype=craft
    else
         set filetype=cfg
    endif
endfunction

au BufRead,BufNewFile *.craft set filetype=craft
au BufRead,BufNewFile *.sfs set filetype=craft
au BufRead,BufNewFile *.cfg set filetype=craft
