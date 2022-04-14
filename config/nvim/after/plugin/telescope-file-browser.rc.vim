if !exists('g:loaded_telescope') | finish | endif

nnoremap  <silent> ;b <cmd>lua require("telescope").extensions.file_browser.file_browser({cwd_to_path = true, grouped = true, path = "%:p:h"})<cr>

lua << EOF
require("telescope").load_extension "file_browser"
EOF

