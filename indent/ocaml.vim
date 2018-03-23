if exists("b:did_indent") || expand('%:e') == 'mly'
 finish
endif
let b:did_indent = 1
if expand('%:e') == 'mll'
  let b:ocp_indent_args="--syntax=mll"
endif

call ocpindent#init()

setlocal indentexpr=ocpindent#OcpIndentLine()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=and\ ,0=class\ ,0=constraint\ ,0=done\ ,0=else\ ,0=end\ ,0=exception\ ,0=external\ ,0=if\ ,0=in\ ,0=include\ ,0=inherit\ ,0=initializer\ ,0=let\ ,0=module\ ,0=struct\ ,0=sig\ ,0=method\ ,0=open\ ,0=then\ ,0=type\ ,0=val\ ,0=with\ ,*<return>,0;;,0>],0\|],0>},0\|,0},0],0)
setlocal equalprg=
setlocal expandtab
