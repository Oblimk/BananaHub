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

    local UICornerBtnHide = Instance.new("UICorner")
    UICornerBtnHide.Parent = btnHideFrame
    UICornerBtnHide.CornerRadius = UDim.new(1, 0)

    btnHide.MouseButton1Click:Connect(function()
        getgenv().UIToggled = not getgenv().UIToggled
        local sizeXY = getgenv().UIToggled and 40 or 30
        game:GetService('TweenService'):Create(imgHide, TweenInfo.new(.25), { Size = UDim2.new(0, sizeXY, 0, sizeXY) })
            :Play()
        game:GetService('TweenService'):Create(btnHideFrame, TweenInfo.new(.25),
            { BackgroundTransparency = getgenv().UIToggled and 0 or .25 }):Play()
        game:service("VirtualInputManager"):SendKeyEvent(true, "P", false, game)
        game:service("VirtualInputManager"):SendKeyEvent(false, "P", false, game)
    end)
end)
local Window = Fluent:CreateWindow({
    Title = "Banana Hub",
    SubTitle = "by Obli",
    TabWidth = 125,
    Size = UDim2.fromOffset(500, 350),
    Acrylic = false,             -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.P -- Used when theres no MinimizeKeybind
})
