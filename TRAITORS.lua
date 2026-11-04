--// SERVICES
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local SoundService = game:GetService("SoundService")
local TextChatService = game:GetService("TextChatService")
local ChatService = game:GetService("Chat")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserService = game:GetService("UserService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local plr = Players.LocalPlayer

-- FORCE UNIQUE RANDOM GENERATION SEED ON EXECUTION
math.randomseed(os.clock() ^ 3)

--// FILE SYSTEM CONFIG FOR AUTO-SAVE KEY
local folderName = "TRAITORSUISettings"
local fileName = folderName .. "/KeyAuth.txt"
local correctKey = "TRAITORSISPOWER"

-- Helper functions for local mobile storage
local function saveKeyLocally()
	if writefile then
		if makefolder then
			pcall(function() makefolder(folderName) end)
		end
		pcall(function() writefile(fileName, correctKey) end)
	end
end

local function checkSavedKey()
	if readfile and isfile and isfile(fileName) then
		local success, savedKey = pcall(function() return readfile(fileName) end)
		if success and savedKey == correctKey then
			return true
		end
	end
	return false
end

--// EXECUTOR-SAFE INTERFACE LAYER
local pgui = nil
if gethui then
	pgui = gethui()
elseif syn and syn.protect_gui then
	local protectedFolder = Instance.new("Folder")
	syn.protect_gui(protectedFolder)
	protectedFolder.Parent = game:GetService("CoreGui")
	pgui = protectedFolder
elseif cloneref and game:GetService("CoreGui") then
	pgui = game:GetService("CoreGui")
else
	pgui = plr:FindFirstChildOfClass("PlayerGui") or game:GetService("CoreGui")
end

--// EXPLICIT SOURCE NETWORK REPLICATORS
local RE = ReplicatedStorage:WaitForChild("RE", 5)
local NameRemote = RE and RE:WaitForChild("1RPNam1eTex1t", 5) or nil
local ColorRemote = RE and RE:WaitForChild("1RPNam1eColo1r", 5) or nil

--// FIXED PALETTES
local TranslucentBlack = Color3.fromRGB(8, 6, 12)
local PanelFillColor = Color3.fromRGB(16, 12, 22)
local NeonPinkAccent = Color3.fromRGB(255, 0, 130)
local NeonPurpleAccent = Color3.fromRGB(130, 0, 220)
local TextLight = Color3.fromRGB(250, 240, 255)
local OffText = Color3.fromRGB(140, 130, 160)
local CyberBlueHighlight = Color3.fromRGB(0, 220, 255)
local TerminalGreen = Color3.fromRGB(50, 255, 130)

-- ORB COLOR PRESETS
local OrbPresets = {
	["Void Black"] = {
		CoreColor = Color3.fromRGB(0, 0, 0),
		LightColor = Color3.fromRGB(130, 0, 220),
		FireSeq = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(130, 0, 220)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 220, 255))
		}),
		ShardColor = Color3.fromRGB(255, 255, 255)
	},
	["Cyber Neon"] = {
		CoreColor = Color3.fromRGB(0, 220, 255),
		LightColor = Color3.fromRGB(0, 220, 255),
		FireSeq = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 220, 255)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 130))
		}),
		ShardColor = Color3.fromRGB(0, 220, 255)
	},
	["Blood Crimson"] = {
		CoreColor = Color3.fromRGB(20, 0, 0),
		LightColor = Color3.fromRGB(255, 0, 40),
		FireSeq = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 0, 0))
		}),
		ShardColor = Color3.fromRGB(10, 10, 10)
	},
	["Golden Sovereign"] = {
		CoreColor = Color3.fromRGB(255, 190, 0),
		LightColor = Color3.fromRGB(255, 220, 100),
		FireSeq = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 220, 0)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 100, 0))
		}),
		ShardColor = Color3.fromRGB(255, 240, 150)
	}
}
local currentSelectedOrbTheme = "Void Black"
local blur = Instance.new("BlurEffect", Lighting)
blur.Size = 0

--// CLEAR PREVIOUS RENDERS
if pgui:FindFirstChild("TRAITORS_NITRO_MATRIX") then
	pgui["TRAITORS_NITRO_MATRIX"]:Destroy()
end
local gui = Instance.new("ScreenGui")
gui.Name = "TRAITORS_NITRO_MATRIX"
gui.Parent = pgui
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false

-- ==================================================
-- AUTO-DETECTION RESPONSIVE MOBILE SCALER ENGINE
-- ==================================================
local function makeAdaptive(frame, baseW, baseH)
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
	local uiScale = Instance.new("UIScale")
	uiScale.Parent = frame
	local function adjustLayout()
		local camera = workspace.CurrentCamera
		if camera then
			local view = camera.ViewportSize
			local scaleX = view.X / (baseW + 20)
			local scaleY = view.Y / (baseH + 20)
			local finalScale = math.min(scaleX, scaleY, 1)
			uiScale.Scale = finalScale
		end
	end
	if workspace.CurrentCamera then
		workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(adjustLayout)
	end
	adjustLayout()
end

-- ==================================================
-- INTERACTIVE SMOOTH HOVER / CLICK ENGINE
-- ==================================================
local function addSmoothInteractions(btn, baseColor, hoverColor, scaleUp)
	scaleUp = scaleUp or 1.05
	local origSize = btn.Size
	
	btn.MouseEnter:Connect(function()
		TweenService:Create(btn, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
			BackgroundColor3 = hoverColor or baseColor,
			Size = UDim2.new(origSize.X.Scale, origSize.X.Offset * scaleUp, origSize.Y.Scale, origSize.Y.Offset * scaleUp)
		}):Play()
	end)
	
	btn.MouseLeave:Connect(function()
		TweenService:Create(btn, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
			BackgroundColor3 = baseColor,
			Size = origSize
		}):Play()
	end)
end

-- ==================================================
-- SMALL/TINY CAPS ALPHABET CONVERSION DICTIONARY
-- ==================================================
local smallCapsMap = {
	["a"] = "á´€", ["b"] = "Ê™", ["c"] = "á´„", ["d"] = "á´…", ["e"] = "á´‡", ["f"] = "êœ°", ["g"] = "É¢", ["h"] = "Êœ",
	["i"] = "Éª", ["j"] = "á´Š", ["k"] = "á´‹", ["l"] = "ÊŸ", ["m"] = "á´", ["n"] = "É´", ["o"] = "á´", ["p"] = "á´˜",
	["q"] = "Ç«", ["r"] = "Ê€", ["s"] = "s", ["t"] = "á´›", ["u"] = "á´œ", ["v"] = "á´ ", ["w"] = "á´¡", ["x"] = "x",
	["y"] = "Ê", ["z"] = "á´¢",
	["A"] = "á´€", ["B"] = "Ê™", ["C"] = "á´„", ["D"] = "á´…", ["E"] = "á´‡", ["F"] = "êœ°", ["G"] = "É¢", ["H"] = "Êœ",
	["I"] = "Éª", ["J"] = "á´Š", ["K"] = "á´‹", ["L"] = "ÊŸ", ["M"] = "á´", ["N"] = "É´", ["O"] = "á´", ["P"] = "á´˜",
	["Q"] = "Ç«", ["R"] = "Ê€", ["S"] = "s", ["T"] = "á´›", ["U"] = "á´œ", ["V"] = "á´ ", ["W"] = "á´¡", ["X"] = "x",
	["Y"] = "Ê", ["Z"] = "á´¢"
}
local function toSmallCaps(str)
	local result = ""
	local inTag = false
	for i = 1, #str do
		local char = str:sub(i, i)
		if char == "<" then inTag = true end
		if inTag then
			result = result .. char
		else
			result = result .. (smallCapsMap[char] or char)
		end
		if char == ">" then inTag = false end
	end
	return result
end

-- ==================================================
-- NEON BLUE PREMIUM WATERMARK
-- ==================================================
local watermark = Instance.new("TextLabel", gui)
watermark.Name = "TRAITORS_Watermark"
watermark.Size = UDim2.new(0, 180, 0, 25)
watermark.Position = UDim2.new(1, -195, 1, -30)
watermark.BackgroundTransparency = 1
watermark.Text = "TRAITORS developments"
watermark.Font = Enum.Font.GothamBold
watermark.TextSize = 11
watermark.TextColor3 = Color3.fromRGB(0, 220, 255)
watermark.TextTransparency = 0.2
watermark.TextXAlignment = Enum.TextXAlignment.Right
watermark.ZIndex = 10

-- ==================================================
-- COLOR LOOP HARMONIZER
-- ==================================================
local function getThemeColor(speedMultiplier)
	local colors = {
		Color3.fromRGB(10, 2, 5),
		Color3.fromRGB(255, 0, 0),
		Color3.fromRGB(255, 0, 130),
		Color3.fromRGB(130, 0, 10)
	}
	local t = (os.clock() * (speedMultiplier or 1.2)) % #colors
	local index = math.floor(t) + 1
	local nextIndex = (index % #colors) + 1
	local alpha = t - math.floor(t)
	local smoothAlpha = (1 - math.cos(alpha * math.pi)) / 2
	return colors[index]:Lerp(colors[nextIndex], smoothAlpha)
end

-- ==================================================
-- GRADIENT ANIMATION ENGINE
-- ==================================================
local function applyGradientWave(strokeInstance)
	if not strokeInstance then return end
	local gradient = Instance.new("UIGradient", strokeInstance)
	gradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, NeonPurpleAccent),
		ColorSequenceKeypoint.new(0.5, CyberBlueHighlight),
		ColorSequenceKeypoint.new(1, NeonPinkAccent)
	})
	task.spawn(function()
		local rotation = 0
		while strokeInstance and strokeInstance.Parent do
			rotation = (rotation + 2) % 360
			gradient.Rotation = rotation
			task.wait(0.015)
		end
	end)
end

