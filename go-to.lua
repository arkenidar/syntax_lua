
--[[ "break" as key-word breaks only the inner-most loop when nesting loops ]]
--[[ "goto" to exit/break nested loops ]]
--[[ "goto" to emulate "continue" and "redo", besides "break" key-word]]
--[[ other cases possible ]]
--[[ limitation: in Lua you can "go to" only to local "goto-labels", local to the scope/function]]
local redo_limit = false
for i=1,5 do
  :: redo :: -- redo as a label

  if i==1 then
    goto continue -- "continue" EXPLANATION: skips, continue without
  end

  print(i)
  if i==2 and not redo_limit then
    redo_limit = true
    goto redo -- "redo" EXPLANATION: do again, re-do
  end

  -- break as key-word
  if i==4 then break end -- "break" EXPLANATION: ends the loop, exit the loop (innermost loop when nesting loops)

  :: continue :: -- continue as a label
end