module Text.Markdown.Pap.Text (Text(..), List, List1(..)) where

import Control.Applicative ((<$>))
import Data.Maybe
import Data.List

data Text
	= Header Int String
	| Paras [String]
	| Code String
	| List List
	deriving Show

type List = [List1]
data List1 = OrdItem String List | BulItem String List deriving Show
