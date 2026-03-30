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
    farm = Window:CreateTab("Farm", 4483362458),
    misc = Window:CreateTab("Misc", 4483362458)
}

-- Load tab scripts from GitHub
local baseURL = "https://raw.githubusercontent.com/YOUR_USERNAME/NexusPoint/main/src/tabs/"

for name, tab in pairs(Tabs) do
    local success, func = pcall(function()
        return loadstring(game:HttpGet(baseURL .. name .. ".lua"))()
    end)

    if success and func then
        func(tab)
    else
        warn("Failed to load tab:", name)
    end
end
