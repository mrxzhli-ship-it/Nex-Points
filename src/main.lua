local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create Window
local Window = Rayfield:CreateWindow({
    Name = "Nexus Point",
    Icon = 0,
    LoadingTitle = "Nexsuites",
    LoadingSubtitle = "The One and Only",
    ShowText = "Nexus Point",
    Theme = "Default",
    ToggleUIKeybind = "K",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "Big Hub"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false
})

-- Create Tabs
local Tabs = {
    main = Window:CreateTab("Main", 4483362458),
    player = Window:CreateTab("Player", 4483362458),
    weapon = Window:CreateTab("Weapon", 4483362458)
    farm = Window:CreateTab("Farm", 4483362458),
    misc = Window:CreateTab("Misc", 4483362458),
    settings = Window:CreateTab("Settings", 4483362458),
}
-- Load tab scripts from GitHub
for name, tab in pairs(Tabs) do
    local url = baseURL .. name .. ".lua"
    print("Loading:", url)

    local success, func = pcall(function()
        return loadstring(game:HttpGet(url))()
    end)

    if success then
        print("SUCCESS LOAD:", name, func)

        if typeof(func) == "function" then
            print("RUNNING TAB:", name)
            func(tab)
        else
            warn("NOT A FUNCTION:", name)
        end
    else
        warn("FAILED LOAD:", name, func)
    end
end
