-- ═══════════════════════════════════════════════════════════════════════
--   BROKENAUTH0R ★ STAR GLITCHER   [BLACK & WHITE EDITION]
--   AUTH0R IS BROKEN
--   Complete Standalone Script — No Pasting Required
-- ═══════════════════════════════════════════════════════════════════════

local RS     = game:GetService("ReplicatedStorage")
local Players= game:GetService("Players")
local Run    = game:GetService("RunService")
local Tween  = game:GetService("TweenService")
local UIS    = game:GetService("UserInputService")
local Debris = game:GetService("Debris")
local LP     = Players.LocalPlayer

local B = Color3.fromRGB(0, 0, 0)
local W = Color3.fromRGB(255, 255, 255)
local Y = Color3.fromRGB(255, 200, 0)
local R = Color3.fromRGB(255, 40, 40)
local P = Color3.fromRGB(150, 0, 255)

print("[BROKENAUTH0R] ⚙️  Starting...")

-- ═══════════════════════════════════════════════════════════════════════
-- 1. SETUP
-- ═══════════════════════════════════════════════════════════════════════
pcall(function() RS:WaitForChild("01_server", 10):FireServer(unpack({"cmd", "-r6"})) end)
task.wait(2)
pcall(function()
    RS:WaitForChild("01_server", 10):FireServer(unpack({
        "cmd", "-gh 5316479641 5316539421 5699795428 5316549755 5268602207 5268555719"
    }))
end)
task.wait(2)
pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MANASMCPE/Last-Star/refs/heads/main/Cool-Reanimate.lua"))()
end)
task.wait(1)

local char  = LP.Character or LP.CharacterAdded:Wait()
local hum   = char:WaitForChild("Humanoid")
local root  = char:WaitForChild("HumanoidRootPart")
local torso = char:WaitForChild("Torso")
local head  = char:WaitForChild("Head")

hum.MaxHealth = math.huge
hum.Health    = math.huge
hum.BreakJointsOnDeath = false

local anim = char:FindFirstChild("Animate")
if anim then anim.Disabled = true end
local animator = hum:FindFirstChild("Animator")
if animator then animator:Destroy() end

local rj = root:WaitForChild("RootJoint")
local nk = torso:WaitForChild("Neck")
local rs = torso:WaitForChild("Right Shoulder")
local ls = torso:WaitForChild("Left Shoulder")
local rh = torso:WaitForChild("Right Hip")
local lh = torso:WaitForChild("Left Hip")

local O = { root = rj.C0, neck = nk.C0, rs = rs.C0, ls = ls.C0, rh = rh.C0, lh = lh.C0 }

-- ═══════════════════════════════════════════════════════════════════════
-- 2. CUSTOM WINGS (12 neon blades + trails + glow)
-- ═══════════════════════════════════════════════════════════════════════
local wings, wmots = {}, {}

-- Fan base config (right side; left is mirrored)
local fanPos = {
    {x= 2.2, y=-1.0, z= 1.5, rz=-45},
    {x= 2.2, y= 0.5, z= 1.5, rz=-25},
    {x= 2.2, y= 2.0, z= 1.5, rz=-5},
    {x= 2.2, y= 3.5, z= 1.5, rz= 15},
    {x= 1.8, y= 5.0, z= 1.5, rz= 35},
    {x= 1.2, y= 6.0, z= 1.5, rz= 55},
    {x=-2.2, y=-1.0, z= 1.5, rz= 45},
    {x=-2.2, y= 0.5, z= 1.5, rz= 25},
    {x=-2.2, y= 2.0, z= 1.5, rz=  5},
    {x=-2.2, y= 3.5, z= 1.5, rz=-15},
    {x=-1.8, y= 5.0, z= 1.5, rz=-35},
    {x=-1.2, y= 6.0, z= 1.5, rz=-55},
}

for i = 1, 12 do
    local w = Instance.new("Part")
    w.Name = "BRKWing"..i
    w.Size = Vector3.new(0.25, 3.5, 0.25)
    w.Color = (i % 2 == 0) and B or W
    w.Material = Enum.Material.Neon
    w.Anchored = false
    w.CanCollide = false
    w.Massless = true
    w.CastShadow = false
    w.Locked = true
    w.Parent = char

    local light = Instance.new("PointLight", w)
    light.Color = w.Color
    light.Brightness = 2
    light.Range = 8
    light.Shadows = false

    local a1 = Instance.new("Attachment", w)
    a1.Position = Vector3.new(0, 1.75, 0)
    local a2 = Instance.new("Attachment", w)
    a2.Position = Vector3.new(0, -1.75, 0)
    local tr = Instance.new("Trail", w)
    tr.Attachment0 = a1
    tr.Attachment1 = a2
    tr.Color = ColorSequence.new(w.Color)
    tr.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.2),
        NumberSequenceKeypoint.new(1, 1),
    })
    tr.Lifetime = 0.5
    tr.LightEmission = 1
    tr.FaceCamera = true
    tr.WidthScale = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 1),
        NumberSequenceKeypoint.new(1, 0),
    })

    local m = Instance.new("Motor6D")
    m.Name = "BRKMotor"..i
    m.Part0 = torso
    m.Part1 = w
    m.C1 = CFrame.new()
    m.Parent = torso

    table.insert(wings, w)
    table.insert(wmots, m)
