module Web.DOM.DOMParser
  ( DOMParser
  , newDOMParser
  , parseFromString
  , parseHTMLFromString
  , parseSVGFromString
  , parseXMLFromString
  ) where

import Effect (Effect)
import Web.DOM.Document (Document)

foreign import data DOMParser ∷ Type

--| Create a new `DOMParser`
foreign import newDOMParser ∷ Effect DOMParser

foreign import parseFromString ∷ String → String → DOMParser → Document

--| Convience function to parse HTML from a string
parseHTMLFromString ∷ String → DOMParser → Document
parseHTMLFromString =
  parseFromString "text/html"

--| Convience function to parse SVG from a string
parseSVGFromString ∷ String → DOMParser → Document
parseSVGFromString =
  parseFromString "image/svg+xml"

--| Convience function to parse XML from a string
parseXMLFromString ∷ String → DOMParser → Document
parseXMLFromString =
  parseFromString "application/xml"
