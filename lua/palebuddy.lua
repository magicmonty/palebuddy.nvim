local Color, c, Group, g, s = require("colorbuddy").setup()
local v = vim.g

vim.opt.background = "dark"

local PaleNight = {
  fg =              "#a6accd",
  red =             "#ff5370",
  light_red =       "#ff869a",
  dark_red =        "#BE5046",
  green =           "#C3E88D",
  yellow =          "#ffcb6b",
  orange =          "#F78C6C",
  blue =            "#82b1ff",
  purple =          "#c792ea",
  blue_purple =     "#939ede",
  cyan =            "#89DDFF",
  white =           "#bfc7d5",
  black =           "#292D3E",
  visual_black =    "#000000",
  comment_grey =    "#697098",
  gutter_fg_grey =  "#4B5263",
  cursor_grey =     "#2C323C",
  visual_grey =     "#3E4452",
  menu_grey =       "#3E4452",
  special_grey =    "#3B4048",
  vertsplit =       "#181A1F",
  white_mask_1 =    "#333747",
  white_mask_3 =    "#474b59",
  white_mask_11 =   "#989aa2",
}

Color.new('fg',             PaleNight.fg)
Color.new('red',            PaleNight.red)
Color.new('light_red',      PaleNight.light_red)
Color.new('dark_red',       PaleNight.dark_red)
Color.new('green',          PaleNight.green)
Color.new('yellow',         PaleNight.yellow)
Color.new('orange',         PaleNight.orange)
Color.new('blue',           PaleNight.blue)
Color.new('purple',         PaleNight.purple)
Color.new('blue_purple',    PaleNight.blue_purple)
Color.new('cyan',           PaleNight.cyan)
Color.new('white',          PaleNight.white)
Color.new('black',          PaleNight.black)
Color.new('visual_black',   PaleNight.visual_black)
Color.new('comment_grey',   PaleNight.comment_grey)
Color.new('gutter_fg_grey', PaleNight.gutter_fg_grey)
Color.new('cursor_grey',    PaleNight.cursor_grey)
Color.new('visual_grey',    PaleNight.visual_grey)
Color.new('menu_grey',      PaleNight.menu_grey)
Color.new('special_grey',   PaleNight.special_grey)
Color.new('vertsplit',      PaleNight.vertsplit)
Color.new('white_mask_1',   PaleNight.white_mask_1)
Color.new('white_mask_3',   PaleNight.white_mask_3)
Color.new('white_mask_11',    PaleNight.white_mask_11)

v.terminal_color_0  = PaleNight.black
v.terminal_color_1  = PaleNight.red
v.terminal_color_2  = PaleNight.green
v.terminal_color_3  = PaleNight.yellow
v.terminal_color_4  = PaleNight.blue
v.terminal_color_5  = PaleNight.purple
v.terminal_color_6  = PaleNight.cyan
v.terminal_color_7  = PaleNight.white
v.terminal_color_8  = PaleNight.visual_grey
v.terminal_color_9  = PaleNight.dark_red
v.terminal_color_10 = PaleNight.green
v.terminal_color_11 = PaleNight.orange
v.terminal_color_12 = PaleNight.blue
v.terminal_color_13 = PaleNight.purple
v.terminal_color_14 = PaleNight.cyan
v.terminal_color_15 = PaleNight.comment_grey