local function fadeInFrame(targetFrame)
	targetFrame.Visible = true
	TweenService:Create(targetFrame, TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundTransparency = 0.1}):Play()
	for _, child in pairs(targetFrame:GetDescendants()) do
		if child:IsA("UIStroke") and child.Name ~= "MainLoopingStroke" and child.Name ~= "RGBStroke" then
			TweenService:Create(child, TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Transparency = 0}):Play()
		elseif child:IsA("TextLabel") then
			TweenService:Create(child, TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
		elseif child:IsA("TextBox") or child:IsA("TextButton") or child:IsA("ImageButton") then
			local targetBgTrans = (child:IsA("TextBox") or child:IsA("TextButton")) and 0 or 1
			if child.Name == "SettingsFrame" or child.Name == "StandaloneChatWindow" then targetBgTrans = 0 end
			TweenService:Create(child, TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundTransparency = targetBgTrans, TextTransparency = 0}):Play()
		elseif child:IsA("ImageLabel") then
			TweenService:Create(child, TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
		end
	end
end

local function fadeOutFrame(targetFrame)
	TweenService:Create(targetFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
	for _, child in pairs(targetFrame:GetDescendants()) do
		if child:IsA("UIStroke") then
			TweenService:Create(child, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Transparency = 1}):Play()
		elseif child:IsA("TextLabel") then
			TweenService:Create(child, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {TextTransparency = 1}):Play()
		elseif child:IsA("TextBox") or child:IsA("TextButton") or child:IsA("ImageButton") then
			TweenService:Create(child, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {BackgroundTransparency = 1, TextTransparency = 1}):Play()
		elseif child:IsA("ImageLabel") then
			TweenService:Create(child, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {ImageTransparency = 1}):Play()
		end
	end
end

-- ==================================================
-- DYNAMIC AMBIENT AMBIENCE BACKGROUND PARTICLES
-- ==================================================
local particleCanvas = Instance.new("Frame", gui)
particleCanvas.Name = "ParticleCanvas"
particleCanvas.Size = UDim2.new(1, 0, 1, 0)
particleCanvas.BackgroundTransparency = 1
particleCanvas.ZIndex = 1
task.spawn(function()
	while particleCanvas and particleCanvas.Parent do
		if blur.Size > 0 then
			local particle = Instance.new("Frame", particleCanvas)
			local size = math.random(2, 5)
			particle.Size = UDim2.new(0, size, 0, size)
			particle.Position = UDim2.new(math.random(), 0, 1.1, 0)
			particle.BackgroundColor3 = (math.random(1, 2) == 1) and CyberBlueHighlight or NeonPinkAccent
			particle.BackgroundTransparency = math.random(3, 7) / 10
			Instance.new("UICorner", particle).CornerRadius = UDim.new(1, 0)
			
			local dur = math.random(3, 7)
			local targetX = particle.Position.X.Scale + (math.random(-10, 10) / 100)
			TweenService:Create(particle, TweenInfo.new(dur, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
				Position = UDim2.new(targetX, 0, -0.1, 0),
				BackgroundTransparency = 1
			}):Play()
			
			task.delay(dur, function() particle:Destroy() end)
		end
		task.wait(0.25)
	end
end)

-- ==================================================
-- UI ELEMENT 1: COMPACT WELCOME SCREEN WITH CHOICE MODE
-- ==================================================
local welcomeUI = Instance.new("Frame", gui)
welcomeUI.Size = UDim2.new(0, 280, 0, 420)
welcomeUI.Position = UDim2.new(0.5, 0, 0.5, 0)
welcomeUI.BackgroundColor3 = TranslucentBlack
welcomeUI.BackgroundTransparency = 1
welcomeUI.Visible = false
welcomeUI.ZIndex = 5
Instance.new("UICorner", welcomeUI).CornerRadius = UDim.new(0, 16)
makeAdaptive(welcomeUI, 280, 420)
local welcStrk = Instance.new("UIStroke", welcomeUI)
welcStrk.Thickness = 2
welcStrk.Transparency = 1
applyGradientWave(welcStrk)

local avatar = Instance.new("ImageLabel", welcomeUI)
avatar.Size = UDim2.new(0, 36, 0, 36)
avatar.Position = UDim2.new(0, 14, 0, 14)
avatar.BackgroundColor3 = PanelFillColor
avatar.BackgroundTransparency = 1
avatar.ImageTransparency = 1
avatar.ZIndex = 6
Instance.new("UICorner", avatar).CornerRadius = UDim.new(0, 10)
pcall(function()
	avatar.Image = Players:GetUserThumbnailAsync(plr.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
end)

local greetName = Instance.new("TextLabel", welcomeUI)
greetName.Size = UDim2.new(0, 200, 0, 36)
greetName.Position = UDim2.new(0, 58, 0, 14)
greetName.Text = "Welcome, " .. plr.DisplayName
greetName.Font = Enum.Font.GothamBold
greetName.TextColor3 = TextLight
greetName.TextSize = 11.5
greetName.TextTransparency = 1
greetName.TextXAlignment = Enum.TextXAlignment.Left
greetName.BackgroundTransparency = 1
greetName.ZIndex = 6

local desc1 = Instance.new("TextLabel", welcomeUI)
desc1.Size = UDim2.new(1, -28, 0, 15)
desc1.Position = UDim2.new(0, 14, 0, 54)
desc1.Text = "ORIGINAL TRAITORS SPAM ENGINE"
desc1.Font = Enum.Font.GothamBlack
desc1.TextColor3 = NeonPinkAccent
desc1.TextSize = 9.5
desc1.TextTransparency = 1
desc1.TextXAlignment = Enum.TextXAlignment.Left
desc1.BackgroundTransparency = 1
desc1.ZIndex = 6

local dataFetchFrame = Instance.new("Frame", welcomeUI)
dataFetchFrame.Size = UDim2.new(1, -28, 0, 130)
dataFetchFrame.Position = UDim2.new(0, 14, 0, 74)
dataFetchFrame.BackgroundColor3 = Color3.fromRGB(14, 10, 20)
dataFetchFrame.BackgroundTransparency = 1
dataFetchFrame.ZIndex = 6
Instance.new("UICorner", dataFetchFrame).CornerRadius = UDim.new(0, 8)
local dataStrk = Instance.new("UIStroke", dataFetchFrame)
dataStrk.Thickness = 1
dataStrk.Color = Color3.fromRGB(50, 30, 65)
dataStrk.Transparency = 1

local terminalLog = Instance.new("TextLabel", dataFetchFrame)
terminalLog.Size = UDim2.new(1, -10, 1, -10)
terminalLog.Position = UDim2.new(0, 5, 0, 5)
terminalLog.Text = "<font color='rgb(0,220,255)'><b>Made by TRAITORS. No tags.</b></font>\n" ..
	"<font color='rgb(255,40,40)'>- Spammer so goated everyone copied it.\n" ..
	"- That's why TRAITORS is the GoAT</font>\n\n" ..
	"<font color='rgb(255,70,70)'>- If any of you guys try to crack or disrespect any RPM member, just know you are cooked..</font>"
terminalLog.Font = Enum.Font.Code
terminalLog.TextColor3 = CyberBlueHighlight
terminalLog.TextSize = 9
terminalLog.RichText = true
terminalLog.TextWrapped = true
terminalLog.TextTransparency = 1
terminalLog.TextXAlignment = Enum.TextXAlignment.Left
terminalLog.TextYAlignment = Enum.TextYAlignment.Top
terminalLog.BackgroundTransparency = 1
terminalLog.ZIndex = 7

-- PRIMARY OWNER: 1:TRAITORSGOTBANNEDlwl2
local ownerSquare1 = Instance.new("Frame", welcomeUI)
ownerSquare1.Size = UDim2.new(1, -28, 0, 42)
ownerSquare1.Position = UDim2.new(0, 14, 0, 214)
ownerSquare1.BackgroundColor3 = Color3.fromRGB(20, 12, 30)
ownerSquare1.BackgroundTransparency = 1
ownerSquare1.ZIndex = 6
Instance.new("UICorner", ownerSquare1).CornerRadius = UDim.new(0, 8)
local ownerStroke1 = Instance.new("UIStroke", ownerSquare1)
ownerStroke1.Thickness = 1
ownerStroke1.Transparency = 1
applyGradientWave(ownerStroke1)

local ownerImage1 = Instance.new("ImageLabel", ownerSquare1)
ownerImage1.Size = UDim2.new(0, 24, 0, 24)
ownerImage1.Position = UDim2.new(0, 6, 0, 9)
ownerImage1.BackgroundColor3 = Color3.fromRGB(30, 15, 45)
ownerImage1.BackgroundTransparency = 1
ownerImage1.ImageTransparency = 1
ownerImage1.ZIndex = 7
Instance.new("UICorner", ownerImage1).CornerRadius = UDim.new(1, 0)

local ownerMetaText1 = Instance.new("TextLabel", ownerSquare1)
ownerMetaText1.Size = UDim2.new(1, -34, 0, 26)
ownerMetaText1.Position = UDim2.new(0, 32, 0, 8)
ownerMetaText1.Text = "TRAITORSGOTBANNEDlwl2\n<font color='rgb(140,130,160)'>owner</font>"
ownerMetaText1.Font = Enum.Font.GothamBlack
ownerMetaText1.TextColor3 = TextLight
ownerMetaText1.TextSize = 7.5
ownerMetaText1.RichText = true
ownerMetaText1.TextTransparency = 1
ownerMetaText1.TextXAlignment = Enum.TextXAlignment.Left
ownerMetaText1.BackgroundTransparency = 1
ownerMetaText1.ZIndex = 7

task.spawn(function()
	pcall(function()
		local owner1Id = Players:GetUserIdFromNameAsync("SuperMonKXscripts")
		if owner1Id then
			ownerImage1.Image = Players:GetUserThumbnailAsync(owner1Id, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
		end
	end)
end)

local selectExecModeText = Instance.new("TextLabel", welcomeUI)
selectExecModeText.Size = UDim2.new(1, -28, 0, 12)
selectExecModeText.Position = UDim2.new(0, 14, 0, 268)
selectExecModeText.Text = "SELECT EXECUTION MODE:"
selectExecModeText.Font = Enum.Font.GothamBold
selectExecModeText.TextColor3 = TerminalGreen
selectExecModeText.TextSize = 8.5
selectExecModeText.TextTransparency = 1
selectExecModeText.TextXAlignment = Enum.TextXAlignment.Left
selectExecModeText.BackgroundTransparency = 1
selectExecModeText.ZIndex = 6

-- EXECUTION CHOICE BUTTON 1: SPAMMER ONLY
local startCodeOnlyBtn = Instance.new("TextButton", welcomeUI)
startCodeOnlyBtn.Size = UDim2.new(0.48, -4, 0, 34)
startCodeOnlyBtn.Position = UDim2.new(0, 14, 0, 288)
startCodeOnlyBtn.Text = "SPAMMER ONLY"
startCodeOnlyBtn.BackgroundColor3 = PanelFillColor
startCodeOnlyBtn.BackgroundTransparency = 1
startCodeOnlyBtn.TextColor3 = TextLight
startCodeOnlyBtn.TextTransparency = 1
startCodeOnlyBtn.Font = Enum.Font.GothamBlack
startCodeOnlyBtn.TextSize = 8.5
startCodeOnlyBtn.ZIndex = 6
Instance.new("UICorner", startCodeOnlyBtn).CornerRadius = UDim.new(0, 8)
local codeOnlyStrk = Instance.new("UIStroke", startCodeOnlyBtn)
codeOnlyStrk.Thickness = 1.2
codeOnlyStrk.Transparency = 1
applyGradientWave(codeOnlyStrk)
addSmoothInteractions(startCodeOnlyBtn, PanelFillColor, Color3.fromRGB(30, 20, 40), 1.02)

-- EXECUTION CHOICE BUTTON 2: SPAMMER + CHAT
local startChatAndCodeBtn = Instance.new("TextButton", welcomeUI)
startChatAndCodeBtn.Size = UDim2.new(0.48, -4, 0, 34)
startChatAndCodeBtn.Position = UDim2.new(0.52, 0, 0, 288)
startChatAndCodeBtn.Text = "SPAMMER + CHAT"
startChatAndCodeBtn.BackgroundColor3 = PanelFillColor
startChatAndCodeBtn.BackgroundTransparency = 1
startChatAndCodeBtn.TextColor3 = CyberBlueHighlight
startChatAndCodeBtn.TextTransparency = 1
startChatAndCodeBtn.Font = Enum.Font.GothamBlack
startChatAndCodeBtn.TextSize = 8.5
startChatAndCodeBtn.ZIndex = 6
Instance.new("UICorner", startChatAndCodeBtn).CornerRadius = UDim.new(0, 8)
local chatAndCodeStrk = Instance.new("UIStroke", startChatAndCodeBtn)
chatAndCodeStrk.Thickness = 1.2
chatAndCodeStrk.Transparency = 1
applyGradientWave(chatAndCodeStrk)
addSmoothInteractions(startChatAndCodeBtn, PanelFillColor, Color3.fromRGB(30, 20, 40), 1.02)

-- ==================================================
-- UI ELEMENT 2: MAIN DASHBOARD
-- ==================================================
local main = Instance.new("Frame", gui)
local mainStrk = Instance.new("UIStroke", main)
mainStrk.Name = "MainLoopingStroke"
main.Visible = false
main.Size = UDim2.new(0, 310, 0, 240)
main.Position = UDim2.new(0.5, 55, 1.5, 0)
main.BackgroundColor3 = TranslucentBlack
main.ClipsDescendants = false
main.ZIndex = 5
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 14)
makeAdaptive(main, 430, 290)
mainStrk.Thickness = 1.8

local mainHeader = Instance.new("TextLabel", main)
mainHeader.Size = UDim2.new(1, -45, 0, 26)
mainHeader.Position = UDim2.new(0, 14, 0, 6)
mainHeader.Text = "<b>Z E N âš¡ SPAMMER</b>"
mainHeader.RichText = true
mainHeader.Font = Enum.Font.GothamBlack
mainHeader.TextSize = 10
mainHeader.TextXAlignment = Enum.TextXAlignment.Left
mainHeader.BackgroundTransparency = 1
mainHeader.ZIndex = 6
task.spawn(function()
	while mainStrk and mainStrk.Parent do
		local liveColor = getThemeColor(1.0)
		mainStrk.Color = liveColor
		mainHeader.TextColor3 = liveColor
		task.wait(0.015)
	end
end)

-- ==================================================
-- HIGH-END COOL CHAT WIDGET & MOVABLE BADGE
-- ==================================================
local chatBadge = Instance.new("TextButton", gui)
chatBadge.Name = "MovableChatBadge"
chatBadge.Visible = false
chatBadge.Size = UDim2.new(0, 60, 0, 32)
chatBadge.Position = UDim2.new(0.05, 0, 0.4, 0)
chatBadge.BackgroundColor3 = Color3.fromRGB(12, 10, 20)
chatBadge.Text = "âš¡ CHAT"
chatBadge.Font = Enum.Font.GothamBlack
chatBadge.TextColor3 = CyberBlueHighlight
chatBadge.TextSize = 9.5
chatBadge.ZIndex = 30
Instance.new("UICorner", chatBadge).CornerRadius = UDim.new(0, 8)
local chatBadgeStrk = Instance.new("UIStroke", chatBadge)
chatBadgeStrk.Thickness = 1.5
applyGradientWave(chatBadgeStrk)

local chatWidget = Instance.new("Frame", gui)
chatWidget.Name = "StandaloneChatWindow"
chatWidget.Visible = false
chatWidget.Size = UDim2.new(0, 230, 0, 250)
chatWidget.Position = UDim2.new(0.05, 0, 0.35, 0)
chatWidget.BackgroundColor3 = Color3.fromRGB(12, 8, 20)
chatWidget.BackgroundTransparency = 0.15
chatWidget.ZIndex = 25
Instance.new("UICorner", chatWidget).CornerRadius = UDim.new(0, 12)
local widgetStrk = Instance.new("UIStroke", chatWidget)
widgetStrk.Thickness = 1.6
applyGradientWave(widgetStrk)

local widgetHeader = Instance.new("Frame", chatWidget)
widgetHeader.Size = UDim2.new(1, 0, 0, 30)
widgetHeader.BackgroundColor3 = Color3.fromRGB(20, 12, 32)
widgetHeader.BackgroundTransparency = 0.3
widgetHeader.ZIndex = 26
Instance.new("UICorner", widgetHeader).CornerRadius = UDim.new(0, 12)

local chatTitle = Instance.new("TextLabel", widgetHeader)
chatTitle.Size = UDim2.new(1, -35, 1, 0)
chatTitle.Position = UDim2.new(0, 10, 0, 0)
chatTitle.Text = "<b>TRAITORS CHAT MATRIX</b>"
chatTitle.RichText = true
chatTitle.Font = Enum.Font.GothamBlack
chatTitle.TextColor3 = CyberBlueHighlight
chatTitle.TextSize = 9
chatTitle.TextXAlignment = Enum.TextXAlignment.Left
chatTitle.BackgroundTransparency = 1
chatTitle.ZIndex = 27

local closeChatBtn = Instance.new("TextButton", widgetHeader)
closeChatBtn.Size = UDim2.new(0, 20, 0, 20)
closeChatBtn.Position = UDim2.new(1, -25, 0, 5)
closeChatBtn.Text = "âœ•"
closeChatBtn.Font = Enum.Font.GothamBold
closeChatBtn.TextColor3 = Color3.fromRGB(255, 80, 100)
closeChatBtn.TextSize = 10
closeChatBtn.BackgroundColor3 = Color3.fromRGB(45, 15, 25)
closeChatBtn.ZIndex = 27
Instance.new("UICorner", closeChatBtn).CornerRadius = UDim.new(0, 6)

local chatScroll = Instance.new("ScrollingFrame", chatWidget)
chatScroll.Size = UDim2.new(1, -16, 0, 168)
chatScroll.Position = UDim2.new(0, 8, 0, 36)
chatScroll.BackgroundColor3 = Color3.fromRGB(18, 12, 28)
chatScroll.BackgroundTransparency = 0.4
chatScroll.ScrollBarThickness = 3
chatScroll.ScrollBarImageColor3 = NeonPinkAccent
chatScroll.ZIndex = 26
Instance.new("UICorner", chatScroll).CornerRadius = UDim.new(0, 8)

local chatLayout = Instance.new("UIListLayout", chatScroll)
chatLayout.Padding = UDim.new(0, 5)
chatLayout.SortOrder = Enum.SortOrder.LayoutOrder

local chatInputBox = Instance.new("TextBox", chatWidget)
chatInputBox.Size = UDim2.new(1, -16, 0, 28)
chatInputBox.Position = UDim2.new(0, 8, 0, 212)
chatInputBox.PlaceholderText = "Type message..."
chatInputBox.PlaceholderColor3 = Color3.fromRGB(130, 115, 150)
chatInputBox.Text = ""
chatInputBox.BackgroundColor3 = Color3.fromRGB(22, 14, 34)
chatInputBox.TextColor3 = TextLight
chatInputBox.Font = Enum.Font.GothamBold
chatInputBox.TextSize = 9
chatInputBox.ZIndex = 26
Instance.new("UICorner", chatInputBox).CornerRadius = UDim.new(0, 6)
local inputStrk = Instance.new("UIStroke", chatInputBox)
inputStrk.Thickness = 1
inputStrk.Color = Color3.fromRGB(90, 40, 120)

local function triggerHeadChatBubble(message)
	pcall(function()
		local character = plr.Character
		if character and character:FindFirstChild("Head") then
			if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
				TextChatService:DisplayBubble(character.Head, message)
			else
				ChatService:Chat(character.Head, message, Enum.ChatColor.White)
			end
		end
	end)
end

local function appendGlobalMessage(senderName, messageText)
	local msgContainer = Instance.new("Frame", chatScroll)
	msgContainer.Size = UDim2.new(1, -6, 0, 0)
	msgContainer.BackgroundColor3 = Color3.fromRGB(25, 16, 38)
	msgContainer.BackgroundTransparency = 0.3
	msgContainer.ZIndex = 27
	Instance.new("UICorner", msgContainer).CornerRadius = UDim.new(0, 6)
	local msgLbl = Instance.new("TextLabel", msgContainer)
	msgLbl.Size = UDim2.new(1, -10, 1, -6)
	msgLbl.Position = UDim2.new(0, 5, 0, 3)
	msgLbl.BackgroundTransparency = 1
	msgLbl.Text = "<font color='rgb(0,220,255)'><b>" .. senderName .. ":</b></font> " .. messageText
	msgLbl.RichText = true
	msgLbl.Font = Enum.Font.Gotham
	msgLbl.TextColor3 = TextLight
	msgLbl.TextSize = 8.5
	msgLbl.TextWrapped = true
	msgLbl.TextXAlignment = Enum.TextXAlignment.Left
	msgLbl.ZIndex = 28
	msgLbl.Size = UDim2.new(1, -10, 0, msgLbl.TextBounds.Y)
	msgContainer.Size = UDim2.new(1, -6, 0, msgLbl.TextBounds.Y + 8)
	chatScroll.CanvasSize = UDim2.new(0, 0, 0, chatLayout.AbsoluteContentSize.Y + 10)
	chatScroll.CanvasPosition = Vector2.new(0, chatScroll.CanvasSize.Y.Offset)
end
appendGlobalMessage("SYSTEM", "Chat network connected!")

chatInputBox.FocusLost:Connect(function(enterPressed)
	if enterPressed and chatInputBox.Text ~= "" then
		local msg = chatInputBox.Text
		chatInputBox.Text = ""
		appendGlobalMessage(plr.DisplayName, msg)
		triggerHeadChatBubble(msg)
	end
end)

closeChatBtn.MouseButton1Click:Connect(function()
	chatWidget.Visible = false
	chatBadge.Position = chatWidget.Position
	chatBadge.Visible = true
end)

chatBadge.MouseButton1Click:Connect(function()
	chatBadge.Visible = false
	chatWidget.Position = chatBadge.Position
	chatWidget.Visible = true
end)

local function makeMovable(element)
	task.spawn(function()
		local dragging = false
		local dragInput, dragStart, startPos
		element.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = element.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		element.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				local delta = input.Position - dragStart
				element.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			end
		end)
	end)
end
makeMovable(chatWidget)
makeMovable(chatBadge)

-- ==================================================
-- EXTERIOR ATTACHED SETTINGS CONFIGURATION FRAME
-- ==================================================
local settingsBtn = Instance.new("ImageButton", main)
settingsBtn.Name = "SettingsIcon"
settingsBtn.Size = UDim2.new(0, 18, 0, 18)
settingsBtn.Position = UDim2.new(1, -28, 0, 10)
settingsBtn.BackgroundTransparency = 1
settingsBtn.Image = "rbxassetid://7072721682"
settingsBtn.ImageColor3 = TextLight
settingsBtn.ZIndex = 12

local settingsFrame = Instance.new("Frame", main)
settingsFrame.Name = "SettingsFrame"
settingsFrame.Visible = false
settingsFrame.Size = UDim2.new(0, 160, 0, 230)
settingsFrame.Position = UDim2.new(1, 10, 0, 0)
settingsFrame.BackgroundColor3 = Color3.fromRGB(10, 8, 16)
settingsFrame.ZIndex = 15
Instance.new("UICorner", settingsFrame).CornerRadius = UDim.new(0, 10)
local setStrk = Instance.new("UIStroke", settingsFrame)
setStrk.Thickness = 1.2
applyGradientWave(setStrk)

local antiTagTitle = Instance.new("TextLabel", settingsFrame)
antiTagTitle.Size = UDim2.new(1, 0, 0, 20)
antiTagTitle.Position = UDim2.new(0, 0, 0, 4)
antiTagTitle.Text = "SECURITY & AURA CONFIG"
antiTagTitle.Font = Enum.Font.GothamBold
antiTagTitle.TextColor3 = TextLight
antiTagTitle.TextSize = 8
antiTagTitle.BackgroundTransparency = 1
antiTagTitle.ZIndex = 16

-- TOGGLE 1: STANDARD BEST SPAMMER
local antiTagMode = false
local antiTagBtn = Instance.new("TextButton", settingsFrame)
antiTagBtn.Size = UDim2.new(0, 140, 0, 24)
antiTagBtn.Position = UDim2.new(0.5, -70, 0, 26)
antiTagBtn.Text = "BEST SPAMMER: OFF"
antiTagBtn.Font = Enum.Font.GothamBlack
antiTagBtn.TextColor3 = Color3.fromRGB(230, 190, 210)
antiTagBtn.TextSize = 8
antiTagBtn.BackgroundColor3 = Color3.fromRGB(40, 10, 15)
antiTagBtn.ZIndex = 16
Instance.new("UICorner", antiTagBtn).CornerRadius = UDim.new(0, 6)
local antiTagStrk = Instance.new("UIStroke", antiTagBtn)
antiTagStrk.Thickness = 1
antiTagStrk.Color = Color3.fromRGB(120, 20, 40)
addSmoothInteractions(antiTagBtn, Color3.fromRGB(40, 10, 15), Color3.fromRGB(55, 15, 25))

-- TOGGLE 2: MEGA BEST SPAMMER
local megaAntiTagMode = false
local megaAntiTagBtn = Instance.new("TextButton", settingsFrame)
megaAntiTagBtn.Size = UDim2.new(0, 140, 0, 24)
megaAntiTagBtn.Position = UDim2.new(0.5, -70, 0, 54)
megaAntiTagBtn.Text = "MEGA BEST SPAMMER: OFF"
megaAntiTagBtn.Font = Enum.Font.GothamBlack
megaAntiTagBtn.TextColor3 = Color3.fromRGB(230, 190, 210)
megaAntiTagBtn.TextSize = 8
megaAntiTagBtn.BackgroundColor3 = Color3.fromRGB(40, 10, 15)
megaAntiTagBtn.ZIndex = 16
Instance.new("UICorner", megaAntiTagBtn).CornerRadius = UDim.new(0, 6)
local megaStrk = Instance.new("UIStroke", megaAntiTagBtn)
megaStrk.Thickness = 1
megaStrk.Color = Color3.fromRGB(120, 20, 40)
addSmoothInteractions(megaAntiTagBtn, Color3.fromRGB(40, 10, 15), Color3.fromRGB(55, 15, 25))

-- ADMIN AURA INTERFACE
local adminAuraActive = true
local adminAuraBtn = Instance.new("TextButton", settingsFrame)
adminAuraBtn.Size = UDim2.new(0, 140, 0, 24)
adminAuraBtn.Position = UDim2.new(0.5, -70, 0, 82)
adminAuraBtn.Text = "ADMIN ORBS: ON"
adminAuraBtn.Font = Enum.Font.GothamBlack
adminAuraBtn.TextColor3 = TerminalGreen
adminAuraBtn.TextSize = 8
adminAuraBtn.BackgroundColor3 = Color3.fromRGB(20, 60, 30)
adminAuraBtn.ZIndex = 16
Instance.new("UICorner", adminAuraBtn).CornerRadius = UDim.new(0, 6)
local auraBtnStrk = Instance.new("UIStroke", adminAuraBtn)
auraBtnStrk.Thickness = 1
auraBtnStrk.Color = TerminalGreen
addSmoothInteractions(adminAuraBtn, Color3.fromRGB(20, 60, 30), Color3.fromRGB(30, 80, 40))

-- ORB THEME SELECTOR BUTTON
local orbSelectBtn = Instance.new("TextButton", settingsFrame)
orbSelectBtn.Size = UDim2.new(0, 140, 0, 24)
orbSelectBtn.Position = UDim2.new(0.5, -70, 0, 110)
orbSelectBtn.Text = "ORB: VOID BLACK"
orbSelectBtn.Font = Enum.Font.GothamBlack
orbSelectBtn.TextColor3 = CyberBlueHighlight
orbSelectBtn.TextSize = 8
orbSelectBtn.BackgroundColor3 = Color3.fromRGB(15, 25, 45)
orbSelectBtn.ZIndex = 16
Instance.new("UICorner", orbSelectBtn).CornerRadius = UDim.new(0, 6)
local orbSelectStrk = Instance.new("UIStroke", orbSelectBtn)
orbSelectStrk.Thickness = 1
orbSelectStrk.Color = CyberBlueHighlight
addSmoothInteractions(orbSelectBtn, Color3.fromRGB(15, 25, 45), Color3.fromRGB(25, 35, 65))

local orbThemesList = {"Void Black", "Cyber Neon", "Blood Crimson", "Golden Sovereign"}
local currentOrbIdx = 1
orbSelectBtn.MouseButton1Click:Connect(function()
	currentOrbIdx = (currentOrbIdx % #orbThemesList) + 1
	currentSelectedOrbTheme = orbThemesList[currentOrbIdx]
	orbSelectBtn.Text = "ORB: " .. currentSelectedOrbTheme:upper()
end)

local settingsNote = Instance.new("TextLabel", settingsFrame)
settingsNote.Size = UDim2.new(1, -20, 0, 80)
settingsNote.Position = UDim2.new(0, 10, 0, 140)
settingsNote.Text = "Note: best spammer features might fail but its still useful.. recommended to be used."
settingsNote.Font = Enum.Font.GothamBold
settingsNote.TextColor3 = Color3.fromRGB(180, 170, 190)
settingsNote.TextSize = 8
settingsNote.TextWrapped = true
settingsNote.TextXAlignment = Enum.TextXAlignment.Center
settingsNote.TextYAlignment = Enum.TextYAlignment.Top
settingsNote.BackgroundTransparency = 1
settingsNote.ZIndex = 16

local prefixPanel = Instance.new("Frame", gui)
local sideStrk = Instance.new("UIStroke", prefixPanel)
prefixPanel.Visible = false
prefixPanel.Size = UDim2.new(0, 105, 0, 270)
prefixPanel.Position = UDim2.new(0.5, -165, 1.5, 0)
prefixPanel.BackgroundColor3 = TranslucentBlack
prefixPanel.ZIndex = 5
Instance.new("UICorner", prefixPanel).CornerRadius = UDim.new(0, 14)
makeAdaptive(prefixPanel, 430, 320)
sideStrk.Thickness = 1.5
applyGradientWave(sideStrk)

local sideLayout = Instance.new("UIListLayout", prefixPanel)
sideLayout.Padding = UDim.new(0, 4)
sideLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
sideLayout.VerticalAlignment = Enum.VerticalAlignment.Center

local emojiMode, cycleMode = false, false
local prefixes = {"///===///", "@", "+++---+++"}
local selected = prefixes[2]
local lastUserSelectedPrefix = prefixes[2]
local cycleBtn = Instance.new("TextButton", prefixPanel)

local megaAntiTagTriggeredLoop = false
local currentActiveAutomatedMode = 1
local megaPrefixIndex = 1
local animalKudaiMode = false
local tmxMareMode = false
local word9Mode = false
local modesCycleMode = false
local animalKudaiBtn = Instance.new("TextButton", main)
local tmxMareBtn = Instance.new("TextButton", main)
local word9Btn = Instance.new("TextButton", main)
local toggleStroke = Instance.new("UIStroke", animalKudaiBtn)
local mareStroke = Instance.new("UIStroke", tmxMareBtn)
local word9Stroke = Instance.new("UIStroke", word9Btn)

local notifyFrame = Instance.new("Frame", gui)
notifyFrame.Name = "TagNotification"
notifyFrame.Size = UDim2.new(0, 220, 0, 50)
notifyFrame.Position = UDim2.new(1, 300, 0, 20)
notifyFrame.BackgroundColor3 = Color3.fromRGB(10, 8, 14)
notifyFrame.BackgroundTransparency = 0.1
notifyFrame.ZIndex = 20
Instance.new("UICorner", notifyFrame).CornerRadius = UDim.new(0, 8)
local notifyStroke = Instance.new("UIStroke", notifyFrame)
notifyStroke.Thickness = 1.5
applyGradientWave(notifyStroke)

local notifyText = Instance.new("TextLabel", notifyFrame)
notifyText.Size = UDim2.new(1, -20, 1, 0)
notifyText.Position = UDim2.new(0, 10, 0, 0)
notifyText.BackgroundTransparency = 1
notifyText.Text = "TAG DETECTED WHILE MEGA BEST SPAMMER ACTIVE!\nBEST SPAMMER FIRED TO DEFEAT TAGS!"
notifyText.Font = Enum.Font.GothamBold
notifyText.TextColor3 = Color3.fromRGB(255, 255, 255)
notifyText.TextSize = 8
notifyText.TextWrapped = true
notifyText.TextXAlignment = Enum.TextXAlignment.Center
notifyText.ZIndex = 21

local notifyDebounce = false
local function fireTagNotification()
	if notifyDebounce then return end
	notifyDebounce = true
	notifyFrame.Position = UDim2.new(1, 300, 0, 20)
	TweenService:Create(notifyFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position = UDim2.new(1, -240, 0, 20)}):Play()
	task.delay(4, function()
		TweenService:Create(notifyFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Position = UDim2.new(1, 300, 0, 20)}):Play()
		task.wait(0.4)
		notifyDebounce = false
	end)
