# MarkdownMath in Elm

This package is for markdown/math parsing and rendering. It is based on the [marked][] and [katex][] projects which focuses on speed. See live demo [here](https://tazzo.github.io/elm-markdown-math-demo/)

[marked]: https://github.com/chjj/marked
[katex]: https://github.com/Khan/KaTeX
## Basic Usage

```elm
content : Html msg
content =
   MarkdownMath.toHtml [class "content"] """

# Apple Pie Recipe

  1. Invent the universe.
  2. Bake an apple $$\\pi$$.

"""
```

You can [download KaTeX](https://github.com/khan/katex/releases) and host it on your server or include the  `katex.min.css` files on your page directly from a CDN:

```html
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.7.1/katex.min.css" integrity="sha384-wITovz90syo1dJWVh32uuETPVEtGigN07tkttEqPv+uR2SE/mbQcG7ATL28aI9H0" crossorigin="anonymous">
```
**Warning:** Calling `MarkdownMath.toHtml` parses the whole block, so try not to
call it for no reason. In the `content` example above we only have to parse
the text once, but if we put it in a function we may be doing a lot of
unnecessary parsing.
