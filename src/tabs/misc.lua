return function(tab)
    tab:CreateDropdown({
        Name = "Choose Option",
        Options = {"Option 1", "Option 2", "Option 3"},
        CurrentOption = "Option 1",
        Flag = "MiscOption",
        Callback = function(option)
            print("Selected:", option)
        end
    })
end