end

-- ═══════════════════════════════════════════════════════════════════════
-- 3. AURA + LIGHT
-- ═══════════════════════════════════════════════════════════════════════
local aura = Instance.new("ParticleEmitter", torso)
aura.LightEmission = 1
aura.LightInfluence = 0
aura.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.2),
    NumberSequenceKeypoint.new(0.5, 0.6),
    NumberSequenceKeypoint.new(1, 0),
})
aura.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.2),
    NumberSequenceKeypoint.new(1, 1),
})
aura.Color = ColorSequence.new(W)
aura.Rate = 25
aura.Speed = NumberRange.new(2, 5)
aura.Lifetime = NumberRange.new(0.8, 1.5)
aura.SpreadAngle = Vector2.new(360, 360)
aura.EmissionDirection = Enum.NormalId.Top
aura.Rotation = NumberRange.new(0, 360)
aura.RotSpeed = NumberRange.new(-90, 90)
aura.Texture = "rbxassetid://243098098"

local aLight = Instance.new("PointLight", torso)
aLight.Brightness = 3
aLight.Range = 15
aLight.Color = W
aLight.Shadows = false

-- ═══════════════════════════════════════════════════════════════════════
-- 4. NAMETAG (owner title)
-- ═══════════════════════════════════════════════════════════════════════
local bb = Instance.new("BillboardGui", head)
bb.Name = "BRKName"
bb.Size = UDim2.new(0, 400, 0, 80)
bb.StudsOffset = Vector3.new(0, 3.5, 0)
bb.AlwaysOnTop = true
bb.Adornee = head

local nameLbl = Instance.new("TextLabel", bb)
nameLbl.Size = UDim2.new(1, 0, 0.55, 0)
nameLbl.BackgroundTransparency = 1
nameLbl.Text = "BROKENAUTH0R // " .. string.upper(LP.DisplayName)
nameLbl.Font = Enum.Font.GothamBlack
nameLbl.TextSize = 22
nameLbl.TextColor3 = W
nameLbl.TextStrokeColor3 = B
nameLbl.TextStrokeTransparency = 0
nameLbl.TextScaled = true

local formLbl = Instance.new("TextLabel", bb)
formLbl.Size = UDim2.new(1, 0, 0.4, 0)
formLbl.Position = UDim2.new(0, 0, 0.55, 0)
formLbl.BackgroundTransparency = 1
formLbl.Text = "★ APEX ★"
formLbl.Font = Enum.Font.GothamBold
formLbl.TextSize = 18
formLbl.TextColor3 = W
formLbl.TextStrokeColor3 = B
formLbl.TextStrokeTransparency = 0
formLbl.TextScaled = true

-- ═══════════════════════════════════════════════════════════════════════
-- 5. CHAT SYSTEM (typewriter)
-- ═══════════════════════════════════════════════════════════════════════
local cg = Instance.new("BillboardGui", head)
cg.Name = "BRKChat"
cg.Size = UDim2.new(0, 600, 0, 60)
cg.StudsOffset = Vector3.new(0, 6, 0)
cg.AlwaysOnTop = true
cg.Adornee = head
cg.Enabled = false

local chatLbl = Instance.new("TextLabel", cg)
chatLbl.Size = UDim2.new(1, 0, 1, 0)
chatLbl.BackgroundTransparency = 1
chatLbl.Font = Enum.Font.GothamBold
chatLbl.TextSize = 24
chatLbl.TextColor3 = W
chatLbl.TextStrokeColor3 = B
chatLbl.TextStrokeTransparency = 0
chatLbl.Text = ""

local typing = false
local function say(msg)
    if typing then return end
    typing = true
    cg.Enabled = true
    chatLbl.Text = ""
    task.spawn(function()
        for i = 1, #msg do
            chatLbl.Text = msg:sub(1, i)
            task.wait(0.03)
        end
        task.wait(2.5)
        cg.Enabled = false
        typing = false
    end)
end

-- ═══════════════════════════════════════════════════════════════════════
-- 6. THEME SOUND
-- ═══════════════════════════════════════════════════════════════════════
local theme = Instance.new("Sound", root)
theme.Name = "BRKTheme"
theme.SoundId = "rbxassetid://1839526957"
theme.Volume = 0.5
theme.Looped = true
theme.RollOffMaxDistance = 500
theme.RollOffMinDistance = 50
theme:Play()

