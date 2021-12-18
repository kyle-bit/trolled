--[[
Made by Black Wolf. 
Discord: Black Wolf#1990

]]

function TROLLED()
    surface.CreateFont("WolfStuck", {
		font = "Roboto",
		extended = false,
		size = ScrH() * 0.020,
	})
    surface.CreateFont("WolfDiscord", {
		font = "Roboto",
		extended = false,
		size = ScrH() * 0.011,
	})

local frame = vgui.Create("DFrame")
frame:SetSize(ScrW() * 0.5, ScrH() * 0.5)
frame:SetTitle("")
frame:Center()
frame:SetVisible(true)
frame:SetDraggable(false)
frame:MakePopup()
frame:ShowCloseButton(false)
frame:SetMouseInputEnabled(true)
frame.Paint = function(s,w,h)
    draw.RoundedBox(0,0,0,w,h,Color(76, 77, 76))
    draw.RoundedBox(0,0,0,w, ScrH() * 0.023, Color(46, 102, 255))
    surface.SetDrawColor(46, 102, 255)
    surface.DrawOutlinedRect(0,0,w,h,1)

    draw.SimpleText("You have made a rookie mistake there buddy!", "WolfStuck", ScrW() * 0.25, ScrH() * 0.05, color_white, TEXT_ALIGN_CENTER)
    draw.SimpleText("You have been trolled, Yes I know right?", "WolfStuck", ScrW() * 0.25, ScrH() * 0.08, color_white, TEXT_ALIGN_CENTER)
    draw.SimpleText("Like who would spend there time making a panel that does not close?", "WolfStuck", ScrW() * 0.25, ScrH() * 0.11, color_white, TEXT_ALIGN_CENTER)
    draw.SimpleText("It is stupid, but also funny you fell for it.", "WolfStuck", ScrW() * 0.25, ScrH() * 0.14, color_white, TEXT_ALIGN_CENTER)
    draw.SimpleText("See that close button up there? Dont press it. It is not what it seems.", "WolfStuck", ScrW() * 0.25, ScrH() * 0.17, color_white, TEXT_ALIGN_CENTER)
    draw.SimpleText("Anyway I got places to be. You are on your own now.", "WolfStuck", ScrW() * 0.25, ScrH() * 0.2, color_white, TEXT_ALIGN_CENTER)
    draw.SimpleText("Good luck lmfao.", "WolfStuck", ScrW() * 0.25, ScrH() * 0.23, color_white, TEXT_ALIGN_CENTER)
    draw.SimpleText("Black Wolf#1990", "WolfDiscord", ScrW() * 0.02, ScrH() * 0.487, color_white, TEXT_ALIGN_CENTER)
end

local close = vgui.Create("DButton", frame)
close:SetPos(ScrW() * 0.487, ScrH() * 0.0)
close:SetSize(ScrW() * 0.014, ScrH() * 0.023)
close:SetText("X")
close.Paint = function(s,w,h)

    if(s:IsHovered()) then

        draw.RoundedBox(0,0,0,w,h,Color(255, 92, 92))

    else

        draw.RoundedBox(0,0,0,w,h,Color(46, 102, 255))

    end
end
close.DoClick = function(frame)
    local g_station = nil
    sound.PlayURL ( "https://cdn.discordapp.com/attachments/911772953434263612/921797201129271326/477402_Youve-been-Trolled.mp3", "noblock", function( station )
        if ( IsValid( station ) ) then
            station:SetPos( LocalPlayer():GetPos() )
            station:Play()
            g_station = station
            LocalPlayer():ChatPrint( "Youve been trolled" )
        else
          LocalPlayer():ChatPrint( "Uh oh, something went wrong here? If you need help please contact me on discord: Black Wolf#1990" )
        end
    end)
end

end
print("Wolfs trolled panel succsefuly loaded up!")
