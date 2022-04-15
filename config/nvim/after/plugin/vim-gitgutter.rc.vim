if !exists('g:loaded_gitgutter') | finish | endif

" Update sign column every quarter second
set updatetime=250

function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