-- ═══════════════════════════════════════════════════════════════════════
-- 7. FORMS
-- ═══════════════════════════════════════════════════════════════════════
local Forms = {
    APEX = {
        Name="APEX", Primary=W, Secondary=B,
        WingMode="fan", AnimType="idle", Speed=16,
        Message="★ APEX ★", ChatLine="Waste of Space.",
        Theme="1839526957",
    },
    VOID = {
        Name="VOID", Primary=B, Secondary=B,
        WingMode="orbit", AnimType="float", Speed=30,
        Message="★ VOID ★", ChatLine="I am nothing. You are less.",
        Theme="9048375035",
    },
    DIVINE = {
        Name="DIVINE", Primary=Y, Secondary=W,
        WingMode="halo", AnimType="float", Speed=22,
        Message="★ DIVINE ★", ChatLine="Let light cleanse you.",
        Theme="1839527184",
    },
    FURY = {
        Name="FURY", Primary=R, Secondary=B,
        WingMode="chaos", AnimType="shake", Speed=35,
        Message="★ FURY ★", ChatLine="I WILL TEAR YOU APART.",
        Theme="9048375035",
    },
    BROKEN = {
        Name="BROKEN", Primary=W, Secondary=B,
        WingMode="glitch", AnimType="glitch", Speed=15,
        Message="★ BROKEN ★", ChatLine="AUTH0R IS BROKEN.",
        Theme="9048375035",
    },
    SHADOW = {
        Name="SHADOW", Primary=B, Secondary=B,
        WingMode="blade", AnimType="float", Speed=45,
        Message="★ SHADOW ★", ChatLine="You cannot see me.",
        Theme="1839526957",
    },
    ECLIPSE = {
        Name="ECLIPSE", Primary=B, Secondary=W,
        WingMode="split", AnimType="idle", Speed=18,
        Message="★ ECLIPSE ★", ChatLine="Balance in all things.",
        Theme="1839526957",
    },
    CROWN = {
        Name="CROWN", Primary=Y, Secondary=B,
        WingMode="royal", AnimType="royal", Speed=20,
        Message="★ CROWN ★", ChatLine="Bow before the king.",
        Theme="1839527184",
    },
}

local Form = Forms.APEX
local sine = 0
local glitchOff = 0

-- ═══════════════════════════════════════════════════════════════════════
-- 8. SET FORM
-- ═══════════════════════════════════════════════════════════════════════
local function setForm(f)
    if not f then return end
    Form = f

    for i, w in ipairs(wings) do
        local c = (i % 2 == 0) and f.Secondary or f.Primary
        w.Color = c
        local lt = w:FindFirstChildOfClass("PointLight")
        if lt then lt.Color = c end
        local tr = w:FindFirstChildOfClass("Trail")
        if tr then tr.Color = ColorSequence.new(c) end
    end

    aura.Color = ColorSequence.new(f.Primary)
    aLight.Color = f.Primary

    formLbl.Text = f.Message
    hum.WalkSpeed = f.Speed

    theme.SoundId = "rbxassetid://" .. f.Theme
    theme:Play()

    say(f.ChatLine)

    -- Burst flash
    local flash = Instance.new("Part", workspace)
    flash.Anchored = true
    flash.CanCollide = false
    flash.CastShadow = false
    flash.Transparency = 0.3
    flash.Size = Vector3.new(2, 2, 2)
    flash.CFrame = root.CFrame
    flash.Color = f.Primary
    flash.Material = Enum.Material.Neon
    flash.Shape = Enum.PartType.Ball

    local fl = Instance.new("PointLight", flash)
    fl.Color = f.Primary
    fl.Brightness = 6
    fl.Range = 25
    fl.Shadows = false

    Tween:Create(flash, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
        Size = Vector3.new(35, 35, 35),
        Transparency = 1,
    }):Play()
    Debris:AddItem(flash, 1)
end

