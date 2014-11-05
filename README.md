# vim-preserve

This plugin encapsulates an idea I first encountered [via this Vimcast
episode](http://vimcasts.org/episodes/tidying-whitespace/), [and via this post
by Jonathan Palardy](http://technotales.wordpress.com/2010/03/31/preserve-a-vim-function-that-keeps-your-state/).
It adds a `Preserve` function to vim which saves and restores window, cursor position and search state around a command, ala:

```
:call Preserve("%s/\\s\\+$//e")
```

There are a few implementations of this idea floating around.  The one used
here is credit to [`dougireton` on the Vimcast's
comments](http://vimcasts.org/episodes/tidying-whitespace/#comment-1059434294).
As compared to Drew Neil's version, this has the advantage of using the high-level
`winsaveview()/winrestview()` functions which save and restore the complete window
state versus just the cursor position.
