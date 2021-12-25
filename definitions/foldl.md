foldl
1. Self-calls (tail-call) through the list, only beginning to produce values after reaching the end of the list.
2. Associates to the left.
3. Cannot be used with infinite lists. Try the infinite list example earlier and your REPL will hang.
4. Is nearly useless and should almost always be replaced with foldl'!

