local screen = Vector2(guiGetScreenSize())
local w, h = 450, 280
local x, y = (screen.x-w)/2, (screen.y-h)/2


addCommandHandler("anderr", function()
   if not isTimer(render) then
      render = setTimer(function()
        rectangle(x,y,w,h,tocolor(10,10,10,220), {0.1, 0.1, 0.1, 0.1})	
      end,0,0)
   else
      killTimer(render)
   end
end)
