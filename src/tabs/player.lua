-- tabs/player.lua
return function(tab)
    -- WalkSpeed slider
    tab:CreateSlider({
        Name = "WalkSpeed",
        Min = 16,
        Max = 100,
        Increment = 1,
        CurrentValue = 16,
        Callback = function(value)
            local humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = value
            end
        end
    })

    -- JumpPower slider
    tab:CreateSlider({
        Name = "JumpPower",
        Min = 50,
        Max = 200,
        Increment = 5,
        CurrentValue = 50,
        Callback = function(value)
            local humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.JumpPower = value
            end
        end
    })

    -- Teleport button (example)
    tab:CreateButton({
        Name = "Teleport to Spawn",
        Callback = function()
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(0,5,0)) -- example spawn coords
            end
        end
    })
end
