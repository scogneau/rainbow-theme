vim9script

highlight clear
if exists("syntax_on")
  syntax reset
endif

#used to allow to set the right theme from vimrc
g:colors_name = "rainbow"

#
# Définition des couleurs du thème
var background = "#1c1c1c"
var foreground = "#F5FAFF"
var red = "#ED0033"
var orange = "#FF6600"
var yellow = '#FFCC00'
var green = '#087F8C'
var blue =  '#40BCD8'
var violet = '#9933CC'
var white = '#F5FAFF'
var grey = '#333333'

# Utility function
def ConfigureNormalText()
  exe "highlight Normal guibg=" .. background .. " guifg=" ..  foreground
enddef

def ConfigureCursorLine()
  exe "highlight CursorLine guibg=" .. grey .. " cterm=None"
enddef

def SetColor(token: string, color: string)
  exe  "highlight " .. token .. " guifg=" .. color
enddef

def SetColorBold(token: string, color: string)
  exe  "highlight " .. token .. " guifg=" .. color .. " cterm=bold"
enddef

def SetColorBg(token: string, color: string)
  exe  "highlight " .. token .. " guibg=" .. color
enddef


#Main function to set color
def ApplyTheme()
ConfigureNormalText()
ConfigureCursorLine()
SetColor('LineNr', white)
SetColorBold('VimCommand', red)
SetColor('VimVar', orange)
SetColorBold('VimDef', orange)
SetColor('Vim9LineComment', violet)
SetColor('NonText', white)
SetColor('Comment', violet)
SetColorBold('String', yellow)
SetColor('Keyword', red)
SetColor('Function', orange)
SetColor('vimLineComment', violet)
SetColor("Constant", green)
SetColor("Identifier", orange)
SetColor("Statement", blue)
SetColor("Preproc", green)
SetColor("Type", red)
SetColor("Special", orange)
SetColor("Regexp", green)
SetColor("VimUserFunc", white)


# Python
SetColorBold('pythonInclude', orange)
SetColor('pythonComment', violet)
SetColorBold('pythonOperator', red)
SetColorBold('pythonRepeat', red)
SetColorBold('pythonBuiltin', red)
SetColorBold('pythonStatement', red)

# Bash

SetColor('shComment', violet)

#Markdown
SetColorBold('markdownH1Delimiter', red)
SetColorBold('markdownH2Delimiter', orange)
SetColorBold('markdownH3Delimiter', yellow)
SetColorBold('markdownH4Delimiter', green)
SetColorBold('markdownH5Delimiter', blue)
SetColorBold('markdownH6Delimiter', violet)
SetColorBold('markdownH1', red)
SetColorBold('markdownH2', orange)
SetColorBold('markdownH3', yellow)
SetColorBold('markdownH4', green)
SetColorBold('markdownH5', blue)
SetColorBold('markdownH6', violet)
SetColor('markdownCodeBlock', orange)
SetColor('markdownLinkText', blue)
SetColor('markdownUrl', green)

#HCL
SetColor('hclBlockType', red)
SetColor('hclAttributeName', orange)

# Yaml
SetColorBold('yamlBlockMappingKey', red)
#HTML
SetColor('htmlString', yellow)
enddef

# Apply colors
ApplyTheme()