end

local function resetAllToggles()
	animalKudaiMode = false
	tmxMareMode = false
	word9Mode = false
	animalKudaiBtn.BackgroundColor3 = Color3.fromRGB(32, 12, 22)
	animalKudaiBtn.TextColor3 = Color3.fromRGB(230, 190, 210)
	toggleStroke.Color = Color3.fromRGB(80, 40, 100)
	tmxMareBtn.BackgroundColor3 = Color3.fromRGB(32, 12, 22)
	tmxMareBtn.TextColor3 = Color3.fromRGB(230, 190, 210)
	mareStroke.Color = Color3.fromRGB(80, 40, 100)
	word9Btn.BackgroundColor3 = Color3.fromRGB(32, 12, 22)
	word9Btn.TextColor3 = Color3.fromRGB(230, 190, 210)
	word9Stroke.Color = Color3.fromRGB(80, 40, 100)
end

local function selectAnimalKudaiVisual()
	animalKudaiMode = true
	animalKudaiBtn.BackgroundColor3 = Color3.fromRGB(12, 32, 22)
	animalKudaiBtn.TextColor3 = CyberBlueHighlight
	toggleStroke.Color = CyberBlueHighlight
end

local function selectTmxMareVisual()
	tmxMareMode = true
	tmxMareBtn.BackgroundColor3 = Color3.fromRGB(12, 32, 22)
	tmxMareBtn.TextColor3 = CyberBlueHighlight
	mareStroke.Color = CyberBlueHighlight