--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("Comment",                        c.comment_grey,   c.none,         s.italic)     -- any comment
Group.new("Constant",                       c.yellow)                                       -- any constant
Group.new("String",                         c.green)                                        -- a string constant: "this is a string"
Group.new("Character",                      c.orange)                                       -- a character constant: 'c', '\n'
Group.new("Number",                         c.orange)                                       -- a number constant: 234, 0xff
Group.new("Boolean",                        c.orange)                                       -- a boolean constant: TRUE, false
Group.new("Float",                          c.orange)                                       -- a floating point constant: 2.3e10
Group.new("Identifier",                     c.red)                                          -- any variable name
Group.new("Function",                       c.blue)                                         -- function name (also: methods for classes)
Group.new("Statement",                      c.purple)                                       -- any statement
Group.new("Conditional",                    c.purple)                                       -- if, then, else, endif, switch, etc.
Group.new("Repeat",                         c.purple)                                       -- for, do, while, etc.
Group.new("Label",                          c.blue_purple)                                  -- case, default, etc.
Group.new("Operator",                       c.cyan)                                         -- sizeof", "+", "*", etc.
Group.new("Keyword",                        c.red)                                          -- any other keyword
Group.new("Exception",                      c.purple)                                       -- try, catch, throw
Group.new("PreProc",                        c.yellow)                                       -- generic Preprocessor
Group.new("Include",                        c.purple)                                       -- preprocessor #include
Group.new("Define",                         c.purple)                                       -- preprocessor #define
Group.new("Macro",                          g.Define)                                       -- same as Define
Group.new("PreCondit",                      c.yellow)                                       -- preprocessor #if, #else, #endif, etc.
Group.new("Type",                           c.yellow)                                       -- int, long, char, etc.
Group.new("StorageClass",                   c.yellow)                                       -- static, register, volatile, etc.
Group.new("Structure",                      c.yellow)                                       -- struct, union, enum, etc.
Group.new("Typedef",                        c.yellow)                                       -- A typedef
Group.new("Special",                        c.blue)                                         -- any special symbol
Group.new("SpecialChar")                                                                    -- special character in a constant
Group.new("Tag")                                                                            -- you can use CTRL-] on this
Group.new("Delimiter")                                                                      -- character that needs attention
Group.new("SpecialComment",                 c.comment_grey)                                 -- special things inside a comment
Group.new("Debug")                                                                          -- debugging statements
Group.new("Underlined",                     c.none,           c.none,         s.underline)  -- text that stands out, HTML links
Group.new("Ignore")                                                                         -- left blank, hidden
Group.new("Error",                          c.red)                                          -- any erroneous construct
Group.new("Todo",                           c.purple)                                       -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

-- Highlighting Groups (descriptions and ordering from `:h hitest.vim`)

--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("ColorColumn",                    c.none,           c.cursor_grey)                -- used for the columns set with 'colorcolumn'
Group.new("Conceal")                                                                        -- placeholder characters substituted for concealed text (see 'conceallevel')
Group.new("Cursor",                         c.black,          c.blue)                       -- the character under the cursor
Group.new("CursorIM")                                                                       -- like Cursor, but used when in IME mode
Group.new("CursorColumn",                   c.none,           c.cursor_grey)                -- the screen column that the cursor is in when 'cursorcolumn' is set
Group.new("CursorLine",                     c.none,           c.cursor_grey)                -- the screen line that the cursor is in when 'cursorline' is set
Group.new("Directory",                      c.blue)                                         -- directory names (and other special names in listings)
Group.new("DiffAdd",                        c.black,          c.green)                      -- diff mode: Added line
Group.new("DiffChange",                     c.black,          c.yellow)                     -- diff mode: Changed line
Group.new("DiffDelete",                     c.black,          c.red)                        -- diff mode: Deleted line
Group.new("DiffText",                       c.yellow,         c.black)                      -- diff mode: Changed text within a changed line
Group.new("ErrorMsg",                       c.red)                                          -- error messages on the command line
Group.new("VertSplit",                      c.vertsplit)                                    -- the column separating vertically split windows
Group.new("Folded",                         c.comment_grey,   c.cursor_grey)                -- line used for closed folds
Group.new("FoldColumn")                                                                     -- 'foldcolumn'
Group.new("SignColumn")                                                                     -- column where signs are displayed
Group.new("IncSearch",                      c.yellow,         c.comment_grey)               -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Group.new("LineNr",                         c.gutter_fg_grey)                               -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
Group.new("CursorLineNr")                                                                   -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
Group.new("MatchParen",                     c.blue,           c.none,         s.underline)  -- The character under the cursor or just before it, if it is a paired bracket, and its match.
Group.new("ModeMsg")                                                                        -- 'showmode' message (e.g., "-- INSERT --")
Group.new("MoreMsg")                                                                        -- more-prompt
Group.new("NonText",                        c.special_grey)                                 -- '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
Group.new("Normal",                         c.white,          c.black)                      -- normal text
Group.new("Pmenu",                          c.none,           c.menu_grey)                  -- Popup menu: normal item.
Group.new("PmenuSel",                       c.black,          c.blue)                       -- Popup menu: selected item.
Group.new("PmenuSbar",                      c.none,           c.special_grey)               -- Popup menu: scrollbar.
Group.new("PmenuThumb",                     c.none,           c.white)                      -- Popup menu: Thumb of the scrollbar.
Group.new("Question",                       c.purple)                                       -- hit-enter prompt and yes/no questions
Group.new("Search",                         c.black,          c.yellow)                     -- Last search pattern highlighting (see 'hlsearch'). Also used for highlighting the current line in the quickfix window and similar items that need to stand out.
Group.new("SpecialKey",                     c.special_grey)                                 -- Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
Group.new("SpellBad",                       c.red,            c.none,         s.underline)  -- Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
Group.new("SpellCap",                       c.orange)                                       -- Word that should start with a capital. This will be combined with the highlighting used otherwise.
Group.new("SpellLocal",                     c.orange)                                       -- Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
Group.new("SpellRare",                      c.orange)                                       -- Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
Group.new("StatusLine",                     c.white,          c.cursor_grey)                -- status line of current window
Group.new("StatusLineNC",                   c.comment_grey)                                 -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
Group.new("TabLine",                        c.comment_grey)                                 -- tab pages line, not active tab page label
Group.new("TabLineFill")                                                                    -- tab pages line, where there are no labels
Group.new("TabLineSel",                     c.white)                                        -- tab pages line, active tab page label
Group.new("Title",                          c.green)                                        -- titles for output from ":set all", ":autocmd" etc.
Group.new("Visual",                         c.visual_black,   c.blue:dark())                -- Visual mode selection
Group.new("VisualNOS",                      c.none,           c.blue:dark())                -- Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
Group.new("WarningMsg",                     c.yellow)                                       -- warning messages
Group.new("WildMenu",                       c.black,          c.blue)                       -- current match in 'wildmenu' completion

