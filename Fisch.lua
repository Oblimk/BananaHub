repeat wait() until game:IsLoaded()
pcall(function()
    repeat
        wait()
        for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.LoadingGui.PlayBackground.Play.Activated)) do
            v.Function()
        end
    until not game:GetService("Players").LocalPlayer.PlayerGui.LoadingGui.Enabled
end)
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
if game.CoreGui:FindFirstChild("Banana Hub Btn") then
    pcall(function()
        game.CoreGui["Banana Hub Btn"]:Destroy()
        game.CoreGui.ScreenGui:Destroy()
    end)
end
spawn(function()
    getgenv().UIToggled = true
    HideGui = Instance.new('ScreenGui')
    HideGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    HideGui.Name = 'Banana Hub Btn'
    HideGui.Enabled = true
    HideGui.Parent = game:GetService('CoreGui')

local Window = Fluent:CreateWindow({
    Title = "Banana Hub",
    SubTitle = "by Obli",
    TabWidth = 125,
    Size = UDim2.fromOffset(500, 350),
    Acrylic = false,             -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.P -- Used when theres no MinimizeKeybind
})
