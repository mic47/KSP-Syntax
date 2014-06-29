" Vim syntax file
" Language: Kerbal Space Program craft and save file  
" Maintainer: Michal Nánási
" Latest Revision: 15 June 2014

if exists("b:current_syntax")
  finish
endif

syn match kspString '\w\+' nextgroup=kspString,kspSeparator,kspComment skipwhite
syn match kspString '[\.'"/]' nextgroup=kspString,kspSeparator,kspComment skipwhite
syn keyword kspConstant True False nextgroup=kspSeparator,kspComment skipwhite
syn match kspConstant '-\=[0-9][0-9.eE]*' nextgroup=kspSeparator,kspComment skipwhite
syn match kspConstant '-\=\.[0-9.eE]\+' nextgroup=kspSeparator,kspComment skipwhite
syn match kspAssign '=' nextgroup=kspString,kspConstant,kspComment skipwhite
syn match kspWord '^\s*\w\+' nextgroup=kspAssign,kspComment skipwhite
syn match kspSeparator '[,:;]' nextgroup=kspConstant,kspString,kspComment skipwhite
syn match kspType '^\s*\w\+\s*$' nextgroup=kspAssign,kspComment skipwhite
syn match kspOperand '[][@!%+]'
syn match kspComment '\/\/.*$' 
syn match kspComment '^\s*\w\+\s\+\w\+[^=]*$' 

syn region kspBlock start="{" end="}" fold contains=ALL

let b:current_syntax = "craft"

hi def link kspAssign Statement
hi def link kspKeyword Statement 
hi def link kspSeparator Statement
hi def link kspString PreProc
hi def link kspType Statement
hi def link kspConstant Constant
hi def link kspBlock Statement 
hi def link kspWord Type 
hi def link kspComment Comment
hi def link kspOperand Statement
