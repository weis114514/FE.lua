-- Create Screen GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "Team8x8x8x8_FE_Hub_v3"

-- Create Background Frame
local BackgroundFrame = Instance.new("Frame")
BackgroundFrame.Size = UDim2.new(0, 200, 0, 300)
BackgroundFrame.Position = UDim2.new(0.5, -100, 0.5, -150)
BackgroundFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
BackgroundFrame.Parent = ScreenGui

-- Title Text Label
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, 0, 0, 50)
TitleLabel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TitleLabel.Text = "FE 脚本中心 v3"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 20
TitleLabel.Parent = BackgroundFrame

-- Fly Button
local FlyButton = Instance.new("TextButton")
FlyButton.Size = UDim2.new(1, -20, 0, 50)
FlyButton.Position = UDim2.new(0, 10, 0, 60)
FlyButton.Text = "飞"
FlyButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
FlyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FlyButton.Parent = BackgroundFrame
FlyButton.MouseButton1Click:Connect(function()
    -- Fly Script (Sample, modify as needed)
    print("Fly activated")
end)

-- Walkspeed Button
local WalkSpeedButton = Instance.new("TextButton")
WalkSpeedButton.Size = UDim2.new(1, -20, 0, 50)
WalkSpeedButton.Position = UDim2.new(0, 10, 0, 120)
WalkSpeedButton.Text = "变成博尔特"
WalkSpeedButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
WalkSpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
WalkSpeedButton.Parent = BackgroundFrame
WalkSpeedButton.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    if player and player.Character then
        player.Character.Humanoid.WalkSpeed = 100
    end
end)

-- FE Fling All Button
local FlingAllButton = Instance.new("TextButton")
FlingAllButton.Size = UDim2.new(1, -20, 0, 50)
FlingAllButton.Position = UDim2.new(0, 10, 0, 180)
FlingAllButton.Text = "FE 转死所有人"
FlingAllButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
FlingAllButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FlingAllButton.Parent = BackgroundFrame
FlingAllButton.MouseButton1Click:Connect(function()
    -- FE Fling All Script (Sample, modify as needed)
    print("FE Fling All activated")
end)

-- Chat Spam Button
local ChatSpamButton = Instance.new("TextButton")
ChatSpamButton.Size = UDim2.new(1, -20, 0, 50)
ChatSpamButton.Position = UDim2.new(0, 10, 0, 240)
ChatSpamButton.Text = "聊天 Spam"
ChatSpamButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
ChatSpamButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ChatSpamButton.Parent = BackgroundFrame
ChatSpamButton.MouseButton1Click:Connect(function()
    for i = 1, 10 do  -- Adjust the number of spam messages
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("8x8x8x8 on top!", "All")
        wait(0.5) -- Delay between messages to avoid spamming too fast
    end
end)