end

local function selectWord9Visual()
	word9Mode = true
	word9Btn.BackgroundColor3 = Color3.fromRGB(12, 32, 22)
	word9Btn.TextColor3 = CyberBlueHighlight
	word9Stroke.Color = CyberBlueHighlight
end

local function updateAntiTagUI()
	antiTagBtn.Text = antiTagMode and "BEST SPAMMER: ON" or "BEST SPAMMER: OFF"
	antiTagBtn.BackgroundColor3 = antiTagMode and Color3.fromRGB(20, 60, 30) or Color3.fromRGB(40, 10, 15)
	antiTagBtn.TextColor3 = antiTagMode and TerminalGreen or Color3.fromRGB(230, 190, 210)
	antiTagStrk.Color = antiTagMode and TerminalGreen or Color3.fromRGB(120, 20, 40)
end

local function updateMegaAntiTagUI()
	megaAntiTagBtn.Text = megaAntiTagMode and "MEGA BEST SPAMMER: ON" or "MEGA BEST SPAMMER: OFF"
	megaAntiTagBtn.BackgroundColor3 = megaAntiTagMode and Color3.fromRGB(20, 60, 30) or Color3.fromRGB(40, 10, 15)
	megaAntiTagBtn.TextColor3 = megaAntiTagMode and TerminalGreen or Color3.fromRGB(230, 190, 210)
	megaStrk.Color = megaAntiTagMode and TerminalGreen or Color3.fromRGB(120, 20, 40)