-- Language-Specific Highlighting

-- Dockerfile
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("dockerfileKeyword",              c.purple)

-- Shell
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("shSet",                          c.cyan)
Group.new("shSetOption",                    c.white)
Group.new("shStatement",                    c.cyan)
Group.new("shFunctionKey",                  c.purple)

-- CSS
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("cssAttrComma",                   c.purple)
Group.new("cssAttributeSelector",           c.green)
Group.new("cssBraces",                      c.white)
Group.new("cssClassName",                   c.orange)
Group.new("cssClassNameDot",                c.orange)
Group.new("cssDefinition",                  c.purple)
Group.new("cssFontAttr",                    c.orange)
Group.new("cssFontDescriptor",              c.purple)
Group.new("cssFunctionName",                c.blue)
Group.new("cssIdentifier",                  c.blue)
Group.new("cssImportant",                   c.purple)
Group.new("cssInclude",                     c.cyan)
Group.new("cssIncludeKeyword",              c.purple)
Group.new("cssMediaType",                   c.orange)
Group.new("cssProp",                        c.cyan)
Group.new("cssPseudoClassId",               c.orange)
Group.new("cssSelectorOp",                  c.white)
Group.new("cssSelectorOp2",                 c.purple)
Group.new("cssTagName",                     c.red)
Group.new("cssColor",                       c.orange)
Group.new("cssCommonAttr",                  c.blue)
Group.new("cssUnitDecorators",              c.yellow)

-- Go
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("goDeclaration",                  c.purple)

-- HTML
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("htmlTitle",                      c.white)
Group.new("htmlArg",                        c.yellow)
Group.new("htmlEndTag",                     c.cyan)
Group.new("htmlH1",                         c.white)
Group.new("htmlLink",                       c.purple)
Group.new("htmlSpecialChar",                c.orange)
Group.new("htmlSpecialTagName",             c.red)
Group.new("htmlTag",                        c.cyan)
Group.new("htmlTagName",                    c.red)

-- Coffeescript
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("coffeeExtendedOp",               c.purple)

