return function(tab)
    tab:CreateToggle({
        Name = "Godmode",
        CurrentValue = false,
        Flag = "GodmodeToggle",
        Callback = function(value)
            print("Godmode:", value)
        end
    })

    tab:CreateButton({
        Name = "Teleport (Example)",
        Callback = function()
            print("Teleport triggered")
        end
    })
end