end

local function selectRandomSpamMode()
	resetAllToggles()
	local roll = math.random(1, 3)
	currentActiveAutomatedMode = roll
	if roll == 1 then
		selectTmxMareVisual()
	elseif roll == 2 then
		selectAnimalKudaiVisual()
	else
		selectWord9Visual()
	end
end

antiTagBtn.MouseButton1Click:Connect(function()
	if megaAntiTagMode then return end
	antiTagMode = not antiTagMode
	if not antiTagMode then
		selected = lastUserSelectedPrefix
	end
	updateAntiTagUI()
end)

megaAntiTagBtn.MouseButton1Click:Connect(function()
	megaAntiTagMode = not megaAntiTagMode
	if megaAntiTagMode then
		antiTagMode = false
		updateAntiTagUI()
		selectRandomSpamMode()
	else
		megaAntiTagTriggeredLoop = false
		selected = lastUserSelectedPrefix
		resetAllToggles()
		cycleMode = false
		cycleBtn.Text = "CYCLE: OFF"
		cycleBtn.BackgroundColor3 = Color3.fromRGB(32, 12, 22)
		cycleBtn.TextColor3 = Color3.fromRGB(230, 190, 210)
	end
	updateMegaAntiTagUI()
end)

settingsBtn.MouseButton1Click:Connect(function()
	settingsFrame.Visible = not settingsFrame.Visible
	if settingsFrame.Visible then
		settingsFrame.Position = UDim2.new(1, 25, 0, 0)
		TweenService:Create(settingsFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = UDim2.new(1, 10, 0, 0)}):Play()
	end
end)

local targetsContainer = Instance.new("Frame", main)
targetsContainer.Size = UDim2.new(0, 185, 0, 80)
targetsContainer.Position = UDim2.new(0, 12, 0, 34)
targetsContainer.BackgroundTransparency = 1
targetsContainer.ZIndex = 6
local gridLayout = Instance.new("UIGridLayout", targetsContainer)
gridLayout.CellSize = UDim2.new(0, 86, 0, 32)
gridLayout.CellPadding = UDim2.new(0, 8, 0, 8)

local names = {}
for i = 1, 4 do
	local containerFrame = Instance.new("Frame", targetsContainer)
	containerFrame.BackgroundColor3 = PanelFillColor
	containerFrame.ZIndex = 6
	Instance.new("UICorner", containerFrame).CornerRadius = UDim.new(0, 6)
	local cStrk = Instance.new("UIStroke", containerFrame)
	cStrk.Thickness = 1
	cStrk.Color = Color3.fromRGB(48, 32, 64)
	local box = Instance.new("TextBox", containerFrame)
	box.Size = UDim2.new(1, -10, 1, 0)
	box.Position = UDim2.new(0, 5, 0, 0)
	box.PlaceholderText = "TARGET " .. i
	box.PlaceholderColor3 = Color3.fromRGB(105, 90, 125)
	box.BackgroundColor3 = PanelFillColor
	box.BackgroundTransparency = 1
	box.TextColor3 = TextLight
	box.Font = Enum.Font.GothamBold
	box.TextSize = 9
	box.BorderSizePixel = 0
	box.ZIndex = 7
	names[i] = box
end

local configContainer = Instance.new("Frame", main)
configContainer.Size = UDim2.new(0, 90, 0, 72)
configContainer.Position = UDim2.new(0, 208, 0, 34)
configContainer.BackgroundColor3 = Color3.fromRGB(16, 12, 24)
configContainer.ZIndex = 6
Instance.new("UICorner", configContainer).CornerRadius = UDim.new(0, 8)
local configStrk = Instance.new("UIStroke", configContainer)
configStrk.Thickness = 1
configStrk.Color = Color3.fromRGB(55, 35, 80)

local speedLabel = Instance.new("TextLabel", configContainer)
speedLabel.Size = UDim2.new(1, 0, 0, 18)
speedLabel.Position = UDim2.new(0, 0, 0, 6)
speedLabel.Text = "DELAY"
speedLabel.Font = Enum.Font.GothamBold
speedLabel.TextColor3 = OffText
speedLabel.TextSize = 8
speedLabel.BackgroundTransparency = 1
speedLabel.ZIndex = 7

