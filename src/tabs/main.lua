return function(tab)
    tab:CreateButton({
        Name = "Welcome Message",
        Callback = function()
            print("Welcome to Nexus Point!")
        end
    })
end
