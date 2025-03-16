module Ast.AbstractSyntaxTree where

data TextTag = Default String 
            | Crossed String
            | Underlined String
            | Bold String
            | Italic String
            | CodeInline String
            | BoldItalic String
            | Color String String
            deriving (Show)

data AbntSection = Author String
                 | Institution String
                 | Subtitle String
                 | Location String
                 | Year String
                 deriving (Show)

data MainSection =  
                Empty
                | Paragraph TextTag
                | Abnt [AbntSection]
                | List String [MainSection]
                | Chap String [MainSection]
                | Ref String String String String String [MainSection]
                | Link String [MainSection]
                | Image String String [MainSection]
                | Video String [MainSection]
                | Audio String [MainSection]
                | Table [String] [[String]]
                | Code [MainSection]
                | Summary String
                | Page String
                | Abntchapter String String [MainSection]
                | Commentary String
                | LineBreak
                | Separator
                deriving (Show)

data Markers = MarkersMain String [MainSection]
               deriving (Show)