module Text.Markdown.Pap (
	parse,
	Text(..), List, List1(..)
) where

import qualified Text.Markdown.Pap.Parser as P
import Text.Markdown.Pap.Text

parse :: String -> Maybe [Text]
parse = P.parseMrd