-- ═══════════════════════════════════════════════════════════════════════
-- 9. ANIMATION LOOP
-- ═══════════════════════════════════════════════════════════════════════
Run.Heartbeat:Connect(function()
    sine = sine + 1
    local s  = math.sin(sine / 20)
    local s2 = math.sin(sine / 40)
    local f  = Form

    -- Wings
    for i, m in ipairs(wmots) do
        local base = fanPos[i]
        local side = (i <= 6) and 1 or -1
        local li = ((i - 1) % 6) + 1
        local cf

        local wm = f.WingMode
        if wm == "fan" then
            local wob = math.sin(sine/15 + i) * 0.15
            cf = CFrame.new(base.x + wob, base.y + s * 0.2, base.z)
                * CFrame.Angles(math.rad(s * 5), 0, math.rad(base.rz + s * 10))

        elseif wm == "orbit" then
            local ang = (sine * 3 + i * 30) % 360
            cf = CFrame.new(
                math.cos(math.rad(ang)) * 3,
                math.sin(math.rad(sine * 2 + i * 30)) * 2,
                math.sin(math.rad(ang)) * 3
            ) * CFrame.Angles(math.rad(ang), math.rad(sine * 5), 0)

        elseif wm == "halo" then
            local ang = (i / 12) * 360 + sine * 2
            cf = CFrame.new(
                math.cos(math.rad(ang)) * 3,
                3.5 + s * 0.3,
                math.sin(math.rad(ang)) * 3
            ) * CFrame.Angles(math.rad(90), math.rad(ang), 0)

        elseif wm == "chaos" then
            local cx = math.random(-150, 150) / 100
            local cy = math.random(-50, 100) / 100
            local cz = math.random(-150, 150) / 100
            cf = CFrame.new(cx, 1 + cy, cz)
                * CFrame.Angles(
                    math.rad(math.random(-180, 180)),
                    math.rad(math.random(-180, 180)),
                    math.rad(math.random(-180, 180))
                )

        elseif wm == "glitch" then
            local gx = (math.random(1, 10) <= 2) and (math.random(-80, 80) / 10) or 0
            local gy = (math.random(1, 10) <= 3) and (math.random(-50, 50) / 10) or 0
            cf = CFrame.new(base.x + gx, base.y + gy, base.z)
                * CFrame.Angles(0, math.rad(base.rz + gx * 20), 0)

        elseif wm == "blade" then
            cf = CFrame.new(side * (1.5 + li * 0.2), -1 + li * 0.3, 2)
                * CFrame.Angles(
                    math.rad(-20 - li * 5),
                    math.rad(side * 5),
                    math.rad(side * (30 + li * 5) + s * 5)
                )

        elseif wm == "split" then
            cf = CFrame.new(side * (2 + li * 0.3), li * 0.4 + s * 0.3, 1.5)
                * CFrame.Angles(0, 0, math.rad(side * (45 + li * 5) + s * 10))

        elseif wm == "royal" then
            cf = CFrame.new(side * (1.5 + li * 0.15), li * 0.4 + s * 0.2, 1.5)
                * CFrame.Angles(
                    math.rad(s * 10),
                    math.rad(side * 10),
                    math.rad(side * (60 + li * 8))
                )
        end
        m.C0 = cf
    end

    -- Character animation
    local walkSpeed = root.Velocity.Magnitude
    local at = f.AnimType

    if walkSpeed > 2 then
        local cyc = math.sin(sine / 3) * 30
        rj.C0 = O.root * CFrame.Angles(math.rad(-5), 0, 0)
            * CFrame.new(0, math.abs(math.sin(sine/3)) * 0.1, 0)
        nk.C0 = O.neck * CFrame.Angles(math.rad(5), 0, 0)
        rs.C0 = O.rs * CFrame.Angles(math.rad(-cyc), 0, math.rad(-10))
        ls.C0 = O.ls * CFrame.Angles(math.rad(cyc), 0, math.rad(10))
        rh.C0 = O.rh * CFrame.Angles(math.rad(cyc), 0, 0)
        lh.C0 = O.lh * CFrame.Angles(math.rad(-cyc), 0, 0)

    elseif at == "idle" then
        rj.C0 = O.root * CFrame.new(0, s * 0.1, 0) * CFrame.Angles(math.rad(-3), 0, 0)
        nk.C0 = O.neck * CFrame.Angles(math.rad(s * 3), math.rad(s * 5), 0)
        rs.C0 = O.rs * CFrame.Angles(0, 0, math.rad(-10 + s * 5))
        ls.C0 = O.ls * CFrame.Angles(0, 0, math.rad(10 - s * 5))
        rh.C0 = O.rh * CFrame.Angles(math.rad(-3), 0, 0)
        lh.C0 = O.lh * CFrame.Angles(math.rad(-3), 0, 0)

    elseif at == "float" then
        rj.C0 = O.root * CFrame.new(0, 2 + s * 0.3, 0) * CFrame.Angles(math.rad(-15), 0, 0)
        nk.C0 = O.neck * CFrame.Angles(math.rad(10), 0, 0)
        rs.C0 = O.rs * CFrame.Angles(math.rad(-20), 0, math.rad(-25))
        ls.C0 = O.ls * CFrame.Angles(math.rad(-20), 0, math.rad(25))
        rh.C0 = O.rh * CFrame.Angles(math.rad(20), 0, math.rad(-5))
        lh.C0 = O.lh * CFrame.Angles(math.rad(20), 0, math.rad(5))

    elseif at == "shake" then
        local sx = math.random(-100, 100) / 500
        local sy = math.random(-100, 100) / 500
        rj.C0 = O.root * CFrame.new(sx, sy, 0) * CFrame.Angles(math.rad(-5), 0, 0)
        nk.C0 = O.neck * CFrame.Angles(math.rad(math.random(-3,3)), math.rad(math.random(-3,3)), 0)
        rs.C0 = O.rs * CFrame.Angles(math.rad(math.random(-10,10)), 0, math.rad(-15))
        ls.C0 = O.ls * CFrame.Angles(math.rad(math.random(-10,10)), 0, math.rad(15))
        rh.C0 = O.rh * CFrame.Angles(math.rad(math.random(-5,5)), 0, 0)
        lh.C0 = O.lh * CFrame.Angles(math.rad(math.random(-5,5)), 0, 0)

    elseif at == "glitch" then
        glitchOff = glitchOff + 1
        local gx = (glitchOff % 20 < 3) and (math.random(-50, 50) / 100) or 0
        rj.C0 = O.root * CFrame.new(gx, 0, 0) * CFrame.Angles(math.rad(-5), 0, 0)
        nk.C0 = O.neck * CFrame.Angles(0, math.rad(gx * 50), 0)
        rs.C0 = O.rs * CFrame.Angles(0, 0, math.rad(-15 + gx * 30))
        ls.C0 = O.ls * CFrame.Angles(0, 0, math.rad(15 - gx * 30))
        rh.C0 = O.rh
        lh.C0 = O.lh

    elseif at == "royal" then
        rj.C0 = O.root * CFrame.Angles(math.rad(-8), math.rad(s * 5), 0)
        nk.C0 = O.neck * CFrame.Angles(math.rad(5), math.rad(-s * 8), 0)
        rs.C0 = O.rs * CFrame.Angles(math.rad(-15), 0, math.rad(-20 + s * 3))
        ls.C0 = O.ls * CFrame.Angles(math.rad(-15), 0, math.rad(20 - s * 3))
        rh.C0 = O.rh * CFrame.Angles(math.rad(5), 0, 0)
        lh.C0 = O.lh * CFrame.Angles(math.rad(5), 0, 0)
    end

    -- Nametag float
    bb.StudsOffset = Vector3.new(math.sin(sine/30) * 0.2, 3.5 + s2 * 0.3, 0)
    local glow = 0.5 + 0.5 * math.sin(sine / 20)
    nameLbl.TextColor3 = Color3.new(glow, glow, glow)
end)

