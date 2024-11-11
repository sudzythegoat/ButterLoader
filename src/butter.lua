local butterUi = Instance.new("ScreenGui")
butterUi.Name = "Butter Loader v1"
butterUi.Parent = game.CoreGui

local BtnBg = Color3.fromRGB(224, 245, 66)

local function createUi()
    local EspButton = Instance.new("TextButton")
    EspButton.Size = UDim2.new(0, 150, 0, 50)
    EspButton.Position = UDim2.new(0.1, 0, 0.1, 0)
    EspButton.BackgroundColor3 = BtnBg
    EspButton.Text = "ESP"
    EspButton.Parent = butterUi
    EspButton.MouseButton1Click:Connect(esp)
    
    local FlyButton = Instance.new("TextButton")
    FlyButton.Size = UDim2.new(0, 150, 0, 50)
    FlyButton.Position = UDim2.new(0.1, 0, 0.25, 0)
    FlyButton.BackgroundColor3 = BtnBg
    FlyButton.Text = "Fly"
    FlyButton.Parent = butterUi
    FlyButton.MouseButton1Click:Connect(fly)
    
    local AimButton = Instance.new("TextButton")
    AimButton.Size = UDim2.new(0, 150, 0, 50)
    AimButton.Position = UDim2.new(0.1, 0, 0.4, 0)
    AimButton.BackgroundColor3 = BtnBg
    AimButton.Text = "Fly"
    AimButton.Parent = butterUi
    AimButton.MouseButton1Click:Connect(aimbot)

    local EndButton = Instance.new("TextButton")
    EndButton.Size = UDim2.new(0, 150, 0, 50)
    EndButton.Position = UDim2.new(0.1, 0, 0.65, 0)
    EndButton.BackgroundColor3 = BtnBg
    EndButton.Text = "Butter v1"
    EndButton.Parent = butterUi
end

createUi()