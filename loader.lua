require("libs.utils")
local win_msg_hook = nil

function OnWndProc(uMsg, wParam, lParam)
    
	if uMsg == WM_KEYDOWN then
		if wParam == VK_F5 then
    		if (bit.band(GetAsyncKeyState(VK_CONTROL),0x8000) == 0x8000) then
        		lua_execute("test.lua")
            end
		end
	end
	
end

function Initialize()
    log.Warning("loader.lua loaded\n")
    win_msg_hook = dota.AddWinMsgHook(OnWndProc)
    
end