-- ═══════════════════════════════════════════════════════════════════════
-- 10. PER-FORM VFX
-- ═══════════════════════════════════════════════════════════════════════
task.spawn(function()
    while task.wait() do
        local f = Form

        if (f.Name == "APEX" or f.Name == "FURY") and math.random(1,3) == 1 then
            local p = Instance.new("Part", workspace)
            p.Size = Vector3.new(0.2, 0.2, 0.2)
            p.Color = f.Primary
            p.Material = Enum.Material.Neon
            p.Anchored = true
            p.CanCollide = false
            p.CastShadow = false
            p.Shape = Enum.PartType.Ball
            p.CFrame = root.CFrame * CFrame.new(math.random(-30,30)/10, -3, math.random(-30,30)/10)
            Tween:Create(p, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                CFrame = p.CFrame * CFrame.new(0, 5, 0),
                Size = Vector3.new(0.05, 0.05, 0.05),
                Transparency = 1,
            }):Play()
            Debris:AddItem(p, 2)

        elseif f.Name == "VOID" then
            local a = tick() * 200 % 360
            local p = Instance.new("Part", workspace)
            p.Size = Vector3.new(0.5, 0.5, 0.5)
            p.Color = W
            p.Material = Enum.Material.Neon
            p.Anchored = true
            p.CanCollide = false
            p.CastShadow = false
            p.Shape = Enum.PartType.Ball
            p.CFrame = root.CFrame * CFrame.new(
                math.cos(math.rad(a)) * 3,
                math.sin(math.rad(a * 2)) * 2,
                math.sin(math.rad(a)) * 3
            )
            Tween:Create(p, TweenInfo.new(1, Enum.EasingStyle.Linear), {
                Size = Vector3.new(0.05, 0.05, 0.05),
                Transparency = 1,
            }):Play()
            Debris:AddItem(p, 1.5)

        elseif f.Name == "DIVINE" and math.random(1,4) == 1 then
            local p = Instance.new("Part", workspace)
            p.Size = Vector3.new(0.15, 0.15, 0.15)
            p.Color = Y
            p.Material = Enum.Material.Neon
            p.Anchored = true
            p.CanCollide = false
            p.CastShadow = false
            p.Shape = Enum.PartType.Ball
            p.CFrame = root.CFrame * CFrame.new(math.random(-40,40)/10, 8, math.random(-40,40)/10)
            Tween:Create(p, TweenInfo.new(2, Enum.EasingStyle.Linear), {
                CFrame = p.CFrame * CFrame.new(0, -10, 0),
                Transparency = 1,
            }):Play()
            Debris:AddItem(p, 2.5)

        elseif f.Name == "BROKEN" and math.random(1,2) == 1 then
            local p = Instance.new("Part", workspace)
            local sz = math.random(10, 30) / 10
            p.Size = Vector3.new(sz, sz, sz)
            p.Color = (math.random(1,2)==1) and B or W
            p.Material = Enum.Material.Neon
            p.Anchored = true
            p.CanCollide = false
            p.CastShadow = false
            p.CFrame = root.CFrame * CFrame.new(
                math.random(-30,30)/10,
                math.random(-10,20)/10,
                math.random(-30,30)/10
            )
            Tween:Create(p, TweenInfo.new(0.3), {Transparency = 1}):Play()
            Debris:AddItem(p, 0.5)

        elseif f.Name == "SHADOW" and math.random(1,3) == 1 then
            local p = Instance.new("Part", workspace)
            p.Size = Vector3.new(1, 1, 1)
            p.Color = B
            p.Material = Enum.Material.Neon
            p.Anchored = true
            p.CanCollide = false
            p.CastShadow = false
            p.Shape = Enum.PartType.Ball
            p.Transparency = 0.3
            p.CFrame = root.CFrame * CFrame.new(math.random(-20,20)/10, 0, math.random(-20,20)/10)
            Tween:Create(p, TweenInfo.new(1.5, Enum.EasingStyle.Sine), {
                Size = Vector3.new(3, 3, 3),
                Transparency = 1,
                CFrame = p.CFrame * CFrame.new(
                    math.random(-30,30)/10,
                    math.random(20,40)/10,
                    math.random(-30,30)/10
                ),
            }):Play()
            Debris:AddItem(p, 2)

        elseif f.Name == "ECLIPSE" then
            local p = Instance.new("Part", workspace)
            p.Size = Vector3.new(0.3, 0.3, 0.3)
            p.Color = (math.random(1,2)==1) and B or W
            p.Material = Enum.Material.Neon
            p.Anchored = true
            p.CanCollide = false
            p.CastShadow = false
            p.Shape = Enum.PartType.Ball
            p.CFrame = root.CFrame * CFrame.new(math.random(-20,20)/10, 0, math.random(-20,20)/10)
            Tween:Create(p, TweenInfo.new(1.2, Enum.EasingStyle.Quad), {
                CFrame = p.CFrame * CFrame.new(0, 3, 0),
                Size = Vector3.new(0.05, 0.05, 0.05),
                Transparency = 1,
            }):Play()
            Debris:AddItem(p, 1.5)

        elseif f.Name == "CROWN" and math.random(1,4) == 1 then
            local p = Instance.new("Part", workspace)
            p.Size = Vector3.new(0.2, 0.2, 0.2)
            p.Color = Y
            p.Material = Enum.Material.Neon
            p.Anchored = true
            p.CanCollide = false
            p.CastShadow = false
            p.CFrame = root.CFrame * CFrame.new(math.random(-30,30)/10, 5, math.random(-30,30)/10)
            Tween:Create(p, TweenInfo.new(1.5, Enum.EasingStyle.Sine), {
                CFrame = p.CFrame * CFrame.new(
                    math.random(-30,30)/10,
                    math.random(-20,20)/10,
                    math.random(-30,30)/10
                ),
                Transparency = 1,
            }):Play()
            Debris:AddItem(p, 2)
        end
    end