local speed = Instance.new("TextBox", configContainer)
speed.Size = UDim2.new(0.75, 0, 0, 26)
speed.Position = UDim2.new(0.125, 0, 0, 26)
speed.Text = "0.8"
speed.PlaceholderText = "0.8"
speed.BackgroundColor3 = PanelFillColor
speed.TextColor3 = NeonPinkAccent
speed.Font = Enum.Font.Code
speed.TextSize = 12
speed.BorderSizePixel = 0
speed.ZIndex = 7
Instance.new("UICorner", speed).CornerRadius = UDim.new(0, 5)
local speedStrk = Instance.new("UIStroke", speed)
speedStrk.Thickness = 1
speedStrk.Color = Color3.fromRGB(80, 40, 110)

animalKudaiBtn.Size = UDim2.new(0, 90, 0, 28)
animalKudaiBtn.Position = UDim2.new(0, 12, 0, 122)
animalKudaiBtn.Text = "ANIMAL+KUDAI"
animalKudaiBtn.BackgroundColor3 = Color3.fromRGB(32, 12, 22)
animalKudaiBtn.TextColor3 = Color3.fromRGB(230, 190, 210)
animalKudaiBtn.Font = Enum.Font.GothamBold
animalKudaiBtn.TextSize = 8
animalKudaiBtn.Parent = main
animalKudaiBtn.ZIndex = 6
Instance.new("UICorner", animalKudaiBtn).CornerRadius = UDim.new(0, 6)
toggleStroke.Thickness = 1
toggleStroke.Color = Color3.fromRGB(80, 40, 100)
toggleStroke.Parent = animalKudaiBtn
addSmoothInteractions(animalKudaiBtn, Color3.fromRGB(32, 12, 22), Color3.fromRGB(48, 18, 32))

tmxMareBtn.Size = UDim2.new(0, 90, 0, 28)
tmxMareBtn.Position = UDim2.new(0, 110, 0, 122)
tmxMareBtn.Text = "TMX MARE"
tmxMareBtn.BackgroundColor3 = Color3.fromRGB(32, 12, 22)
tmxMareBtn.TextColor3 = Color3.fromRGB(230, 190, 210)
tmxMareBtn.Font = Enum.Font.GothamBold
tmxMareBtn.TextSize = 8
tmxMareBtn.Parent = main
tmxMareBtn.ZIndex = 6
Instance.new("UICorner", tmxMareBtn).CornerRadius = UDim.new(0, 6)
mareStroke.Thickness = 1
mareStroke.Color = Color3.fromRGB(80, 40, 100)
mareStroke.Parent = tmxMareBtn
addSmoothInteractions(tmxMareBtn, Color3.fromRGB(32, 12, 22), Color3.fromRGB(48, 18, 32))

word9Btn.Size = UDim2.new(0, 90, 0, 28)
word9Btn.Position = UDim2.new(0, 208, 0, 122)
word9Btn.Text = "9 WORD"
word9Btn.BackgroundColor3 = Color3.fromRGB(32, 12, 22)
word9Btn.TextColor3 = Color3.fromRGB(230, 190, 210)
word9Btn.Font = Enum.Font.GothamBold
word9Btn.TextSize = 8
word9Btn.Parent = main
word9Btn.ZIndex = 6
Instance.new("UICorner", word9Btn).CornerRadius = UDim.new(0, 6)
word9Stroke.Thickness = 1
word9Stroke.Color = Color3.fromRGB(80, 40, 100)
word9Stroke.Parent = word9Btn
addSmoothInteractions(word9Btn, Color3.fromRGB(32, 12, 22), Color3.fromRGB(48, 18, 32))

animalKudaiBtn.MouseButton1Click:Connect(function()
	if megaAntiTagMode or modesCycleMode then return end
	local target = not animalKudaiMode
	resetAllToggles()
	if target then
		selectAnimalKudaiVisual()
	end
end)

tmxMareBtn.MouseButton1Click:Connect(function()
	if megaAntiTagMode or modesCycleMode then return end
	local target = not tmxMareMode
	resetAllToggles()
	if target then
		selectTmxMareVisual()
	end
end)

word9Btn.MouseButton1Click:Connect(function()
	if megaAntiTagMode or modesCycleMode then return end
	local target = not word9Mode
	resetAllToggles()
	if target then
		selectWord9Visual()
	end
end)

local start = Instance.new("TextButton", main)
start.Size = UDim2.new(1, -24, 0, 36)
start.Position = UDim2.new(0, 12, 0, 164)
start.Text = "INITIALIZE SPAMCORE"
start.BackgroundColor3 = PanelFillColor
start.TextColor3 = NeonPinkAccent
start.Font = Enum.Font.GothamBold
start.TextSize = 10
start.ZIndex = 6
Instance.new("UICorner", start).CornerRadius = UDim.new(0, 8)
local startStrk = Instance.new("UIStroke", start)
startStrk.Thickness = 1.2
applyGradientWave(startStrk)
addSmoothInteractions(start, PanelFillColor, Color3.fromRGB(30, 20, 40), 1.02)

for _, p in pairs(prefixes) do
	local b = Instance.new("TextButton", prefixPanel)
	b.Size = UDim2.new(0.85, 0, 0, 24)
	b.Text = p
	b.BackgroundColor3 = PanelFillColor
	b.TextColor3 = NeonPinkAccent
	b.Font = Enum.Font.Code
	b.TextSize = 10
	b.ZIndex = 6
	Instance.new("UICorner", b).CornerRadius = UDim.new(0, 5)
	addSmoothInteractions(b, PanelFillColor, Color3.fromRGB(28, 20, 38))
	
	b.MouseButton1Click:Connect(function()
		if megaAntiTagMode then return end
		selected = p
		lastUserSelectedPrefix = p
	end)
end

local customPre = Instance.new("TextBox", prefixPanel)
customPre.Size = UDim2.new(0.85, 0, 0, 24)
customPre.PlaceholderText = "CUSTOM..."
customPre.PlaceholderColor3 = Color3.fromRGB(100, 90, 120)
customPre.BackgroundColor3 = PanelFillColor
customPre.TextColor3 = TextLight
customPre.Font = Enum.Font.Code
customPre.TextSize = 10
customPre.ZIndex = 6
Instance.new("UICorner", customPre).CornerRadius = UDim.new(0, 5)
customPre.FocusLost:Connect(function()
	if megaAntiTagMode then return end
	if customPre.Text ~= "" then
		selected = customPre.Text
		lastUserSelectedPrefix = customPre.Text
	end
end)

local emojiBtn = Instance.new("TextButton", prefixPanel)
emojiBtn.Size = UDim2.new(0.85, 0, 0, 24)
emojiBtn.Text = "EMOJI: OFF"
emojiBtn.BackgroundColor3 = Color3.fromRGB(32, 12, 22)
emojiBtn.TextColor3 = Color3.fromRGB(230, 190, 210)
emojiBtn.Font = Enum.Font.GothamBold
emojiBtn.TextSize = 9
emojiBtn.ZIndex = 6
Instance.new("UICorner", emojiBtn).CornerRadius = UDim.new(0, 5)
addSmoothInteractions(emojiBtn, Color3.fromRGB(32, 12, 22), Color3.fromRGB(48, 18, 32))

cycleBtn.Size = UDim2.new(0.85, 0, 0, 24)
cycleBtn.Text = "CYCLE: OFF"
cycleBtn.BackgroundColor3 = Color3.fromRGB(12, 32, 22)
cycleBtn.TextColor3 = Color3.fromRGB(230, 190, 210)
cycleBtn.Font = Enum.Font.GothamBold
cycleBtn.TextSize = 9
cycleBtn.ZIndex = 6
Instance.new("UICorner", cycleBtn).CornerRadius = UDim.new(0, 5)
addSmoothInteractions(cycleBtn, Color3.fromRGB(12, 32, 22), Color3.fromRGB(18, 48, 32))

local modesCycleBtn = Instance.new("TextButton", prefixPanel)
modesCycleBtn.Size = UDim2.new(0.85, 0, 0, 24)
modesCycleBtn.Text = "3 MODES CYCLE: OFF"
modesCycleBtn.BackgroundColor3 = Color3.fromRGB(32, 12, 22)
modesCycleBtn.TextColor3 = Color3.fromRGB(230, 190, 210)
modesCycleBtn.Font = Enum.Font.GothamBold
modesCycleBtn.TextSize = 7.5
modesCycleBtn.ZIndex = 6
Instance.new("UICorner", modesCycleBtn).CornerRadius = UDim.new(0, 5)
addSmoothInteractions(modesCycleBtn, Color3.fromRGB(32, 12, 22), Color3.fromRGB(48, 18, 32))

emojiBtn.MouseButton1Click:Connect(function()
	if megaAntiTagMode then return end
	emojiMode = not emojiMode
	emojiBtn.Text = emojiMode and "EMOJI: ON" or "EMOJI: OFF"
	emojiBtn.BackgroundColor3 = emojiMode and Color3.fromRGB(12, 32, 22) or Color3.fromRGB(32, 12, 22)
	emojiBtn.TextColor3 = emojiMode and NeonPinkAccent or Color3.fromRGB(230, 190, 210)
end)

cycleBtn.MouseButton1Click:Connect(function()
	if megaAntiTagMode then return end
	cycleMode = not cycleMode
	cycleBtn.Text = cycleMode and "CYCLE: ON" or "CYCLE: OFF"
	cycleBtn.BackgroundColor3 = cycleMode and Color3.fromRGB(12, 32, 22) or Color3.fromRGB(32, 12, 22)
	cycleBtn.TextColor3 = cycleMode and NeonPinkAccent or Color3.fromRGB(230, 190, 210)
end)

