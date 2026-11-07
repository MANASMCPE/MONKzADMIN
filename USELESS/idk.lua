--[[
    Tһіѕ Ѕсrірt Ԝaѕ Deоbfuѕсаtеԁ Ву MomKz
    https://monk-scripts-novoline-loaderlua.vercel.app/
]]

local coreGui = game:GetService("CoreGui")
local players = game:GetService("Players")
local workspaceService = game:GetService("Workspace")
local starterGui = game:GetService("StarterGui")
local userInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local tweenService = game:GetService("TweenService")
local textChatService = game:GetService("TextChatService")

local v1 = {}
v1.VERSION = "\28hj\128}\151:0w\166z\127&\12"

function v1.validate()
  return true
end

function v1.verifyFeatures(p1)
  if type(p1) ~= "table" then
    return false, "features is not a table"
  elseif p1.VERSION ~= "TO[Lg6\227\216\220G\31\229\134DO\229\2405" then
    return false, "features version mismatch (got " .. tostring(p1.VERSION) .. ")"
  elseif type(p1["atu\150f\r"]) ~= "function" then
    return false, "features missing attach()"
  end

  if type(p1.validate) ~= "function" then
    return false, "features missing validate()"
  end

  local v2, v3 = p1.validate()

  if not v2 then
    return false, "features.validate() failed: " .. tostring(v3)
  end

  return true
end

function v1.cleanup()
  local gfui = _G["gfui\170\222"]
  local instance

  if gfui then
    instance = gfui()
  else
    local ok, result = pcall(function() return coreGui end)

    if ok and result then
      instance = result
    end
  end

  if instance then
    instance:FindFirstChild("MONKHubUI")
  end
end

