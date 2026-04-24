\version "2.24.0"

half-stopped-markup = \markup { \circle { \musicglyph #"scripts.stopped" } }

#(append! default-script-alist
  `(
    (half-stopped
      . (
          (stencil . ,ly:text-interface::print)
          (text . ,half-stopped-markup)
          (avoid-slur . around)
          (padding . 0.2)
          (direction . ,UP)
          (side-axis . ,Y)))))

half-stopped = #(make-articulation 'half-stopped)