modesCycleBtn.MouseButton1Click:Connect(function()
	if megaAntiTagMode then return end
	modesCycleMode = not modesCycleMode
	modesCycleBtn.Text = modesCycleMode and "3 MODES CYCLE: ON" or "3 MODES CYCLE: OFF"
	modesCycleBtn.BackgroundColor3 = modesCycleMode and Color3.fromRGB(12, 32, 22) or Color3.fromRGB(32, 12, 22)
	modesCycleBtn.TextColor3 = modesCycleMode and NeonPinkAccent or Color3.fromRGB(230, 190, 210)
	if modesCycleMode then
		currentActiveAutomatedMode = 1
		resetAllToggles()
		selectTmxMareVisual()
	else
		resetAllToggles()
	end
end)

local running = false
local base9WordPool = {"ALPHA", "SIGMA", "POWER", "FIRE", "STORM", "NOVA", "BOOM", "WAVE", "DARK", "CORE", "VOID", "GODLY"}
local animalPool = {
	"IndiaðŸ‡®ðŸ‡³", "Owl ðŸ¦‰", "ðŸ¯ Tiger", "ðŸ¦ Lion", "ðŸ» Bear", "ðŸ® Cow", "ðŸ¶ Dog", "Brazil", "Fan", "Adapter", "Leopard", "Yeti", "Elephant"
}
local targetEmojis = {"ðŸ”¥", "ðŸŒªï¸", "âœ¨", "ðŸ’€", "ðŸ‘‘"}

local function getUniqueRandomWords(sourceTable, targetAmount)
	local indices = {}
	local chosenWords = {}
	while #chosenWords < targetAmount do
		local randIndex = math.random(1, #sourceTable)
		if not indices[randIndex] then
			indices[randIndex] = true
			table.insert(chosenWords, string.upper(sourceTable[randIndex]))
		end
		if #chosenWords >= #sourceTable then break end
	end
	return table.concat(chosenWords, " ")
end

local function send(msg)
	pcall(function()
		if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
			local ch = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
			if ch then
				ch:SendAsync(msg)
			end
		else
			local legacyChat = ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")
			if legacyChat and legacyChat:FindFirstChild("SayMessageRequest") then
				legacyChat.SayMessageRequest:FireServer(msg, "All")
			end
		end
	end)
end

local function updateStartButtonUI()
	start.Text = running and "TERMINATE ENGINE" or "INITIALIZE SPAMCORE"
	start.TextColor3 = running and TextLight or NeonPinkAccent
	start.BackgroundColor3 = running and Color3.fromRGB(255,40,40) or PanelFillColor
end

local function runSpamLoop()
	task.spawn(function()
		local cycleIdx = 1
		local globalMessageCounter = 0
		local standaloneModeCycleCounter = 1
		while running do
			local sp = tonumber(speed.Text) or 0.8
			for i, b in ipairs(names) do
				if not running then break end
				if b.Text ~= "" then
					if megaAntiTagMode and megaAntiTagTriggeredLoop then
						selected = prefixes[megaPrefixIndex]
						megaPrefixIndex = megaPrefixIndex + 1
						if megaPrefixIndex > #prefixes then
							megaPrefixIndex = 1
							currentActiveAutomatedMode = currentActiveAutomatedMode + 1
							if currentActiveAutomatedMode > 3 then currentActiveAutomatedMode = 1 end
							resetAllToggles()
							if currentActiveAutomatedMode == 1 then
								selectTmxMareVisual()
							elseif currentActiveAutomatedMode == 2 then
								selectAnimalKudaiVisual()
							else
								selectWord9Visual()
							end
						end
					elseif modesCycleMode and not megaAntiTagTriggeredLoop then
						resetAllToggles()
						if standaloneModeCycleCounter == 1 then
							selectTmxMareVisual()
						elseif standaloneModeCycleCounter == 2 then
							selectAnimalKudaiVisual()
						else
							selectWord9Visual()
						end
						standaloneModeCycleCounter = standaloneModeCycleCounter >= 3 and 1 or standaloneModeCycleCounter + 1
					end
					local currentPrefix = selected
					if cycleMode and not megaAntiTagTriggeredLoop and not megaAntiTagMode and not antiTagMode then
						currentPrefix = prefixes[cycleIdx]
						cycleIdx = cycleIdx >= #prefixes and 1 or cycleIdx + 1
					elseif not megaAntiTagTriggeredLoop and not megaAntiTagMode and not antiTagMode then
						currentPrefix = lastUserSelectedPrefix
					end
					local limit = (currentPrefix == "@") and 110 or 80
					local finalP = string.rep(currentPrefix, math.ceil(limit/#currentPrefix)):sub(1,limit)
					local outputPayload = ""
					local targetDisplay = b.Text:upper()
					if emojiMode then
						local count = math.random(1, 2)
						local block = ""
						for _ = 1, count do
							block = block .. targetEmojis[math.random(#targetEmojis)]
						end
						targetDisplay = targetDisplay .. " " .. block
					end
					if animalKudaiMode then
						local rWords = getUniqueRandomWords(animalPool, 5)
						outputPayload = "["..finalP.."] ["..targetDisplay.."] TMx Kudai by " .. rWords
					elseif tmxMareMode then
						local rWords = getUniqueRandomWords(animalPool, 4)
						outputPayload = "["..finalP.."] ["..targetDisplay.."] TMx MARE " .. rWords
					elseif word9Mode then
						local rWords = getUniqueRandomWords(base9WordPool, 9)
						outputPayload = "["..finalP.."] ["..targetDisplay.."] TMx mai " .. rWords
					end
					if outputPayload ~= "" then
						globalMessageCounter = globalMessageCounter + 1
						if globalMessageCounter % 5 == 0 then
							send("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ [S C R I P T] BY Z E N [ THE COMEBACK OF Z E N ]...")
							task.wait(sp)
						end
						send(outputPayload)
					end
					task.wait(sp)
				end
			end
			task.wait(0.05)
		end
	end)
end

start.MouseButton1Click:Connect(function()
	if not (animalKudaiMode or tmxMareMode or word9Mode or modesCycleMode) then return end
	running = not running
	updateStartButtonUI()
	if running then
		if megaAntiTagMode then
			selectRandomSpamMode()
			megaPrefixIndex = 1
		end
		runSpamLoop()
	end
end)

local toggleGlow = Instance.new("Frame", gui)
toggleGlow.Name = "ToggleGlow"
toggleGlow.Visible = false
toggleGlow.Size = UDim2.new(0, 56, 0, 56)
toggleGlow.Position = UDim2.new(0.5, -28, 0, 13)
toggleGlow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggleGlow.BackgroundTransparency = 0.8
toggleGlow.ZIndex = 9
Instance.new("UICorner", toggleGlow).CornerRadius = UDim.new(1, 0)
local toggleGlowGradient = Instance.new("UIGradient", toggleGlow)

local toggle = Instance.new("TextButton", gui)
toggle.Visible = false
toggle.Size = UDim2.new(0, 48, 0, 48)
toggle.Position = UDim2.new(0.5, -24, 0, 17)
toggle.BackgroundColor3 = TranslucentBlack
toggle.Text = "TRAITORS"
toggle.Font = Enum.Font.GothamBlack
toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
toggle.TextSize = 13
toggle.ZIndex = 10
Instance.new("UICorner", toggle).CornerRadius = UDim.new(1, 0)
local toggleStrk = Instance.new("UIStroke", toggle)
toggleStrk.Name = "RGBStroke"
toggleStrk.Thickness = 2.2
local toggleGradient = Instance.new("UIGradient", toggleStrk)

task.spawn(function()
	local rot = 0
	while toggle and toggle.Parent do
		rot = (rot + 3) % 360
		local h = (os.clock() * 0.4) % 1
		local liveColor = Color3.fromHSV(h, 0.9, 1)
		local nextColor = Color3.fromHSV((h + 0.33) % 1, 0.9, 1)
		local thirdColor = Color3.fromHSV((h + 0.66) % 1, 0.9, 1)
		local seq = ColorSequence.new({
			ColorSequenceKeypoint.new(0, liveColor),
			ColorSequenceKeypoint.new(0.5, nextColor),
			ColorSequenceKeypoint.new(1, thirdColor)
		})
		toggleGradient.Color = seq
		toggleGradient.Rotation = rot
		toggleGlowGradient.Color = seq
		toggleGlowGradient.Rotation = (rot + 180) % 360
		toggle.TextColor3 = liveColor
		local pulse = (math.sin(os.clock() * 4) + 1) / 2
		toggleGlow.BackgroundTransparency = 0.65 + (pulse * 0.25)
		task.wait(0.015)
	end
end)

addSmoothInteractions(toggle, TranslucentBlack, Color3.fromRGB(20, 12, 28), 1.1)

local panelOpen = false
toggle.MouseButton1Click:Connect(function()
	panelOpen = not panelOpen
	local targetMainPos = panelOpen and UDim2.new(0.5, 55, 0.5, 0) or UDim2.new(0.5, 55, 1.5, 0)
	local targetSidePos = panelOpen and UDim2.new(0.5, -165, 0.5, 0) or UDim2.new(0.5, -165, 1.5, 0)
	
	TweenService:Create(main, TweenInfo.new(0.65, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = targetMainPos}):Play()
	TweenService:Create(prefixPanel, TweenInfo.new(0.65, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = targetSidePos}):Play()
	TweenService:Create(blur, TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Size = panelOpen and 20 or 0}):Play()
end)

task.spawn(function()
	local dragging = false
	local dragInput, dragStart, startPos, startGlowPos
	local function update(input)
		local delta = input.Position - dragStart
		local newPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		toggle.Position = newPos
		toggleGlow.Position = UDim2.new(startGlowPos.X.Scale, startGlowPos.X.Offset + delta.X, startGlowPos.Y.Scale, startGlowPos.Y.Offset + delta.Y)
	end
	toggle.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = toggle.Position
			startGlowPos = toggleGlow.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	toggle.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end)

local function applyIdentity()
	if NameRemote then
		pcall(function()
			NameRemote:FireServer("RolePlayName", toSmallCaps("TRAITORSâš¡SPAMMER [Best SpammerðŸ¤¡ðŸ¥€]"))
			task.wait(0.2)
			NameRemote:FireServer("RolePlayBio", toSmallCaps("TRAITORS H8R LAND PEðŸ¥´"))
		end)
	end
end

local function startRGB()
	task.spawn(function()
		while true do
			local color = Color3.fromHSV(math.random(), 1, 1)
			pcall(function()
				if ColorRemote then
					ColorRemote:FireServer("PickingRPNameColor", color)
					ColorRemote:FireServer("PickingRPBioColor", color)
				end
			end)
			task.wait(0.05)
		end
	end)
end

if hookmetamethod and getnamecallmethod then
	local oldNamecall
	oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
		local method = getnamecallmethod()
		local args = {...}
		if method == "FireServer" then
			if NameRemote and self == NameRemote then
				if type(args[2]) == "string" then
					args[2] = toSmallCaps(args[2])
				end
			end
		end
		return oldNamecall(self, unpack(args))
	end)
end

local activeTrackers = {}
local function checkIsAdmin(targetPlayer)
	if not targetPlayer then return false end
	local name = targetPlayer.Name
	if name == "SUPERMONKXSCRIPTS" then
		return true
	end
	return false
end

local function cleanOrbTracker(playerInstance)
	if activeTrackers[playerInstance] then
		local tr = activeTrackers[playerInstance]
		tr.Running = false
		if tr.Connection then pcall(function() tr.Connection:Disconnect() end) end
		if tr.Core then pcall(function() tr.Core:Destroy() end) end
		if tr.Aura then pcall(function() tr.Aura:Destroy() end) end
		if tr.Rings then
			for _, ring in ipairs(tr.Rings) do
				for _, part in ipairs(ring) do
					pcall(function() part:Destroy() end)
				end
			end
		end
		activeTrackers[playerInstance] = nil
	end
end

local function spawnAdminOrbPipeline(targetPlayer)
	cleanOrbTracker(targetPlayer)
	local tracker = {
		Running = true,
		Rings = {}
	}
	activeTrackers[targetPlayer] = tracker
	local function constructOrbStructure(char)
		local hrp = char:WaitForChild("HumanoidRootPart", 10)
		if not hrp or not tracker.Running then return end
		local theme = OrbPresets[currentSelectedOrbTheme] or OrbPresets["Void Black"]
		local core = Instance.new("Part")
		core.Shape = Enum.PartType.Ball
		core.Material = Enum.Material.SmoothPlastic
		core.Color = theme.CoreColor
		core.Anchored = true
		core.CanCollide = false
		core.Parent = workspace
		tracker.Core = core
		local light = Instance.new("PointLight")
		light.Color = theme.LightColor
		light.Brightness = 3
		light.Range = 25
		light.Parent = core
		local auraPart = Instance.new("Part")
		auraPart.Size = Vector3.new(5,5,5)
		auraPart.Transparency = 1
		auraPart.Anchored = true
		auraPart.CanCollide = false
		auraPart.Parent = workspace
		tracker.Aura = auraPart
		local fire = Instance.new("ParticleEmitter")
		fire.Texture = "rbxassetid://243660364"
		fire.Color = theme.FireSeq
		fire.LightEmission = 0.8
		fire.Rate = 90
		fire.Lifetime = NumberRange.new(0.4, 0.7)
		fire.Speed = NumberRange.new(2, 5)
		fire.SpreadAngle = Vector2.new(180, 180)
		fire.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.2), NumberSequenceKeypoint.new(1, 0)})
		fire.Parent = auraPart
		local ringCount = 4
		local shardCount = 10
		for r = 1, ringCount do
			tracker.Rings[r] = {}
			for i = 1, shardCount do
				local p = Instance.new("Part")
				p.Size = Vector3.new(0.25, 2.5, 0.25)
				p.Material = Enum.Material.Neon
				p.Color = theme.ShardColor
				p.Anchored = true
				p.CanCollide = false
				p.Parent = workspace
				table.insert(tracker.Rings[r], p)
			end
		end
		local t = 0
		local smooth = hrp.Position
		local connection
		connection = RunService.RenderStepped:Connect(function(dt)
			if not tracker.Running or not char.Parent or not hrp or not hrp.Parent then
				if connection then connection:Disconnect() end
				return
			end
			t += dt
			
			local activeTheme = OrbPresets[currentSelectedOrbTheme] or OrbPresets["Void Black"]
			core.Color = activeTheme.CoreColor
			light.Color = activeTheme.LightColor
			fire.Color = activeTheme.FireSeq
			local shouldShow = true
			if targetPlayer == plr then
				shouldShow = adminAuraActive and checkIsAdmin(targetPlayer)
			else
				shouldShow = checkIsAdmin(targetPlayer)
			end
			core.Transparency = shouldShow and 0 or 1
			light.Enabled = shouldShow
			fire.Enabled = shouldShow
			local targetPos = hrp.Position - hrp.CFrame.LookVector * 4.5 + Vector3.new(0, 2.5, 0)
			smooth = smooth:Lerp(targetPos, 0.12)
			core.Position = smooth
			auraPart.Position = smooth
			local pulse = math.sin(t * 3) * 0.15 + 1
			core.Size = Vector3.new(4,4,4) * pulse
			for r = 1, ringCount do
				local ring = tracker.Rings[r]
				local radius = 2.8 + (r * 0.4)
				local height = 2.0 + (r * 0.7)
				local speedMod = 8 - (r * 1.1)
				local spin = t * speedMod
				for i, v in ipairs(ring) do
					v.Transparency = shouldShow and 0 or 1
					v.Color = activeTheme.ShardColor
					if shouldShow then
						local angle = (i / shardCount) * math.pi * 2 + spin
						local x = math.cos(angle) * radius
						local y = math.sin(angle) * height
						local pos = smooth + hrp.CFrame.RightVector * x + Vector3.new(0, y, 0)
						v.CFrame = CFrame.lookAt(pos, smooth)
					end
				end
			end
		end)
		tracker.Connection = connection
	end
	if targetPlayer.Character then
		task.spawn(constructOrbStructure, targetPlayer.Character)
	end
	targetPlayer.CharacterAdded:Connect(function(char)
		if tracker.Running then
			constructOrbStructure(char)
		end
	end)
