" Vim syntax file
" Language: Kerbal Space Program craft and save file  
" Maintainer: Michal Nánási
" Latest Revision: 15 June 2014

if exists("b:current_syntax")
  finish
endif

syn match kspString '\S\+' nextgroup=kspString,kspSeparator skipwhite
syn keyword kspConstant True False nextgroup=kspSeparator skipwhite
syn match kspConstant '-\=[0-9.][0-9.eE]*' nextgroup=kspSeparator skipwhite
syn match kspAssign '=' nextgroup=kspString,kspConstant skipwhite
syn match kspWord '\w\+' nextgroup=kspAssign skipwhite
syn match kspSeparator ',' nextgroup=kspConstant,kspString skipwhite
syn match kspType '^\s*\w\+\s*$' nextgroup=kspAssign skipwhite

syn region kspBlock start="{" end="}" fold contains=kspConstant,kspKeyword,kspBlock,kspWord,kspType

let b:current_syntax = "craft"

hi def link kspAssign Statement
hi def link kspKeyword Statement 
hi def link kspSeparator Statement
hi def link kspString PreProc
hi def link kspType Statement
hi def link kspConstant Constant
hi def link kspBlock Statement 
hi def link kspWord Type 
