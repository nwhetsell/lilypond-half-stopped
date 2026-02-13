# lilypond-half-stopped

You can use the file [half-stopped.ily](half-stopped.ily) in this repository to add half-stopped articulations to notes in LilyPond v2.24.0 or later. For example, running:

```sh
lilypond --output=half-stopped --svg - <<EOS
\version "2.24.0"
\include "half-stopped.ily"
\paper {
  page-breaking = #ly:one-line-auto-height-breaking
  top-margin = 0
  left-margin = 0
  right-margin = 0
  oddFooterMarkup = ##f
}
\pointAndClickOff
{ g'1\half-stopped }
EOS
```

will output:

<img src="half-stopped.svg">
