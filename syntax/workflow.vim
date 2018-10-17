if exists("b:current_syntax")
  finish
endif

" operators
syntax match workflowEquals '='

highlight link workflowEquals Operator


" string
syntax match workflowString "'.*'"
syntax match workflowString '".*"'

highlight link workflowString String


"" comment
syntax region workflowComment display oneline start='\%\(^\|\s\)#' end='$'

highlight link workflowComment Comment


" keywords
syntax keyword workflowRootKeywords
            \ workflow
            \ action
            \ nextgroup=workflowString skipwhite
syntax keyword workflowWorkflowKeywords
            \ on
            \ resolves
            \ nextgroup=workflowEquals skipwhite
syntax keyword workflowActionKeywords
            \ needs
            \ uses
            \ runs
            \ args
            \ env
            \ secrets
            \ nextgroup=workflowEquals skipwhite
syntax keyword workflowEventKeywords
            \ check_run
            \ check_suite
            \ commit_comment
            \ create
            \ delete
            \ deployment
            \ deployment_status
            \ fork
            \ gollum
            \ issue_comment
            \ issues
            \ label
            \ member
            \ milestone
            \ page_build
            \ project
            \ project_card
            \ project_column
            \ public
            \ pull_request
            \ pull_request_review_comment
            \ pull_request_review
            \ push
            \ repository_dispatch
            \ release
            \ status
            \ watch

highlight link workflowRootKeywords Statement
highlight link workflowWorkflowKeywords Type
highlight link workflowActionKeywords Type
highlight link workflowEventKeywords Type

let b:current_syntax = "workflow"
