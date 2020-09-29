" To check if neovim-qt is running, use `exists('g:GuiLoaded')`,
" see https://github.com/equalsraf/neovim-qt/issues/219
if exists('g:GuiLoaded')
    " call GuiWindowMaximized(1)
"    GuiTabline 0
    GuiTabline 0
    GuiPopupmenu 0
		GuiFont Consolas:h10
    function! AdjustFontSize(amount)
      let s:fontsize = s:fontsize+a:amount
      :execute "GuiFont! Consolas:h" . s:fontsize
    endfunction
    
    noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
    noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
    inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
    inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a
"    GuiLinespace 2
    "GuiFont! Hack:h8:l
    "GuiFont! Microsoft\ YaHei\ Mono:h8:l

    " Use shift+insert for paste inside neovim-qt,
    " see https://github.com/equalsraf/neovim-qt/issues/327#issuecomment-325660764
"    inoremap <silent>  <S-Insert>  <C-R>+
"    cnoremap <silent> <S-Insert> <C-R>+

    " For Windows, Ctrl-6 does not work. So we use this mapping instead.
    nnoremap <silent> <C-6> <C-^>
endif