-- JavaScript
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("javaScriptBraces",               c.white)
Group.new("javaScriptFunction",             c.purple)
Group.new("javaScriptIdentifier",           c.purple)
Group.new("javaScriptNull",                 c.orange)
Group.new("javaScriptNumber",               c.orange)
Group.new("javaScriptRequire",              c.cyan)
Group.new("javaScriptReserved",             c.purple)
-- https://github.com/pangloss/vim-javascript
Group.new("jsArrowFunction",                c.purple)
Group.new("jsClassKeyword",                 c.purple)
Group.new("jsClassDefinition",              c.yellow)
Group.new("jsClassMethodType",              c.purple)
Group.new("jsClassFuncName",                c.blue)
Group.new("jsDestructuringBlock",           c.blue)
Group.new("jsDocParam",                     c.blue)
Group.new("jsDocTags",                      c.purple)
Group.new("jsExport",                       c.purple)
Group.new("jsExportDefault",                c.red)
Group.new("jsExtendsKeyword",               c.purple)
Group.new("jsConditional",                  c.purple)
Group.new("jsOperator",                     c.purple)
Group.new("jsFrom",                         c.purple)
Group.new("jsFuncArgs",                     c.blue)
Group.new("jsFuncCall",                     c.blue)
Group.new("jsFuncName",                     c.blue)
Group.new("jsObjectProp",                   c.cyan)
Group.new("jsFunction",                     c.purple)
Group.new("jsGenerator",                    c.yellow)
Group.new("jsGlobalObjects",                c.yellow)
Group.new("jsImport",                       c.purple)
Group.new("jsModuleAs",                     c.purple)
Group.new("jsModuleWords",                  c.purple)
Group.new("jsModuleKeyword",                c.blue)
Group.new("jsModules",                      c.purple)
Group.new("jsNull",                         c.orange)
Group.new("jsStorageClass",                 c.purple)
Group.new("jsSuper",                        c.red)
Group.new("jsTemplateBraces",               c.dark_red)
Group.new("jsTemplateVar",                  c.green)
Group.new("jsThis",                         c.red)
Group.new("jsUndefined",                    c.orange)
Group.new("jsVariableDef",                  c.blue)
-- https://github.com/othree/yajs.vim
Group.new("javascriptArrowFunc",            c.purple)
Group.new("javascriptClassExtends",         c.purple)
Group.new("javascriptClassKeyword",         c.purple)
Group.new("javascriptDocNotation",          c.purple)
Group.new("javascriptDocParamName",         c.blue)
Group.new("javascriptDocTags",              c.purple)
Group.new("javascriptEndColons",            c.white)
Group.new("javascriptExport",               c.purple)
Group.new("javascriptFuncArg",              c.white)
Group.new("javascriptFuncKeyword",          c.purple)
Group.new("javascriptIdentifier",           c.red)
Group.new("javascriptImport",               c.purple)
Group.new("javascriptMethodName",           c.white)
Group.new("javascriptObjectLabel",          c.white)
Group.new("javascriptOpSymbol",             c.cyan)
Group.new("javascriptOpSymbols",            c.cyan)
Group.new("javascriptPropertyName",         c.green)
Group.new("javascriptTemplateSB",           c.dark_red)
Group.new("javascriptVariable",             c.purple)

-- JSON
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("jsonCommentError",               c.white)
Group.new("jsonKeyword",                    c.blue)
Group.new("jsonBoolean",                    c.orange)
Group.new("jsonNumber",                     c.orange)
Group.new("jsonQuote",                      c.white)
Group.new("jsonMissingCommaError",          c.red,            c.none,         s.reverse)
Group.new("jsonNoQuotesError",              c.red,            c.none,         s.reverse)
Group.new("jsonNumError",                   c.red,            c.none,         s.reverse)
Group.new("jsonString",                     c.green)
Group.new("jsonStringSQError",              c.red,            c.none,         s.reverse)
Group.new("jsonSemicolonError",             c.red,            c.none,         s.reverse)

