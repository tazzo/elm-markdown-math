{-
-}


module Main exposing (..)


import Html exposing (node,div)
import Html.Attributes exposing (href, attribute)
import MarkdownMath

katexCss : Html.Html msg
katexCss = node "link"
        [ attribute "rel" "stylesheet"
        , attribute "integrity" "sha384-wITovz90syo1dJWVh32uuETPVEtGigN07tkttEqPv+uR2SE/mbQcG7ATL28aI9H0"
        , attribute "href"      "https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.7.1/katex.min.css"
        ] []

main = div [] [katexCss, demoMarkdownMath]

demoMarkdownMath = MarkdownMath.toHtml [] """

# Apple Pie Recipe

1. Invent the universe.
2. Bake an apple $$\\pi \\int_0^x$$.

"""
