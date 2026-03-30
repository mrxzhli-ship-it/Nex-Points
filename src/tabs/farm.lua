return function(tab)
    tab:CreateSlider({
        Name = "Farm Speed",
        Min = 1,
        Max = 100,
        Increment = 1,
        Suffix = "x",
        CurrentValue = 10,
        Flag = "FarmSpeed",
        Callback = function(value)
            print("Farm Speed:", value)
        end
    })
end