-- Markdown
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("markdownCode",                   c.green)
Group.new("markdownLinkReference",          c.comment_grey)
Group.new("markdownJekyllFrontMatter",      c.comment_grey)
Group.new("markdownCodeBlock",              c.green)
Group.new("markdownCodeDelimiter",          c.green)
Group.new("markdownHeadingDelimiter",       c.red)
Group.new("markdownRule",                   c.comment_grey)
Group.new("markdownHeadingRule",            c.comment_grey)
Group.new("htmlH1",                         c.blue)
Group.new("htmlH2",                         c.blue)
Group.new("htmlH3",                         c.blue)
Group.new("htmlH4",                         c.blue)
Group.new("htmlH5",                         c.blue)
Group.new("htmlH6",                         c.blue)
Group.new("mkdDelimiter",                   c.cyan)
Group.new("markdownId",                     c.purple)
Group.new("markdownBlockquote",             c.comment_grey)
Group.new("markdownItalic",                 c.purple,         c.none,         s.italic)
Group.new("mkdBold",                        c.yellow,         c.none,         s.bold)
Group.new("mkdInlineURL",                   c.light_red)
Group.new("mkdListItem",                    c.yellow)
Group.new("markdownOrderedListMarker",      c.red)
Group.new("markdownIdDeclaration",          c.blue)
Group.new("mkdLink",                        c.white)
Group.new("markdownLinkDelimiter",          c.white)
Group.new("mkdURL",                         c.light_red)

-- Ruby
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("rubyAccess",                     c.cyan)
Group.new("rubyBlockParameter",             c.yellow)
Group.new("rubyBlockParameterList",         c.white)
Group.new("rubyBoolean",                    c.orange)
Group.new("rubyCapitalizedMethod",          c.blue)
Group.new("rubyClass",                      c.blue)
Group.new("rubyClassName",                  c.yellow)
Group.new("rubyConstant",                   c.yellow)
Group.new("rubyControl",                    c.purple)
Group.new("rubyEscape",                     c.red)
Group.new("rubyFunction",                   c.blue)
Group.new("rubyGlobalVariable",             c.red)
Group.new("rubyInclude",                    c.cyan)
Group.new("rubyIncluderubyGlobalVariable",  c.cyan)
Group.new("rubyInstanceVariable",           c.red)
Group.new("rubyInterpolation",              c.cyan)
Group.new("rubyInterpolationDelimiter",     c.red)
Group.new("rubyModuleName",                 c.white)
Group.new("rubyKeyword",                    c.purple)
Group.new("rubyKeywordAsMethod",            c.cyan)
Group.new("rubyOperator",                   c.purple)
Group.new("rubyPredefinedConstant",         c.yellow)
Group.new("rubyPseudoVariable",             c.blue)
Group.new("rubyRegexp",                     c.white)
Group.new("rubyRegexpDelimiter",            c.cyan)
Group.new("rubySharpBang",                  c.comment_grey)
Group.new("rubyStringDelimiter",            c.green)
Group.new("rubySymbol",                     c.blue)

-- ERb
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("erubyDelimiter",                 c.red)

-- Rails
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("railsAssetPreProc",              c.comment_grey)
Group.new("railsAssetInclude",              c.cyan)
Group.new("railsAssetIncluded",             c.cyan)
Group.new("rubyRailsMethod",                c.blue)
Group.new("rubyRailsFilterMethod",          c.cyan)
Group.new("rubyRailsRenderMethod",          c.cyan)
Group.new("rubyRailsARAssociationMethod",   c.cyan)
Group.new("rubyRailsHelperMethod",          c.cyan)

-- RSpec
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("rspecGroupMethods",              c.white)
Group.new("rspecBeforeAndAfter",            c.white)

-- Sass
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
-- https://github.com/tpope/vim-haml
Group.new("sassAmpersand",                  c.red)
Group.new("sassClass",                      c.orange)
Group.new("sassControl",                    c.purple)
Group.new("sassExtend",                     c.purple)
Group.new("sassFor",                        c.white)
Group.new("sassFunction",                   c.cyan)
Group.new("sassId",                         c.blue)
Group.new("sassInclude",                    c.cyan)
Group.new("sassMedia",                      c.purple)
Group.new("sassMediaOperators",             c.white)
Group.new("sassMixin",                      c.purple)
Group.new("sassMixinName",                  c.blue)
Group.new("sassMixing",                     c.purple)
Group.new("sassVariable",                   c.orange)
-- https://github.com/cakebaker/scss-syntax.vim
Group.new("scssExtend",                     c.purple)
Group.new("scssExtendedSelector",           c.orange)
Group.new("scssFunctionName",               c.cyan)
Group.new("scssImport",                     c.purple)
Group.new("scssInclude",                    c.cyan)
Group.new("scssMixin",                      c.purple)
Group.new("scssMixinName",                  c.blue)
Group.new("scssSelectorName",               c.yellow)
Group.new("scssVariable",                   c.orange)

