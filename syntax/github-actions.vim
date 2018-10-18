if exists("b:current_syntax")
  finish
endif

" operators
syntax match GithubActionsEquals '='
highlight link GithubActionsEquals Operator


" string
syntax region GithubActionsString start=/"/ skip=/\\"/ end=/"/
highlight link GithubActionsString String


"" comment
syntax region GithubActionsComment display oneline start='\%\(^\|\s\)#' end='$'
highlight link GithubActionsComment Comment


" keywords
syntax keyword GithubActionsRootKeywords
            \ workflow
            \ action
            \ nextgroup=GithubActionsString skipwhite
syntax keyword GithubActionsWorkflowKeywords
            \ on
            \ resolves
            \ nextgroup=GithubActionsEquals skipwhite
syntax keyword GithubActionsActionKeywords
            \ needs
            \ uses
            \ runs
            \ args
            \ env
            \ secrets
            \ nextgroup=GithubActionsEquals skipwhite
syntax keyword GithubActionsEventKeywords
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
highlight link GithubActionsRootKeywords Statement
highlight link GithubActionsWorkflowKeywords Type
highlight link GithubActionsActionKeywords Type
highlight link GithubActionsEventKeywords Type

let b:current_syntax = "GithubActions"