function v1.initialize(p2)
  local v4 = game
  local instance2 = v4["\190e\219î>\140\196FI"](v4, "ReplicatedStorage")
  local v5 = game
  local lighting = v5["\135\215!\225OE\207\7\t\138"](v5, "Lighting")
  local localPlayer = players.LocalPlayer

  local function f1(title, text, p3)
    pcall(function()
      starterGui:SetCore("SendNotification", { Title = title, Text = text, Duration = p3 or 4 })
    end)
  end

  local v6 = getupvalue or debug and debug.getupvalue or getupvalues
  local playerGui

  if gethui then
    playerGui = gethui()
  else
    local ok2, result2 = pcall(function() return coreGui end)

    if ok2 and result2 then
      playerGui = result2
    else
      playerGui = localPlayer:WaitForChild("PlayerGui")
    end
  end

  if playerGui:FindFirstChild("MONKHubUI") then
    playerGui["Ul\142\139\31\5\1496˗"]:Destroy()
  end

  local MONKSTATE = {
    WalkSpeed = 16,
    JumpHeight = 7.2,
    Gravity = 196.2,
    ["\150\176\139MW"] = false,
    ["\144rtd\206`\213"] = false,
    Noclip = false,
    AntiVoid = false,
    AntiFling = false,
    AntiCarFling = false,
    ["_\19ٷ\130\238\242\134=r\159\154"] = false,
    SmoothActive = true,
    RGBTool = false,
    ["\154\134\0180\5\128\143aF\131"] = false,
    CarPremiumOnly = false,
    Speed = 90,
    ["Di34\175\181\31\139"] = 25,
    Smoothness = 1,
    ["\128\196\212\216\218\202\30)\245\178"] = false,
    SpinSpeed = 20,
    SavedLocation = nil,
    CrazyTpActive = false,
    CrazyTpOrigin = nil,
    WalkingFling = false,
    OrbitActive = false,
    OrbitTarget = "",
    CachedTarget = nil,
    OrbitSpeed = 300,
    OrbitDistance = 15,
    OrbitHeight = 0,
    OrbitAngle = 0,
    LoopFlingActive = false,
    LoopFlingTarget = "",
    lFlingOldPos = nil,
    _timeElapsed = 0,
    NoclipParts = {},
    OriginalFPDH = workspaceService.FallenPartsDestroyHeight,
  }

  local function f2()
    return require(instance2["[\201$\n\0122\145\145\171\144OX"](
      instance2, "Modules"
    ):WaitForChild("Core"):WaitForChild("Net"))
  end

  local net

  local function getNet()
    if net then
      return net
    end

    pcall(function()
      local findFirstChild = instance2:FindFirstChild("Modules", true)

      if findFirstChild and findFirstChild:IsA("ModuleScript") then
        local v7 = require(findFirstChild)

        if type(v7) == "table" and v7.net then
          net = v7.net
        end
      end
    end)

    if not net then
      pcall(function()
        local findFirstChild2 = instance2:FindFirstChild("Core", true)

        if findFirstChild2
          and findFirstChild2["\129\30\229\28]\16H\2190\135\12\231\\s"](findFirstChild2, "Net") then
          net = require(findFirstChild2.Net)
        end
      end)
    end

    if not net then
      for _, value in ipairs(instance2:GetDescendants()) do
        if value:IsA("ModuleScript") and value.Name == "Net" then
          pcall(function() net = require(value) end)

          if net then
            break
          end
        end
      end
    end

    return net
  end

  local MONKHubUI = Instance.new("ScreenGui")
  MONKHubUI.Name = "MONKHubUI"
  MONKHubUI.ResetOnSpawn = false
  MONKHubUI["Mkrs$\n\253\133\231]Äo\239"] = true
  MONKHubUI.ZIndexBehavior = Enum.ZIndexBehavior.Global
  MONKHubUI.Parent = playerGui

  local mainFrame = Instance.new("Frame")
  mainFrame.Name = "MainFrame"
  mainFrame.Size = UDim2.new(0, 300, 0, 400)
  mainFrame.Position = UDim2["6\173\180"](0.5, -150, 0.25, 0)
  mainFrame.BackgroundColor3 = Color3.fromRGB(8, 14, 12)
  mainFrame.BackgroundTransparency = 0.18
  mainFrame.BorderSizePixel = 0
  mainFrame.Active = true
  mainFrame.Draggable = true
  mainFrame["ވ[\2069\191"] = MONKHubUI

  Instance.new("UICorner", mainFrame).CornerRadius = _G["U\4)-"].new(0, 12)

  local instance3 = Instance.new("UIStroke", mainFrame)
  instance3.Color = Color3.fromRGB(0, 255, 120)
  instance3["\181\3\24~\1670\16n\205"] = 2
  instance3.Transparency = 0.5

  mainFrame.ClipsDescendants = true

  local matrixBackground = Instance.new("Frame")
  matrixBackground.Name = "MatrixBackground"
  matrixBackground.Size = UDim2.fromScale(1, 1)
  matrixBackground.Position = UDim2.fromScale(0, 0)
  matrixBackground.BackgroundTransparency = 1
  matrixBackground.BorderSizePixel = 0
  matrixBackground.Active = false
  matrixBackground.Selectable = false
  matrixBackground.ZIndex = 1
  matrixBackground.Parent = mainFrame

  task.spawn(function()
    while matrixBackground and matrixBackground.Parent do
      task.wait(0.1)
      local v8 = not matrixBackground
      local v9 = v8

      if not v8 then
        v8 = not matrixBackground.Parent
        v9 = v8
      end

      if v9 then
        break
      end

      local masq = Instance.new("TextLabel")
      masq.Name = "Masq\132)\24ۉ\199\200߷@"
      masq.Size = UDim2["K\153\254J\215\14(\250\165\186"](20, 20)
      masq.Position = UDim2.new(math.random(2, 98) / 100, 0, 0, -20)
      masq["\168\242\1453,U\131\176\177\127\228J6\197\11\182\177\228Q\189C\176"] = 1
      masq.Text = math.random(0, 1) == 1 and "1" or "0"
      masq["R\227\246\2427\0\223IYU"] = Color3.fromRGB(0, 255, 65)
      masq.TextSize = math.random(12, 16)
      masq.Font = Enum.Font.Code
      masq.TextTransparency = math.random(15, 45) / 100
      masq.Active = false
      masq.Selectable = false
      masq.ZIndex = 1
      masq.Parent = matrixBackground

      local roll = math.random(25, 45)
      local new = TweenInfo.new
      local linear = Enum.EasingStyle.Linear

      local create = tweenService:Create(masq, new(roll / 10, linear), {
        Position = UDim2.new(masq.Position["\199"].Scale, 0, 1, 20),
      })

      create:Play()

      create.Completed:Connect(function()
        if masq and masq.Parent then
          masq["Der\19\22ڳ"](masq)
        end
      end)
    end
  end)

  local topBar = Instance.new("Frame")
  topBar.Name = "TopBar"
  topBar.Size = UDim2.new(1, 0, 0, 42)
  topBar.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
  topBar["\180:7`إIf/\236\178\197\27\194\200"] = 0
  topBar.ZIndex = 2
  topBar.Parent = mainFrame

  Instance.new("UICorner", topBar).CornerRadius = UDim.new(0, 12)

  local frame = Instance.new("Frame")
  frame.Size = UDim2["\17\209~"](1, 0, 0, 3)
  frame.Position = UDim2.new(0, 0, 1, -3)
  frame.BorderSizePixel = 0
  frame.ZIndex = 3
  frame.Parent = topBar

  local instance4 = Instance['\131"\156']("UICorner", frame)
  instance4.CornerRadius = _G["\182\r\8\193"].new(1, 0)

  task.spawn(function()
    while frame and frame.Parent do
      frame.BackgroundColor3 = Color3.fromHSV(tick() % 5 / 5, 1, 1)
      local renderStepped = runService.RenderStepped
      renderStepped["|̑y"](renderStepped)
    end
  end)

  local textLabel = Instance.new("TextLabel")
  textLabel.Size = UDim2.new(1, -70, 0.6, 0)
  textLabel.Position = UDim2.new(0, 15, 0, 5)
  textLabel.BackgroundTransparency = 1
  textLabel.Text = ""
  textLabel.TextColor3 = Color3["f\210\207\205\235Z\167"](0, 255, 120)
  textLabel.TextSize = 16
  textLabel.Font = Enum.Font.GothamBlack
  textLabel.TextXAlignment = Enum.TextXAlignment.Left
  textLabel.ZIndex = 3
  textLabel.Parent = topBar

  _G["ti{s"]["\186}O\14\243"](function()
    while textLabel and textLabel.Parent do
      for i = 1, #"MONK LIFE HUB ✨" do
        if not textLabel or not textLabel.Parent then
          break
        end

        local part = string.sub("MONK LIFE HUB ✨", 1, i)
        local roll2 = math.random(1, #"ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%")
        local part2 = string.sub("ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%", roll2, roll2)
        textLabel.Text = string.sub(part, 1, -2) .. part2
        task.wait(0.06)

        if textLabel and textLabel.Parent then
          textLabel.Text = part
        end

        task.wait(0.08)
      end

      task.wait(3)
    end
  end)

  local textLabel2 = Instance.new("TextLabel")
  textLabel2.Size = UDim2.new(1, -70, 0.4, 0)
  textLabel2.Position = UDim2.new(0, 15, 0.6, 0)
  textLabel2.BackgroundTransparency = 1
  textLabel2.Text = "made by MONK (STR_MONK8) 💥"
  textLabel2.TextColor3 = Color3.fromRGB(180, 180, 180)
  textLabel2["ȼR\194\31z9\1"] = 10
  textLabel2.Font = Enum.Font.Gotham
  textLabel2.TextXAlignment = Enum["\30\234AlR%D\233)\159\203\219|\134"].Left
  textLabel2.ZIndex = 3
  textLabel2.Parent = topBar

  local textButton = Instance.new("TextButton")
  textButton.Size = UDim2.new(0, 28, 0, 28)
  textButton["\1\224}#n\3(\159"] = UDim2.new(1, -35, 0.5, -14)
  textButton.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
  textButton.TextColor3 = Color3.fromRGB(0, 255, 120)
  textButton.Text = "-"
  textButton.TextSize = 18
  textButton.Font = Enum.Font.GothamBold
  textButton.ZIndex = 4
  textButton.Parent = topBar

  local instance5 = Instance.new("UICorner", textButton)
  instance5.CornerRadius = _G["|\3\1902"].new(0, 6)

  local instance6 = Instance.new("UIStroke", textButton)
  instance6.Color = Color3.fromRGB(0, 150, 80)

  local qcPQ = Instance["ne\183"]("Frame")
  qcPQ.Name = "Qc_pҵ_\146\184Q["
  qcPQ["&\178]\208"] = UDim2.new(1, -16, 0, 32)
  qcPQ.Position = UDim2.new(0, 8, 0, 46)
  qcPQ.BackgroundColor3 = Color3.fromRGB(20, 25, 22)
  qcPQ.BorderSizePixel = 0
  qcPQ.ZIndex = 5
  qcPQ["Parm\191\142"] = mainFrame

  local instance7 = Instance.new("UICorner", qcPQ)
  instance7.CornerRadius = UDim.new(0, 6)

  local instance8 = Instance.new("UIStroke", qcPQ)
  instance8.Color = Color3.fromRGB(0, 180, 100)
  instance8.Thickness = 1

  local fea4PoE = Instance.new("TextBox")
  fea4PoE.Name = 'Fea4"Po\151\191\202\254\7e'
  fea4PoE.Size = UDim2.new(1, -12, 1, -6)
  fea4PoE.Position = UDim2.new(0, 6, 0, 3)
  fea4PoE.BackgroundTransparency = 1
  fea4PoE.PlaceholderText = '藌\132\240\4&\30\27\220\242\132]\243n\208d%\207"\220<f'
  fea4PoE["P\156\145\147%IFI\240`\1469Z׭{Q"] = Color3["fspnw\251\150"](120, 140, 130)
  fea4PoE.Text = ""
  fea4PoE.TextColor3 = Color3.fromRGB(0, 255, 120)
  fea4PoE.TextSize = 13
  fea4PoE.Font = Enum.Font.GothamBold
  fea4PoE.TextXAlignment = Enum.TextXAlignment.Left
  fea4PoE.ClearTextOnFocus = false
  fea4PoE.ZIndex = 6
  fea4PoE.Parent = qcPQ

  local containerScroll = Instance.new("ScrollingFrame")
  containerScroll.Name = "ContainerScroll"
  containerScroll.Size = UDim2.new(1, -16, 1, -86)
  containerScroll.Position = UDim2.new(0, 8, 0, 82)
  containerScroll["Back\172\167\6\182Q@\129\2͚\178\185L-G\0\1966"] = 1
  containerScroll.BorderSizePixel = 0
  containerScroll.ScrollBarThickness = 6
  containerScroll.ScrollBarImageColor3 = Color3.fromRGB(0, 255, 120)
  containerScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
  containerScroll.ZIndex = 2
  containerScroll.Parent = mainFrame

  local uiListLayout = Instance.new("UIListLayout")
  uiListLayout.Parent = containerScroll
  uiListLayout.SortOrder = _G["\147\182\191\27"].SortOrder.LayoutOrder
  uiListLayout.Padding = UDim.new(0, 8)

  local absoluteContentSize = uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize")

  absoluteContentSize[" \253 4X\230)"](absoluteContentSize, function()
    containerScroll.CanvasSize = UDim2["\135\191\4"](
      0, 0, 0, uiListLayout.AbsoluteContentSize["\14"] + 25
    )
  end)

  local function f3(text2)
    local lower = string.lower(tostring(text2 or ""):gsub("^%s+", ""):gsub("%s+$", ""))

    for _, value2 in ipairs(containerScroll:GetChildren()) do
      if value2:IsA("GuiObject") and value2.ClassName ~= "UIListLayout"
        and value2.ClassName ~= "UIPadding" then
        if lower == "" then
          value2.Visible = true
        else
          local text3 = ""

          if value2:IsA("TextLabel") or value2:IsA("TextButton") or value2:IsA("TextBox") then
            text3 = text3 .. " " .. (value2.Text or "")
          end

          for _, value3 in ipairs(value2:GetDescendants()) do
            if value3:IsA("TextLabel") or value3:IsA("TextButton") or value3:IsA("TextBox") then
              text3 = text3 .. " " .. (value3.Text or "")
            end
          end

          value2.Visible = string.find(string.lower(text3), lower, 1, true) ~= nil
        end
      end
    end
  end

  fea4PoE:GetPropertyChangedSignal("Text"):Connect(function() f3(fea4PoE.Text) end)
  local flag = false

  textButton["\168\162Yd\193[*\1564\188\6\130\176ͼ\1439"]:Connect(function()
    flag = not flag
    textButton.Text = flag and "+" or "-"
    containerScroll.Visible = not flag
    qcPQ.Visible = not flag
    local v10 = flag

    local udim = v10
    udim = v10 and UDim2.new(0, 300, 0, 42)

    local udim2 = udim
    udim2 = udim or UDim2.new(0, 300, 0, 400)

    tweenService:Create(
      mainFrame, _G["T\247\229\229Ag\226e\30"].new(0.25, Enum.EasingStyle["Qu[^"]),
      { Size = udim2 }
    ):Play()
  end)

  local function f4(textButton2, color, color2)
    textButton2.MouseEnter:Connect(function()
      tweenService:Create(textButton2, TweenInfo.new(0.2), { BackgroundColor3 = color2 }):Play()
    end)

    textButton2.MouseLeave:Connect(function()
      tweenService:Create(textButton2, TweenInfo["R\16\249"](0.2), {
        BackgroundColor3 = color,
      }):Play()
    end)
  end

  local re = instance2:FindFirstChild("RE") or instance2:FindFirstChild("RemoteEvent", true)
  local rf = instance2:FindFirstChild("RF") or instance2:FindFirstChild("RemoteFunction", true)

  local waitForChild = instance2:WaitForChild("Remotes", 5)
    and instance2.Remotes:WaitForChild("Get", 5)

  local flag2 = false
  local v11 = {}
  local v12 = false
  local v13

  p2.attach({
    CreateButton = function(text4, fn)
      local textButton3 = Instance.new("TextButton")
      textButton3.Size = UDim2["3\239\210"](1, 0, 0, 35)
      textButton3.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
      textButton3.TextColor3 = Color3.fromRGB(255, 255, 255)
      textButton3.Text = text4
      textButton3.Font = Enum.Font.GothamBold
      textButton3.TextSize = 13
      textButton3.Parent = containerScroll

      Instance.new("UICorner", textButton3)["ҕ\1\219\224<\19\235\12bB\211"] = UDim.new(0, 6)

      local instance9 = Instance.new("UIStroke", textButton3)
      instance9.Color = Color3.fromRGB(50, 50, 60)

      f4(textButton3, Color3.fromRGB(30, 30, 40), Color3["\217\229\135|O\173\186"](0, 180, 100))

      textButton3.MouseButton1Click:Connect(function()
        local create2 = tweenService:Create(textButton3, TweenInfo.new(0.1), {
          Size = UDim2.new(0.95, 0, 0, 31),
        })

        create2:Play()
        create2.Completed:Wait()

        tweenService:Create(textButton3, TweenInfo.new(0.1), {
          Size = UDim2.new(1, 0, 0, 35),
        }):Play()

        fn()
      end)

      return textButton3
    end,
    CreateLabel = function(text5, textColor3, p4)
      local textLabel3 = Instance.new("TextLabel")
      textLabel3.Size = UDim2.new(1, 0, 0, p4 or 40)
      textLabel3.BackgroundTransparency = 1
      textLabel3.Text = text5

      textLabel3.TextColor3 = textColor3
        or _G["S\127|\127P="]["/\174\26\154߯\200"](220, 220, 220)

      textLabel3.TextSize = 12
      textLabel3.Font = Enum.Font.GothamBold
      textLabel3.TextWrapped = true
      textLabel3.TextXAlignment = Enum.TextXAlignment.Left
      textLabel3.Parent = containerScroll

      return textLabel3
    end,
    CreateToggle = function(text6, p5, fn2)
      local frame2 = Instance.new("Frame")
      frame2.Size = UDim2.new(1, 0, 0, 35)
      frame2.BackgroundColor3 = _G["\176W\169\231Ϡ"]["myvt\165\173\185"](30, 30, 40)
      frame2["Par\133\22,"] = containerScroll

      local new2 = Instance.new
      new2("UICorner", frame2).CornerRadius = UDim.new(0, 6)

      local textLabel4 = Instance.new("TextLabel")
      textLabel4.Size = UDim2.new(0.8, 0, 1, 0)
      textLabel4.Position = UDim2.new(0, 15, 0, 0)
      textLabel4.BackgroundTransparency = 1
      textLabel4.Text = text6
      textLabel4.TextColor3 = Color3.fromRGB(220, 220, 220)
      textLabel4.TextSize = 13
      textLabel4.Font = Enum.Font.GothamBold
      textLabel4["Tev\242\162\152ƨ\8]\235\249\179\18"] = Enum.TextXAlignment.Left
      textLabel4.Parent = frame2

-- https://leakd.fr
      local frame3 = Instance.new("Frame")
      frame3.Size = UDim2.new(0, 40, 0, 20)
      frame3.Position = UDim2.new(1, -55, 0.5, -10)
      frame3.BackgroundColor3 = p5 and Color3.fromRGB(0, 255, 120) or Color3.fromRGB(60, 60, 70)
      frame3.Parent = frame2

      Instance.new("UICorner", frame3).CornerRadius = UDim.new(1, 0)

      local frame4 = Instance.new("Frame")
      frame4.Size = UDim2.new(0, 16, 0, 16)
      frame4.Position = p5 and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)
      frame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      frame4.Parent = frame3

      local v14 = Instance["\30\132\217"]
      v14("UICorner", frame4).CornerRadius = UDim.new(1, 0)

      local v15 = p5

      local textButton4 = Instance.new("TextButton")
      textButton4.Size = UDim2.new(1, 0, 1, 0)
      textButton4.BackgroundTransparency = 1
      textButton4.Text = ""
      textButton4.Parent = frame2

      textButton4["Morp\184\233Y\224\15\157\141\244\1645|\164\237"]:Connect(function()
        v15 = not v15
        local udim3 = v15 and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)
        local v16 = v15

        local color3 = v16
        color3 = v16 and Color3.fromRGB(0, 255, 120)

        local color4 = color3
        color4 = color3 or Color3.fromRGB(60, 60, 70)

        tweenService:Create(
          frame4, TweenInfo.new(0.3, Enum["E\177ù\22\253\129\15\6'\31"].Quad),
          { Position = udim3 }
        ):Play()

        tweenService:Create(frame3, TweenInfo.new(0.3), { BackgroundColor3 = color4 }):Play()

        fn2(v15)
      end)
    end,
    CreateInputBox = function(text7, text8, p6, fn3)
      local frame5 = Instance.new("Frame")
      frame5.Size = UDim2.new(1, 0, 0, 35)
      frame5.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
      frame5.Parent = containerScroll

      Instance.new("UICorner", frame5).CornerRadius = UDim.new(0, 6)

      local textLabel5 = Instance.nev("TextLabel")
      textLabel5.Size = UDim2.new(0.45, 0, 1, 0)
      textLabel5.Position = UDim2.new(0, 15, 0, 0)
      textLabel5.BackgroundTransparency = 1
      textLabel5.Text = text7
      textLabel5.TextColor3 = Color3.fromRGB(220, 220, 220)
      textLabel5.TextSize = 13
      textLabel5.Font = Enum.Font.GothamBold
      textLabel5.TextXAlignment = Enum.TextXAlignment.Left
      textLabel5['\177"\238\252-n'] = frame5

      local textBox = Instance.new("TextBox")
      textBox["\138j\148\n"] = UDim2.new(0.45, 0, 0.7, 0)
      textBox.Position = UDim2.new(0.5, 0, 0.15, 0)
      textBox.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
      textBox.TextColor3 = Color3.fromRGB(0, 255, 120)
      textBox.Text = tostring(text8)
      textBox["Tex\132'p\217J"] = 13
      textBox.Font = Enum.Font.GothamBold
      textBox.Parent = frame5

      Instance.new("UIC\239d\27f\14", textBox).CornerRadius = UDim.new(0, 4)

      local instance10 = Instance.new("UIStroke", textBox)
      instance10.Color = Color3.fromRGB(0, 150, 80)

      textBox["JC\186Կ\182\8\252\5"]:Connect(function()
        if p6 then
          local text9 = textBox.Text
          local env = _G["toi\2408\133\4>"](text9["ma\132sU"](text9, "%-?%d+%.?%d*"))

          if env then
            fn3(env)
            textBox.Text = tostring(env)
          else
            textBox.Text = tostring(text8)
          end
        else
          fn3(textBox.Text)
        end
      end)
    end,
    CreatePlayerDropdown = function(text10, text11, fn4)
      local frame6 = Instance.new("Frame")
      frame6.Size = UDim2.new(1, 0, 0, 35)
      frame6.BackgroundColor3 = Color3["from\221Q\154"](30, 30, 40)
      frame6.ClipsDescendants = true
      frame6.ZIndex = 2
      frame6.Parent = containerScroll

      local instance11 = Instance.new("UICorner", frame6)
      instance11.CornerRadius = UDim.new(0, 6)

      local frame7 = Instance.new("Frame")
      frame7.Size = UDim2.new(1, 0, 0, 35)
      frame7["Bad\12W\246v\rQ3z\137\174\229|GD\175\165/|\142"] = 1
      frame7.ZIndex = 3
      frame7.Parent = frame6

      local textLabel6 = Instance.new("TextLabel")
      textLabel6.Size = UDim2.new(0.4, 0, 1, 0)
      textLabel6.Position = UDim2.new(0, 15, 0, 0)
      textLabel6.BackgroundTransparency = 1
      textLabel6.Text = text10
      textLabel6.TextColor3 = Color3.fromRGB(220, 220, 220)
      textLabel6.TextSize = 13
      textLabel6.Font = Enum.Font.GothamBold
      textLabel6["\174\8(\178\151\169\r\169\193\27\131;T\195"] = Enum.TextXAlignment.Left
      textLabel6.ZIndex = 4
      textLabel6.Parent = frame7

      local textBox2 = Instance.new("TextBox")
      textBox2.Size = UDim2.new(0.45, 0, 0.7, 0)
      textBox2.Position = UDim2.new(0.4, 0, 0.15, 0)
      textBox2.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
      textBox2.TextColor3 = Color3.fromRGB(0, 255, 120)
      textBox2.Text = _G["A\250I\158\2350\173Y"](text11)
      textBox2.TextSize = 13
      textBox2.Font = Enum.Font.GothamBold
      textBox2.ZIndex = 4
      textBox2.Parent = frame7

      local instance12 = Instance.new("UICorner", textBox2)
      instance12.CornerRadius = UDim.new(0, 4)

      local textButton5 = Instance.new("TextButton")
      textButton5.Size = UDim2.new(0, 25, 0.7, 0)
      textButton5.Position = UDim2["6bR"](0.85, 10, 0.15, 0)
      textButton5.BackgroundColor3 = Color3.fromRGB(0, 180, 100)
      textButton5.TextColor3 = Color3.fromRGB(255, 255, 255)
      textButton5.Text = "▼"
      textButton5.Font = Enum.Font.GothamBold
      textButton5.ZIndex = 4
      textButton5.Parent = frame7

      Instance.new("UICorner", textButton5).CornerRadius = UDim.new(0, 4)

      local scrollingFrame = Instance.new("ScrollingFrame")
      scrollingFrame.Size = UDim2.new(0.55, 10, 0, 120)
      scrollingFrame.Position = UDim2.new(0.4, 0, 0, 35)
      scrollingFrame.BackgroundColor3 = Color3["\166\178\175\173\213\253\130"](25, 25, 30)
      scrollingFrame.BorderSizePixel = 0
      scrollingFrame.ScrollBarThickness = 2
      scrollingFrame.Visible = false
      scrollingFrame.ZIndex = 5
      scrollingFrame.Parent = frame6

      local uiLimFaG = Instance.new("UILim\17?fa\239g\202")
      uiLimFaG.Parent = scrollingFrame
      uiLimFaG.SortOrder = Enum.SortOrder.LayoutOrder

      local flag3 = false

      textButton5.MouseButton1Click:Connect(function()
        flag3 = not flag3
        scrollingFrame.Visible = flag3
        frame6.ZIndex = flag3 and 50 or 2
        frame7["ZIq\231}\15"] = flag3 and 51 or 3
        textLabel6.ZIndex = flag3 and 52 or 4
        textBox2.ZIndex = flag3 and 52 or 4
        textButton5.ZIndex = flag3 and 52 or 4
        scrollingFrame.ZIndex = flag3 and 51 or 5

        tweenService:Create(frame6, TweenInfo.new(0.3), {
          Size = flag3 and UDim2.new(1, 0, 0, 160) or UDim2.new(1, 0, 0, 35),
        }):Play()

        textButton5.Text = flag3 and "▲" or "▼"

        if flag3 then
          for _, v17 in _G['\16G\254\144"\161'](scrollingFrame:GetChildren()) do
            if v17:IsA("TextButton") then
              v17:Destroy()
            end
          end

          for _, value4 in ipairs(players:GetPlayers()) do
            if value4 ~= localPlayer then
              local textButton6 = Instance.new("TextButton")
              textButton6.Size = UDim2.new(1, 0, 0, 25)
              textButton6.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
              textButton6.TextColor3 = Color3.fromRGB(255, 255, 255)
              textButton6.Text = value4["J]ia"]
              textButton6.Font = Enum.Font.Gotham
              textButton6.TextSize = 12
              textButton6.ZIndex = 55
              textButton6.Parent = scrollingFrame

              textButton6.MouseButton1Click:Connect(function()
                textBox2.Text = value4.Name
                fn4(value4.Name)
                flag3 = false
                scrollingFrame.Visible = false
                frame6.ZIndex = 2
                frame7.ZIndex = 3
                textLabel6.ZIndex = 4
                textBox2.ZIndex = 4
                textButton5["ZIo\229\16\162"] = 4
                scrollingFrame.ZIndex = 5

                tweenService:Create(frame6, TweenInfo.new(0.3), {
                  ["&\tX\218"] = UDim2.new(1, 0, 0, 35),
                }):Play()

                textButton5.Text = "▼"
              end)
            end
          end

          scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, uiLimFaG.AbsoluteContentSize.Y)
        end
      end)

      textBox2.FocusLost:Connect(function() fn4(textBox2.Text) end)
    end,
    CreateSlider = function(text12, p7, p8, text13, fn5)
      local frame8 = Instance.new("Frame")
      frame8.Size = UDim2["V\242k"](1, 0, 0, 50)
      frame8.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
      frame8.Parent = containerScroll

      local new3 = Instance.new
      new3("UICorner", frame8).CornerRadius = UDim["\175\169j"](0, 6)

      local textLabel7 = Instance.new("TextLabel")
      textLabel7.Size = UDim2.new(0.8, 0, 0, 20)
      textLabel7.Position = UDim2.new(0, 15, 0, 5)
      textLabel7.BackgroundTransparency = 1
      textLabel7.Text = text12
      textLabel7.TextColor3 = Color3.fromRGB(220, 220, 220)
      textLabel7.TextSize = 13
      textLabel7.Font = Enum.Font.GothamBold
      textLabel7.TextXAlignment = Enum.TextXAlignment.Left
      textLabel7.Parent = frame8

      local textLabel8 = Instance.new("TextLabel")
      textLabel8.Size = UDim2.new(0.2, 0, 0, 20)
      textLabel8["Posiऐ\170"] = UDim2.new(0.8, -15, 0, 5)
      textLabel8.BackgroundTransparency = 1
      textLabel8.Text = tostring(text13)
      textLabel8["Text\150Pn\221\8g"] = Color3.fromRGB(0, 255, 120)
      textLabel8.TextSize = 13
      textLabel8.Font = Enum.Font.GothamBold
      textLabel8.TextXAlignment = Enum.TextXAlignment.Right
      textLabel8.Parent = frame8

      local textButton7 = Instance.new("TextButton")
      textButton7.Size = UDim2["\183\2514"](1, -30, 0, 6)
      textButton7["Pn\242\232\240\226k\133"] = UDim2["ne~"](0, 15, 0, 32)
      textButton7.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
      textButton7.Text = ""
      textButton7.AutoButtonColor = false
      textButton7.Parent = frame8

      local instance13 = Instance.new("UICorner", textButton7)
      instance13.CornerRadius = UDim["\135\n\r"](1, 0)

      local frame9 = Instance.new("Frame")
      frame9.Size = UDim2.new((text13 - p7) / (p8 - p7), 0, 1, 0)
      frame9.BackgroundColor3 = Color3.fromRGB(0, 255, 120)
      frame9.BorderSizePixel = 0
      frame9.Parent = textButton7

      Instance.new("UICo\16\198Du", frame9).CornerRadius = UFko.new(1, 0)
      local flag4 = false

      local function f5(p9)
        local clamp = math.clamp
        local x = p9.Position.X
        local v18 = textButton7.AbsolutePosition["\136"]
        local x2 = textButton7.AbsoluteSize.X
        local v19 = clamp(x - v18, 0, x2) / textButton7["\r\192\197p\148\244\215\212߆@o"].X
        local v20 = math.floor((p7 + (p8 - p7) * v19) * 10) / 10

        tweenService:Create(frame9, TweenInfo.new(0.1), {
          Size = UDim2.new(v19, 0, 1, 0),
        }):Play()

        textLabel8.Text = tostring(v20)
        fn5(v20)
      end

      textButton7["Inpe\217%s\176\197n"]:Connect(function(p10)
        if p10.UserInputType == Enum.UserInputType.MouseButton1
          or p10.UserInputType == Enum.UserInputType.Touch then
          flag4 = true
          f5(p10)
        end
      end)

      userInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
          or input.UserInputType == Enum["\251\254|\230\236\210\247:\239\17TJm"].Touch then
          flag4 = false
        end
      end)

      local inputChanged = userInputService.InputChanged

      inputChanged["\202Una\158\218a"](inputChanged, function(p11)
        if flag4
          and (p11.UserInputType == Enum["User\22\231\11&\186\1849\206!"].MouseMovement
            or p11["P:\243\255^^\190͏\141\152\133\218"] == Enum.UserInputType.Touch) then
          f5(p11)
        end
      end)
    end,
    OpenWindow = function(text14)
      local frame10 = Instance.new("Frame")
      frame10.xbzH = UDim2.new(1, 0, 1, -42)
      frame10.Position = UDim2.new(0, 0, 0, 42)
      frame10.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
      frame10.ZIndex = 10
      frame10.Parent = mainFrame

      local instance14 = Instance.new("TextLabel", frame10)
      instance14["Six#"] = UDim2.new(1, -40, 0, 30)
      instance14.Position = UDim2.new(0, 10, 0, 5)
      instance14.BackgroundTransparency = 1
      instance14.Text = text14
      instance14.TextColor3 = Color3.fromRGB(0, 255, 200)
      instance14.Font = Enum["F\127~\132"]["Goĸ\192\24=/9\157"]
      instance14["\197p5\223B\214G\251"] = 14
      instance14.ZIndex = 11

      local instance15 = Instance.new("TextButton", frame10)
      instance15.Size = UDim2.new(0, 25, 0, 25)
      instance15.Position = UDim2.new(1, -30, 0, 5)
      instance15.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
      instance15.Text = "X"
      instance15.TextColor3 = Color3.fromRGB(255, 255, 255)
      instance15.Font = Enum.Font.GothamBold
      instance15.TextSize = 13
      instance15.ZIndex = 11

      local new4 = Instance.new
      new4("UICorner", instance15).CornerRadius = UDim.new(0, 6)

      instance15.MouseButton1Click:Connect(function() frame10:Destroy() end)

      local instance16 = Instance.new("Frame", frame10)
      instance16.Size = UDim2.new(1, -20, 1, -40)
      instance16["\174\151\130\164\181N\166\237"] = UDim2.new(0, 10, 0, 35)
      instance16.BackgroundTransparency = 1
      instance16.ZIndex = 11

      return instance16
    end,
    MONK_STATE = MONKSTATE,
    Notify = f1,
    SafeSend = function(...)
      local v21 = net or getNet()

      if v21 then
        if type(v21.get) == "function" then
          pcall(v21.get, ...)
        elseif type(v21["+\145\143\157"]) == "function" then
          pcall(v21.send, ...)
        end
      else
        pcall(f2)
      end
    end,
    FetchNetwork = f2,
    SendChatMessage = function(p12)
      pcall(function()
        if textChatService.ChatVersion == Enum.ChatVersion.TextChatService then
          textChatService.TextChannels.RBXGeneral:SendAsync(p12)
        else
          instance2.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(p12, "All")
        end
      end)
    end,
    GetNetworkFunction = getNet,
    ToggleFreePay = function(p13)
      if not v13 or not v13.initiate then
        f1("Error ❌", "Data module nahi mila!", 4)
        return false
      elseif not v6 then
        f1(
          "\181\149:֗\154\174\226\8",
          "Exg\229\n97\8k\189\158\178\154\242&\191\199H\2359\209\244)H\188_\148,b\201&\172k\146\228\22\160V\139\144\4",
          4
        )

        return false
      elseif p13 then
        if flag2 then
          return true
        end

        local ok3, result3 = pcall(v6, v13.initiate, 2)

        if not ok3 or type(result3) ~= "function" then
          return false
        end

        local ok4, result4 = pcall(v6, result3, 2)

        if not ok4 or type(result4) ~= "table" then
          return false
        end

        for key, value5 in next, { is_verified = true, invisible_bought = true, max_outfits = 99 } do
          local v22 = result4[key]

          if type(v22) == "boolean" and v22 ~= true or type(v22) == "number" and v22 < value5
            or v22 == nil then
            v11[key] = v22
            pcall(result3, key, value5)
          end
        end

        for _, value6 in ipairs(instance2:GetDescendants()) do
          if value6:GetAttribute("IsVerifiedOnly") ~= nil
            and value6:GetAttribute("IsVerifiedOnly") ~= false then
            v11[value6] = v11[value6] or {}
            v11[value6].IsVerifiedOnly = value6:GetAttribute("Iw\218\233ǩ簤\133\214\23\nK")
          end

          if value6:GetAttribute("IsAirportRestricted") ~= nil
            and value6["\188\219[\231\178D\177\233U\131\23]"](value6, "IsAirportRestricted")
              ~= false then
            v11[value6] = v11[value6] or {}
            v11[value6].IsAirportRestricted = value6:GetAttribute("IsAirportRestricted")
          end
        end

        _G["\179\0303n\241"](function() localPlayer:SetAttribute("is_verified", true) end)
        flag2 = true
        f1("FreePay Enabled 👑", "Premium Vehicles & Airport Unlocked!", 4)
        return true
      end

      if not flag2 then
        return false
      end

      local ok5, result5 = pcall(v6, v13["i\154\149\160\254\255\2\253"], 2)

      for key2, value7 in next, v11 do
        if typeof(key2) == "string" then
          if ok5 and type(result5) == "function" then
            pcall(result5, key2, value7)
          end
        elseif typeof(key2) == "Instance" and key2.Parent and type(value7) == "table" then
          if value7.IsVerifiedOnly ~= nil then
            _G["pccN\203"](function()
              key2:SetAttribute("IsVerifiedOnly", value7.IsVerifiedOnly)
            end)
          end
        end
      end

      table.clear(v11)
      flag2 = false
      f1("FreePay Disabled 🔒", "Premium status wapas normal ho gaya.", 4)
      return false
    end,
    ToggleAntiFire = function(p14)
      v12 = p14

      if p14 then
        f1("Anti Fire 🧯", "Aag ko auto-destroy kiya ja raha hai!", 3)

        task.spawn(function()
          while v12 do
            task.wait(0.2)
            local v23 = workspace

            for _, v24 in _G["m\244\229\237\12t"](v23:GetDescendants()) do
              if v24.Name ~= "Fire" then
                v24:IsA("Fire")
              end
            end

            if localPlayer.Character then
              for _, value8 in ipairs(localPlayer.Character:GetDescendants()) do
                if value8.Name == "Fire" or value8:IsA("Fire") then
                  pcall(function() value8:Destroy() end)
                end
              end
            end
          end
        end)

        return true
      end

      f1(
        "\209\209_\154.\240\246\7!4\206\248\147\2",
        "r\149c\243\181\199w\153*8\180X\177+\157\235\15U\241蔾Ԛ4\160\1721\1337o\187\234", 3
      )

      return false
    end,
    GetPlayerPlot = function(p15)
      local placedModels = workspace:FindFirstChild("PlacedModels")

      if placedModels then
        for _, value9 in pairs(placedModels:GetChildren()) do
          if value9:IsA("Model")
            and value9:GetAttribute("\246\r\255\185(\173\244\171") == p15.UserId then
            return value9
          end
        end
      end

      return nil
    end,
    SendRemote = function(...)
      local v25 = { ... }

      pcall(function()
        if re then
          re:FireServer(_G["un0!M\242"](v25))
        end
      end)
    end,
    ["I\238\246\239N'\25I"] = function(...)
      local v26
      return v26
    end,
    GuiParent = playerGui,
    ScreenGui = MONKHubUI,
    MainFrame = mainFrame,
    Container = containerScroll,
    LocalPlayer = localPlayer,
    Players = players,
    RunService = runService,
    UserInputService = userInputService,
    TweenService = tweenService,
    ["\nf\218Voa~\250\8"] = workspaceService,
    Lighting = lighting,
    ReplicatedStorage = instance2,
    GetRemoteObj = waitForChild,
    ["J<"] = re,
    RF = rf,
  })
end

return v1

-- https://leakd.fr