-- TypeScript
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("typescriptReserved",             c.purple)
Group.new("typescriptEndColons",            c.white)
Group.new("typescriptBraces",               c.white)

-- XML
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("xmlAttrib",                      c.yellow)
Group.new("xmlEndTag",                      c.red)
Group.new("xmlTag",                         c.red)
Group.new("xmlTagName",                     c.red)

-- PHP
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("phpInclude",                     c.cyan)
Group.new("phpClass",                       c.yellow)
Group.new("phpClasses",                     c.yellow)
Group.new("phpFunction",                    c.blue)
Group.new("phpType",                        c.purple)
Group.new("phpKeyword",                     c.purple)
Group.new("phpVarSelector",                 c.white)
Group.new("phpIdentifier",                  c.white)
Group.new("phpMethod",                      c.blue)
Group.new("phpBoolean",                     c.orange)
Group.new("phpParent",                      c.white)
Group.new("phpOperator",                    c.purple)
Group.new("phpRegion",                      c.purple)
Group.new("phpUseNamespaceSeparator",       c.white)
Group.new("phpClassNamespaceSeparator",     c.white)
Group.new("phpDocTags",                     c.purple,         c.none,         s.italic)
Group.new("phpDocParam",                    c.purple,         c.none,         s.italic)

-- Dart
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("dartLibrary",                    c.purple)
Group.new("dartTypedef",                    c.purple)
Group.new("dartClassDecl",                  c.purple)
Group.new("dartCoreType",                   c.purple)
Group.new("dartStorageClass",               c.purple)
Group.new("dartOperator",                   c.purple)
Group.new("dartMetadata",                   c.purple)
Group.new("dartKeyword",                    c.purple)

-- Plugin Highlighting

-- mhinz/vim-signify
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("SignifySignAdd",                 c.green)
Group.new("SignifySignChange",              c.yellow)
Group.new("SignifySignDelete",              c.red)

-- airblade/vim-gitgutter
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.link('GitGutterAdd',    g.SignifySignAdd)
Group.link('GitGutterChange', g.SignifySignChange)
Group.link('GitGutterDelete', g.SignifySignDelete)

-- neomake/neomake
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("NeomakeWarningSign",             c.yellow)
Group.new("NeomakeErrorSign",               c.red)
Group.new("NeomakeInfoSign",                c.blue)

-- tpope/vim-fugitive
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("diffAdded",                      c.green)
Group.new("diffRemoved",                    c.red)

-- liuchengxu/vista.vim
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("VistaBracket",                   c.purple)
Group.new("VistaChildrenNr",                c.orange)
Group.new("VistaScope",                     c.blue_purple)
Group.new("VistaTag",                       c.purple)
Group.new("VistaPrefix",                    c.blue_purple)
Group.new("VistaParenthesis",               c.purple)
Group.new("VistaColon",                     c.cyan)
Group.new("VistaIcon",                      c.cyan)
Group.new("VistaLineNr",                    c.comment_grey)
Group.new("VistaArgs",                      c.comment_grey)
Group.new("VistaKind",                      c.comment_grey)
Group.new("VistaScopeKind",                 c.yellow)

-- termdebug
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("debugBreakpoint",                c.blue_purple)
Group.new("debugPC",                        c.black,          c.blue_purple)

-- davidhalter/jedi-vim
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("jediFunction",                   c.white,          c.white_mask_3)
Group.new("jediFat",                        c.blue,           c.white_mask_3, s.bold + s.underline)

