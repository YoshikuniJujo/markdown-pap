module Text.Markdown.Pap.Text (
	Text(..), List, List1(..), Address, Title) where

data Text
	= Header Int String
	| Paras [String]
	| Code String
	| List List
	| Link String Address Title
	deriving Show

type List = [List1]
data List1 = OrdItem String List | BulItem String List deriving Show

type Address = String
type Title = String
