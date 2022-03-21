" clear cache so this reloads changes.
" useful for development
" lua package.loaded['carbon'] = nil
" lua package.loaded['carbon.theme'] = nil
" lua package.loaded['carbon.colors'] = nil
" lua package.loaded['carbon.util'] = nil
lua package.loaded['carbon.config'] = nil

lua require('carbon').colorscheme()
