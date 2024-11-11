local function close()
    game.CoreGui:FindFirstChild("butterUi"):Destroy()
end

if game.CoreGui:FindFirstChild("butterUi") then close()
end 

local butterUi = Instance.new("ScreenGui")
butterUi.Name = "Butter Loader v1"
butterUi.Parent = game.CoreGui

local BtnBg = Color3.fromRGB(224, 245, 66)
local Black = Color3.fromRGB(0, 0, 0)
local Players = game:GetService("Players")

local function light(character)
    if character:FindFirstChildOfClass("Highlight") then return end
    local esplight = Instance.new("Highlight")
    esplight.Parent = character
    esplight.FillColor = BtnBg
    esplight.OutlineColor = Black
end

local function esp()
    for _, player in ipairs(Players:GetPlayers()) do
        local character = player.Character
        light(character)
    end
end

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local flying = false

local function startFly()
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0)
    bodyVelocity.Velocity = Vector3.new(0, 50, 0)
    bodyVelocity.Parent = character:WaitForChild("HumanoidRootPart")
    return bodyVelocity
end

local bodyVelocity

local function stopFly(bodyVelocity)
    bodyVelocity:Destroy()
end

local userInputService = game:GetService("UserInputService")

userInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    flying = not flying
    if flying then
        bodyVelocity = startFly()
    else
        stopFly(bodyVelocity)
    end
end

local function fly()
    flying = not flying
    if flying then 
        startFly()
    else
        stopFly()
    end
end

local function aimbot()
    local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
    Aimbot.Load()
end

local function createUi()
    local Header = Instance.new("TextButton")
    Header.Size = UDim2.new(0, 150, 0, 50)
    Header.Position = UDim2.new(0.1, 0, 0.1, 0)
    Header.BackgroundColor3 = BtnBg
    Header.Text = "ButterLoader v1"
    Header.Parent = butterUi
    Header.MouseButton1Click:Connect(function() print("ButterLoader") end)

    local EspButton = Instance.new("TextButton")
    EspButton.Size = UDim2.new(0, 150, 0, 50)
    EspButton.Position = UDim2.new(0.1, 0, 0.25, 0)
    EspButton.BackgroundColor3 = BtnBg
    EspButton.Text = "ESP"
    EspButton.Parent = butterUi
    EspButton.MouseButton1Click:Connect(esp)
    
    local FlyButton = Instance.new("TextButton")
    FlyButton.Size = UDim2.new(0, 150, 0, 50)
    FlyButton.Position = UDim2.new(0.1, 0, 0.4, 0)
    FlyButton.BackgroundColor3 = BtnBg
    FlyButton.Text = "Fly"
    FlyButton.Parent = butterUi
    FlyButton.MouseButton1Click:Connect(fly)
    
    local AimButton = Instance.new("TextButton")
    AimButton.Size = UDim2.new(0, 150, 0, 50)
    AimButton.Position = UDim2.new(0.1, 0, 0.65, 0)
    AimButton.BackgroundColor3 = BtnBg
    AimButton.Text = "Aimbot"
    AimButton.Parent = butterUi
    AimButton.MouseButton1Click:Connect(aimbot)

    local SprintButton = Instance.new("TextButton")
    SprintButton.Size = UDim2.new(0, 150, 0, 50)
    SprintButton.Position = UDim2.new(0.1, 0, 0.8, 0)
    SprintButton.BackgroundColor3 = BtnBg
    SprintButton.Text = "Shift 2 Sprint"
    SprintButton.Parent = butterUi
    SprintButton.MouseButton1Click:Connect(s2s)

    local EndButton = Instance.new("TextButton")
    EndButton.Size = UDim2.new(0, 150, 0, 50)
    EndButton.Position = UDim2.new(0.1, 0, 0.95, 0)
    EndButton.BackgroundColor3 = BtnBg
    EndButton.Text = "Minimize"
    EndButton.Parent = butterUi
    EndButton.MouseButton1Click:Connect(close)
end

createUi()