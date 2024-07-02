-- os.lua
local os = {}

-- Initialize the screen
function os.init()
    term.clear()
    term.setCursorPos(1, 1)
    print("Welcome to the OS!")
    os.run()
end

-- Run the main event loop
function os.run()
    while true do
        local event, button, x, y = os.pullEvent("mouse_click")
        os.handleClick(x, y)
    end
end

-- Handle click events
function os.handleClick(x, y)
    term.setCursorPos(x, y)
    term.write("X")
end

-- Draw a window
function os.drawWindow(x, y, width, height, title)
    term.setCursorPos(x, y)
    term.write("+" .. string.rep("-", width - 2) .. "+")
    for i = 1, height - 2 do
        term.setCursorPos(x, y + i)
        term.write("|" .. string.rep(" ", width - 2) .. "|")
    end
    term.setCursorPos(x, y + height - 1)
    term.write("+" .. string.rep("-", width - 2) .. "+")
    term.setCursorPos(x + 2, y)
    term.write(title)
end

return os