end

local function evaluateGlobalServerAuras()
	for _, player in ipairs(Players:GetPlayers()) do
		if checkIsAdmin(player) then
			spawnAdminOrbPipeline(player)
		end
	end
end

adminAuraBtn.MouseButton1Click:Connect(function()
	if not checkIsAdmin(plr) then
		adminAuraBtn.Text = "ACCESS DENIED"
		adminAuraBtn.TextColor3 = Color3.fromRGB(255, 50, 50)
		auraBtnStrk.Color = Color3.fromRGB(255, 50, 50)
		task.delay(1, function()
			adminAuraBtn.Text = "ADMIN ORBS: N/A"
			adminAuraBtn.TextColor3 = OffText
			auraBtnStrk.Color = Color3.fromRGB(120, 20, 40)
		end)
		return
	end
	adminAuraActive = not adminAuraActive
	adminAuraBtn.Text = adminAuraActive and "ADMIN ORBS: ON" or "ADMIN ORBS: OFF"
	adminAuraBtn.BackgroundColor3 = adminAuraActive and Color3.fromRGB(20, 60, 30) or Color3.fromRGB(40, 10, 15)
	adminAuraBtn.TextColor3 = adminAuraActive and TerminalGreen or Color3.fromRGB(230, 190, 210)
	auraBtnStrk.Color = adminAuraActive and TerminalGreen or Color3.fromRGB(120, 20, 40)
	if not adminAuraActive then
		cleanOrbTracker(plr)
	else
		spawnAdminOrbPipeline(plr)
	end
end)

Players.PlayerAdded:Connect(function(player)
	task.delay(1, function()
		if checkIsAdmin(player) then
			spawnAdminOrbPipeline(player)
		end
	end)
end)

Players.PlayerRemoving:Connect(function(player)
	cleanOrbTracker(player)
end)

local function launchDashboardCore(enableChat)
	fadeOutFrame(welcomeUI)
	task.wait(0.35)
	welcomeUI:Destroy()
	main.Visible = true
	prefixPanel.Visible = true
	toggleGlow.Visible = true
	toggle.Visible = true
	panelOpen = true
	if enableChat then
		chatWidget.Visible = true
	end
	TweenService:Create(main, TweenInfo.new(0.65, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 55, 0.5, 0)}):Play()
	TweenService:Create(prefixPanel, TweenInfo.new(0.65, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -165, 0.5, 0)}):Play()
	TweenService:Create(blur, TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Size = 20}):Play()
	applyIdentity()
	startRGB()
	if not checkIsAdmin(plr) then
		adminAuraBtn.Text = "ADMIN ORBS: N/A"
		adminAuraBtn.TextColor3 = OffText
		adminAuraBtn.BackgroundColor3 = Color3.fromRGB(40, 10, 15)
		auraBtnStrk.Color = Color3.fromRGB(60, 40, 75)
	end
	evaluateGlobalServerAuras()
	send("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ARHAN âš¡ SPAMMER LOADED!! >THE COMEBACK OF ARHANN< [ Most of spammers copied this spam ] this is the original { originated from TRAITORS }")
end

startCodeOnlyBtn.MouseButton1Click:Connect(function()
	launchDashboardCore(false)
end)

startChatAndCodeBtn.MouseButton1Click:Connect(function()
	launchDashboardCore(true)
end)

task.spawn(function()
	fadeInFrame(welcomeUI)
end)

TextChatService.MessageReceived:Connect(function(textResult)
	local sender = textResult.TextSource
	if not sender then return end
	if sender.UserId == plr.UserId then
		if running then
			if textResult.Text:find("#") then
				task.spawn(function()
					if megaAntiTagMode then
						if not megaAntiTagTriggeredLoop then
							megaAntiTagTriggeredLoop = true
							megaPrefixIndex = 1
						end
						cycleMode = false
						emojiMode = true
						fireTagNotification()
					elseif antiTagMode then
						selected = "@"
						cycleMode = true
						emojiMode = true
					end
				end)
			end
		end
	end
end)