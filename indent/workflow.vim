if exists('b:did_indent')
  finish
endif

let b:did_indent = 1

setlocal cindent
setlocal cinkeys-=0#

setlocal tabstop=2
setlocal shiftwidth=2