end)

-- ═══════════════════════════════════════════════════════════════════════
-- 11. GUI
-- ═══════════════════════════════════════════════════════════════════════
local oldGui = LP.PlayerGui:FindFirstChild("BROKENAUTH0R_GUI")
if oldGui then oldGui:Destroy() end

local gui = Instance.new("ScreenGui")
gui.Name = "BROKENAUTH0R_GUI"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.DisplayOrder = 999999
gui.Parent = LP:WaitForChild("PlayerGui")

-- Banner
local banner = Instance.new("Frame", gui)
banner.Size = UDim2.new(1, 0, 0, 40)
banner.BackgroundColor3 = B
banner.BackgroundTransparency = 0.35
banner.BorderSizePixel = 0

local bg = Instance.new("UIGradient", banner)
bg.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, W),
    ColorSequenceKeypoint.new(0.5, B),
    ColorSequenceKeypoint.new(1, W),
})
bg.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.7),
    NumberSequenceKeypoint.new(0.5, 0.2),
    NumberSequenceKeypoint.new(1, 0.7),
})

local title = Instance.new("TextLabel", banner)
title.Size = UDim2.new(1, 0, 1, 0)
title.BackgroundTransparency = 1
title.Text = "⚠️  BROKENAUTH0R  ★  AUTH0R IS BROKEN  ★  BROKEN STAR GLITCHER  ⚠️"
title.Font = Enum.Font.GothamBlack
title.TextSize = 18
title.TextColor3 = W
title.TextStrokeColor3 = B
title.TextStrokeTransparency = 0