-- Git Highlighting
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("gitcommitComment",               c.comment_grey)
Group.new("gitcommitUnmerged",              c.green)
Group.new("gitcommitOnBranch")
Group.new("gitcommitBranch",                c.purple)
Group.new("gitcommitDiscardedType",         c.red)
Group.new("gitcommitSelectedType",          c.green)
Group.new("gitcommitHeader")
Group.new("gitcommitUntrackedFile",         c.cyan)
Group.new("gitcommitDiscardedFile",         c.red)
Group.new("gitcommitSelectedFile",          c.green)
Group.new("gitcommitUnmergedFile",          c.yellow)
Group.new("gitcommitFile")
Group.new("gitcommitSummary",               c.white)
Group.new("gitcommitOverflow",              c.red)
Group.link("gitcommitNoBranch",       g.gitcommitBranch)
Group.link("gitcommitUntracked",      g.gitcommitComment)
Group.link("gitcommitDiscarded",      g.gitcommitComment)
Group.link("gitcommitSelected",       g.gitcommitComment)
Group.link("gitcommitDiscardedArrow", g.gitcommitDiscardedFile)
Group.link("gitcommitSelectedArrow",  g.gitcommitSelectedFile)
Group.link("gitcommitUnmergedArrow",  g.gitcommitUnmergedFile)

-- nvim-cmp
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("CmpItemAbbr",                    c.white)
Group.new("CmpItemAbbrDeprecated",          g.Comment)
Group.new("CmpItemAbbrMatch",               c.green,          c.none,         s.bold)
Group.new("CmpItemAbbrMatchFuzzy",          c.green,          c.none,         s.italic)
Group.new("CmpItemKind",                    c.blue)
Group.new("CmpItemMenu",                    g.Comment)

-- Telescope
--        Name                              FG                BG              Style
----------------------------------------------------------------------------------------------
Group.new("TelescopePromptBorder",          c.yellow)
Group.new("TelescopePromptPrefix",          g.TelescopePromptBorder.fg:dark(), c.none, s.bold)
Group.new("TelescopeResultsBorder",         c.green)

-- TreeSitter
Group.new("TSAttribute", c.yellow)
Group.new("TSBoolean", c.orange)
Group.new("TSCharacter", c.orange)
Group.new("TSConstructor", c.purple)
Group.new("TSConstant", c.yellow)
Group.new("TSConstBuiltin", c.orange)
Group.link("TSConstMacro", g.Define)
Group.link("TSError", g.Error)
Group.new("TSException", c.red)
Group.new("TSField", c.blue)
Group.new("TSFloat", c.red)
Group.link("TSFuncMacro", g.Define)
Group.new("TSInclude", c.cyan)
Group.new("TSKeywordOperator", c.red)
Group.new("TSKeywordReturn", c.cyan)
Group.new("TSLabel", c.red)
Group.new("TSNamespace", c.yellow)
Group.new("TSNumber", c.orange)
Group.new("TSOperator", c.cyan)
Group.new("TSParameter", c.blue)
Group.new("TSParameterReference", c.blue)
Group.new("TSProperty", c.gray)
Group.new("TSPunctDelimiter", c.cyan)
Group.new("TSPunctBracket", c.cyan)
Group.new("TSPunctSpecial", c.cyan)
Group.new("TSStringRegex", c.blue)
Group.new("TSStringEscape", c.comment_grey)
Group.new("TSSymbol", c.yellow)
Group.new("TSStrong", c.blue, c.none, s.bold)
Group.new("TSType", c.purple)
Group.new("TSTypeBuiltin", c.purple)
Group.new("TSTag", c.red)
Group.new("TSTagDelimiter", c.cyan)
Group.new("TSTagAttribute", c.comment_grey)
Group.new("TSText", c.fg)
Group.new("TSTextReference", c.yellow)
Group.new("TSEmphasis", c.blue)
Group.new("TSUnderline", c.fg, c.none, s.underline)
Group.new("TSStrike", c.none, c.none, s.NONE)
Group.new("TSTitle", c.white, c.none, s.bold)
Group.new("TSLiteral", c.fg)
Group.new("TSURI", c.blue, c.none, s.underline)
Group.new("TSMath", c.blue)