-- Status panel
local status = Instance.new("Frame", gui)
status.Size = UDim2.new(0, 240, 0, 120)
status.Position = UDim2.new(0, 15, 1, -135)
status.BackgroundColor3 = B
status.BackgroundTransparency = 0.4
status.BorderSizePixel = 0
Instance.new("UICorner", status).CornerRadius = UDim.new(0, 10)

local ss = Instance.new("UIStroke", status)
ss.Color = W
ss.Thickness = 2
ss.Transparency = 0.3

local sl = Instance.new("UIListLayout", status)
sl.Padding = UDim.new(0, 4)
sl.SortOrder = Enum.SortOrder.LayoutOrder

local function mkStat(txt, ord, sz, font)
    local l = Instance.new("TextLabel", status)
    l.Size = UDim2.new(1, -14, 0, sz or 18)
    l.BackgroundTransparency = 1
    l.Text = txt
    l.Font = font or Enum.Font.GothamBold
    l.TextSize = (sz and (sz - 3)) or 15
    l.TextColor3 = W
    l.TextStrokeColor3 = B
    l.TextStrokeTransparency = 0
    l.TextXAlignment = Enum.TextXAlignment.Left
    l.LayoutOrder = ord
    return l
end

mkStat("☠️  BROKENAUTH0R  ☠️", 1, 18, Enum.Font.GothamBlack)
local hpStat = mkStat("❤️  HP: ...", 2)
local spStat = mkStat("🏃  SPD: ...", 3)
local fmStat = mkStat("🎭  FORM: ...", 4)
local wnStat = mkStat("🪽  WING: ...", 5)

-- FPS
local fps = Instance.new("TextLabel", gui)
fps.Size = UDim2.new(0, 130, 0, 26)
fps.Position = UDim2.new(1, -145, 0, 50)
fps.BackgroundColor3 = B
fps.BackgroundTransparency = 0.45
fps.BorderSizePixel = 0
fps.Font = Enum.Font.Code
fps.TextSize = 14
fps.TextColor3 = W
fps.TextStrokeColor3 = B
fps.TextStrokeTransparency = 0
fps.Text = "FPS: ..."
Instance.new("UICorner", fps).CornerRadius = UDim.new(0, 6)

-- Form buttons panel
local fp = Instance.new("Frame", gui)
fp.Size = UDim2.new(0, 300, 0, 110)
fp.Position = UDim2.new(1, -315, 1, -125)
fp.BackgroundColor3 = B
fp.BackgroundTransparency = 0.4
fp.BorderSizePixel = 0
Instance.new("UICorner", fp).CornerRadius = UDim.new(0, 10)
local fps2 = Instance.new("UIStroke", fp)
fps2.Color = W
fps2.Thickness = 2
fps2.Transparency = 0.3

local grid = Instance.new("UIGridLayout", fp)
grid.CellSize = UDim2.new(0, 90, 0, 30)
grid.CellPadding = UDim2.new(0, 5, 0, 5)
grid.Padding = UDim.new(0, 8)
grid.HorizontalAlignment = Enum.HorizontalAlignment.Center
grid.VerticalAlignment = Enum.VerticalAlignment.Center

local formOrder = {"APEX","VOID","DIVINE","FURY","BROKEN","SHADOW","ECLIPSE","CROWN"}
local formBtns = {}

for _, name in ipairs(formOrder) do
    local btn = Instance.new("TextButton", fp)
    btn.BackgroundColor3 = B
    btn.BorderSizePixel = 0
    btn.Text = name
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 12
    btn.TextColor3 = W
    btn.TextStrokeColor3 = B
    btn.TextStrokeTransparency = 0
    btn.AutoButtonColor = false
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 5)

    local st = Instance.new("UIStroke", btn)
    st.Color = W
    st.Thickness = 1.5
    st.Transparency = 0.3

    btn.MouseButton1Click:Connect(function()
        if Forms[name] then setForm(Forms[name]) end
    end)

    table.insert(formBtns, {btn = btn, name = name})
end

-- Wing mode panel
local wp = Instance.new("Frame", gui)
wp.Size = UDim2.new(0, 210, 0, 110)
wp.Position = UDim2.new(0, 15, 0, 50)
wp.BackgroundColor3 = B
wp.BackgroundTransparency = 0.4
wp.BorderSizePixel = 0
Instance.new("UICorner", wp).CornerRadius = UDim.new(0, 10)
local wps = Instance.new("UIStroke", wp)
wps.Color = W
wps.Thickness = 2
wps.Transparency = 0.3

local wpT = Instance.new("TextLabel", wp)
wpT.Size = UDim2.new(1, -10, 0, 20)
wpT.Position = UDim2.new(0, 5, 0, 5)
wpT.BackgroundTransparency = 1
wpT.Text = "🪽  WING MODE"
wpT.Font = Enum.Font.GothamBlack
wpT.TextSize = 14
wpT.TextColor3 = W
wpT.TextStrokeColor3 = B
wpT.TextStrokeTransparency = 0

local wg = Instance.new("UIGridLayout", wp)
wg.CellSize = UDim2.new(0, 95, 0, 18)
wg.CellPadding = UDim2.new(0, 3, 0, 3)
wg.Padding = UDim.new(0, 4)
wg.Position = UDim2.new(0, 5, 0, 28)
wg.HorizontalAlignment = Enum.HorizontalAlignment.Left

local wModes = {"fan","orbit","halo","chaos","glitch","blade","split","royal"}
for _, mode in ipairs(wModes) do
    local btn = Instance.new("TextButton", wp)
    btn.BackgroundColor3 = B
    btn.BorderSizePixel = 0
    btn.Text = string.upper(mode)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 10
    btn.TextColor3 = W
    btn.TextStrokeColor3 = B
    btn.TextStrokeTransparency = 0
    btn.AutoButtonColor = false
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 3)
    btn.MouseButton1Click:Connect(function()
        Form.WingMode = mode
        wnStat.Text = "🪽  WING: " .. string.upper(mode)
    end)
end

-- Update loops
task.spawn(function()
    local fr = 0
    Run.RenderStepped:Connect(function() fr = fr + 1 end)
    while task.wait(1) do
        fps.Text = "FPS: " .. fr
        fr = 0
    end
end)

task.spawn(function()
    while task.wait(0.25) do
        hpStat.Text = string.format("❤️  HP: %d", math.floor(hum.Health))
        spStat.Text = string.format("🏃  SPD: %d", math.floor(hum.WalkSpeed))
        fmStat.Text = "🎭  FORM: " .. Form.Name
        wnStat.Text = "🪽  WING: " .. string.upper(Form.WingMode)

        for _, d in ipairs(formBtns) do
            if d.name == Form.Name then
                d.btn.BackgroundColor3 = W
                d.btn.TextColor3 = B
            else
                d.btn.BackgroundColor3 = B
                d.btn.TextColor3 = W
            end
        end
    end
end)

task.spawn(function()
    local s = 0
    while task.wait() do
        s = s + 0.1
        title.Rotation = math.sin(s * 0.5) * 0.4
        title.TextColor3 = Color3.new(
            0.5 + 0.5 * math.sin(s),
            0.5 + 0.5 * math.sin(s),
            0.5 + 0.5 * math.sin(s)
        )
    end
end)

-- Spawn flash
local sf = Instance.new("Frame", gui)
sf.Size = UDim2.new(1, 0, 1, 0)
sf.BackgroundColor3 = W
sf.BorderSizePixel = 0
sf.ZIndex = 99
Tween:Create(sf, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    BackgroundTransparency = 1,
}):Play()
Debris:AddItem(sf, 2)

-- ═══════════════════════════════════════════════════════════════════════
-- 12. KEYBOARD CONTROLS
-- ═══════════════════════════════════════════════════════════════════════
UIS.InputBegan:Connect(function(input, gp)
    if gp then return end
    local k = input.KeyCode
    if k == Enum.KeyCode.One then setForm(Forms.APEX)
    elseif k == Enum.KeyCode.Two then setForm(Forms.VOID)
    elseif k == Enum.KeyCode.Three then setForm(Forms.DIVINE)
    elseif k == Enum.KeyCode.Four then setForm(Forms.FURY)
    elseif k == Enum.KeyCode.Five then setForm(Forms.BROKEN)
    elseif k == Enum.KeyCode.Six then setForm(Forms.SHADOW)
    elseif k == Enum.KeyCode.Seven then setForm(Forms.ECLIPSE)
    elseif k == Enum.KeyCode.Eight then setForm(Forms.CROWN)
    elseif k == Enum.KeyCode.Comma then gui.Enabled = not gui.Enabled
    elseif k == Enum.KeyCode.Period then bb.Enabled = not bb.Enabled
    end
end)

-- ═══════════════════════════════════════════════════════════════════════
-- 13. INIT
-- ═══════════════════════════════════════════════════════════════════════
task.wait(0.5)
setForm(Forms.APEX)

task.spawn(function()
    task.wait(5)
    pcall(function()
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("AUTH0R IS BROKEN")
    end)
end)

print("[BROKENAUTH0R] 🔥 LOADED.")
print("[BROKENAUTH0R] Keys: 1-8 = forms | Comma = GUI | Period = Nametag")