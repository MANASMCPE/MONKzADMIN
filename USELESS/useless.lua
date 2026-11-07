-- [ LeakD ] Luа Ѕсrірt Dеоbfuѕcаtеd By LеaκD
-- [ Source ] https://leakd.fr

local char = string.char
local v1 = 2
local v2 = {}
local floor = math.floor
local remove = table.remove
local v3 = 0
local random = math.random
local v4 = {}

for i = 1, 256 do
  v2[i] = i
end

repeat
  local v5 = remove(v2, (random(1, #v2)))
  v4[v5] = char(v5 - 1)
until #v2 == 0

local v6 = {}

local function f1()
  if #v6 == 0 then
    v3 = (v3 * 153 + 3031497904263) % 35184372088832

    repeat
      v1 = v1 * 5 % 257
    until v1 ~= 1

    local v7 = v1 % 32
    local v8 = floor(v3 / 2 ^ (13 - (v1 - v7) / 32)) % 4294967296 / 2 ^ v7
    local v9 = floor(v8 % 1 * 4294967296) + floor(v8)
    local v10 = v9 % 65536
    local v11 = (v9 - v10) / 65536
    v6 = { v10 % 256, (v10 - v10 % 256) / 256, v11 % 256, (v11 - v11 % 256) / 256 }
  end

  local v12 = #v6
  local v13 = v6[v12]
  v6[v12] = nil
  return v13
end

local index = {}
local v14 = setmetatable({}, { __index = index, __metatable = nil })

local function f2(p1, key)
  if index[key] then
    return key
  end

  v6 = {}
  v3 = key % 35184372088832
  v1 = key % 255 + 2
  local v15 = #p1
  index[key] = ""
  local v16 = 77
  local text = ""

  for j = 1, v15 do
    v16 = (string.byte(p1, j) + f1() + v16) % 256
    text = text .. v4[v16 + 1]
  end

  index[key] = text
  return key
end

local v17 = f2("c\2533\251\179հ?\5\173\240a\29\t\255^\246\232", 29743614843554)

local v18 = {}
v18.VERSION = "MONK_FEATURES_1.0"

function v18.validate()
  return true
end

function v18.attach(p2)
  local createButton, createLabel, createToggle, createInputBox, jmY9, createSlider, openWindow

  do
    createButton = p2.CreateButton
    createLabel = p2.CreateLabel
    createToggle = p2.CreateToggle
    createInputBox = p2.CreateInputBox
    jmY9 = p2["̇Jm\149\161\217\2(\198\19\25\174y|^\148\2339\137"]
    local v19 = f2("aKH\227h\127Ɛ\192\203.\25", 7738375856742)
    local v20 = f2("\206\250\245\2\203\250Ib\180\182", 8145539439299)
    createSlider = p2.CreateSlider
    local v21 = f2("\164K\140Ga\217'\134֎", 8595453134103)
    openWindow = p2.OpenWindow
    local v22 = f2("\201W\30\7\0\183", 7791299934369)
    local v23 = f2("\145\140\177UG}BH\234\181I", 11299519505864)
  end

  local MONKSTATE, notify, safeSend, fetchNetwork, sendChatMessage, toggleFreePay

  do
    MONKSTATE = p2.MONK_STATE
    local v24 = f2("\143%\17\18\11t", 2384818643335)
    notify = p2.Notify
    local v25 = f2("\27\176\180\31\\\228\1395", 12526681791304)
    safeSend = p2.SafeSend
    local v26 = f2("s\222\232\135:\151\204w\233\1551\153", 32585764801760)
    fetchNetwork = p2.FetchNetwork
    sendChatMessage = p2.SendChatMessage
    local v27 = f2("\2\238L\2133\238", 25742592889256)
    local v28 = f2("X\255\165F\31\200\21\224\6E\18\197\31", 22512391393786)
    toggleFreePay = p2.ToggleFreePay
    local v29 = f2("DPD\180!b\167q$Հ\252J\253", 15380004170036)
  end

  local toggleAntiFire, getPlayerPlot, sendRemote, guiParent, screenGui, mainFrame

  do
    toggleAntiFire = p2.ToggleAntiFire
    local v30 = f2("\213\0194\5<\146\232\127F\137\255\235\140", 22471999686784)
    getPlayerPlot = p2.GetPlayerPlot
    local v31 = f2("\145ٜ\141\147\157\0233I\227", 5935613372998)
    sendRemote = p2.SendRemote
    local v32 = f2("\162\0\232\136e\235\27M&", 8087084291969)
    guiParent = p2.GuiParent
    local v33 = f2("\242\212\234j\253C\249J\17", 21691287231926)
    screenGui = p2.ScreenGui
    local v34 = f2("\191-\15\128`\131\200E=", 9645490506534)
    mainFrame = p2.MainFrame
    local v35 = f2('\190\128\134\7\228"\194\16\174', 21363474832449)
  end

  local container, localPlayer, players, runService, userInputService, v36

  do
    container = p2.Container
    local v37 = f2("\249ߢ׳\2{\177\26y\236", 6944245111407)
    localPlayer = p2.LocalPlayer
    local v38 = f2("\164ef}d\27]", 1050004922286)
    players = p2.Players
    local v39 = f2("f\r\192\224K*:\164:\248", 17377003290870)
    runService = p2.RunService
    local v40 = f2("\166\247\11\186\242F\1813+,:\168\6of\29", 5551948645041)
    userInputService = p2.UserInputService
    local v41 = f2("mD\239=\17\20\8\172\155", 10862968349256)
    local v42 = f2("\155p1\157\128_\226Nc\1746\185", 17972539757808)
    v36 = p2.Workspace
  end

  local lighting, replicatedStorage

  do
    lighting = p2.Lighting
    replicatedStorage = p2.ReplicatedStorage

    local v43 = f2(
      "\145\211 O[\20\132v\149d\211\0023\250\173A\164@\2(\207S\\*\1374\220\30O\254\231f\20R\204]\130\173\131\236O\245\144Uc\157\204\21\186I\157y6\231sI\172\220\8",
      31953873108758
    )

    local color3 = Color3
    local v44 = f2("\172\28\220mM\146\29", 8619463661161)

    createLabel(
      "\222\216'\166\238\15K/\164R64\186\3;K\215\2\243\252\16\15\217-\215>\156\143\22\154\0]\8P\1472\227\247\8\236ٍ\214\251f\245\153f\185\131\223)\195>\135(\179\149\201",
      color3.fromRGB(255, 80, 80), 30
    )

    createInputBox("Apply Char Height", 1, true, function(heightScale)
      task["x:\146ϒ"](function()
        sendChatMessage("------///MONK LIFE HUB HEIGHT RESIZER LOADED 🔱///------")
        local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
        f2("\232\2%WC)\187\218", 15293676220666)
        local humanoid = character:WaitForChild("Humanoid")

        local ok, result = pcall(function()
          local v45 = f2("\233\179*\162\238^\231\199\30\1680w~A\186\198MQA\6j", 1721836898699)
          return humanoid:GetAppliedDescription()
        end)

        if not ok or not result then
          return
        end

        f2("\232\172\24\8\135\211@(\228\144\205\207p", 34420892350349)
        f2("\22AG\168\1۟\8\188\197\233\24\14", 6098791578424)
        f2("p\163)a\155\134\154\220\193", 11428687162114)
        f2("\241w;\2393%\1559\189\130", 3047803631516)
        f2("\129t\247r", 3502147298296)
        f2("\184_펕\150W\164\127\133\136", 25564014336041)
        f2("F\8\160\187\209ӌ\222Wp", 27528583434351)
        f2(")\234\29\200\215Lh\150\181\15", 4729366728944)
        f2("Ņ\t\172\198)\201J\244\157\3\171\192H ", 28593080278352)
        f2("\130\204|\227\241", 10950462886375)
        f2("\n\174\197\255\162\189\24280\150\132\4\139", 23704185343572)
        f2("k\r3\21+Pq\22$\157\29", 10628298841696)

        local h = result["\252\251\182\25!H\139\249\26"]
        local widthScale = result.WidthScale
        local depthScale = result.DepthScale
        local proportionScale = result.ProportionScale

        f2("\226\28\26\2162\199/\1\186\r\27\31i", 21672452957626)
        f2("\137K\18\252\167\16\138\224\238o\230\129\233", 7760670746786)
        f2("\201HȬ\231\13598\141\254", 3502813158634)
        f2("\26SMB.\142ZW", 6070881899757)
        f2("/\215\127$\30}!7\1857\176\226\175", 11402082369530)
        f2("\179V\29\204", 3054103699186)

        local bodyTypeScale = result.BodyTypeScale
        local shirt = result.Shirt
        local pants = result.Pants

        f2("\167\157<\139\221", 24823331452923)
        f2("\146\221\232.lL\243\218\16\252\244\130h", 25086634308773)

        local graphicTShirt = result.GraphicTShirt

        f2("\169\153\217[", 356215086292)
        f2("ҝ\0\179,", 31771343134233)

        local face = result.Face
        f2("\5\140\184\131N\153\26", 30171536760287)
        local head = result.Head
        f2("PJ\155G", 21021112146815)
        local torso = result.Torso
        local leftArm = result.LeftArm

        f2("p\213}\204\1OBB", 2499935591099)
        f2("\17}\133\240\157R\145J\176\207'\6?", 1665663609084)
        f2('"\159^>\30\244I\142', 472244353283)
        f2("\247\15eϗϭ", 3641210372140)
        f2("\12\212\22(\237#I\231\16T\214#y\29", 30023304861939)

        local rightArm = result.RightArm
        local leftLeg = result.LeftLeg

        f2("\149\18\158y\208\n\139", 15031380661170)
        f2("5+G%p\229\1925fYCC", 2824797925305)

        local rightLeg = result.RightLeg
        local walkAnimation = result.WalkAnimation
        local runAnimation = result.RunAnimation

        f2("\153N6\154\27\216\222Z", 34290020578527)
        f2("\21\n\193\200\8<j\27#q\129\168\183", 22409059251679)

        local jumpAnimation = result.JumpAnimation
        local fallAnimation = result.FallAnimation
        local climbAnimation = result.ClimbAnimation
        local idleAnimation = result.IdleAnimation
        local swimAnimation = result.SwimAnimation
        f2("dũT\157\145", 2309076780377)
        local v46 = result["}(\195 \1632r{\182r3ք\238"]

        local v47 = {
          accessories = {},
          properties = {
            HeightScale = heightScale,
            HeadScale = h,
            WidthScale = widthScale,
            DepthScale = depthScale,
            ProportionScale = proportionScale,
            ["\28\212w\215\196\248\16cL\t\233\217\5"] = bodyTypeScale,
            Shirt = shirt,
            Pants = pants,
            GraphicTShirt = graphicTShirt,
            Face = face,
            ["\20\221^h"] = head,
            Torso = torso,
            LeftArm = leftArm,
            RightArm = rightArm,
            LeftLeg = leftLeg,
            RightLeg = rightLeg,
            WalkAnimation = walkAnimation,
            RunAnimation = runAnimation,
            JumpAnimation = jumpAnimation,
            FallAnimation = fallAnimation,
            ClimbAnimation = climbAnimation,
            IdleAnimation = idleAnimation,
            SwimAnimation = swimAnimation,
          },
        }

        for _, value in ipairs(v46(result, true)) do
          f2("a]\tg7\21\218", 1232378196815)
          f2("\220\247\12\186s", 15396035160817)

          local v48 = table
          f2("ms\175\247\151\212", 999519180719)
          local insert = v48.insert

          f2("rȢ>J\184\155\176\252\140\239", 23812205787303)
          f2("_\221\226\239\226\8ڳ\128\177\131\2544", 34845362863799)

          insert(v47.accessories, {
            AssetId = value.AssetId,
            AccessoryType = value.AccessoryType.Name,
            IsLayered = value.IsLayered,
          })
        end

        fetchNetwork()
        task.wait(0.3)
        Color3.new(1, 0.85490196943283, 0.72549021244049)
      end)
    end)

    f2("P\242\207څ\7", 5612325130999)

    local function f3(p3)
      task.spawn(function()
        sendChatMessage("----///MONK LIFE HUB 🔥 WIDTH RESIZER LOADED 🔱🌪️///----")
        local character2 = localPlayer.Character
        local v49 = character2

        if not character2 then
          local characterAdded = localPlayer.CharacterAdded
          v49 = characterAdded["\19\188\199\216"](characterAdded)
        end

        local v50 = v49
        f2("\251\220\14\246u\19\141\6N\227j\199", 8384836320949)
        local waitForChild = v50.WaitForChild
        f2(":\148\198{A\190\169\134", 19113085211943)
        local v51 = waitForChild(v50, "ո\182d\139v?\127")
        f2("\241\245\228j8", 28263958743902)

        local ok2, result2 = pcall(function()
          local v52 = f2(
            "\173\165(\243\167\205j\200|/\198\6\2301\228N\0072\232bW", 1343033933754
          )

          return v51:GetAppliedDescription()
        end)

        if not ok2 or not result2 then
          return
        end

        f2("0\244\187m\213\0\178\179\229\\U\153\n\130\185", 7472697717817)
        f2("/\185E\7{\20^:\200\226q", 21697279966320)
        f2("75\131\237\20\200P(\154Q", 14178141577556)
        f2("C\245\16\0263\n\135\255\5>L:*", 19016098449131)
        f2("\139E\217/\11<\r$]rʘ\216", 11994800733489)
        f2(")c\177#cp]\1715*\144\12\153", 17232240433776)
        f2("\0058\183\147\130\205\28׬\16", 15098798086732)
        f2("̥\173\184;", 2841909616990)
        f2("\227\150o\236\180)\193TVd1\7\28", 7200908026488)
        f2("\179\7\193\253\31\n\239a\228_\245", 10875583612175)
        f2("<-\136ۍ\2072\1747\127@\232B\157", 28905635689480)
        f2("\168\241\166\20T\2w\1\163\227", 59171160434)
        f2("I\21C\24\213k9G= \127\233\164-\193", 10838094208257)
        f2("\221\5\201x`\222t\206\233\198\8\186", 24448622094888)
        f2("\234\142\17\250\193\140\146O", 12889932393869)
        f2('\251\187I\224"!\2077\2138\226', 17534854540639)

        local heightScale2 = result2.HeightScale

        f2(")ltDף؅q", 27692510691310)
        f2("S\156!Z\188", 33349833009893)

        local w = result2["\4ӄ\31%\26\31\187W\157\245\131\8\21\225"]
        f2("y\184\215dWR\202\31H\128#\0\198", 7128303801943)
        local bodyTypeScale2 = result2.BodyTypeScale
        local shirt2 = result2.Shirt
        f2("%!xG\148T\142׿\178\7O^", 31773780271303)
        local pants2 = result2.Pants

        f2("\22̤Z\228`C", 5904705462882)
        f2("\25Y\210\201", 7972593521238)
        f2("ʧ-\165", 469232465677)

        local graphicTShirt2 = result2.GraphicTShirt

        f2("\152\251O\29l\228\n\n\1Px!\4", 29182085092638)
        f2("\28yL\29^Iǒ$ɓ2\153", 34025014246538)
        f2("\0062\178\212", 5302804281204)

        local face2 = result2.Face
        local head2 = result2.Head

        f2("\147\130O\139\212", 7198181653120)
        f2("Z1r\194h\189\227", 29995693523059)
        f2("\249\2461d\205", 13743221355829)

        local torso2 = result2.Torso

        f2("\152\227\182I\143\158\232\227", 45510588329)
        f2("\233 \137)", 13574057629632)

        local aK = result2["\202\206a\157\157\138k"]
        local rightArm2 = result2.RightArm
        local leftLeg2 = result2.LeftLeg
        local rightLeg2 = result2.RightLeg
        local walkAnimation2 = result2.WalkAnimation
        f2("\130\166\236\189'<\28\160", 12192969905071)
        local runAnimation2 = result2.RunAnimation

        f2("N\1825\201V1\t\145", 18862643988905)
        f2("\236\11=9\209ܝM\163\188\194P\157", 22858876533232)

        local s5NUYS = result2["s\r5\145\196N\200U,Y_s\130"]
        local climbAnimation2 = result2.ClimbAnimation
        local fallAnimation2 = result2.FallAnimation
        local swimAnimation2 = result2.SwimAnimation
        local idleAnimation2 = result2.IdleAnimation
        local getAccessories = result2.GetAccessories

        local v53 = {
          accessories = {},
          properties = {
            HeightScale = heightScale2,
            HeadScale = p3,
            WidthScale = p3,
            DepthScale = p3,
            ProportionScale = w,
            BodyTypeScale = bodyTypeScale2,
            Shirt = shirt2,
            Pants = pants2,
            GraphicTShirt = graphicTShirt2,
            Face = face2,
            Head = head2,
            Torso = torso2,
            LeftArm = aK,
            ["\225ׇ\141-\206E\202"] = rightArm2,
            LeftLeg = leftLeg2,
            RightLeg = rightLeg2,
            WalkAnimation = walkAnimation2,
            RunAnimation = runAnimation2,
            ["Jtru\2\228\154\229.\148\31\153\173"] = s5NUYS,
            FallAnimation = fallAnimation2,
            ClimbAnimation = climbAnimation2,
            IdleAnimation = idleAnimation2,
            SwimAnimation = swimAnimation2,
          },
        }

        for _, value2 in ipairs(getAccessories(result2, true)) do
          f2("Ʃ`\226\157\217\29*\29~n", 17277760301948)
          f2("\161\0201.\223", 4503603934580)

          local v54 = table
          f2("\139\145Ûf\16", 28568419777031)
          local insert2 = v54.insert
          f2('\20X\139\\"=`', 14681444255980)
          local accessories = v53.accessories
          f2("\134\204\204\2378\244\17\160]", 2113991581963)

          insert2(accessories, {
            AssetId = value2.AssetId,
            AccessoryType = value2.AccessoryType["}p\4\141"],
            IsLayered = value2.IsLayered,
          })
        end

        local network = fetchNetwork()

        pcall(function()
          local v55 = f2("\172\192\4\191", 33334224920551)
          network["I\175\162\167"]("wear_outfit_from_desc", v53)
        end)

        task.wait(0.3)
        local v56 = _G["YpZ\136\161\162"].new(1, 0.85490196943283, 0.72549021244049)

        pcall(function()
          local v57 = f2("\209", 27152622598652)
          local v58 = f2("\157\134\143\240", 22933573311133)
          local send = network.send
          local v59 = f2("\243", 21183479914288)
          local v60 = f2("\165`W\203\245yps\238", 8579780339382)
          send("skin_tone", v56.R, v56["\220"], v56["\252"])
        end)
      end)
    end

    createLabel(
      "Ҳ\145\1473W\229t~\30TJ'L\236?s\248$\12\242ߑ\22\146\141\210x",
      Color3.fromRGB(0, 255, 120), 20
    )

    createButton("Apply Width 2x", function() f3(2) end)
    createButton("Apply Width 5x", function() f3(5) end)
    createButton("Apply Width 10x", function() f3(10) end)
    createButton("Apply Width 15x", function() f3(15) end)
    createButton("Apply Width 20x", function() f3(20) end)
  end

  do
    createButton("🔄 Reset Character Size", function()
      task.spawn(function()
        local humanoid2 = (localPlayer.Character
          or localPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid")

        local v61, v62 = _G["P*a\132\156"](function()
          local v63 = f2("\1399\228M\190*\131,5\0\192!\145\208\30\11:9\29\242,", 9014589905897)
          return humanoid2:GetAppliedDescription()
        end)

        if not v61 or not v62 then
          return
        end

        f2("\162\237?l\170\180P\219\246\248p", 7583955859203)
        f2("UN\164\1590\230\211Z\31.\186,H", 7922420595753)
        f2("E\247Q1\222", 27298434669698)
        f2("\221\211\220$\16\143f", 17363661258548)
        f2("\3;:\197", 33140818099207)
        f2("\188\219\238\211o!u\154\243\201", 15739222420533)
        f2("\169v\139y\223\17\1722\183\8 \143\207", 28561080076311)
        f2("\151\191H\148\1\186\23\140H~B\192\255", 14334515425409)
        f2("J\1ֿ\154\167:\182\164Q\222", 283800946513)
        f2("Oz\28\182\150\163\158\243\2485", 33823144175186)
        f2("`\30Q\173\2\n\240\188@", 34205966554999)
        f2("\249we\238\246", 23437198995868)
        f2("\246\t\245\164\184\248݊%\223", 11196055214636)
        f2("\174\129{B\211", 35043336284557)
        f2("\218\237\217\22\5\237}", 21653778426758)

        local shirt3 = v62.Shirt

        f2("\226\241\2\1\128", 21004770993013)
        f2("^\176\222+\157\150Յx\0082\238(", 21994485755344)
        f2("\193Mb\0197", 30389960756388)
        f2("\245\210\0207", 19365899510328)

        local pants3 = v62.Pants
        f2("\160O\217\209#\172o\19\12\237^\4\188\245", 1567054066397)
        local graphicTShirt3 = v62.GraphicTShirt
        local face3 = v62.Face

        f2("e\197P\234z\240\133\235\1\r3\189\154", 7552187969268)
        f2("\192\190\153\16", 16508434036035)
        f2("U\187|\228\nۡ\197", 3068748705049)

        local head3 = v62.Head
        local torso3 = v62.Torso
        local t = v62["Λ\8\206\254\179t"]

        f2("3Y\1700\128\17\204\234\169] \162\19", 33379639729779)
        f2("\186\20\248\2527R\174", 13871656469319)
        f2("ز|\0295Ȉ#", 14317893669813)

        local rightArm3 = v62.RightArm
        local rightLeg3 = v62.RightLeg
        local leftLeg3 = v62.LeftLeg
        local walkAnimation3 = v62.WalkAnimation

        f2("eQ\141\213\227\16\186- \127|\155\144", 723346857638)
        f2("k\247\148,\219kB\139\127\187t\16", 27763863654389)
        f2("\27\185\3~\7\192\244\185:\245\149\27", 1851098261988)

        local runAnimation3 = v62.RunAnimation
        local jumpAnimation2 = v62.JumpAnimation
        local fallAnimation3 = v62.FallAnimation
        local climbAnimation3 = v62.ClimbAnimation
        local idleAnimation3 = v62.IdleAnimation
        f2("J\187\156 \142LQ\217\30џ\151W~", 17047042203486)
        local swimAnimation3 = v62.SwimAnimation
        f2(".\n\132~F|", 22744337329502)

        local v64 = {
          accessories = {},
          properties = {
            HeightScale = 1,
            HeadScale = 1,
            WidthScale = 1,
            DepthScale = 1,
            ProportionScale = 0,
            BodyTypeScale = 0,
            Shirt = shirt3,
            Pants = pants3,
            GraphicTShirt = graphicTShirt3,
            Face = face3,
            Head = head3,
            Torso = torso3,
            LeftArm = t,
            RightArm = rightArm3,
            LeftLeg = leftLeg3,
            RightLeg = rightLeg3,
            WalkAnimation = walkAnimation3,
            RunAnimation = runAnimation3,
            JumpAnimation = jumpAnimation2,
            FallAnimation = fallAnimation3,
            ClimbAnimation = climbAnimation3,
            IdleAnimation = idleAnimation3,
            SwimAnimation = swimAnimation3,
          },
        }

        f2("\24\167\153\189\16֥{\177;\192m\150R", 2339934420050)

        for _, value3 in ipairs(v62:GetAccessories(true)) do
          f2("V\187\175O\t\202\3", 27881560243439)
          f2("\173\1\247\25\134", 7036062020101)

          local v65 = table

          f2("8cr\23\132\252\t\224\138\137\225", 6447504957184)
          f2("R\253\162d\173\236", 33216513557939)
          f2(",\173\224\19\t\1[\1512\251(X*", 34041666748080)

          local insert3 = v65.insert
          local accessories2 = v64.accessories
          local accessoryType = value3.AccessoryType

          insert3(accessories2, {
            AssetId = value3.AssetId,
            AccessoryType = accessoryType.Name,
            IsLayered = value3.IsLayered,
          })
        end

        local network2 = fetchNetwork()

        pcall(function()
          local v66 = f2("l]\239\240", 13246944885757)
          network2["\\\r\211\21"]("wear_outfit_from_desc", v64)
        end)

        task.wait(0.3)
        local v67 = _G["\221gZ\231<y"].new(1, 0.85490196943283, 0.72549021244049)

        pcall(function()
          local v68 = f2("\249\158\190Q", 19631897987811)
          local v69 = f2("0", 12762600211884)
          network2.send("skin_tone", v67.R, v67.G, v67.B)
        end)
      end)
    end)

    local v70 = ""
    local flag = false

    f2("\162\222;f\204\31\20K\22/Z\238\137\252", 28230799044783)
    f2("\240\131\248\191\240\138I", 3575271688909)

    local function getColor(bodyColors)
      local v71 = f2("\146F\178\1401K*\155m\228\205", 9633848771635)
      local v72 = f2("\169=\18\215ZO\224Kb0", 17594136810206)
      local v73 = f2("(?\144M3M*U\211\193\23\31\156\186", 1222799858716)
      local v74 = f2("\158\239\227\26\158\170Е\250\251[>\229", 16673139449567)
      local v75 = f2("\0\137 \253ض\147\n\213\4\244\127\237U", 7503849651545)
      local headColor3 = bodyColors.HeadColor3
      local v76 = f2("\3\246l\197\5\142ylx\211C-\158", 22279681635367)

      local v77 = {
        headColor3, bodyColors.LeftArmColor3, bodyColors.RightArmColor3, bodyColors.TorsoColor3,
        bodyColors.LeftLegColor3, bodyColors.RightLegColor3,
      }

      local total = 0
      local total2 = 0
      local total3 = 0

      for _, v78 in _G["Q\228;\181aF"](v77) do
        total3 = total3 + v78.R
        total2 = total2 + v78.G
        total = total + v78.B
      end

      return Color3.new(total3 / 6, total2 / 6, total / 6)
    end

    local function f4()
      local v79 = f2("W\158\205 OoJ2", 14679528710248)
      local v80 = f2("\254\230&\251\190KZ", 33036496078235)
      local v81 = f2("\232p|D\166\167+\150e\160\159\148\172", 31778303907191)
      local v82 = f2("\135q\0070\7\149\168.\131{)", 21140968697986)
      local v83 = f2("\151\197fZF\132ܩ\181", 13445916651216)
      local v84 = f2("R\252\127Cn\255SU", 7702175644432)

      local v85 = f2(
        ".\26p\131\14M\190\137\30\139\233\133g\253\2259\23\169\204\30\174", 19329787571403
      )

      local v86 = f2("X\7\159\229\2534;1\181\178\129\158\241", 10359946376480)
      local v87 = f2("\242\157]T\186", 23313439859127)
      local v88 = f2("\29\201", 4880882706041)
      local v89 = f2("\161\244", 9663969213832)
      local v90 = f2("\233\187b\177\252kp8\216", 12750619128268)
      local v91 = f2("]\137\189\26\19", 7057549303869)
      local v92 = f2("\207f\129\182\249\242\185\177", 20237334586933)
      local v93 = f2("l\129\236T", 32829800377979)
      local v94 = f2("\18\20148 \140\169#\183", 11436394696098)
      local v95 = f2("gfL܏\17\135\231", 20263516609097)
      local v96 = f2("f\n\217\201", 20110311314351)
      local v97 = f2('Y="\31\187\195\30y\12\194(%H', 11322884179389)
      local v98 = f2("\129\130ל", 31900773181879)
      local v99 = f2("΁\213f", 9766591742943)
      local v100 = f2("\236\22", 26126581870609)
      local v101 = f2("?\20\205̮A\190", 31778367281148)
      local v102 = f2("@\141\144\214\195", 30383636983171)
      local v103 = f2("b\197\127\168\192\146\15\7\190\217ͼ", 1841829369652)
      local v104 = f2("f\242\199z\127K\159\196wI&\15S\2272", 25465692031128)
      local v105 = f2("\144C\151\165\204#'g", 34525625604599)
      local v106 = f2("\135n֣\210", 16519606557168)
      local v107 = f2(" ǎ\tp()\2374", 2803287875392)
      local v108 = f2("c\202", 3245295518098)
      local v109 = f2("\2548\24\127\11\204\222\2550\192", 24670010854365)
      local v110 = f2("']\"\178\165", 1234952616737)
      local v111 = f2("\242\229\229\200", 16957384340230)
      local v112 = f2("*\159Ȼ\201\245\166", 3992544753302)
      local v113 = f2("\195\22h\218U\8\204A", 27380407580373)
      local v114 = f2("\252\201", 16238330216790)
      local v115 = f2("p?_", 1285724236204)
      local v116 = f2("\254\157\1877\238", 22824086890021)
      local v117 = f2("\26\173xI\212", 8054215213479)
      local v118 = f2("Cy\197{#\204\30\156", 27496795303575)
      local v119 = f2("\222\3\135\188\197\227\6kI", 22921224761768)
      local v120 = f2("6\184}#\1\200<:$\14J\28\2", 21538526398089)
      local v121 = f2("\230\238\12\225j\192\162", 2470376435171)
      local v122 = f2("\197`", 21509917743680)
      local v123 = f2("\8)", 16923438151146)
      local v124 = f2("%\23\129\193", 4124286538041)
      local v125 = f2("y\232\r\196u", 19322042066776)
      local v126 = f2("\131\223\17\7\130\23310\246a\238R\195", 9918009747910)
      local v127 = f2("sL\141\168h\210׈\23", 4046714619449)
      local v128 = f2('%\211\2\190"\167R\184', 34064601660274)
      local v129 = f2("L,\164G\25", 16791270192588)
      local v130 = f2("\197\192\227\211G", 8093174460059)
      local v131 = f2("W֯3@", 32414293909063)
      local v132 = f2("\28\183h\252!AX\254", 9237869528015)
      local v133 = f2(",\16", 18889675688606)
      local v134 = f2("l\196JJ\14", 33127069173822)
      local v135 = f2("\00043\6\132\154\151r\164", 23910208466502)
      local v136 = f2("D`7\217", 25605946462212)
      local v137 = f2("\27\175[|\237\7\215", 22873501762406)
      local v138 = f2("9\1934\196.", 15903559234000)
      local v139 = f2("Ԯf\241:\254\20", 949198614241)
      local v140 = f2("s\15\230\243a\239\29Ss\26ռD", 11720015339202)
      local v141 = f2("eO\252\142\211&\14\24", 12355443350717)
      local v142 = f2("\238.", 24964082083057)
      local v143 = f2("4F/\22\14", 30972746176323)
      local v144 = f2("\169\14\210\229\154\226e\137", 24588310285586)
      local v145 = f2("\237\186͠ۯt\188\245\139`AD", 33396351262565)
      local v146 = f2("\5\222", 1942626388973)
      local v147 = f2("\152\22-o@\175\174\210\6", 3753998221946)
      local v148 = f2("\19\132ԃ\245\11\198", 20213544827181)
      local v149 = f2("q̜\253\228", 24440341797173)
      local v150 = f2("\11toQ\2250)\3", 9332475107225)
      local v151 = f2("\189\164\139\168.\185\128\130v\11", 10049518152848)
      local v152 = f2("\233t'\241", 7986304667738)
      local v153 = f2("\4E\165\182\249f\160\213\t\4\252چ", 14346744538490)
      local v154 = f2(":\179\236\162\248KB\20\242\182\216P\249", 364722374345)
      local v155 = f2("g\178f\177*", 25077992876605)
      local v156 = f2("L\242I\195", 22439626618308)
      local v157 = f2("\3\172Yx\247\29Y\23n\1961\128", 24610876828932)
      local v158 = f2("b\169\27\129\248O\132O\228\2190)\168\5", 22235559410354)
      local v159 = f2("\190\240\227)Ԣ\227Ng\1384\156`", 13016725454802)
      local v160 = f2("S\254\215?\231\28w-\189\30\206\25\183", 23383690858860)
      local v161 = f2("\21\7\207m\202M\158\132ݺ\r!\229", 33253990557933)
      local v162 = f2("&:\t\187\241\t\211L1\5\217\239\208", 27244327576820)
      local v163 = f2("\250ʝ\249'\27\172sm\236\28\149", 31458271863313)
      local v164 = f2("+\236\128\31\145f\154\3V\212\224\211}", 23415884950485)
      local v165 = f2("\167=\147\30", 31510213101070)
      local v166 = f2("Z\180\158\172\16P\11\2538\n", 3271617601625)
      local v167 = f2("\129%\142\146\144", 4830379763371)
      local v168 = f2("d}ܲ;\210u\7\206g", 26957421931007)

      safeSend(unpack({
        "wear_outfit_from_desc",
        {
          accessories = {
            {
              Rotation = "  ",
              AccessoryType = "Hair",
              Position = "  ",
              Scale = "1 1 1",
              IsLayered = false,
              AssetId = 0,
            },
            {
              Rotation = "  ",
              AccessoryType = "Face",
              Position = "  ",
              Scale = "1 1 1",
              ['"6%q\245Q\242F\175'] = false,
              AssetId = 0,
            },
            {
              Rotation = "  ",
              AccessoryType = "Hat",
              ["\243\\\193F_\0311\237"] = "ʟ",
              Scale = "1 1 1",
              IsLayered = false,
              AssetId = 0,
            },
            {
              Rotation = "  ",
              AccessoryType = "Shirt",
              Scale = "1 1 1",
              Position = "  ",
              Order = 1,
              IsLayered = true,
              Puffiness = 0,
              AssetId = 0,
            },
            {
              Rotation = "  ",
              AccessoryType = "Pants",
              Scale = "1 1 1",
              Position = "  ",
              Order = 2,
              IsLayered = true,
              Puffiness = 0,
              AssetId = 0,
            },
          },
          properties = {
            ["\225kd\148u6\205\2r\198W\163s"] = 0,
            RightLegColor = "^zH;",
            MoodAnimation = 0,
            Torso = 0,
            WidthScale = 1,
            BodyTypeScale = 0.25,
            ClimbAnimation = 0,
            LeftArmColor = "^zH;",
            Shirt = 0,
            ["@\170{*n\200g׿^U\149\r"] = 0,
            RightArmColor = "^zH;",
            LeftArm = 0,
            RunAnimation = 0,
            JumpAnimation = 0,
            RightArm = 0,
            Face = 0,
            Head = 0,
            DepthScale = 1,
            LeftLegColor = "^zH;",
            FallAnimation = 0,
            Pants = 0,
            HeadColor = "^zH;",
            TorsoColor = "^zH;",
            IdleAnimation = 0,
            ["r\0071M(A\198\t"] = 0,
            HeadScale = 1,
            HeightScale = 1,
            ProportionScale = 0,
            LeftLeg = 0,
          },
        },
      }))
    end

    local function f5()
      if v70 == "" then
        f2(
          "\236\5G\178{^\183\145\11\1326\11\163\202ay\229\237\242\15\136\254Bd\222",
          19217840028760
        )

        notify("Error ❌", "Pehle player select karo!", 3)
        return
      end

      f2("\202\30\134~#>\170\255%\201\5\210XP", 26287509036386)
      local findFirstChild = players:FindFirstChild(v70)

      if not findFirstChild then
        f2("", 34391756434056)
        flag = false
        v70 = ""
        notify("Target Left", "That player already left the server. Copy cancelled.", 4)
        return
      end

      if flag then
        f2("\254\221K\223]\219(G\224\246\254\232@\169\225m", 9429952175182)
        notify("\20\203B\239\227\24\211", "\130:3׃\190\132\25~j\170\213\24;\130+", 2)
        return
      end

      flag = true
      local flag2 = false

      local function f6(p4)
        if not p4 then
          return false
        end

        f2("\157\133\130\207\n\243", 26815157029674)
        local v169 = string

        f2("|\233\217\233;\197\219{", 16999883866578)
        f2("\6\178\162\213\6", 30767921002485)
        f2("\251*o\160A7", 20471117054213)
        f2("", 6221989062220)

        local v170 = v169.lower(tostring(p4))
        local replaced = string.gsub(v170, "\0P:\2\192\130\209k", "")

        if string.find(v170, "vsx") or string.find(v170, "C\172\233y\145~X")
          or string.find(replaced, "vsx") then
          return true
        end

        return false
      end

      f2("\224\253\2'AO*\198Og\249\210\"", 29775178641573)

      for _, value4 in pairs(findFirstChild["\150\25\163\141\184\31C\25\190+\158E*"](findFirstChild)) do
        if type(value4) == "string" and f6(value4) then
          flag2 = true
          break
        end
      end

      if f6(findFirstChild[">:\158\188"]) or f6(findFirstChild.DisplayName) then
        flag2 = true
      end

      if findFirstChild.Character and not flag2 then
        f2("\161\186kΌ\n", 4875821643276)
        f2("\187\231(\127\231pN\191z\142u\27\226f", 25282975362890)

        for _, value5 in ipairs(findFirstChild.Character:GetDescendants()) do
          if value5:IsA("TextLabel") or value5:IsA("TextButton") or value5:IsA("TextBox") then
            if f6(value5.Text) then
              flag2 = true
              break
            end
          end
        end
      end

      if flag2 then
        flag = false
        notify("🛑 BLOCKED", "Can't copy CELESITAL  Syndicate members!", 5)
        return
      end

      sendChatMessage("------///MONK LIFE HUB ✨🤩VIP OUTFIT COPIER 2.0😋 LOADED 🔱✨///-------")

      if not findFirstChild["Jz\232\200\7Bf^\12"] then
        flag = false
        return
      end

      f2("5\170\15\246\248\205s,+", 17055902086830)
      f2("\186:\254N\127\213V\211", 8835621527321)

      local humanoid3 = findFirstChild.Character:FindFirstChildWhichIsA("Humanoid")

      if not humanoid3 then
        flag = false
        return
      end

      local v171 = humanoid3["\169\145\138A\241!\197=̪1\179蕅\144\152U\1M\135"](humanoid3)

      if not v171 then
        flag = false
        return
      end

      f2("(\5\151W", 30842193079432)
      f4()
      task.wait(0.6)
      local accessories3 = {}

      for _, value6 in ipairs(v171:GetAccessories(true)) do
        f2("Ab\149\2024\231\255\226>", 26341845920209)
        f2('\15\29\230"\235', 15160649900568)
        f2("\134.\\\25\156", 18541897644370)

        local j2 = _G["j^;\130\172"]

        f2("\154\176", 9377709284686)
        f2("\148\n2\25#9\145\15\212", 8263577722333)
        f2("\5\160", 12067500162305)
        f2("\133\236\183\232\238", 26000620504450)
        f2("\163\185\16\0201G\216", 15178977434678)
        f2("\225\2164\212-", 19969593754728)
        f2("\31\7߳0\25\8#", 22395595947685)
        f2("_\142·Ol", 5689502602029)
        f2("\30\197?Ռ\173;#\6\151ܝs", 785587112800)

        local insert4 = j2.insert
        local isLayered = value6.IsLayered
        local accessoryType2 = value6.AccessoryType

        f2(")\148m,I)\188A\2", 28558573485885)
        f2(":d\134#", 34283835230098)

        local name = accessoryType2.Name
        f2("P\236\243\166`\190\144", 33835793280211)
        local l = value6["\172]\220\24\144l\228"]
        f2("\7\243\151a\239", 7906064064573)

        insert4(accessories3, {
          Rotation = "  ",
          Position = "  ",
          Scale = "1 1 1",
          IsLayered = isLayered,
          AccessoryType = name,
          AssetId = l,
          ["\129DXQ\173"] = value6.Order,
          Puffiness = value6.Puffiness,
        })
      end

      f2(";\227J:", 24826251409698)
      f2("¹\222Y\17\148\197\19\170\165 \2414", 18660267290283)
      f2("\181\241\251[\149\200\221\244F\150cW%", 21554117421676)
      f2("\182l\150\16m\222܌\148\128\149\198\4\8", 28277334556092)
      f2("\0\249\185\152U<&f", 22082111025359)
      f2('\167\226\171!TC!"\142\161z\132\206', 19075028730774)
      f2("\12\18] ", 31227743583698)

      local rd = v171["Rd\227\234"]
      f2("\16\166)\226p", 10094732250842)
      local torso4 = v171.Torso
      local leftArm2 = v171.LeftArm
      local rightArm4 = v171.RightArm

      f2("1Lx*f\253\242\1304\144_&\203", 15529622352016)
      f2("\170\210\226e#\186\180", 19322693076585)
      f2("3I\148&jk\191\171\127v\247B\2333\22", 18749918065136)

      local leftLeg4 = v171.LeftLeg

      f2("\8\19=\128!e\200B\240", 23523877423302)
      f2(".Ԯ`\253\246k\182\242&", 26095003042142)
      f2("(\204\220҇", 3401374715620)
      f2("\233\244\194إW\139", 20163640850214)

      local rightLeg4 = v171.RightLeg

      f2(".\228\25IH", 13111614425502)
      f2("Z\5\221\217QE\174S", 20289830677386)

      local shirt4 = v171.Shirt
      local face4 = v171.Face
      local pants4 = v171.Pants
      f2("\129\130\138\0121", 9163442857053)
      local graphicTShirt4 = v171.GraphicTShirt
      f2("S!\189-\172cR\19\21\144\245mN", 28629717776310)
      local runAnimation4 = v171.RunAnimation
      local jumpAnimation3 = v171.JumpAnimation
      local cL = v171["+\181*c$\216:)\247\170\181l\130"]
      local climbAnimation4 = v171.ClimbAnimation
      local fallAnimation4 = v171.FallAnimation
      local idleAnimation4 = v171.IdleAnimation
      local swimAnimation4 = v171.SwimAnimation
      local heightScale3 = v171.HeightScale
      local widthScale2 = v171.WidthScale
      local depthScale2 = v171.DepthScale
      f2(",\152\233\1p\249\2301\n\28", 3034638769447)
      local headScale = v171.HeadScale
      f2("\170\177\226\23fÙ\187\238yw\187\195", 18681649465170)
      local bodyTypeScale3 = v171.BodyTypeScale
      local proportionScale2 = v171.ProportionScale
      f2("j!\191;\129\129LL\19d", 21743832968121)

      local v172 = {
        accessories = accessories3,
        ["\167g\137(\29,\22\11\160#"] = {
          Head = rd or 0,
          Torso = torso4 or 0,
          LeftArm = leftArm2 or 0,
          RightArm = rightArm4 or 0,
          [")~X\131;3\23"] = leftLeg4 or 0,
          RightLeg = rightLeg4 or 0,
          Face = face4 or 0,
          Shirt = shirt4 or 0,
          Pants = pants4 or 0,
          GraphicTShirt = graphicTShirt4 or 0,
          RunAnimation = runAnimation4 or 0,
          WalkAnimation = cL or 0,
          ["\174\229\152p\246\0273\19>\249\151~e"] = jumpAnimation3 or 0,
          FallAnimation = fallAnimation4 or 0,
          ClimbAnimation = climbAnimation4 or 0,
          IdleAnimation = idleAnimation4 or 0,
          SwimAnimation = swimAnimation4 or 0,
          HeightScale = heightScale3 or 1,
          WidthScale = widthScale2 or 1,
          DepthScale = depthScale2 or 1,
          HeadScale = headScale or 1,
          BodyTypeScale = bodyTypeScale3 or 0,
          ProportionScale = proportionScale2 or 0,
        },
      }

      for k = 1, 4 do
        safeSend("wear_outfit_from_desc", v172)
        task.wait(0.15)
      end

      task.wait(0.2)
      local bodyColors2 = findFirstChild.Character:FindFirstChildOfClass("BodyColors")

      if bodyColors2 then
        for m = 1, 3 do
          safeSend("skin_tone", getColor(bodyColors2))
          task.wait(0.1)
        end
      end

      f2("\219\21\146I", 7153663379282)
      f2("\195\200\t,", 14085430538676)

      local v173 = math
      f2("\177\144\131\255\189", 32540068478593)
      local clamp = v173.clamp
      local v174 = math
      f2("\140u\0053ĝ:\1782W\239", 22529478628344)
      local floor2 = v174.floor
      local heightScale4 = v171.HeightScale
      f2("V[\176\0", 19877691795021)
      local v175 = clamp(floor2((heightScale4 or 1) * 100 + 0.5), 90, 105)

      f2("\8<4<", 30794248042877)
      f2("!\4\21ק\248R\243\19\160", 10895529196796)

      local clamped = math.clamp(
        math["Yj\2305\249"]((v171.WidthScale or 1) * 100 + 0.5), 70, 100
      )

      for n = 1, 2 do
        f2("\157Ѝ\251E\171\16I\242\145\4", 28144581215334)
        safeSend("body_scale", "HeightScale", v175)
        task.wait(0.1)
        f2("\17D\1758/=\239\190\11^", 6336131579687)
        safeSend("body_scale", "WidthScale", clamped)
        task.wait(0.1)
      end

      local tN = findFirstChild:GetAttribute("tN\20")

      if tN then
        safeSend("age", tN)
      end

      flag = false
      f2("\177Du\221\195\127\198\0=9\139#\\\255\8`\25\4u~\17\3c\220'Ov", 31443722025236)

      notify(
        "Success ✅",
        "\131\27\8\135\189]Ȯg\215ϴ\143q\195kf\136G\162\166\20\190V\240\240\188", 3
      )
    end

    players.PlayerRemoving:Connect(function(player)
      if player.Name == v70 then
        local v176 = flag
        v70 = ""
        flag = false

        if v176 then
          f2("\21P\2\189", 16651439374509)
          notify("Target Left", player.Name .. " left the game. Outfit copy stopped.", 4)
        else
          f2("\239\148a\135", 34538752459312)
          notify("Target Left", player.Name .. " left the server. Select another player.", 3)
        end
      end
    end)

    createLabel("--- OUTFIT COPIER ---", Color3.fromRGB(0, 255, 120), 30)

    jmY9("\1364U\191\128\237>3\131 ~\23\0~\143/e\197ѯ", "Select Player...", function(p5)
      v70 = p5
    end)

    createButton("👑 Copy Player Avatar", function() task.spawn(f5) end)
  end

  do
    createLabel("--- TROLL 💀 ---", Color3.fromRGB(0, 255, 120), 30)
    f2("\172أ\161\230\184 ?\247", 11400691966033)
    local v177 = 1

    f2("\25\169\175\4", 25020882327671)
    f2("h\199m\230\229\183\245\143WIk\186\137\130\202pԁ\243\169\154&\193", 27829304509338)

    local v178 = {
      Bang = false,
      MouthBang = false,
      Headsit = false,
      ["K\205\243v\181\175?\18h\182\205\12"] = false,
      ViewTarget = false,
    }

    local function f7(p6)
      if not p6 or p6 == "" then
        return nil
      end

      local lower = string.lower(tostring(p6))

      f2("b\228\202\237\216\229R43W", 15394265083571)
      f2("\245)\200C\191", 30796648098694)

      for _, value7 in pairs(players:GetPlayers()) do
        f2("ם\178\0087\24", 19967155346588)
        f2(">D!\201\252t", 13885141952043)

        local v179 = string.sub(string.lower(value7.Name), 1, #lower) == lower
        local v180 = v179

        if not v179 then
          f2("/\159\205\244B\139", 24942202831833)
          f2("\247\166U\237\0191", 2651067557840)
          v180 = string.sub(string.lower(value7.DisplayName), 1, #lower) == lower
        end

        if v180 then
          return value7
        end
      end

      return nil
    end

    createButton("\230P\138\141\242\207\16\229H\173\0283\221}\127\172\252\0273\254b\226\26", function()
      local parent = typeof(gethui) == "function" and gethui() or guiParent
      f2("\158읋3\11c%b,\149\2\148@", 10564521581040)

      if parent:FindFirstChild("MONKMultiFlingGUI") then
        notify("MONK HUB", "Multi Fling GUI is already open!", 3)
        return
      end

      task.spawn(function()
        local v181 = f2("ѧ\3\162i\144u\189", 29926929756308)
        local v182 = f2("\204\249\225\192-\175\250:", 12400235424125)
        local instance = Instance
        local v183 = f2("\3X\222\12m", 25940863502065)

        local MONKMultiFlingGUI = instance.new("ScreenGui")
        MONKMultiFlingGUI.Name = "MONKMultiFlingGUI"
        MONKMultiFlingGUI.ResetOnSpawn = false
        MONKMultiFlingGUI.Parent = parent

        local frame = Instance.new("Frame")
        f2("\146\172\137A", 16268292980022)
        frame["2\129^\228"] = UDim2.new(0, 320, 0, 370)
        f2("\229\244rN\249", 34091577982677)
        frame.Position = UDim2.new(0.5, -160, 0.5, -185)

        f2("݋lx\158\173\18͠\0Gf\136H\rd", 29593361708380)
        f2("\215\198\242C1\203", 22102411998550)

        local color32 = Color3
        f2("'\133\247\146]x\235", 2648544424000)
        local backgroundColor3 = color32.fromRGB(25, 25, 25)
        f2("{R\1275", 30647257090789)

        frame.BackgroundColor3 = backgroundColor3
        frame.BorderSizePixel = 0
        frame.Active = true
        frame.Draggable = true
        frame.Parent = MONKMultiFlingGUI

        f2("\207\244\198M\234a\192v", 11241938199264)
        local instance2 = Instance
        f2("\150\22\236", 28599419725447)
        local new = instance2.new
        f2("Q\148\230m\196`JQ", 20159604129692)
        local v184 = new("UICorner", frame)
        local udim = UDim

        f2("io1U\29\218{P\180\222QU", 11958903733934)
        f2("O\210\193", 6858263801033)

        local cornerRadius = udim.new(0, 8)
        f2("\158$q\135\172\129\166c", 12117616053108)
        v184.CornerRadius = cornerRadius
        local instance3 = Instance

        f2("\188\143N", 18039574075925)
        f2("\12\7\8\136\180", 6241320036852)

        local frame2 = instance3["y:<"]("Frame")
        local udim2 = UDim2

        f2("\150\2061", 22937717747403)
        f2("5\27\190\7", 13404241351440)

        local size = udim2.new(0, 240, 0, 35)
        f2("\184\23J\14\139\166", 9813354799703)
        frame2.Size = size
        f2("\157\219|f\235_H\25K\25t\185\2209\176\11", 14737477284437)
        local color33 = Color3
        f2("/R+\0272q\14", 9262626266376)
        local backgroundColor32 = color33.fromRGB(15, 15, 15)
        f2("MɄ\225", 3533124420619)

        frame2.BackgroundColor3 = backgroundColor32
        frame2.BorderSizePixel = 0
        frame2.Active = true
        frame2.Visible = false
        frame2.Parent = MONKMultiFlingGUI

        f2("]d\16\187\161\218{.", 281675298977)
        local instance4 = Instance
        f2("\184\151;", 31488170785811)
        local new2 = instance4.new
        f2("5\254\27E\2536\187O", 32740055369145)

        local v185 = new2("UICorner", frame2)
        v185.CornerRadius = UDim.new(0, 8)

        f2("\25\5\201\227\171\233\142\14", 10587450599492)
        local instance5 = Instance
        f2("\143\4\188", 32472887461437)
        local new3 = instance5.new

        f2("z\228\200\244\200/\170\2455", 33516653379484)
        f2("B\173\200R\158", 2347830334578)

        local textLabel = new3("TextLabel")

        f2("̸\144!", 16333301104533)
        f2("\255|sH\130", 12537189350971)

        local udim22 = UDim2
        f2("\166#k", 20791113003656)
        local v186 = udim22["\236m\205"](1, -40, 1, 0)
        f2("\\c\128\148\232", 9610501438360)

        textLabel["@ \1534"] = v186
        textLabel.Position = UDim2.new(0, 10, 0, 0)

        f2("?\175\225%\148\14", 28796045991132)
        textLabel.BackgroundTransparency = 1
        f2("\207\2472\144;3\2058\19\27\206$uN\185[\200W\134{\230", 4953208792083)
        textLabel.Text = "MONK MULTI FLING GUI"
        local color34 = Color3
        f2("z\2059Y\169\242U", 13231764558722)
        textLabel.TextColor3 = color34.fromRGB(255, 50, 50)
        f2("Bd8\234", 2337412516314)
        textLabel.Font = Enum.Font.GothamBold

        f2("\187ab\11\177\0\200\227", 20035064334745)
        f2("\207U\144\173", 31637063220388)

        textLabel.TextSize = 12
        local enum = Enum

        f2("3#o`.\23\26\160D\216\202\1\236\141", 25331192944672)
        f2("\186\217F-?\245g\240\229M3:\228|", 15652368967567)

        local textXAlignment = enum.TextXAlignment
        f2("L5\145\157", 21743369038003)
        local left = textXAlignment.Left
        f2("nY\164V\163\190^0", 14329703026090)
        textLabel.TextXAlignment = left
        f2("4\2020i\156", 5019077561001)
        textLabel.Parent = frame2
        local textButton = Instance.new("TextButton")
        local udim23 = UDim2

        f2("A\205\2532", 1057726810577)
        f2("\184\172B", 5822819804654)

        local size2 = udim23.new(0, 25, 0, 25)
        f2("\173Y)\27F", 33192550472515)
        textButton.Size = size2
        f2("\139\241\183\127PG\147\8", 11013193380130)
        local udim24 = UDim2
        f2(">\207\21", 12547604401681)
        local v187 = udim24.new(1, -30, 0, 5)
        f2("XX\23Œ\218", 20867182849178)

        textButton["4\191d\191\246pz\222"] = v187
        textButton.BackgroundColor3 = Color3.fromRGB(40, 150, 40)
        textButton.BorderSizePixel = 0

        f2("\185", 11418843265310)
        textButton.Text = "u"

        f2("[U\154\24\204\127", 25618804937592)
        f2("\157B\163b\172!\151\148;\\", 649730740025)

        local color35 = Color3
        f2("\181\206\19\234\15\220R", 23718965640108)
        local textColor3 = color35.fromRGB(255, 255, 255)
        f2("\16\n\145\202", 29851806966967)

        textButton.TextColor3 = textColor3
        textButton.Font = Enum.Font.GothamBold
        textButton.TextSize = 18
        textButton.Parent = frame2

        f2("\209+\\\216K*\24\18", 21543408869222)
        local instance6 = Instance
        f2("Y\166V", 3645446568081)
        local new4 = instance6.new
        f2("\148%\147\182\204\\\3\193", 22178194773919)
        local v188 = new4("UICorner", textButton)
        f2("\230\146\227\171", 13307405140683)
        v188.CornerRadius = UDim.new(0, 6)
        local inputBegan = frame2.InputBegan
        local v189, position, lxB

        inputBegan:Connect(function(p7)
          local v190 = f2("?*\211\251", 21898427699537)

          local v191 = p7.UserInputType
            == Enum["إ=\n\132\133T\158\208\254a\7\220"].MouseButton1

          local v192 = v191

          if not v191 then
            f2("\188iM\203y\201d7,\232Z\146\152", 11741362452154)
            f2("a8\237\170", 7123405625039)
            v192 = p7.UserInputType == Enum.UserInputType.Touch
          end

          if v192 then
            v189 = true
            position = p7.Position
            lxB = frame2["\135\185lx\133B\219\227"]
          end
        end)

        local inputChanged = frame2.InputChanged
        local v193

        inputChanged:Connect(function(p8)
          local v194 = f2("\200Y\227Ƈ@\185=%M\154\22\212", 19644807177350)
          local v195 = f2("6ѕ\129", 28598450830199)

          if p8.UserInputType == Enum.UserInputType.MouseMovement
            or p8["Uj\177\197\tdN\154>\239\162H<"] == Enum.UserInputType.Touch then
            v193 = p8
          end
        end)

        userInputService.InputChanged:Connect(function(input)
          if input == v193 and v189 then
            f2("\151Xǯ\161E\11g", 11710456466958)
            local position2 = input.Position
            f2('m\194"\23\3', 14468751071020)
            local v196 = position2 - position
            f2("\22\24d\172\252\214\229\176", 31527199968401)
            local udim25 = UDim2
            f2("/K\185", 27779513649080)
            local new5 = udim25.new
            local v197 = lxB

            f2("T", 26962494347519)
            f2("H", 19074161124391)

            local x = v197.X
            f2("C\140\16:l", 982879767726)
            local v198 = lxB
            local scale = x.Scale
            local x2 = v198.X

            f2("\185R\159\229\224\224", 10527086310453)
            f2("K", 32670374569740)

            frame2["\228'?\t\172\t\134\134"] = new5(
              scale, x2.Offset + v196.X, lxB.Y.Scale, lxB.Y.Offset + v196.Y
            )
          end
        end)

        userInputService.InputEnded:Connect(function(input2)
          local v199 = f2("\27\17;\131", 31822253424679)

          if input2.UserInputType == Enum.UserInputType.MouseButton1
            or input2["\214\207TR\169\206\208v),\29\249\19"] == Enum.UserInputType.Touch then
            v189 = false
          end
        end)

        f2("}\135G\237\176vJ\234", 9555987675799)
        local instance7 = Instance
        f2("\170?\30", 24631192257152)
        local new6 = instance7.new
        f2("l\2225\127\17", 24736592799056)
        local mJ = new6("%m\23j\20")
        local m2 = _G["\251~M\129!"]

        f2("\16\1825", 2339388196998)
        f2("\185\245\146\\", 18489061555444)

        local size3 = m2.new(1, 0, 0, 35)
        f2("G\160!iHg", 14718262000802)

        mJ.Size = size3
        mJ.BackgroundColor3 = Color3.fromRGB(15, 15, 15)

        f2('cA\2193\29\139\213\2306f "\246\246\253', 7634994030086)
        f2("\180\227Q\0", 3933165080765)
        f2("әGX.b\209a", 19698329079254)

        mJ.BorderSizePixel = 0
        mJ.Parent = frame

        local instance8 = Instance
        f2("ʺ~", 24439794573505)
        local a = instance8["a\212>"]
        f2("`\235n\130t)&E", 8269997173085)
        local v200 = a("UICorner", mJ)
        local udim3 = UDim

        f2("]\211\15\237t(j.\20\141]D", 23759652545471)
        f2("\n!\227", 22229054100689)

        local cornerRadius2 = udim3.new(0, 8)
        f2("\t\27es\225\189\235\144", 10612209982021)
        v200.CornerRadius = cornerRadius2

        local frame3 = Instance.new("Frame")
        frame3.Size = UDim2.new(1, 0, 0, 10)

        f2("\213P\222\23\162\2265\247", 29177594361353)
        f2("\226\188\192\234J", 3452718406161)

        local udim26 = UDim2
        f2("\148\189\192", 30481386649464)
        local position3 = udim26["\214 \23"](0, 0, 1, -10)
        f2("j\249\5+#\239", 27690352192520)

        frame3.Position = position3
        frame3.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        frame3["H\19\140\222O\161eK\127Hw\231\190\238z"] = 0

        f2("\244\152\175\143\21S\177\239", 15109857363129)
        frame3.Parent = mJ
        local instance9 = Instance
        f2("\246\164v", 20287237598579)
        local new7 = instance9.new
        f2("k\153$\202,\149T1H", 18546547180381)
        local textLabel2 = new7("TextLabel")
        f2("\248p\225@\19", 1252705472881)
        textLabel2.Size = UDim2.new(1, -40, 1, 0)
        f2("]\166\142\231\136", 13356937691096)
        textLabel2.Position = UDim2.new(0, 10, 0, 0)

        f2("\173\191HWbM\0\246\146pr\147\206*\31\196ǯ\224R\151\147", 11315549351983)
        f2("\235\18\244дV", 17936676153547)

        textLabel2.BackgroundTransparency = 1
        f2("\12\1829\255\183\189\129<\222o\r\133p:\5\21709t\147\157\205%X", 33007191423607)

        textLabel2.Text = "MONK HUB MULTI FLING✨"
        textLabel2.TextColor3 = Color3.fromRGB(255, 50, 50)

        f2("\194\28A]", 30545262725531)
        f2("\6\186\238\133", 31338672721395)

        local enum2 = Enum
        f2("m\136`\161", 25291241583784)
        local font = enum2.Font

        f2("\207t\1286D\224\140Q`\134", 15782765652540)
        f2("J\229\159\194", 1246518957760)

        textLabel2.Font = font.GothamBold
        textLabel2.TextSize = 14
        textLabel2.TextXAlignment = Enum.TextXAlignment.Left

        f2("\193\216\4\174\t\244\222<", 17515179116144)
        textLabel2.Parent = mJ
        f2("*s\206Tt", 33528532091983)

        local textButton2 = Instance.new("TextButton")
        textButton2.Position = UDim2.new(1, -35, 0, 5)

        f2("\16\195Ŕ\190", 32498640046045)
        f2("\18\145\151x", 9323672236954)

        local udim27 = UDim2
        f2("\222+\225", 11040806545351)
        local size4 = udim27.new(0, 25, 0, 25)
        f2("\162_\184\30\0\155", 22691935074147)

        textButton2.Size = size4
        textButton2.BackgroundColor3 = Color3.fromRGB(200, 40, 40)
        textButton2.BorderSizePixel = 0

        f2("\29", 33328029613543)
        f2("N\1469\147\231\8", 12781008899295)

        textButton2.Text = "-"
        local color36 = Color3
        f2("\175KMO\0235\172", 20988365062835)
        local textColor32 = color36.fromRGB(255, 255, 255)
        f2("\21]\248\182", 22288331906223)
        textButton2.TextColor3 = textColor32
        local enum3 = Enum

        f2('\8"\239P', 21177885992332)
        f2("\231\240J\189", 18888474017257)

        local font2 = enum3.Font
        f2("\252\26\236g", 21959308086556)

        textButton2.Font = font2.GothamBold
        textButton2.TextSize = 18

        f2("\228!wp\133Z", 34822420509777)
        f2("-\166k\230o\156\237X", 25872997514081)

        textButton2["\217+\161\26#)"] = mJ
        Instance.new("UICorner", textButton2).CornerRadius = UDim.new(0, 6)

        f2("MVJdF:\19L", 29901898777669)
        f2("L\28\21Cp", 14973875929756)

        local textLabel3 = Instance.new("TextLabel")
        textLabel3.Position = UDim2.new(0, 10, 0, 40)
        textLabel3.Size = UDim2.new(1, -20, 0, 15)
        textLabel3.BackgroundTransparency = 1

        f2("\243|\240\208", 18810899441389)
        f2("|J\r\18\234\7", 32038352361058)

        textLabel3["\228\3Dt"] = "Made by @SUPERMONKXSCRIPTS"
        f2("\224\199M\14\142'\1\132\169\31", 12711081962536)
        local color37 = Color3
        f2("X\19\247|.\233\171", 11521830741256)
        local textColor33 = color37.fromRGB(150, 150, 150)

        f2("\181\187\28!", 19921647275755)
        f2("\14\5\228R\242", 208928758958)

        textLabel3.TextColor3 = textColor33
        local enum4 = Enum
        f2("n\0!\206", 18660904662333)
        textLabel3.Font = enum4.Font.Gotham

        f2("Y\129\26\239l\198\222\226", 30856243746551)
        f2("\166\191r\177", 9906538467004)

        textLabel3.TextSize = 12
        f2("\225\248\203\t\252\0057\234{ȃ\250B\189", 26701346021749)
        local enum5 = Enum
        f2("\143\245=\156\238\29\169\133\164\5򣐛", 34523515100719)
        local textXAlignment2 = enum5.TextXAlignment
        f2("4f\18\170", 17513949196880)
        local left2 = textXAlignment2.Left
        f2("\19\135\202\20\164l\127\191", 479409108329)

        textLabel3.TextXAlignment = left2
        textLabel3.Parent = frame

        local textLabel4 = Instance.new("TextLabel")
        local udim28 = UDim2
        f2("C\145\166", 34430607419233)

        textLabel4.Position = udim28.new(0, 10, 0, 55)
        textLabel4.Size = UDim2.new(1, -20, 0, 20)

        f2("\156A\141\193\22\160\198jo9\14\199Ar\199L\217(E\227AO", 7268407090322)
        f2("\28\212\29\128\15\144", 8420663118161)

        textLabel4.BackgroundTransparency = 1
        textLabel4.Text = "Select targets to fling"
        textLabel4.TextColor3 = Color3["My\143(\177\185\225"](255, 255, 255)

        f2("[\19\8\157", 4869486946941)

        textLabel4["3\162\135\195"] = Enum.Font.GothamSemibold
        textLabel4.TextSize = 14

        f2("\22*S_", 22685797450311)

        textLabel4.TextXAlignment = Enum.TextXAlignment.Left
        textLabel4.Parent = frame

        local frame4 = Instance.new("Frame")
        frame4.Position = UDim2.new(0, 10, 0, 80)

        f2("\149_\17\140*", 6109445006276)
        local udim29 = UDim2
        f2("\177\138v", 8366893972813)

        frame4.Size = udim29.new(1, -20, 0, 210)
        frame4.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

        f2("ls\144\nM\218t\239\235\129w\252\137\135\r", 18984731849129)
        f2("\182i%)\214W\142\201", 4122559801011)

        frame4.BorderSizePixel = 0
        frame4.Parent = frame

        f2("1\250\158'", 8034399034447)
        Instance.new("UICorner", frame4).CornerRadius = UDim.new(0, 6)
        local uP = Instance.new("\132\213\14u\238ښ\26%\29p\189\196\234")
        f2("\164\215\12\227\15w\191&", 11003603069611)
        uP.Position = UDim2.new(0, 5, 0, 5)
        f2("[\170\20\0270", 35082199991468)
        local udim210 = UDim2
        f2("\130x\240", 33048666041617)

        uP["\231/\0Q"] = udim210.new(1, -10, 1, -10)
        uP.BackgroundTransparency = 1
        uP.BorderSizePixel = 0

        f2("\171\189M|\185;", 17252121873646)
        uP.ScrollBarThickness = 4
        f2("\127\188f\215\1940\201y\226\29BU\245ݓ(\153_\177\196", 186157241363)
        local color38 = Color3
        f2("ӑ\144=\252\218R", 17038565708976)
        local scrollBarImageColor3 = color38.fromRGB(255, 50, 50)
        f2("]\179\179\157Q", 14284468258522)
        uP.ScrollBarImageColor3 = scrollBarImageColor3
        local udim211 = UDim2
        f2("\206\229\24", 3985963674336)

        uP.CanvasSize = udim211.new(0, 0, 0, 0)
        uP.Parent = frame4

        f2("\148p\178-\158\237\8\181", 23728978534493)
        local instance10 = Instance

        f2("\219S\6V\234", 21366987731437)
        f2("\252I\172", 20383511241279)

        local new8 = instance10.new
        f2("\28\178\149I\205\255\1\191Ӄ", 23766860813613)
        local textButton3 = new8("TextButton")
        local udim212 = UDim2
        f2("~K\\", 23599576837386)

        textButton3.Position = udim212.new(0, 10, 0, 300)
        textButton3["b\8ư"] = UDim2.new(0.5, -15, 0, 30)

        f2("n6\31\195\234\\", 27021406537200)

        textButton3.BackgroundColor3 = Color3.fromRGB(40, 150, 40)
        textButton3.BorderSizePixel = 0

        f2("00ԟ", 19354018257222)
        f2("\18sG\r\135\236", 6673759228891)

        textButton3.Text = "START FLING"
        textButton3.TextColor3 = Color3["5\174\12\136E{\157"](255, 255, 255)

        f2("\143\25\232~", 33779757978365)
        textButton3.Font = Enum.Font.GothamBold
        f2("DȎ|", 24206306877262)

        textButton3.TextSize = 13
        textButton3.Parent = frame

        f2("\137\190\191F\198r\244i", 28652703185728)
        local instance11 = Instance
        f2("\135\164\230", 5624312247599)
        local new9 = instance11.new
        f2("k,G}\30\227J\3", 22877160029836)
        local v201 = new9("UICorner", textButton3)
        local udim4 = UDim

        f2("#P\166'\213\245\129\164\29F\247_", 24734796088006)
        f2("\167'b", 26205053400825)

        local v202 = udim4.new(0, 6)
        f2("\249FJd\157t\134\1", 16009326099180)
        v201["5\226ű\202\239\211ͬ\245+\191"] = v202
        local instance12 = Instance
        f2("q\187\245", 25052823435839)
        local new10 = instance12.new
        f2("\17\194\131\221\229", 26842516846429)

        local textButton4 = new10("TextButton")
        textButton4.Position = UDim2.new(0.5, 5, 0, 300)
        textButton4.Size = UDim2.new(0.5, -15, 0, 30)
        textButton4.BackgroundColor3 = Color3["D\22het\30A"](180, 40, 40)
        textButton4.BorderSizePixel = 0
        textButton4.Text = "STOP FLING"
        textButton4.TextColor3 = Color3.fromRGB(255, 255, 255)

        f2("\\챍", 14487456349278)
        f2("\201\227k\221", 8552225747736)

        local enum6 = Enum
        f2("p\217.\177", 23221978176713)
        local font3 = enum6.Font
        f2("\199\27ݬ\29$\127\245\243[", 4294023352335)
        local gothamBold = font3.GothamBold
        f2("N\157\172\228QAl\6", 29425484508080)

        textButton4.Font = gothamBold
        textButton4.TextSize = 13

        f2("HO\245\t", 15735416695777)
        textButton4.Parent = frame
        local instance13 = Instance
        f2('"\25\24', 29185500269707)
        local new11 = instance13.new
        f2("r\6Ԡ.\255\134\160", 17852138939285)
        local v203 = new11("UICorner", textButton4)
        local udim5 = UDim

        f2("!^я\179\233mi\233\18\237\202", 10820034110900)
        f2("\163G\130", 17719778044475)

        local cornerRadius3 = udim5.new(0, 6)
        f2('Mu":7\130-\172', 11075119290916)
        v203.CornerRadius = cornerRadius3
        local instance14 = Instance
        f2("dNt", 22488268490639)
        local new12 = instance14.new
        f2("\0183\151j7", 28078043581103)

        local textButton5 = new12("TextButton")
        textButton5.Position = UDim2.new(0, 10, 0, 335)

        f2("\0065\188x", 19108239540732)
        f2("\174ͻK\141", 11156878683802)

        local udim213 = UDim2
        f2("\206~u", 18410329114876)
        local size5 = udim213.new(0.5, -15, 0, 25)
        f2("9\196ϰ\147\141", 15260718187938)

        textButton5.Size = size5
        textButton5.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        textButton5.BorderSizePixel = 0

        f2("\192\19\133\127ّ\181JJ\184", 29859746433873)
        f2("\142:\161\169\227\24", 14116798063735)

        textButton5.Text = "SELECT ALL"
        local color39 = Color3
        f2(":\210)\177\232\18R", 18242636142391)
        textButton5.TextColor3 = color39.fromRGB(255, 255, 255)
        f2("\146\189E^", 22039372028179)
        local enum7 = Enum
        f2("\186\18\8\173", 6294812630930)
        textButton5.Font = enum7.Font.Gotham

        f2("\15mG\180(b\r#", 32552756207767)
        f2("Y\31\201F\170\134\232\151", 10554717638408)

        textButton5.TextSize = 12
        textButton5.Parent = frame

        local instance15 = Instance
        f2("g\128A", 21554578034200)
        local new13 = instance15.new

        f2("Zl\144\182", 18973043248107)
        f2("[4v4\141_\136 ", 7888823346555)

        local v204 = new13("UICorner", textButton5)
        f2("\19\185ۃ\7\239C\218\n\176g\252", 18105017673861)
        local v205 = _G["\28\252\168\8"]
        f2("\24vW", 28963419948415)
        local cornerRadius4 = v205.new(0, 6)
        f2("\239\234ȑ\192\255|\27", 32054593266539)
        v204.CornerRadius = cornerRadius4
        local instance16 = Instance
        f2("\204\194P", 10401481457654)
        local new14 = instance16.new
        f2('\191\r\255\165\244H"7\236\194', 15188954097064)
        local textButton6 = new14("TextButton")

        f2("\133\2376o\156\230\25E", 31589559339201)
        f2("[\192\242ȳ", 3448631179)

        local udim214 = UDim2
        f2("\182\190\232", 1323772807508)
        local position4 = udim214.new(0.5, 5, 0, 335)
        f2("\23\221Q\246\249", 7257001350905)
        textButton6.Position = position4
        local v206 = _G["\219@'\189\6"]
        f2("\191\134\0", 23097016370230)
        textButton6.Size = v206.new(0.5, -15, 0, 25)

        f2("7H\211p\132Z", 3607730618340)
        f2("\16\156\249\201\2]\206?\236ޠ\31\5?im", 25773791945709)

        local color310 = Color3
        f2("+;A\254\4\195~", 13951289683756)
        textButton6.BackgroundColor3 = color310["x*ӯ\241;_"](60, 60, 60)
        f2("\131'\2144\194E", 32286060631900)

        textButton6["\249\233\150\254J\136?"] = 0
        textButton6.Text = "DESELECT ALL"
        textButton6.TextColor3 = Color3.fromRGB(255, 255, 255)

        f2("%\171)\5", 22649358096609)
        textButton6.Font = Enum.Font.Gotham

        f2("U\142\t\152\215\2330\11", 13559087332497)
        f2("\154m\5(jk\17\23", 27506398123173)

        textButton6.TextSize = 12
        textButton6.Parent = frame

        Instance.new("UICorner", textButton6).CornerRadius = UDim["\184\188\0"](0, 6)
        f2(",S\139\208\2\2039\214\198", 18019684652951)
        local map = {}
        local v207 = {}
        local flag3 = false
        local fallenPartsDestroyHeight = workspace.FallenPartsDestroyHeight
        f2("\2398\148\187\223\242\191\134\31\2060j", 339975670687)

        local function makeTextButton()
          local v208 = f2("V\186\178\156\164", 33142377418880)
          local v209 = f2("\189\162\210\206ԡ\179#\237\250\135", 6389566163710)

          for _, value8 in pairs(uP:GetChildren()) do
            value8:Destroy()
          end

          f2("\16h`\198n", 22144155592165)
          v207 = {}
          f2("\247\202l%\199%\212\225ן", 34992833934375)
          local getPlayers = players:GetPlayers()

          table.sort(getPlayers, function(p9, p10)
            local v210 = f2("z\213>\216", 5931397633256)
            local v211 = f2("g\233\167Y", 31214918338481)
            local name2 = p9.Name
            local v212 = f2("\129\t\239\210\31", 35057566559130)
            return name2:lower() < p10.Name:lower()
          end)

          local total4 = 0

          for _, value9 in ipairs(getPlayers) do
            if value9 ~= localPlayer then
              local frame5 = Instance.new("Frame")
              frame5['$"\176\t'] = UDim2.new(1, -5, 0, 30)
              frame5['W"\178\132\156\n\183\153'] = UDim2.new(0, 0, 0, total4)
              frame5["\29\14\131\0\162i\25\28\\\\\195\8}\4ޜ"] = Color3.fromRGB(45, 45, 45)
              frame5.BorderSizePixel = 0

              f2("Y\222>,|u#\181", 5012923421653)
              f2("\181BPb\190\153", 5810085753998)
              f2("\244R\223e", 19538955611117)

              frame5.Parent = uP
              local instance17 = Instance
              f2("\170Q\144", 15787645306475)
              local new15 = instance17.new
              f2("\179\156\2\8+Iy\226", 22515699125097)
              new15("UICorner", frame5).CornerRadius = UDim.new(0, 4)

              f2("Ȑ\213Kd\29Ď", 25945231493227)
              f2("\25S\225\240\217", 5861984137662)

              local frame6 = Instance["\196&y"]("Frame")
              local udim215 = UDim2

              f2("\17\224{", 18662809604471)
              f2("\2323\220T", 28162180538593)

              local size6 = udim215.new(0, 18, 0, 18)
              f2("\131\130\196\20u", 20928833588309)

              frame6.Size = size6
              frame6.Position = UDim2.new(0, 6, 0.5, -9)

              f2("JRj\211\26\219", 26711321834927)

              frame6.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
              frame6.BorderSizePixel = 0

              f2("\231\226[!w\210", 4020810766422)
              f2("䡼v", 12722095328916)
              f2("*\211r\0\187G\11e", 34822886167227)

              frame6.Parent = frame5
              Instance.new("UICorner", frame6).CornerRadius = UDim["G\136\244"](0, 4)
              f2("\246\164\180^\162\131\148\149", 30577056799648)
              local instance18 = Instance
              f2("\235)]", 29281934228988)
              local new16 = instance18.new
              f2("\176SqR\6", 7751589755696)

              local textLabel5 = new16("TextLabel")
              textLabel5.Size = UDim2.new(1, 0, 1, 0)
              textLabel5["\152\11\17\n\192\155\14\3t2\156\204\11G\1447\7\24\233\139\239\29"] = 1
              textLabel5.Text = "✓"

              f2("\2019t׋\130\255ڊ\158", 16578475574415)
              f2("U\228\133\205%\176", 1419490732958)

              local color311 = Color3
              f2("\19I\28\240822", 19660125594293)
              local n3 = color311["n;\143\154\173\1663"]
              f2("7T\146\185", 10086608809230)

              textLabel5.TextColor3 = n3(50, 255, 50)
              textLabel5.TextSize = 14
              textLabel5.Font = Enum.Font.GothamBold
              textLabel5.Visible = map[value9.Name] ~= nil

              f2("t\2\215\249\154\148", 31202623965039)
              f2("E\211R߁", 18044153296445)

              textLabel5["\198Ec\210:\137"] = frame6
              local textLabel6 = Instance.new("TextLabel")
              local udim216 = UDim2

              f2("q\12BR", 24675989965120)
              f2("\n\17v", 1090076583967)

              local size7 = udim216.new(1, -35, 1, 0)
              f2("\r\253\158\129+", 8430956342429)

              textLabel6.Size = size7
              textLabel6["\19\157zr\237\28\183u"] = UDim2.new(0, 32, 0, 0)
              textLabel6.BackgroundTransparency = 1

              f2("P\151:\158\189\255\203\226\151ɀ", 9999797440450)
              f2("\174\14\236\230", 13497800095520)

              local name3 = value9.Name
              textLabel6.Text = value9.DisplayName .. " (@" .. name3 .. ")"
              f2("R\146ɆE\132", 4739860657303)
              textLabel6["\20\21\182\248]\170[3\179\196"] = Color3.fromRGB(220, 220, 220)
              f2("\1971\231\148", 18039573017759)
              textLabel6.TextSize = 13
              local enum8 = Enum
              f2("\226\250\16\150", 12756507547142)
              local font4 = enum8.Font

              f2("F\27[\208\201^", 27094801918322)
              f2("V\205[\152", 1455373477521)

              local gotham = font4.Gotham
              f2("i؎J", 14373799511639)

              textLabel6.Font = gotham
              textLabel6["\244T\2317\20^\171\155\235.\141\21ϊ"] = Enum.TextXAlignment.Left

              f2("tv]\202$\12\186-", 21199223978960)
              textLabel6.Parent = frame5

              local textButton7 = Instance.new("TextButton")
              textButton7["\173\243M\22"] = UDim2.new(1, 0, 1, 0)
              textButton7.BackgroundTransparency = 1

              f2("", 20663577963092)
              textButton7.Text = ""

              f2("\198\227߰\193T", 1497503463164)
              f2("S\158Q\22", 6576844544839)

              textButton7.ZIndex = 2
              f2("\254\186\217S\207\243", 1095871889710)

              textButton7.Parent = frame5

              textButton7.MouseButton1Click:Connect(function()
                if map[value9.Name] then
                  map[value9.Name] = nil
                  textLabel5.Visible = false
                else
                  map[value9.Name] = value9
                  textLabel5.Visible = true
                end

                UpdateStatus()
              end)

              v207[value9.Name] = { Entry = frame5, Checkmark = textLabel5 }
              total4 = total4 + 35
            end
          end

          f2("\159\230I\140d", 16851742527894)
          uP.CanvasSize = UDim2.new(0, 0, 0, total4)
        end

        local function getCount()
          local count = 0

          for _ in pairs(map) do
            count = count + 1
          end

          return count
        end

        function UpdateStatus()
          local count2 = getCount()

          if flag3 then
            textLabel4.Text = "Flinging " .. count2 .. " target(s) 💀"
            textLabel4.TextColor3 = Color3.fromRGB(255, 80, 80)
          else
            textLabel4.Text = count2 .. " target(s) selected"
            f2("\215\223\234\191x\208", 11095017841)
            textLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
          end
        end

        local function f8(p11)
          local v213 = f2("E\130J\135\21\228", 30848202939713)
          local v214 = f2("c\246\137\161\140;\12\244:\242", 28766250835926)

          for _, value10 in ipairs(players:GetPlayers()) do
            if value10 ~= localPlayer then
              local v215 = v207[value10.Name]

              if v215 then
                if p11 then
                  map[value10.Name] = value10
                  v215.Checkmark.Visible = true
                else
                  map[value10.Name] = nil
                  v215.Checkmark.Visible = false
                end
              end
            end
          end

          UpdateStatus()
        end

        local cframe

        local function f9(p12)
          local v216 = f2("\249\151\170Ow\18J\190\3", 26746633670328)
          local character3 = localPlayer.Character
          local humanoid4 = character3

          if character3 then
            f2("\193\138p\11r\203\5\194\6\21\235\163+*\154(q\251\235'\129", 18972879753665)
            humanoid4 = character3:FindFirstChildOfClass("Humanoid")
          end

          local v217 = humanoid4
          local rootPart = v217 and v217.RootPart
          local character4 = p12.Character

          if not character4 then
            return
          end

          local v218

          if character4:FindFirstChildOfClass("\244|\166\250>&\2298") then
            v218 = character4["@\137'\198W\244\162x/\2412\168թ\249#|\245+\2U"](
              character4, "Humanoid"
            )
          end

          local rootPart2

          if v218 and v218.RootPart then
            rootPart2 = v218.RootPart
          end

          local head4

          if character4["\152\0zDҊ\232\167o?\6\138\156m"](character4, "Head") then
            head4 = character4.Head
          end

          local accessory

          if character4:FindFirstChildOfClass("Accessory") then
            accessory = character4:FindFirstChildOfClass("Accessory")
          end

          local handle

          if accessory and accessory:FindFirstChild("Handle") then
            handle = accessory.Handle
          end

          local v219, v220, f10

          if character3 and v217 and rootPart then
            if rootPart.Velocity.Magnitude < 50 then
              cframe = rootPart.CFrame
            end

            if v218 and v218["\245D\228"] then
              f2("e/0D", 15683984354858)
              f2("\213\27\216\29\200\2_m\174\243S\4\214", 18477883954820)
              return notify("MONK HUB", p12.Name .. " is sitting!", 2)
            end

            if head4 then
              workspace["\131\170W\164\172\\\161\143\180\146\138\151+"].CameraSubject = head4
            elseif handle then
              workspace["\220g\147\250\217tq\172\216;\15Ik"].CameraSubject = handle
            elseif v218 and rootPart2 then
              workspace.CurrentCamera.CameraSubject = v218
            end

            if not character4:FindFirstChildWhichIsA("BasePart") then
              return
            end

            f2('@"\202\22<\129\4\rY', 2962961613481)

            function f10(p13, p14, p15)
              local v221 = f2("C\227\230\t\157˧y", 34815764236148)
              local v222 = f2("\143\230\5)\220\16", 16113747789502)
              local v223 = f2("Ur\129Y\218\203", 4319967709960)
              local v224 = _G["%\252\153ɍ\194"]
              local v225 = f2("\172@\6", 5607462402654)
              local v226 = v224.new(p13.Position)
              local v227 = f2("\162\193\25G\170%", 7407511399394)
              rootPart.CFrame = v226 * p14 * p15
              local cframe2 = CFrame

              f2("\248\249\184\197f\146\246\16", 10083105831875)
              f2("\178\191E", 1728402438852)

              local new17 = cframe2.new
              local position5 = p13.Position
              f2("u\0x+\235B\20\240IL\12b\247{\157[|ӥ\140", 26316843571001)
              local v228 = new17(position5)
              f2("LL\160^\142\178\210", 22997775495747)
              character3:SetPrimaryPartCFrame(v228 * p14 * p15)
              rootPart.Velocity = Vector3["G}\220"](90000000, 900000000, 90000000)
              f2("\144\31N^\250\15\17ݗb\231", 19803796778197)
              rootPart.RotVelocity = _G["\18\223`\\\218nV"].new(900000000, 900000000, 900000000)
            end

            local function f11(p16)
              local total5 = 0
              local v229 = tick()
              local v230

              repeat
                if rootPart and v218 then
                  if p16.Velocity["\188\141\185\16'd\181\221\14"] < 50 then
                    f2("N\245\166\155(\225\197y:\181ZL_", 2773272240343)
                    f2("#c\146\237\155\3", 28673938906956)

                    local cframe3 = CFrame
                    f2("ح\194", 17161468111488)
                    local new18 = cframe3.new
                    total5 = total5 + 100
                    f2("%ނ\7\0086q@", 23480897164195)
                    local v231 = new18(0, 1.5, 0)
                    local moveDirection = v218.MoveDirection
                    local velocity = p16.Velocity
                    f2("\17(\183\221\12\136.9\0", 29550360940592)
                    local magnitude = velocity.Magnitude
                    f2("\195\15\160\200ʅ", 7788647907274)
                    local cframe4 = CFrame

                    f2("\255\228k\18#\132", 11707107427999)
                    f2("\134\245\2191", 19550134422544)

                    local r = cframe4["r\145˲\254\167"]
                    local v232 = math
                    f2("_\169T", 3949834740788)
                    local rad = v232.rad
                    f2("҈\143\253A\17-\167", 30275931497872)
                    f10(p16, v231 + moveDirection * magnitude / 1.25, r(rad(total5), 0, 0))
                    f2("u\203)\162", 33033219694225)
                    local v233 = task
                    f2("\204\249\197E", 26534466780523)
                    local v234 = v233.wait
                    f2("tGr\175\140\184", 4715345848537)
                    v234()
                    f2("\239\242\23=\232\132\16\248\225\r\240\179\251", 30594461749333)
                    local cframe5 = CFrame
                    f2("@ˆ", 34088294221287)
                    local v235 = cframe5.new(0, -1.5, 0)
                    local moveDirection2 = v218.MoveDirection
                    local velocity2 = p16.Velocity
                    f2("\12:V\156\205\201\2\232b", 29915024034423)
                    local magnitude2 = velocity2.Magnitude
                    f2(".\244%\127", 14011289477249)

                    f10(
                      p16, v235 + moveDirection2 * magnitude2 / 1.25,
                      CFrame.Angles(_G["\238\145E\139"].rad(total5), 0, 0)
                    )

                    f2("5\241܈BF", 14594500739068)
                    task.wait()
                    f2("\195Cd\252\169u\128\130\214\29\195\241\t", 12987440333400)
                    local cframe6 = CFrame
                    f2("\15\12.", 9453108421520)
                    local new19 = cframe6.new
                    f2("\219/QD\215\252'\200", 20320899383150)
                    local v236 = new19(0, 1.5, 0)
                    local moveDirection3 = v218.MoveDirection
                    local velocity3 = p16.Velocity
                    f2("\193W\255ZP<\254@6", 3370982247971)
                    local magnitude3 = velocity3.Magnitude

                    f2(" s\251\178\235\11", 23125479288036)
                    f2("\29x\24\169", 30048660174345)

                    f10(
                      p16, v236 + moveDirection3 * magnitude3 / 1.25,
                      CFrame.Angles(math.rad(total5), 0, 0)
                    )

                    task["\141\136\188\128"]()
                    f2('\18"\28\159m\2', 1462765950407)
                    local cframe7 = CFrame
                    f2("\237\25\24", 23893861503324)
                    local new20 = cframe7.new
                    f2("\151\155t\1710\192\157\195", 6745287200445)
                    local v237 = new20(0, -1.5, 0)
                    f2("2Ջ\184\8\213Z\209\2ߵ\0167", 26614423473812)
                    local moveDirection4 = v218.MoveDirection
                    local iE = p16.Velocity["i\28\254\162\221E\132\n\144"]

                    f2("\143\226\239\27\147X", 8050214213037)
                    f2("\27nº", 34453187220196)

                    f10(
                      p16, v237 + moveDirection4 * iE / 1.25,
                      CFrame.Angles(math.rad(total5), 0, 0)
                    )

                    f2("v\142\169\222l\138", 13742073283236)
                    task.wait()
                    local cframe8 = CFrame
                    f2("\144m\176", 634610497662)
                    local v238 = cframe8.new(0, 1.5, 0)

                    f2("\28\166\163F\223\214+&\248\159\29\12\24", 34202091117185)
                    f2("\134\22S7", 24299461724669)

                    f10(p16, v238 + v218.MoveDirection, CFrame.Angles(math.rad(total5), 0, 0))

                    f2("g)5\17", 7218582368968)
                    f2("1\178\169I\221q", 14702609628669)

                    task.wait()
                    local cframe9 = CFrame
                    f2("\1939I", 33025157073125)
                    local v239 = cframe9.new(0, -1.5, 0)
                    local v240 = v218
                    f2("Zi{7}\255\23\187\136k+\156\241", 5582642549095)
                    local moveDirection5 = v240.MoveDirection

                    f2("\183\159\144\141\219\22", 24355196703953)
                    f2("h\188\0\239", 19156517644600)

                    f10(p16, v239 + moveDirection5, CFrame.Angles(math.rad(total5), 0, 0))
                    task.wait()
                  else
                    f2("\202\202\12j\231\6", 21395978101008)
                    local kKy = _G["@kKy\20\219"]
                    f2("\1\197\245", 33953160926642)
                    local new21 = kKy.new
                    f2("\175=\3\180\214\222g\n\221", 14283284086644)
                    local v241 = new21(0, 1.5, v218.WalkSpeed)

                    f2("\137\141\152\211S\15", 17563909110260)
                    f2("\19\250\163b", 3301293869178)

                    f10(p16, v241, CFrame.Angles(math.rad(90), 0, 0))
                    task.wait()
                    f2('\253\206>\152S"', 27912786768029)
                    local cframe10 = CFrame
                    f2("\0ب", 31762053863916)
                    local v242 = cframe10.new(0, -1.5, -v218.WalkSpeed)

                    f2("b\146Ӳ2\27", 6898465741657)
                    f2("b\149j\5\0v\215D\163", 17959229790139)

                    local cframe11 = CFrame
                    f2("\151k<\178»", 15495824651188)
                    local v243 = { cframe11.Angles(f2, 0, 0) }
                    f2("ҡ\225\136", 7415535323595)
                    f10(p16, v242, unpack(v243))
                    task.wait()
                    f2("\247\237{\149\249\240", 22975685720875)
                    local cframe12 = CFrame
                    f2("?ޛ", 16560039888665)
                    local v244 = cframe12.new(0, 1.5, v218.WalkSpeed)

                    f2("@\127^\168\198t", 14054267521370)
                    f2("\2181\247\136", 33821470131943)

                    local cframe13 = CFrame
                    f2("g\169\25\206\12\215", 25778381194919)
                    local angles = cframe13.Angles
                    local v245 = math
                    f2("u_\203", 25050408914428)
                    local v246 = { angles(v245.rad(90), 0, 0) }

                    f2("\205e΄", 14820857466998)
                    f2("!\140[9", 21796122472003)

                    f10(p16, v244, unpack(v246))
                    local v247 = task
                    f2("\5\0191A", 2871723619215)
                    local v248 = v247.wait
                    f2("\0160\20OU\255", 16590100703051)
                    v248()
                    local cframe14 = CFrame
                    f2("K\194_", 30478471284616)
                    local v249 = cframe14.new(0, -1.5, 0)
                    f2("Z=|\168\243\223", 31966284228207)
                    local cframe15 = CFrame
                    f2("\147\255\208Sk\163", 2986808815808)
                    local angles2 = cframe15.Angles
                    local v250 = math
                    f2("d>,", 21163273507891)
                    local v251 = { angles2(v250.rad(90), 0, 0) }
                    f2("\181\21p\215", 23373035565521)
                    f10(p16, v249, unpack(v251))
                    task.wait()
                    f2("\221V\245!\11.", 24362311647871)
                    f10(p16, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                    f2('"\t\146U', 15805887886720)
                    local v252 = task

                    f2("d\7(\t", 24445609101801)
                    f2("\167\22030", 11828169548301)
                    f2("Ƿ\138R\148\223", 17360668510462)

                    v252["U\11\217y"]()
                    f10(p16, CFrame.new(0, -1.5, 0), CFrame.Angles(math["\167o\127"](90), 0, 0))
                    f2("\218A:*b\232", 23866129821185)
                    task.wait()
                    f10(p16, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                    task.wait()
                  end
                end

                v230 = v229 + 2 < tick() or not flag3
              until v230
            end

            workspace.FallenPartsDestroyHeight = (0 / 0)
            f2("\167\171\180\178\140q\225\26", 11398700411173)
            local instance19 = Instance
            f2(" T\157", 10783844372876)
            local new22 = instance19.new

            f2('\8"\166\210\195u\2\243}\231l!', 30165398265972)
            f2("n\244i\2311\180\29", 25256901511759)

            local bodyVelocity = new22("BodyVelocity")
            bodyVelocity.Parent = rootPart
            bodyVelocity.Velocity = Vector3.new(0, 0, 0)

            f2("\249\254\157G\215~\242", 34505896995499)
            bodyVelocity.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
            f2("\tTp\210", 5608191759176)
            v217:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

            if rootPart2 then
              f11(rootPart2)
            elseif head4 then
              f11(head4)
            elseif handle then
              f11(handle)
            else
              f2("hK\30\19", 2465117746130)
              return notify("MONK HUB", p12.Name .. " has no valid parts", 2)
            end

            f2("\253b9ߍ\226\204", 25456467954547)
            f2("\20up&", 7547093161549)

            bodyVelocity:Destroy()
            v217:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            workspace.CurrentCamera.CameraSubject = v217

            if cframe then
              repeat
                f2("\171\163\19\243\217k", 19757752344569)
                local v253 = cframe
                f2("\187\235ߓ\164N", 33581832541110)
                local x3 = _G["\218\216\235\173\19X"]
                f2("\199\233\246", 1244592882908)
                local v254 = x3.new(0, 0.5, 0)
                f2("\23\222\12\148n\2", 33551743788185)
                rootPart.CFrame = v253 * v254
                local v255 = cframe
                local cframe16 = CFrame
                f2("\2308}", 29952195307085)
                character3:SetPrimaryPartCFrame(v255 * cframe16["\200\240["](0, 0.5, 0))

                f2("\183\130\t\248\\Pc\251\130\214\223", 26961357911888)
                f2("\142\188\189<\209}\23\199\242\148\138", 6503885198451)

                v217:ChangeState("GettingUp")
                f2("a3\30\142<", 2289684467319)

                for _, value11 in pairs(character3:GetChildren()) do
                  if value11:IsA("BasePart") then
                    f2("5\252\146a\131$\191\207", 13004394163252)
                    f2('\139\128\222/\25"\248', 28642749565092)
                    f2("\181C\190\r\142\150\191", 14842934659277)

                    local vector = Vector3.new()
                    local vector2 = Vector3.new()

                    value11.Velocity = vector
                    value11.RotVelocity = vector2
                  end
                end

                v219 = "\164"
                f2("\224_\130G", 32028564919190)
                local v256 = task
                f2("[Ì\1\22:%\166", 14918504886421)
                v220 = "Position"
                v256.wait()
              until (rootPart[v220] - cframe[v219]).Magnitude < 25

              f2("#]\136\147\\Ȩ\239l", 34448631554594)
              workspace.FallenPartsDestroyHeight = fallenPartsDestroyHeight
            end

            return
          end

          return notify("MONK HUB", "Your character is not ready", 2)
        end

        f2("\31\131\249r\24\245\249\210\246\145\246\173j\159\14g\152", 5876160489711)

        textButton3.MouseButton1Click:Connect(function()
          if flag3 then
            return
          end

          local count3 = getCount()

          if count3 == 0 then
            f2("-\230.ҹ(VEOa\190\180\26\20׹D\17H\160", 34653888271001)
            textLabel4.Text = "r\133\246~^%4\168s\206&h\222{7\180:%\175p"
            task.wait(1)
            textLabel4.Text = "Select targets to fling"
            return
          end

          f2("z\11v\214\7\206\23YL\254\169\12&", 19963507395654)
          f2("\178,\25\188\156\162G\195[\143\184[", 8955031720815)

          flag3 = true
          UpdateStatus()
          notify("MONK HUB", "Flinging " .. count3 .. " targets 💀", 2)

          task.spawn(function()
            while flag3 do
              local map2 = {}

              for key2, value12 in pairs(map) do
                if value12 and value12.Parent then
                  map2[key2] = value12
                else
                  map[key2] = nil
                  local v257 = v207[key2]

                  if v257 then
                    v257.Checkmark.Visible = false
                  end
                end
              end

              for _, value13 in pairs(map2) do
                if flag3 then
                  f9(value13)
                  task.wait(0.1)
                else
                  break
                end
              end

              UpdateStatus()
              task.wait(0.5)
            end
          end)
        end)

        textButton4.MouseButton1Click:Connect(function()
          if not flag3 then
            return
          end

          f2("\172H\162`Ħ\218L\6", 34099425551194)
          f2("\15\132\228\199Ȏ\7\143\225\179P\255", 26078211278443)

          flag3 = false
          UpdateStatus()
          notify("MONK HUB", "Multi-Fling Stopped.", 2)
        end)

        textButton5.MouseButton1Click:Connect(function() f8(true) end)
        textButton6.MouseButton1Click:Connect(function() f8(false) end)

        textButton2.MouseButton1Click:Connect(function()
          local v258 = f2("\147\248ע0\162b", 31883138798917)
          local v259 = f2("\252\25\212I\177", 30050759705974)
          frame.Visible = false
          f2("\16\185\187\5\151\212W\187", 33685922545529)
          local udim217 = UDim2
          f2("\212@\248\213\4KF\132>\137\175\213p\133$!", 34392124429997)

          frame2.Position = udim217.new(
            0, frame.AbsolutePosition.X, 0, frame.AbsolutePosition.Y
          )

          frame2.Visible = true
        end)

        f2("?`\228˸·Ir\6\190\211\21hq\235\225", 31813488279070)

        textButton.MouseButton1Click:Connect(function()
          local v260 = f2("\172\238\232ms", 29123420330268)
          frame2.Visible = false
          f2("\223,V\142\131\229\251\184", 32702875540615)

          frame.Position = UDim2.new(0, frame2.AbsolutePosition.X, 0, frame2.AbsolutePosition.Y)
          frame.Visible = true
        end)

        f2("\224\17\189\156\204'\234\153\232\253\19", 1291586811986)
        players.PlayerAdded:Connect(makeTextButton)
        f2('\255\203_9R\130\166\n\164\155;\179\143"', 28175722115197)
        local eVPU = players["e]\172*\187~VP\203\14U \220^"]
        f2("1\171\1914\254$I", 26838281813643)

        eVPU:Connect(function(p17)
          if map[p17.Name] then
            map[p17.Name] = nil
          end

          makeTextButton()
          UpdateStatus()
        end)

        makeTextButton()
        UpdateStatus()
        notify("MONK HUB 👑", "MONK MULTI-FLING GUI LOADED! 💀", 4)
      end)
    end)

    f2("", 31469622608833)
    local v261

    createInputBox("Troll Target Name", "", false, function(p18)
      v261 = f7(p18)

      if v261 then
        notify("Target Set", v261.Name, 2)
      else
        notify("Not Found", "Player not found", 2)
      end
    end)

    createInputBox("Bang Speed (default 1)", 1, true, function(p19)
      v177 = tonumber(p19) or 1
    end)

    f2("P\31XUR\3Z\25\179\151\138", 12792195389633)

    createButton("GOTO TARGET", function()
      if v261 and v261.Character and v261.Character:FindFirstChild("HumanoidRootPart") then
        local character5 = localPlayer.Character
        local v262 = character5

        if character5 then
          local character6 = localPlayer.Character

          v262 = character6["h/\n+\183\231N\21\185rR`E\218"](
            character6, "\222]+\181\233/w\189\17H#:\130ל\198"
          )
        end

        local v263 = v262

        if v263 then
          v263.CFrame = v261.Character.HumanoidRootPart.CFrame
        end
      else
        f2("W*TP\217", 5183516656557)
        notify("Error", "Select a valid target first!", 2)
      end
    end)

    f2("\245V\220\214h\22\235٥\155m", 8807327002104)
    f2("\4cUt!\132", 24350891654448)

    createToggle("VIEW TARGET", false, function(viewTarget)
      v178.ViewTarget = viewTarget

      if viewTarget and v261 and v261.Character then
        local humanoid5 = v261.Character:FindFirstChildOfClass("Humanoid")

        if humanoid5 then
          workspace.CurrentCamera.CameraSubject = humanoid5
        end
      elseif localPlayer.Character then
        f2("\8Z\129\132\136\245{\180\233", 27341478558841)
        local character7 = localPlayer.Character
        f2("I\1484\n\27\137*G", 26798450400252)
        local xW = character7:FindFirstChildOfClass("\171\233\231X\28\14\29w")

        if xW then
          workspace.CurrentCamera.CameraSubject = xW
        end
      end
    end)

    createToggle("BANG", false, function(bang)
      v178.Bang = bang

      task.spawn(function()
        while v178.Bang do
          task.wait()
        end
      end)
    end)

    createToggle("FACE BANG (Mouth)", false, function(mouthBang)
      v178.MouthBang = mouthBang

      task.spawn(function()
        while v178.MouthBang do
          task.wait()

          pcall(function()
            if v261 and v261["\147+\23;Ԫw\184\\"] and v261.Character:FindFirstChild("Head") then
              local humanoidRootPart = localPlayer.Character
                and localPlayer.Character:FindFirstChild("HumanoidRootPart")

              if humanoidRootPart then
                f2("\172\217\228\143,\222", 9602969861489)
                local v264 = v261
                f2("=\176NJj\n\2292j", 16464884479703)
                local character8 = v264.Character
                f2("\164+\205\238", 30737354763810)
                local head5 = character8.Head

                f2("N\2g\169\163\28", 12033942213550)
                f2("~\187O\141M>", 32440498367451)
                f2("C?R\182", 9889201060680)

                local cframe17 = head5.CFrame
                local cframe18 = CFrame
                f2("\159\137:", 23758857056802)
                local new23 = cframe18.new
                f2("L\229z\162", 15412033614399)
                local v265 = math
                f2("\148\t\159", 22213223834659)
                local v266 = new23(0, 0.2, -1.2 - v265.sin(tick() * (v177 * 20)) * 0.8)
                f2("6N\138\171", 3482102542371)

                humanoidRootPart["\137\246.M<\218"] = cframe17 * v266
                  * CFrame.Angles(0, math.pi, 0)
              end
            end
          end)
        end
      end)
    end)

    createToggle("HEADSIT", false, function(headsit)
      v178.Headsit = headsit

      task.spawn(function()
        while v178.Headsit do
          _G["\162\196i\30"]["\n"]()
        end
      end)
    end)

    createToggle("FRONTHEADSIT", false, function(frontHeadsit)
      v178.FrontHeadsit = frontHeadsit

      task.spawn(function()
        while v178.FrontHeadsit do
          f2("\1844\156\215", 17729363842422)
          local v267 = task
          f2("u\19ƥ", 17855251722055)
          v267.wait()
        end
      end)
    end)
  end

  do
    f2("\169\135\199\231\245ڟ#\\\24647\186B\242\185\1917\144\243oB\128\29", 30188481230866)
    local color312 = Color3
    f2("\185\17\182-\252zJ", 35053103702576)
    local v268 = color312["\250cWU)l+"](0, 255, 120)
    f2("9?Yri׫", 30991587206121)
    createLabel("\229\146z\231ťg\2202\0213R\138\141\243\181\26C\12\185ɌX\29", v268, 30)

    createButton("&\154:\249N*\227\228ku \209i\189y\187?\135\135[\242\176]\171\160\30\165v\210\203\226ia", function()
      task.spawn(function()
        local ok3, result3 = pcall(function()
          local v269 = f2(
            "\246r\212\243\198\202\31\1485\234\204>\12\155&\217z\127\154\233ұ\186\242<\3\17\172\137\155\159&⒍\156V\196\18\141@ \247\136\1931R%:\2166z\26\30\23z\171.\246ȽE\193\188\29\213ΔJ\139FZ\156\130T\226<\233\231=\171Q\30\197X\251\173T\205Wԃ\136v\239\201'\12\187\n\21\1288\187Zn\153\252\161\161\135\171\169\191\152ߥ]U\236V\28\11W\194G\166)\183\206\0235\255\245\158\26D\203\243\\\1270\6\229Y",
            26664135964282
          )

          local v270 = f2("\148\tϼ\190\208)\154\190\215", 32718453432796)
          local v271 = loadstring
          local v272 = f2("j\228.\18", 31825376952593)
          local v273 = f2("\242\255,\24\140\12\11", 29334388045122)
          v271(game:HttpGet("https://gist.githubusercontent.com/MONK-8535/54552fee1b9c934e73bb4917d568566d/raw/6ceb04b426aca5f00f9dc18f30883757bfc03b12/Choco_edition_obf.lua"))()
        end)

        if ok3 then
          notify("Choco Spammer", "Loaded successfully! 💯", 3)
        else
          f2("g\28\148\239\242\227ˉ", 28175769378528)
          f2("\188>I\164Ib\242\154\240m\8\149b\11\207O\239;4\151\229P\250t\234", 19223871103091)

          notify("Error ❌", "e\154\173X\232\208`|1\198w\252T\240\26\246(\153;½\140@\14\142"
            .. _G["Jn\253l\138\167\226w"](result3), 4)
        end
      end)
    end)

    createButton("MONK ULTIMATE TRAPPING 2.0 😋💥", function()
      task.spawn(function()
        local ok4, result4 = pcall(function()
          local v274 = f2("N\145C\246\153\252q\248\165\199", 8259024663155)
          local v275 = f2("\172\224\232\226", 20851184105194)
          local v276 = loadstring
          local v277 = f2("\236?\159\134r\191{", 16102875429972)
          local v278 = game

          v276(v278["\246<\209\7\r-\r"](
            v278,
            "*\4\249ĭ>5\251\25\11g\6\164\217\0119ڿC}\160\138@\171\230\2288\150\2413KVr\166\184\154߰o\194{\191\253\224J\184e\237\21\16\17\210\23\2\167\162\131I#c\2070GK\147\181q\253J$\193\25V!\172\128Nt\127{\183\30\6\144\31zr\184=\224\158\130\23\213^\t\2024\149\136Jo\15\227\206\1X\172ެ\164uS\221v\135\249\145W\185[\197ݑ\167\242\127ƽ2\181\rcѢ\155\226\255\219\12\226|i\201j"
          ))()
        end)

        if ok4 then
          notify("Ultimate Trapping 2.0", "Loaded successfully! 💥", 3)
        else
          f2("B\19uu\22\140\238 ", 26149533520618)
          f2("\134\218k\18\251\237՞w", 9723723639842)

          notify("Error ❌", "\130\153\131\197\229\222\2288\197\229t-\233\137\r\231\207\218\249\235"
            .. tostring(result4), 4)
        end
      end)
    end)

    createInputBox("Realistic Gravity", MONKSTATE.Gravity, true, function(gravity)
      MONKSTATE.Gravity = gravity
    end)

    createToggle("Float (Platform Logic)", MONKSTATE.Float, function(float)
      MONKSTATE.Float = float
    end)

    createToggle("Anti-Void (FE)", MONKSTATE.AntiVoid, function(antiVoid)
      MONKSTATE.AntiVoid = antiVoid
    end)

    f2("|\166\180\179t\253\t\179\156\144~", 20080446610057)
  end

  do
    f2("ȣ/\135\180\30", 519093605247)
    local noclip = MONKSTATE.Noclip

    f2("\30\20_\0062\222M\170\171", 31616283634127)
    f2("\31K\224g\15\170J\247$\210", 33731804728678)

    createToggle("Noclip (FE)", noclip, function(noclip2)
      MONKSTATE.Noclip = noclip2

      if noclip2 then
        table.clear(MONKSTATE.NoclipParts)

        if localPlayer.Character then
          f2("}ݶg\181\213", 24604122542518)

          for _, value14 in ipairs(localPlayer.Character:GetDescendants()) do
            if value14:IsA("BasePart") then
              f2("\202z\236\25\190", 26003347417890)
              local v279 = table
              f2("\19[u#\164\213", 22881710905839)
              v279.insert(MONKSTATE.NoclipParts, value14)
            end
          end
        end
      else
        for i6 = 1, #MONKSTATE.NoclipParts do
          local instance20 = MONKSTATE.NoclipParts[i6]

          if instance20 and instance20.Parent then
            instance20.CanCollide = true
          end
        end

        f2("07\4\222\232\r>pO\174\206", 5940325315850)
        table.clear(MONKSTATE.NoclipParts)
      end
    end)

    f2("m \214aq", 16330920188906)
    f2("\167\194\\\203I\127\23B\28\137\221\214>\162\220", 33603173133726)

    local antiFling = MONKSTATE.AntiFling
    f2("1\221\5\14\221\234-\31\242\153\14\247", 19347187958262)

    createToggle("Anti-Fling (FE)", antiFling, function(antiFling2)
      MONKSTATE.AntiFling = antiFling2
    end)

    createToggle("Anti-Car Fling (FE)", MONKSTATE.AntiCarFling, function(antiCarFling)
      MONKSTATE.AntiCarFling = antiCarFling
    end)

    createToggle("Anti Sit (Hard Eject)", MONKSTATE.AntiSit, function(antiSit)
      MONKSTATE.AntiSit = antiSit
    end)
  end

  f2("\138\178\213D\31\252\242\133\213ߵ\171w \170\146\188", 33116813258057)
  local flag4 = false
  local MONKSafeSpotGui, MONKSafeSpotBase, v280

  createToggle("🛡️ Safe Spot", false, function(p20)
    local safeSpotTPButton, v281, v282, v283, position6, position7

    if p20 then
      sendChatMessage("-------///MONK LIFE HUB SAFE SPOT LOADED 🔱✨///------")
      f2("r{\225W\172\204\27", 7931987443101)
      v281 = _G[",:Ɏ\1&\249"].new(5000, 1000, 5000)
      local vector3 = Vector3.new(100, 1, 100)
      local position8 = v281 - Vector3.new(0, 5, 0)

      if MONKSafeSpotBase and MONKSafeSpotBase.Parent then
        f2("\175xa/\231_\236", 3144220279108)
        MONKSafeSpotBase:Destroy()
      end

      if MONKSafeSpotGui and MONKSafeSpotGui.Parent then
        MONKSafeSpotGui:Destroy()
      end

      f2("\17\194\157cNP\234U", 19509476543562)
      local instance21 = Instance

      f2("\187?v", 11179111581848)
      f2("\236T\252h", 29128925058075)

      local new24 = instance21.new
      f2("7\247xK\183Z\242\186-\159\245vd\220:\253\231", 26110013374522)

      MONKSafeSpotBase = new24("Part")
      MONKSafeSpotBase.Name = "MONKSafeSpotBase"

      f2(":\1278\253", 33008118919507)
      f2("\232-\161k\21\211\193_\174\17", 3458754760857)

      MONKSafeSpotBase.Size = vector3
      MONKSafeSpotBase.Position = position8
      MONKSafeSpotBase.Anchored = true
      MONKSafeSpotBase.BrickColor = BrickColor.new("Earth green")

      f2("oH\14P\193\228\199%\201\28\22Ŗӷ*", 30133867744218)

      MONKSafeSpotBase.CanCollide = true
      MONKSafeSpotBase.Parent = v36

      MONKSafeSpotGui = Instance.new("ScreenGui")
      MONKSafeSpotGui.Name = "MONKSafeSpotGui"
      MONKSafeSpotGui.ResetOnSpawn = false
      MONKSafeSpotGui.ZIndexBehavior = _G["Y\198l\232"]["(#\189\214\219\228\233\151^*\140\190\255+"].Sibling
      MONKSafeSpotGui.Parent = guiParent

      f2("\171\20\247\244\17{x\231", 8302937695793)
      local instance22 = Instance
      f2("wj\138", 11672828735516)
      local new25 = instance22.new
      f2("\210\237\27\169\163\132K\134E\245", 22194233520108)
      safeSpotTPButton = new25("\179?ds\144>\136\194\159\160")

      f2("=4\127\177\19", 17856821250187)
      f2("\229\219\29\130\127\254\148L\135\19N\176\134\19\5H", 410009806213)

      safeSpotTPButton.Name = "SafeSpotTPButton"
      safeSpotTPButton.Size = UDim2.new(0, 50, 0, 50)

      f2("\216V-c\227", 19382505068007)
      local udim218 = UDim2
      f2("\148\232_", 19492117875584)

      safeSpotTPButton.Position = udim218.new(0, 150, 0, 10)
      safeSpotTPButton.BackgroundColor3 = Color3["\2344\no\230O\16"](0, 200, 0)

      f2("\220\193\234\7\147\1", 21687940502265)

      safeSpotTPButton.Text = "TP"
      safeSpotTPButton.TextColor3 = Color3.fromRGB(255, 255, 255)

      f2('$l"\163Q\172>Iyn', 7412260108783)
      f2("\225mo_", 13589278433962)

      safeSpotTPButton.Font = Enum.Font.GothamBold
      safeSpotTPButton.TextSize = 20
      safeSpotTPButton.ZIndex = 50
      safeSpotTPButton.Parent = MONKSafeSpotGui

      f2("~r\185\237K\195z\251", 9238918603360)
      local instance23 = Instance
      f2("\208\239\175", 9615132243988)
      local new26 = instance23.new

      f2("\168\170\7귢\201\225", 28269869847123)
      f2("\151\240D\17", 8011706706601)

      local v284 = new26("UICorner", safeSpotTPButton)
      local udim6 = UDim

      f2("\192\142͗\23ܾP\137\12\191U", 27598094776434)
      f2("M\26*", 18066199190968)

      local cornerRadius5 = udim6.new(0, 8)
      f2("\135z\200}\26x\139n", 34856371096212)
      v284.CornerRadius = cornerRadius5
      local instance24 = Instance
      f2("b8\211", 3384712741255)
      local v285 = instance24.new("UIStroke", safeSpotTPButton)

      f2(
        "\161\149\140\239Yg\1\185J\r\168\239\140\12B\175J\198q.\151\232\213:8\150Te\204\26/\171.",
        31569825492275
      )

      f2("\154\224v\255׾", 4159522878204)

      v285.Color = Color3.fromRGB(0, 255, 120)
      v285.Thickness = 2

      v282 = nil
      v283 = nil
      position6 = nil
      position7 = nil

      safeSpotTPButton.InputBegan:Connect(function(input3)
        local v286 = f2("\191\184\133\16\251Ζ\163\213\232\8\1\205", 22862963992971)
        local v287 = f2("\155\207e:", 7453623563881)

        if input3.UserInputType == Enum["L\128B\225tw?I\176\168\5c\217"].MouseButton1
          or input3.UserInputType == Enum.UserInputType.Touch then
          f2("\190;0.$\6\2399", 5373664972124)
          v282 = true
          f2("\189О#\0\130\156", 531509340565)
          position6 = input3.Position
          position7 = safeSpotTPButton.Position

          input3.Changed:Connect(function()
            local v288 = f2("`\208\249/\237\245BeMkܠe\143", 29724340292251)
            local v289 = f2("w\211\28\27", 7981168167201)

            if input3.UserInputState == Enum.UserInputState.End then
              v282 = false
            end
          end)
        end
      end)

      f2("\153\144lhH\26/\16\198\31G\246", 30145295019587)

      safeSpotTPButton.InputChanged:Connect(function(input4)
        local v290 = f2("\249\19R\4", 21637591333047)

        if input4["\184L\140\164\132\172#\16\128|\14Je"] == Enum.UserInputType.MouseMovement
          or input4.UserInputType == Enum.UserInputType.Touch then
          v283 = input4
        end
      end)

      userInputService.InputChanged:Connect(function(input5)
        if input5 == v283 and v282 then
          f2("\241\231\245Ֆ\142\177h", 19356511705713)
          local position9 = input5.Position

          f2("\146", 34975988517951)
          f2("/\218\16\192\207", 11863302990502)

          local v291 = position9 - position6
          local udim219 = UDim2

          f2("\224Z\133!\238\197\207G", 22710603546397)
          f2("\243", 20279016786136)
          f2("\151#\163", 13547688688123)

          local new27 = udim219.new
          local x4 = position7.X
          f2("\19ڍ\242\218", 931374879331)
          local scale2 = x4.Scale
          local x5 = position7.X
          f2("\217B8\167i\161", 29607948622649)
          local offset = x5.Offset
          f2("\213", 23081903295784)

          safeSpotTPButton.Position = new27(
            scale2, offset + v291.X, position7.Y.Scale, position7.Y.Offset + v291.Y
          )
        end
      end)

      f2("\225\r\243\18璉\n'\138k\201>\172\"{ ", 9923740778823)

      local mouseButton1Click = safeSpotTPButton.MouseButton1Click

      mouseButton1Click["߲eL\26\150\205"](mouseButton1Click, function()
        local character9 = localPlayer.Character
        local humanoidRootPart2 = character9 and character9:FindFirstChild("HumanoidRootPart")

        if not humanoidRootPart2 then
          return
        end

        if not flag4 then
          f2("Ǖk\218\5\11", 4869034099954)
          f2("\219:\14W\207N\235\30", 7708487208743)

          local position10 = humanoidRootPart2.Position
          f2("k\162.\20\156\243", 25328036516182)
          v280 = position10
          humanoidRootPart2["$\5\12\17Y\187"] = CFrame.new(v281)
          flag4 = true
          f2("B\31|\16M{", 33916385047837)
          safeSpotTPButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
          f2("~Cy\27", 6573544520240)
          safeSpotTPButton.Text = "BACK"
          notify("Safe Spot 🛡️", "Teleported to Safe Spot!", 3)
        else
          if v280 then
            f2("\166\157\224\162,\232", 2333987371652)
            humanoidRootPart2.CFrame = CFrame.new(v280)
          end

          f2("\180\243\5\31\30\226#=\171Y\245]\157I\157\239", 19786683085637)
          flag4 = false
          f2("\236\216(\208F/", 861262333594)
          local color313 = Color3
          f2("\247\232\17\161\183:|", 33616379085493)
          local backgroundColor33 = color313.fromRGB(0, 200, 0)
          f2("\n>", 4885766823860)

          safeSpotTPButton.BackgroundColor3 = backgroundColor33
          safeSpotTPButton.Text = "TP"

          notify("Safe Spot 🛡️", "Returned to original position!", 3)
        end
      end)

      notify("Safe Spot 🛡️", "Safe Spot Enabled! Use TP button.", 4)
    else
      if MONKSafeSpotGui then
        MONKSafeSpotGui:Destroy()
        MONKSafeSpotGui = nil
      end

      if MONKSafeSpotBase then
        f2("G\199\250\nI\228!", 24954624466565)

        local v292 = MONKSafeSpotBase
        v292["\14\233ڔj|\207"](v292)

        MONKSafeSpotBase = nil
      end

      if flag4 then
        local character10 = localPlayer.Character

        local hFCGW = character10

        hFCGW = character10
          and character10:FindFirstChild("\147\154H\30F\1CG\179\232)w\161\25\211\250")

        if hFCGW and v280 then
          f2("-=\221jMy", 31731677961163)
          hFCGW.CFrame = CFrame.new(v280)
        end

        flag4 = false
        v280 = nil
      end

      notify("Safe Spot 🛡️", "Safe Spot Disabled.", 3)
    end
  end)

  local v293 = false

  createToggle("🛡️ Anti Bang V1", false, function(p21)
    v293 = p21

    if p21 then
      sendChatMessage("|\175\129a\231&\170\250㯇1E\31w\238\237hfp+\157R\231\0110\226\138\n\7\11\139\12!\22\15\241\236\155i\154'\201#^\30v@\207v%\153\215C\148\242\210\25")
      notify("Anti Bang V1", "Push protection enabled!", 3)

      task.spawn(function()
        while v293 do
          task.wait(0.1)
        end
      end)
    else
      notify("Anti Bang V1", "Disabled.", 2)
    end
  end)

  f2("\242N\241\253=\176-\1472\196r\232`\171\145\17\247\204\nL\226q>\168.", 24364994272955)
  local v294 = false

  createToggle("🛡️ Anti Bang V2 (TP)", false, function(p22)
    v294 = p22

    if p22 then
      sendChatMessage("-------///MONK LIFE HUB ANTI BANG LOADED 🔱✨///------")
      notify("Anti Bang V2", "TP flicker protection enabled!", 3)

      task.spawn(function()
        while v294 do
          pcall(function()
            local humanoidRootPart3 = localPlayer.Character
              and localPlayer.Character:FindFirstChild("HumanoidRootPart")

            if not humanoidRootPart3 then
              task.wait(0.1)
              return
            end

            f2("\tR\205b6\165", 10667071486245)
            f2("\188i\132\175}\\", 33984785124468)

            local cframe19 = humanoidRootPart3.CFrame
            humanoidRootPart3[" \242\184ҷ\18"] = cframe19 * CFrame.new(0, 1000, 0)
            task.wait(0.1)

            if not v294 then
              return
            end

            f2("3^\152\151", 10917490634830)
            humanoidRootPart3.CFrame = cframe19
            task.wait(0.1)

            if not v294 then
              return
            end

            f2("\246\204)\223\235\188", 25862052229234)
            f2("\238\254\225\241\160^", 6076012753532)

            local cframe20 = CFrame
            f2("\206Qi", 19565081539167)
            local v295 = cframe20.new(0, -1000, 0)
            f2("\219\200F\250", 32862394169886)
            humanoidRootPart3.CFrame = cframe19 * v295
            task.wait(0.1)

            if not v294 then
              return
            end

            f2("lW\164\27\231\189", 14713403374652)
            f2("|\145\179\203", 23988736545014)

            humanoidRootPart3.CFrame = cframe19
            task.wait(0.1)
          end)
        end
      end)
    else
      f2("S\189\4m\147\5\166\200\201", 25894350619925)
      f2("Qԭ\186\250\135#\141\25λ`", 32374295237870)
      notify("Anti Bang V2", "Disabled.", 2)
    end
  end)

  local v296 = false

  do
    local clamped2 = 1

    createInputBox("Fakeout Speed (1-50)", 1, true, function(p23)
      clamped2 = math.clamp(p23, 1, 50)
    end)

    createToggle("Auto Fakeout", false, function(p24)
      v296 = p24

      if p24 then
        sendChatMessage("-------///MONK LIFE HUB FAKE OUT LOADED 🔱✨///------")
        f2("_dɧXnZC\191\2521\180\26\t]\170\183k\2123)\17V\252", 3381722495370)
        notify("Auto Fakeout ", "Fakeout started! Speed: " .. tostring(clamped2), 3)

        task.spawn(function()
          while v296 do
            f2("\241\140*B", 25486067780834)
            local v297 = math
            f2("\255\242V", 21329268727789)
            local v298 = v297.max(clamped2, 0.1)
            f2("\204\7&\215", 14679983308377)
            local v299 = task
            f2("X\27L\186", 34777643910962)
            v299.wait(0.1 / v298)
          end

          pcall(function()
            local humanoidRootPart4 = localPlayer.Character
              and localPlayer.Character:FindFirstChild("HumanoidRootPart")

            if humanoidRootPart4 then
              f2("\228_,\171\31\193\134", 1022576252799)
              humanoidRootPart4.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            end
          end)
        end)
      else
        f2("\237\23\156o\248\243\2116", 15632640088636)
        notify("Auto Fakeout ", "Stopped.", 2)
      end
    end)

    createToggle("RGB Phone", MONKSTATE.RGBTool, function(rgbTool)
      MONKSTATE.RGBTool = rgbTool
    end)

    createToggle("Job Cycle", MONKSTATE.JobSpammer, function(jobSpammer)
      MONKSTATE.JobSpammer = jobSpammer
    end)

    local speed = MONKSTATE.Speed
    f2("\29׹c\14\251\250\233", 30239119010856)

    createSlider("Side To Side Speed", 10, 200, speed, function(speed2)
      MONKSTATE.Speed = speed2
    end)

    createSlider("Side To Side Distance", 1, 50, MONKSTATE.Distance, function(distance)
      MONKSTATE.Distance = distance
    end)

    f2("u\5\153\161\131\219\18ݷ\135", 21850348002726)

    createSlider(
      "\207G\16$\189\232\28[\153OxA\146\235\236\226\127\236#%\170ׅ", 0.1, 1,
      MONKSTATE.Smoothness, function(smoothness) MONKSTATE.Smoothness = smoothness end
    )

    f2("j0w8\3\12\27\147\204\2492A", 18297899729864)
  end

  do
    f2("\253\198\227\172g\14\192WmƋ\1943\194\244\202\23{+\196ɵqY", 15168623468212)
    f2("3\200G8Ź;A\169\255$\23&õ", 12794252442542)

    local glitchActive = MONKSTATE.GlitchActive
    f2("I\142\227a\163^\191\162\249:8\148", 7970941694130)

    createToggle("Side To Side Glitch (FE)", glitchActive, function(glitchActive2)
      MONKSTATE.GlitchActive = glitchActive2
    end)

    f2(
      ",\133,Џ\12\165w\31\23+\207d.\208\202\27\214\254\227\166ߣ\149\227\27\233`\226\245b",
      4398575852854
    )

    local v300 = MONKSTATE['"\207]{\1330/\2Yα\2']
    f2("z\181k\138\193S\130\221\210\7Ӹ", 30321258595432)

    createToggle("Smooth Side To Side Glitch (FE)", v300, function(p25)
      MONKSTATE["\182\199\230\179\18\159`\127\157\182؉"] = p25
    end)

    local v301

    createToggle("Walking Fling (Fixed)", MONKSTATE.WalkingFling, function(oOP)
      MONKSTATE["\155\176\148o\24\229o\153\229\180\250P"] = oOP
      f2('\186\n"\1346YhOg\148Y', 29514808768325)
      local localPlayer2 = players.LocalPlayer

      if oOP then
        local heartbeat = runService.Heartbeat

        v301 = heartbeat["\182\135ed\1638\14"](heartbeat, function()
          pcall(function()
            if not MONKSTATE.WalkingFling then
              return
            end

            f2("\226G\16V!", 23442427251249)

            for _, value15 in pairs(players:GetPlayers()) do
              if value15 ~= localPlayer2 and value15.Character then
                f2("\209+.had\166\197X", 7969947184646)
                f2("\161\132\232\236\231", 10695103005658)

                local v302 = pairs
                f2("\246\0016\222\231K\202\246\142N\246\238\191\238", 34101440742112)

                for _, v303 in v302(value15.Character:GetDescendants()) do
                  if v303:IsA("BasePart") then
                    v303.CanCollide = false
                  end
                end
              end
            end

            if localPlayer2.Character
              and localPlayer2.Character:FindFirstChild("HumanoidRootPart") then
              f2("\0252eJ\167\r*\243\189", 15439428882332)
              f2("\1553a\11N\187\146\183`", 18129605751613)

              local character11 = localPlayer2.Character

              f2("D\202\227v\138\245\245", 3553792832587)
              f2("#\150ʸ\20\23Z\222\235\178^\235\14\0205\189", 5153567113594)
              f2("\144\250\26\186)\197P~", 12925465603594)

              local humanoidRootPart5 = character11.HumanoidRootPart
              local velocity4 = humanoidRootPart5.Velocity
              humanoidRootPart5.Velocity = Vector3.new(100000, 100000, 100000)
              f2("\19\243Js\26", 12005056996584)

              for _, value16 in pairs(localPlayer2.Character:GetDescendants()) do
                if value16:IsA("BasePart") then
                  value16.CanCollide = false
                end
              end

              runService.RenderStepped:Wait()
              humanoidRootPart5.Velocity = velocity4
            end
          end)
        end)
      elseif v301 then
        f2("\179\231\15=\21\0\202'\228\3", 9913189867420)

        local v304 = v301
        v304["4^[\142\249\168no\156\172"](v304)

        v301 = nil
      end
    end)

    f2("Y\168S \4\23ZV\146L\12\175\160]\165\163\29\251\229\171F&", 7442634989645)
  end

  do
    local function f12()
      MONKSTATE.LoopFlingActive = false

      f2("I>\4A\24\135\220\0k", 2759307526329)
      f2("X\12\196\11(\165\204\28\224", 6468218970839)

      local currentCamera = workspace.CurrentCamera
      local instance25 = localPlayer["4\143_\4\206]\r\0237"]

      if instance25 and currentCamera then
        f2("\14.\174\164\8\133\11\r\194\151H\30\25\225\1795\179dZ\255\184t", 33545098665975)
        currentCamera.CameraSubject = instance25:FindFirstChildWhichIsA("Humanoid")
      end

      local humanoidRootPart6

      if instance25 and instance25:FindFirstChild("HumanoidRootPart") then
        humanoidRootPart6 = instance25.HumanoidRootPart
        f2("{\0084@{`\15", 3599984408111)

        humanoidRootPart6.Anchored = true
        humanoidRootPart6.AssemblyLinearVelocity = Vector3.new(0, 0, 0)

        f2(
          "i\240\168\254\237\234\247\155\231\157&7\t\7\132\152\127ׇ\246\188\219\192",
          28905879211943
        )

        humanoidRootPart6.AssemblyAngularVelocity = Vector3.new(0, 0, 0)

        task.spawn(function()
          task.wait(0.1)

          if humanoidRootPart6 then
            humanoidRootPart6.Anchored = false
          end
        end)
      end
    end

    f2("J\139\195\t\26P\1*\242\2081\160Ϋ\185\243", 12629795674320)

    jmY9("Loop Fling Target Name", "Select Player...", function(loopFlingTarget)
      MONKSTATE.LoopFlingTarget = loopFlingTarget
    end)

    f2("\176\229\2092\138\134\248\251\176\139JY\235S\130\7JHѬ\174\233\236", 9580467155839)
    local loopFlingActive = MONKSTATE.LoopFlingActive
    f2("ݣÆ\1\242\127\164uBB", 33692409230385)

    createToggle("Loop Fling (FE) 🌪️", loopFlingActive, function(loopFlingActive2)
      MONKSTATE.LoopFlingActive = loopFlingActive2

      if not loopFlingActive2 then
        f12()
      end
    end)

    createToggle("Orbit Player (FE) 🪐", MONKSTATE.OrbitActive, function(p26)
      local l1M = localPlayer["\195l1\221m\143ϒ\206"]
      local humanoidRootPart7 = l1M and l1M:FindFirstChild("HumanoidRootPart")

      if p26 then
        MONKSTATE["\229\248\193r'\15\3J[\200\243"] = true
      else
        MONKSTATE.OrbitActive = false

        if humanoidRootPart7 then
          f2("\222\15\152y\4\17\192", 21551085241729)
          humanoidRootPart7.Anchored = true
          local vector32 = Vector3
          f2("\200\127(", 6517671047345)
          humanoidRootPart7.AssemblyLinearVelocity = vector32.new(0, 0, 0)

          f2(
            "8\174\190\139\212=.5\154\3\164\224\2545\212\233\145\219O\1989K\167", 10073535145520
          )

          f2("\240T1\196\228#L", 854496711445)

          local vector33 = Vector3
          f2("\201\227G", 6719204718515)
          local assemblyAngularVelocity = vector33.new(0, 0, 0)
          f2("1SK\253", 31246424893175)
          humanoidRootPart7.AssemblyAngularVelocity = assemblyAngularVelocity

          task.spawn(function()
            task.wait(0.1)

            if humanoidRootPart7 then
              f2("\173\127K?\163{\5", 8447006418062)
              humanoidRootPart7.AssemblyLinearVelocity = Vector3.new(0, 0, 0)

              f2("I\159\30>R\203Yf\150>\234\212|\148$\193\240j\242\217{><", 7504902908504)
              f2("\246\150)\167Z\0148", 12015000724975)

              humanoidRootPart7.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
              humanoidRootPart7.Anchored = false
            end
          end)
        end
      end
    end)

    f2("\146S2i\201\209i9~\136\1909\187-\160-", 4174632501108)

    jmY9("Orbit Target Name", "Select Player...", function(orbitTarget)
      MONKSTATE.OrbitTarget = orbitTarget
      MONKSTATE.CachedTarget = nil
    end)

    f2("NQa\160\8\24\202\20,\199w", 517102193852)
    local orbitSpeed = MONKSTATE.OrbitSpeed
    f2("\217'k\178r:\239>\212\208\245+\182", 4493019075196)

    createSlider("Orbit Speed", 10, 1000, orbitSpeed, function(orbitSpeed2)
      MONKSTATE.OrbitSpeed = orbitSpeed2
    end)
  end

  createSlider("Orbit Distance", 5, 100, MONKSTATE.OrbitDistance, function(xD)
    MONKSTATE[":\234\182\209:\20\3,\129x\153\209D"] = xD
  end)

  f2("\140{\136E\203\252\163\201\8ev", 19321645858209)

  createSlider(
    "\180U#{?\178\rD\238^\185s", -50, 50, MONKSTATE.OrbitHeight,
    function(orbitHeight) MONKSTATE.OrbitHeight = orbitHeight end
  )

  f2("8\30'\151k>\0\30(\128\2275\2", 14761730445058)

  createToggle("Crazy TP (Multi-Loc/anti bang) 🌀", MONKSTATE.CrazyTpActive, function(p27)
    local character12 = localPlayer.Character

    local s6F = character12
      and character12:FindFirstChild("s6\217\223F/\1\146\171\191\158\233\186<\20|")

    if p27 then
      sendChatMessage("-----////MONK LIFE HUB 🔥 CRAZY TP LOADED 🔱🌪️///-------")

      if s6F then
        MONKSTATE.CrazyTpOrigin = s6F.CFrame
      end

      MONKSTATE.CrazyTpActive = true
    else
      MONKSTATE.CrazyTpActive = false

      if s6F and MONKSTATE["\5\30\130\174\20<\1\243\179be\135\207"] then
        s6F["6\136\236㪭\160\251"] = true
        f2("4\223j\7\195\0305\141\218M+Y\141", 7068764041289)
        s6F.CFrame = MONKSTATE.CrazyTpOrigin

        f2("\173\165\229.\170\157\196\0167o\2270\181s\25C\141\29le\2b", 11489516356531)
        f2("\253\0\252\245\223k\228", 14164287917282)

        local vector34 = Vector3
        f2("|`\168", 1896318306565)
        local assemblyLinearVelocity = vector34.new(0, 0, 0)
        f2("k\128\252\223G\130\242", 31655029776516)
        s6F.AssemblyLinearVelocity = assemblyLinearVelocity
        local xY = _G['x\132\247y\167"\232']
        f2("\138\249=", 24623410666900)
        local new28 = xY.new
        f2("\138\0263K\235\203d\190)\145\168w!\203^\\\172\223:P\241\24u", 31308466472159)
        local assemblyAngularVelocity2 = new28(0, 0, 0)
        f2("\237/\211^", 31348561618516)
        s6F.AssemblyAngularVelocity = assemblyAngularVelocity2

        task.spawn(function()
          task.wait(0.1)

          if s6F then
            s6F.AssemblyLinearVelocity = Vector3.new(0, 0, 0)

            f2("<\207\127\144;\6\202", 5767009016836)
            f2("\n\30\133)!\237\178\31;\136\207E\164\225G\r\189\254JO\18\191\1", 22346409100931)

            s6F.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
            s6F.Anchored = false
          end
        end)
      end
    end
  end)

  f2("}\157\160Wga|\137\226\191$\194B\207", 21370122608597)
  f2("FL\231\159K\31E1\175\236\237\216\5\29\24\137\168\4T\157\168\175>f\24\149", 3202458958113)

  createToggle(
    "Premium (Only Car Working)", MONKSTATE["\130\162\254\21\160\247::\20\255\227\139\4\184"],
    function(carPremiumOnly) MONKSTATE.CarPremiumOnly = carPremiumOnly end
  )

  createInputBox("Force Spawn Any Vehicle", "Type Name...", false, function(p28)
    local v305 = f2("B=\156\n", 22000833573090)

    task.spawn(function()
      local network3 = fetchNetwork()
      local v306 = f2("ɒ\181\230\170(c)\228\236ۋYr", 27185976462236)
      local v307 = f2("\0254t\5h\21,\226F5\140\178)\245\190J\143\150", 24622160712435)
      local name4 = p28
      local vehicleInformation = replicatedStorage:FindFirstChild("VehicleInformation")

      if vehicleInformation then
        for _, value17 in ipairs(vehicleInformation["Ж\164\144\254\152Z\215|o\135"](vehicleInformation)) do
          f2("\24\188#&\216I", 28550480301474)
          f2("\226\237G\3", 20620259421975)

          local v308 = string

          f2("\242\5\152\133", 31098879197493)
          f2("\150%\200\22\146\168", 30456474864515)

          local find = v308.find
          local v309 = string
          f2("۠x\206(", 7075137170146)
          local lower2 = v309.lower
          local name5 = value17.Name
          f2("\25\147\146̍\168", 25440717624347)

          if find(lower2(name5), string.lower(p28)) then
            name4 = value17.Name
            break
          end
        end
      end

      pcall(function()
        local v310 = f2("\147\208`", 23709085917565)
        local v311 = name4
        network3.get("spawn_vehicle", v311)
      end)
    end)
  end)

  createInputBox("Walk Speed", MONKSTATE.WalkSpeed, true, function(walkSpeed)
    MONKSTATE.WalkSpeed = walkSpeed
  end)

  f2("W>\146\162\165\142rY\127b", 19065044697107)

  createInputBox("Jump Height", MONKSTATE.JumpHeight, true, function(jumpHeight)
    MONKSTATE.JumpHeight = jumpHeight
  end)

  f2("bR\217\245\156\171W\139a", 7199166905507)

  local function f13()
    local v312 = getgenv and getgenv()

    if v312 and _G["\186k\4\250"](v312.g) == "\4dR\228\252" then
      return v312.g
    end

    return nil
  end

  local function f14(p29, p30)
    local v313 = f13()
    local v314 = v313

    if v313 then
      f2("\3\194i\205", 32318949687834)
      v314 = type(v313.Send) == ":&\232S\142+\173H"
    end

    if v314 then
      v313.Send(p29, p30)
      return true
    end

    return (_G["\23\179P\30\166"](function()
      local v315 = f2("F\186q9\201̻", 13251742614292)
      local modules = replicatedStorage:FindFirstChild("Modules")
      local core = modules and modules:FindFirstChild("Core")
      require(core and core:FindFirstChild("Net")).send(p29, p30)
    end))
  end

  local v316 = workspace

  f2("{\182Y\2241\146iO\204A&K", 6987738756844)
  f2("U[\206\11\190\208D\200", 34365746526742)

  local instance26 = v316["\26\142\181\210e\152\172\173\193-\169\196"](v316, "Vehicles", 5)
  f2("\246\142~\129/\135\147", 28970795676235)
  local waitForChild2 = replicatedStorage:WaitForChild("Remotes", 5)

  local v317 = waitForChild2
    and waitForChild2["\244*+\133\220\249J\167\200ۙ\2"](waitForChild2, "Get", 5)

  local cameraSubject

  do
    f2("(a\249`\232\146\226'\172", 8768231852981)
    local hC = _G["\201\242\254\22h\166c\170\255"]
    f2("\205\253\187\24\224h\1357\130j\243\230\129", 32767241280817)
    local currentCamera2 = hC.CurrentCamera

    f2('{\r\162\24\29\2!\230\189"d\224t', 11769255848646)
    f2("\28a\180\1566\239\168\2399", 18945374875159)

    cameraSubject = currentCamera2.CameraSubject
  end

  local function getModel(instance27)
    return instance27 and instance27:IsA("Model") and instance26 and instance27["\168\143k\189\r\225\163\208\204\220o\153\202\235"](
      instance27, instance26
    )
  end

  local v318, v319

  local function f15()
    if getModel(v318) then
      return v318
    end

    if instance26 then
      f2("\211\213\239L\n\216", 21006613791695)

      for _, value18 in ipairs(instance26:GetChildren()) do
        if value18:IsA("Model") then
          local owner = value18:GetAttribute("Owner")

          local owner2 = owner
          owner2 = owner or value18:GetAttribute("owner")

          local owner3 = value18:FindFirstChild("Owner")

          local owner4 = owner3
          owner4 = owner3 or value18:FindFirstChild("owner")

          if owner4 and owner4:IsA("ObjectValue") then
            owner2 = owner4.Value
          elseif owner4 and owner4:IsA("StringValue") then
            owner2 = owner4.Value
          end

          local v320 = owner2 == localPlayer
          local v321 = v320

          if not v320 then
            local v322 = owner2 == localPlayer["\203k\1745"]
            local v323 = v322

            if not v322 then
              local v324 = owner2 == localPlayer.UserId
              local v325 = v324

              if not v324 then
                f2("P\212\n@\151\28ӧ", 10376480681554)
                f2("\150\192\152\156=\171\0262", 33086602487585)
                v325 = tostring(owner2) == tostring(localPlayer.UserId)
              end

              v323 = v325
            end

            v321 = v323
          end

          if v321 then
            v318 = value18
            return value18
          end
        end
      end
    end

    if getModel(v319) then
      v318 = v319
      return v318
    end

    return nil
  end

  if instance26 then
    instance26.ChildAdded:Connect(function(child)
      local v326 = f2("\142\217mZ\194", 35081145465806)

      if child:IsA("Model") then
        v319 = child
      end
    end)
  end

  local function f16(p31)
    if not p31 then
      return nil
    end

    if p31.PrimaryPart then
      return p31.PrimaryPart
    end

    f2("\187\221PP\145\163\236\147", 8613725096381)
    return p31:FindFirstChildWhichIsA("BasePart", true)
  end

  f2('\222qV{\183g.ǧZ\184.\145l\17\224\20\179/\1728D"v\193', 24508080109085)
  f2(".5p\2326\188", 6842378589199)

  local function getHumanoidRootPart()
    local v327 = f2("\22R\178Í\1276\23\229", 31987687610067)
    local character13 = localPlayer.Character

    if not character13 then
      return nil
    end

    f2("\244\157\1307\175\1592\189\240\241A\196OMʚ", 27780687391780)
    return character13:FindFirstChild("HumanoidRootPart")
  end

  local function f17(p32, p33)
    local v328 = f15()

    if not v328 or not v317 then
      return
    end

    pcall(function() return v317["\232\0\149q\171\167Y\216u\n\188)"](v317, p32, p33, v328) end)
  end

  do
    createLabel(
      "%=\18\181\169\219g\127\233'\214T\211>\204ZcD\150\1716\174\243\27\"",
      Color3.fromRGB(0, 255, 120), 30
    )

    f2("\236Z\171F\127\15:\8\148'E\167\11", 28148295592633)
    f2("", 33819644711435)
    f2("", 11387472842401)

    local v329 = ""
    createInputBox("Enter RP Name", "", false, function(p34) v329 = p34 end)

    createButton("SET RP NAME", function()
      if v329 ~= "" then
        f14("roleplay_name", v329)
      end
    end)

    f2("J\157I\255\222\207ٙ\8\8\212\31", 393759131363)
    f2("", 30166770409565)
    f2("", 23501842678714)

    local v330 = ""
    createInputBox("Enter RP Bio", "", false, function(p35) v330 = p35 end)

    f2("Q\136\26 )-W\196|\17", 406605079509)
    f2("%\182>)6'", 20631430267919)

    createButton("SET RP BIO", function()
      if v330 ~= "" then
        f14("_I7", v330)
      end
    end)
  end

  do
    createLabel("--- HIDE SETTINGS ---", Color3.fromRGB(0, 255, 120), 30)
    createToggle("HIDE MY NAME", false, function(p36) f14("hide_name", p36) end)

    f2("\136`\187\237\2375\24B\197|\160$n\179\20\248", 10099141916989)
    f2("\150\197\251\n\247\162", 2613539820649)

    createToggle("HIDE OUTFIT VIEW", false, function(p37) f14("hide_view_outfit", p37) end)
    createToggle("HIDE OTHER NAMES", false, function(p38) f14("hide_other_names", p38) end)

    createToggle("HIDE MAP ICON", false, function(p39)
      f14("hide_map_icon", p39)
      f14("map_icon", not p39)
      f14("HideMapIcon", p39)
    end)

    createToggle("HIDE HOME OWNERSHIP", false, function(p40) f14("hide_home_ownership", p40) end)

    local color314 = Color3
    f2("\\\168\219>m\133\175", 9180044070946)
    createLabel("--- VEHICLE CONTROL (PART 2) ---", color314.fromRGB(0, 255, 120), 30)

    createButton("VIEW MY VEHICLE", function()
      local cameraSubject2 = f16((f15()))

      if not cameraSubject2 then
        return
      end

      f2("\254G\213AQ\194\137pV", 5659890095109)
      local v331 = workspace
      f2("mw5\134\2=\165\183d\178Ne\137", 11998744205729)
      local currentCamera3 = v331.CurrentCamera

      f2("\160D#\128\253(\210Od\185+03", 3441721970387)
      f2("\227s\207-O\19\207\12\232\7", 1643134122114)

      cameraSubject = currentCamera3.CameraSubject

      currentCamera3.CameraType = Enum.CameraType.Custom
      currentCamera3.CameraSubject = cameraSubject2
    end)
  end

  f2("h\161\21I)\31\2248\212ڷ6\134\235ws", 8153713308906)
  f2("\211\25l\233\244\28", 16690740134953)

  createButton("BRING MY VEHICLE", function()
    local v332 = f15()
    local humanoidRootPart8 = getHumanoidRootPart()

    if not v332 or not humanoidRootPart8 then
      return
    end
  end)

  createButton("GO TO VEHICLE", function()
    local v333 = f16((f15()))
    local humanoidRootPart9 = getHumanoidRootPart()

    if not v333 or not humanoidRootPart9 then
      return
    end
  end)

  createButton("RESTORE CAMERA", function()
    local v334 = f2("β\22i\140E4H\191", 24507342520055)
    local currentCamera4 = workspace.CurrentCamera
    local character14 = localPlayer.Character
    local humanoid6 = character14 and character14:FindFirstChildOfClass("Humanoid")

    currentCamera4.CameraType = Enum.CameraType["\\\226.\6\24\143"]
    currentCamera4.CameraSubject = humanoid6 or cameraSubject
  end)

  createButton("LOCK VEHICLE", function() f17(6, "lock_vehicle") end)
  createButton("UNLOCK VEHICLE", function() f17(13, "lock_vehicle") end)

  createLabel("=== Premium & Protection ===", Color3.fromRGB(255, 215, 0), 25)
  createToggle("👑 FreePay (Premium Unlocks)", false, function(p41) toggleFreePay(p41) end)
  f2("\155\219l\2\26o", 16485173989755)
  createToggle("🧯 Anti Fire (Destroy All)", false, function(p42) toggleAntiFire(p42) end)
  createLabel("=== Visuals & Environment ===", Color3.fromRGB(0, 200, 255), 25)
  local nightVisionColorCorrection

  do
    f2("iNu\128-\130'\207o\226)\11y\211\29\1\18\218\198", 2631318658007)
    f2("\165\18bd\170\208\251\1\255Cc\191\168Ux\19\202\14\139\162\193v2~\208\21", 665332086299)

    local connect

    createToggle("🌈 Toggle RGB Sky", false, function(p43)
      if p43 then
        connect = runService.RenderStepped:Connect(function()
          local v335 = f2("$8\165\132", 33174164679810)
          local v336 = tick()
          local color = Color3.fromHSV(v336 % 5 / 5, 1, 1)

          lighting.Ambient = color
          lighting.OutdoorAmbient = color
          lighting["W\191\179\226Z̝}z\138*U4\6"] = color
          lighting["U\21\133\222\244-\142]\252\8\225lF>\138\134\166"] = color
        end)
      else
        if connect then
          f2("6~\2468\188\241\232\30\155?", 10234295109735)
          connect:Disconnect()
          connect = nil
        end

        lighting.Ambient = Color3["\2474\17ר\236\26"](138, 138, 138)
        f2("K\\bb\223d\141\212w$\167\167\3\r", 9880673947330)
        lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)

        f2("\5/&\7k̃\140\186ĭ\160\189\215", 25373150449979)
        f2("\192Y\25\136C\254", 5452065667679)

        local color315 = Color3
        f2("\239\194\145؂E\187", 21613870397962)
        local colorShiftTop = color315.fromRGB(0, 0, 0)
        f2("\158\129\234%\144~", 492904911767)

        lighting.ColorShift_Top = colorShiftTop
        lighting.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
      end
    end)

    f2('"d\23\198gŇ\150\205\29\160P\232\191', 27288068252681)
    local nightVisionColorCorrection2 = lighting:FindFirstChild("NightVisionColorCorrection")

    local instance28 = nightVisionColorCorrection2

    instance28 = nightVisionColorCorrection2
      or Instance.new("l\19I\218g\185Gv\2120\238Y( Cݟ\2427]\28", lighting)

    f2("\131\149F3\192[", 22644542610636)
    f2("\0\241D0C\149\0[ \247\184\226\2193\231k\14\192\141\239n4\7\29\198t", 16618497101190)

    nightVisionColorCorrection = instance28
    nightVisionColorCorrection.Name = "NightVisionColorCorrection"
  end

  do
    nightVisionColorCorrection.Brightness = 0
    nightVisionColorCorrection.Contrast = -0.1
    nightVisionColorCorrection.Saturation = -1
    nightVisionColorCorrection.TintColor = Color3.new(0.6, 1, 0.815686)

-- https://leakd.fr
    f2("\176V\15׀\175*\180\157NV\233۫", 19173097247619)
    f2("L\21`\200\245\0237\239,w\217&\26X", 29940052606183)

    nightVisionColorCorrection.Enabled = false
    local vignetteEffect = guiParent:FindFirstChild("VignetteEffect")
    local instance29 = vignetteEffect

    if not vignetteEffect then
      f2("\177\16u$+\26\176I", 27595144733841)
      instance29 = Instance.new("ScreenGui", guiParent)
    end

    local vignetteEffect2 = instance29
    vignetteEffect2.Name = "VignetteEffect"
    vignetteEffect2.IgnoreGuiInset = true

    f2("\244\222S\23^\231}Z\202r\154\191t\222", 30173933951441)
    f2("\2\233\233\173\255\146\188\200׀", 31632188874865)

    vignetteEffect2["C\153\1783\190\246P"] = false
    local imageLabel = vignetteEffect2:FindFirstChild("ImageLabel")

    local instance30 = imageLabel
    instance30 = imageLabel or Instance.new("ImageLabel", vignetteEffect2)

    f2("\165P\156-\\", 17767217470222)
    local udim220 = UDim2

    local v337 = instance30
    v337.Size = udim220[")\15\228"](1, 0, 1, 0)

    f2("\2363<n\20\31\169\1358\204O˴\n\149\7y\17\7\149\147\216", 30351534950177)
    f2("-wlV\0\127G?{\204J_oZ", 21850152945406)

    v337.BackgroundTransparency = 1

    f2("R\128\141\254\250\206", 11740807310797)

    f2(
      "\t\223\216\19\156\182-\193*\223}0\5\165\238N\180\128\141\146+\172S\27\29a\205\218",
      25530144964250
    )

    f2("\188sP\ne", 25109242080855)
    f2("\232\229ɮ\218i\152", 34762801142565)

    v337.Image = "\154t\164'\149\231\0U\3\163\136km\176\2116\187;l2\172u'\24\220n\149\181"
    local enabled = false

    createButton("Toggle Night Vision", function()
      local v338 = enabled
      local v339 = f2("\137\7\26/\187\172\28", 12989667268216)
      enabled = not v338
      nightVisionColorCorrection.Enabled = enabled
      f2("Ld\230\19j);", 19196255374911)
      vignetteEffect2.Enabled = enabled
    end)
  end

  do
    f2("\249i\255\\\171\4\187\234\240", 26089385367875)
    local flag5 = false

    local v340 = {
      materials = {},
      shadows = {},
      ["g\221\234 \208\217%\226;\220\250\239:\135"] = {},
    }

    createButton("Toggle FPS Boost (Lag Reducer)", function()
      flag5 = not flag5

      if flag5 then
        lighting.GlobalShadows = false

        f2("\25\237\127\153\172", 30106492476407)
        f2("vF\171+r-\154\29(\7\217", 24320708610981)

        for _, value19 in pairs(lighting:GetChildren()) do
          if value19:IsA("PostEffect") and value19.Name ~= "NightVisionColorCorrection" then
            value19.Enabled = false
          end
        end

        f2("s\2483<\129+$G\191", 15977668221655)
        f2("\232\197\236\187$", 27352453288620)

        for _, value20 in pairs(workspace:GetDescendants()) do
          if value20:IsA("BasePart") then
            if not v340.materials[value20] then
              v340.materials[value20] = value20.Material
              v340.shadows[value20] = value20.CastShadow
            end

            f2("\130\154\22Y", 8905392487780)

            value20.Material = Enum.Material.SmoothPlastic
            value20.CastShadow = false
          elseif value20:IsA("Decal") or value20:IsA("Texture") then
            if not v340.transparencies[value20] then
              v340.transparencies[value20] = value20.Transparency
            end

            value20["\236\217\rz\149\237\14)\137~\1687"] = 1
          elseif value20:IsA("ParticleEmitter") or value20:IsA("Trail") then
            value20.Enabled = false
          end
        end
      else
        f2("\169b\31\219q7B\145\189}'\193\161", 22520076740072)
        f2("\231\6S\136W\172?\1616\238\210", 19798478421162)

        lighting.GlobalShadows = true
        f2("\200i\127s\230", 13018980906925)

        for _, value21 in pairs(lighting:GetChildren()) do
          if value21:IsA("PostEffect") and value21.Name ~= "NightVisionColorCorrection" then
            value21.Enabled = true
          end
        end

        f2("L\192ٵ\140", 23027344557375)
        f2("&\135e\150\149a\179\6&", 20435142601405)

        for key3, value22 in pairs(v340.materials) do
          if key3 and key3.Parent then
            key3.Material = value22
          end
        end

        for key4, value23 in pairs(v340.shadows) do
          if key4 and key4.Parent then
            key4.CastShadow = value23
          end
        end

        f2("o\170\150z]", 608333906481)
        f2("\199ˆ\250\176_t\8-G\181c\1997", 11691363520696)

        for key5, value24 in pairs(v340.transparencies) do
          if key5 and key5.Parent then
            key5.Transparency = value24
          end
        end

        f2("i\216\192.\234\158{!\3", 6068345031701)
        f2("XdY\210\234", 28245853416925)
        f2("\149\233\200{\175\148\145w\12%\202\11\143\149", 259910799484)

        for _, value25 in pairs(workspace:GetDescendants()) do
          if value25["\226\129t"](value25, "ParticleEmitter") or value25:IsA("Trail") then
            value25.Enabled = true
          end
        end
      end
    end)

    f2("\177\166\166Ѹ\184", 29776036212014)
    local b = _G["\144b:\196\0@"]
    f2("\164d\190}$Z*", 27795419005080)
    createLabel("=== Server Cleaners ===", b.fromRGB(255, 80, 80), 25)

    f2("\153\8̭{N\155c\1642}\172?]\187\152gc\15\191\138\11", 26451923048537)
    f2("N\187?ж:", 14391604571777)

    local v341 = false

    createToggle("🪑 Toggle Anti Chair", false, function(p44)
      v341 = p44

      if v341 then
        task["\208\7\214y\200"](function()
          while v341 do
            f2("\232\15紸", 34206355983487)
            local v342 = pairs
            f2("@\195\7wG\19\169)\237\t\127A\149c", 28668873621593)

            for _, v343 in v342(workspace:GetDescendants()) do
              local isA = v343:IsA("\171\140\28\243\203")
              local v344 = isA

              if isA then
                f2("\195쾛ۮ", 34860945198764)
                local v345 = string
                f2("\31O\167\179", 795184023925)
                local name6 = v343.Name
                v344 = v345.find(name6:lower(), "chair")
              end

              if v344 then
                v343:Destroy()
              end
            end

            task.wait(1)
          end
        end)
      end
    end)
  end

  do
    local v346 = false
    f2("\16&\180\1760", 14918407438914)

    createToggle("🚗 Destroy All Vehicles", false, function(p45)
      v346 = p45

      if v346 then
        task.spawn(function()
          while v346 do
            f2("\142\26\243Ѱ\255} \238", 17589986463321)
            f2("X]\227Z\159", 11265310750081)

            for _, value26 in pairs(workspace:GetDescendants()) do
              if value26:IsA("VehicleSeat") then
                f2("fǞ\248J", 7846386799196)
                local model = value26:FindFirstAncestorWhichIsA("Model")

                if model then
                  model:Destroy()
                end
              end
            end

            f2("iV*\21\192\251\\v", 20749065329660)
            local vehicles = workspace:FindFirstChild("Vehicles")
            local instance31 = vehicles

            if not vehicles then
              f2("j\202\193\28\2248\158\136\234", 1083164808301)
              local v347 = workspace
              instance31 = v347["ͣ\141a{\30'&\229\127\27MWx"](v347, "vehicles")
            end

            if instance31 then
              for _, value27 in pairs(instance31:GetChildren()) do
                value27["\3\13514\247\128\22"](value27)
              end
            end

            task.wait(1)
          end
        end)
      end
    end)

    f2("\201ό$z\198\243^$\251y[R\189\219[\21\222q\171\184/", 8104382591876)
    local v348 = false

    createToggle("📺 Anti Wild Wood Ad", false, function(p46)
      v348 = p46

      if v348 then
        task.spawn(function()
          while v348 do
            local wildwoodIntegration = workspace:FindFirstChild("WildwoodIntegration")

            if wildwoodIntegration then
              wildwoodIntegration:Destroy()
            end

            task["J\225ѝ"](1)
          end
        end)
      end
    end)

    createLabel("=== Phone & Housing ===", Color3.fromRGB(255, 150, 0), 25)
    f2("\27SޮU\232R\223@\n\186h\242R\236\2248\6\22\29C", 10166200785953)
    local flag6 = false

    createButton("Toggle Anti RGB Phone", function()
      local v349 = f2("\230]\153\190\163", 14880329183017)
      local v350 = flag6
      local v351 = f2(";ԧt\4p\228\255\145\192", 20888833267249)
      flag6 = not v350

      for _, v352 in _G["֭\174\152$"](players:GetPlayers()) do
        if v352 ~= localPlayer and v352.Character then
          local phoneCharacterModel = v352.Character:FindFirstChild("PhoneCharacterModel")

          if phoneCharacterModel then
            f2("\137|\184\186\223\206yu\241\187;\239\247\249", 31683138540510)

            for _, value28 in pairs(phoneCharacterModel:GetDescendants()) do
              if value28:IsA("BasePart") or value28:IsA("Decal") then
                value28.Transparency = flag6 and 1 or 0
              end
            end
          end
        end
      end
    end)

    f2("\241?\1416d\195\223\247\21qa\\\170\25\217p\151;\t\12\183\237\216", 30761202321462)
    local flag7 = false

    createButton("Toggle Block Calls (FE)", function()
      flag7 = not flag7

      if flag7 then
        task.spawn(function()
          while flag7 do
            f2("\186V\145[\155", 4812290049260)
            task.wait(1)
          end
        end)
      end
    end)
  end

  do
    f2("\237\221\2328Ey\174y\158\143\174\141RF\143\151\238\0185\150k\131", 3014299541771)
    f2("\225|\166\30\245o\18\205", 10936395017160)

    local flag8 = false

    createButton("Toggle Anti Tent Spawn", function()
      flag8 = not flag8

      if flag8 then
        task.spawn(function()
          while flag8 do
            f2("\14\253\206)4\157\235\237\5", 19978380820217)
            f2("\247˅F\244", 19205523293981)

            local v353 = workspace

            for _, value29 in pairs(v353["\227f)Q\n\1578~K\166\149n\24\135"](v353)) do
              local model2 = value29:IsA("Model")
              local v354 = model2

              if model2 then
                f2("\146\154\204\14s_", 28564468185038)
                local v355 = string
                f2("\238\245t\146", 28625583754321)
                local name7 = value29.Name
                v354 = v355.find(name7:lower(), "tent")
              end

              if v354 then
                value29:Destroy()
              end
            end

            task.wait(1)
          end
        end)
      end
    end)

    createButton("Delete House (FE)", function() end)

    f2("\1\217\239\248-}KFT\186\161\247C\190\155E\209\0128\29KJ\233a\169\168", 24701934721671)
    local flag9 = false

    createButton("Toggle Anti House Ban (FE)", function()
      local v356 = flag9
      local v357 = f2("@\167=\187", 17495676819893)
      flag9 = not v356
      local v358 = task

      f2("5\188wە", 1920293977812)
      f2("\178\193\208\17\145\254\184Cq\195r\244QE", 5104840544933)

      v358.spawn(function()
        while flag9 do
          f2("\180\233\154Y\1\189\15\178\5", 19748580430012)
          f2("\28\170\190Zh", 14379087780266)

          local v359 = pairs
          f2("S2wsp\254hNT\144\rC\240$", 10059008830785)
          local v360 = workspace

          for _, v361 in v359(v360["i qb\151\29\201r\26ܗ\14|\180"](v360)) do
            local kI = v361:IsA("ÊK>\158\27I\219")
            local v362 = kI

            if kI then
              f2("d\159%]\240\183", 16532494957321)
              local v363 = string
              f2("\183Z\221\211", 34742391326157)
              local name8 = v361.Name
              v362 = v363.find(name8:lower(), "ban")
            end

            if v362 then
              v361.CanCollide = false
              v361.Transparency = 1
            end
          end

          task.wait(1)
        end
      end)
    end)

    createButton("Lock / Toggle My Home (FE)", function()
      local playerPlot = getPlayerPlot(localPlayer)

      if playerPlot then
        sendRemote("lock_home", playerPlot)
      end
    end)

    local flag10 = false

    createButton("Toggle Auto Lock Home (FE)", function()
      flag10 = not flag10

      if flag10 then
        task.spawn(function()
          while flag10 do
            local playerPlot2 = getPlayerPlot(localPlayer)

            if playerPlot2 then
              if playerPlot2:GetAttribute("locked") == false then
                sendRemote("lock_home", playerPlot2)
              end
            end

            task.wait(1)
          end
        end)
      end
    end)

    createButton("Lock All Player Homes (FE)", function()
      local v364 = f2("\210;m\26\180", 23273686989868)
      local v365 = pairs
      local v366 = f2("\tz\133E\144\194맱p", 13523161199401)

      for _, v367 in v365(players:GetPlayers()) do
        if v367 ~= localPlayer then
          local playerPlot3 = getPlayerPlot(v367)

          if playerPlot3 and playerPlot3:GetAttribute("\173\187yޭ\208") == false then
            sendRemote("lock_home", playerPlot3)
          end
        end
      end
    end)
  end

  do
    createButton("Unlock All Player Homes (FE)", function()
      local v368 = f2("\192\196\12\244(", 13309248408544)
      local v369 = f2("0\137\n/@\169ˊ\207\228", 31169106909901)

      for _, value30 in pairs(players:GetPlayers()) do
        if value30 ~= localPlayer then
          local playerPlot4 = getPlayerPlot(value30)
          local v370 = playerPlot4

          if playerPlot4 then
            f2("\129L!|\22C", 4253761744212)
            v370 = playerPlot4:GetAttribute("locked") == true
          end

          if v370 then
            sendRemote("lock_home", playerPlot4)
          end
        end
      end
    end)

    createLabel("=== Player & Movement ===", Color3.fromRGB(150, 255, 50), 25)

    f2(">\238\193B\128\21#\239 ٹ\204\2529", 60150362273)
    f2("A\165\211\194\30\131", 33993375152722)

    local cframe21

    createButton("Set SpawnPoint", function()
      if localPlayer.Character
        and localPlayer.Character:FindFirstChild("Jωۯ\1\172{\170nS5^u\np") then
        f2("4\129\237o\153\183ϖ\173", 2284562911473)
        cframe21 = localPlayer.Character.HumanoidRootPart.CFrame
      end
    end)

    createButton("Clear SpawnPoint", function() cframe21 = nil end)

    localPlayer.CharacterAdded:Connect(function(character15)
      if cframe21 then
        task.spawn(function()
          local v371 = f2('\161\223\234\0\192"y誜Ž', 4526953138059)

          local waitForChild3 = character15:WaitForChild(
            "\234\193t\166\192\217\231psE\166\201H\135`0", 5
          )

          if waitForChild3 then
            for i7 = 1, 5 do
              local v372 = cframe21
              f2("\12*\141\165", 32210167446203)
              waitForChild3["\236\133\252,\127\223"] = v372
              task.wait(0.2)
            end
          end
        end)
      end
    end)

    local color316 = Color3
    f2("\246\2267\0221)B", 1597826398639)
    createLabel("=== Mini Games (Fun) ===", color316.fromRGB(200, 100, 255), 25)

    createButton("Play: CPS Clicker", function()
      local v373 = f2("\189\193S\4m", 20757239932865)
      local v374 = f2("q\191\204H)ﹸ\7A\217\rz\127ݍ", 21404293520622)
      local v375 = f2("*\26\241\2361\24iq", 33332115564615)
      local cpsClicker5s = openWindow("CPS Clicker (5s)")

      local instance32 = Instance.new("TextLabel", cpsClicker5s)
      instance32.Size = UDim2.new(1, 0, 0, 40)

      f2(":Y1\131\254\179\156z", 21015400693688)

      instance32.Position = UDim2.new(0, 0, 0, 20)
      instance32["`\183.(+\161\161\168A\139P_@\232D\174\150\186\201P\2055"] = 1
      instance32.Text = "Clicks: 0"

      f2("\22\151\4\5\204\23", 10138050593462)
      instance32.TextColor3 = Color3.new(1, 1, 1)
      f2("\236.\143\24", 31051950858050)
      instance32["&\19Z\169"] = Enum.Font.GothamBold
      f2("\152.\129=\178", 30608781279039)

      instance32.TextSize = 16
      instance32.ZIndex = 12

      local instance33 = Instance.new("TextButton", cpsClicker5s)
      f2("\4\1289\242", 10010761855068)
      local p = _G["}\153\142\255P"]
      f2("u\141\191", 7103019234540)
      local size8 = p.new(0.8, 0, 0.4, 0)
      f2("݊\240\242\29", 25249318775355)

      instance33.Size = size8
      instance33.Position = UDim2.new(0.1, 0, 0.3, 0)

      f2("\255\146vM\18\166", 28206120931500)

      instance33.BackgroundColor3 = Color3.fromRGB(40, 150, 255)
      instance33.Text = "\165\5\244\140x\30V\30\173\150\236q\2547\231"

      f2("\233\146\0\22\19\27\131\248aF", 17746920630284)
      f2("w[l\177\254G", 23789723469262)

      local color317 = Color3
      f2("'\186\28", 29673540046973)
      local textColor34 = color317.new(1, 1, 1)
      f2("\221Jm*", 5674905709941)

      instance33.TextColor3 = textColor34
      instance33.Font = Enum.Font.GothamBold
      instance33.TextSize = 16
      instance33.ZIndex = 12

      f2("c\187\24ս\242\187i", 3152368467980)
      local instance34 = Instance
      f2("\224i\166", 10660722637114)
      local v376 = instance34["\142\241\163"]

      f2("=Ԗ`\6\224n\164", 10868585255185)
      f2("\1409\4\135", 13141147708277)

      v376("UICorner", instance33).CornerRadius = UDim.new(0, 12)
      f2("*\242ݵ@zz\135\144\195\250\1\129\22]\176\232", 19493907297802)
      local v377 = 0
      local flag11 = false
      local flag12 = false

      instance33.MouseButton1Click:Connect(function()
        if flag12 then
          f2("\17\18\147\131L\1927\218\18`F\187\229ު", 30550738649418)
          f2("\1\253\233\255\5\205", 30062266912665)
          f2("Z\5Ĝ", 267726699625)

          v377 = 0
          flag11 = false
          flag12 = false

          instance33.Text = "CLICK TO START!"
          instance33.BackgroundColor3 = Color3.fromRGB(40, 150, 255)

          instance32.Text = "Clicks: 0"
          return
        end

        if not flag11 then
          f2("L\134W\26.\206)h\227\198L", 17657357630928)
          f2("\204\242\138\227", 28263471482977)

          flag11 = true
          instance33.Text = "CLICK FAST!"

          task.spawn(function()
            task.wait(5)

            if not instance32 or not instance32.Parent then
              return
            end

            flag12 = true

            f2("\165L\3<\244\18", 33360349002106)
            f2("\216\6\128\t", 20201900087588)
            f2("A;\183>g\234\153\208\16\182", 28462698231030)

            instance33.Text = "PLAY AGAIN"
            instance33.BackgroundColor3 = Color3.fromRGB(150, 40, 40)

            instance32.Text = "Final: " .. v377 .. " | CPS: " .. v377 / 5
          end)
        end

        v377 = v377 + 1

        if not flag12 then
          instance32.Text = "Clicks: " .. v377
        end
      end)
    end)
  end

  createButton("Play: Number Guesser", function()
    local v378 = f2("\241\235\190\251<\144\17\182\29\235\182\18{\139", 35003568326351)
    local guess1To100 = openWindow("Guess 1 to 100")
    local v379 = f2("=\27\196\219", 3722902767037)
    local v380 = f2("}\175\231Q\158", 32997464031027)
    local roll = math["\210\8\226cnl"](1, 100)

    local instance35 = Instance.new("TextLabel", guess1To100)
    instance35.Size = UDim2.new(1, 0, 0, 40)

    f2('o\152\222\n"', 4046517629826)

    instance35.Position = UDim2.new(0, 0, 0, 20)
    instance35.BackgroundTransparency = 1
    instance35.Text = "I'm thinking of a number..."
    instance35.TextColor3 = Color3.new(1, 1, 1)

    f2("^\134\171\144", 20746112203256)

    instance35.Font = Enum.Font.GothamBold
    instance35.TextSize = 14
    instance35.ZIndex = 12

    local instance36 = Instance.new("TextBox", guess1To100)
    f2("\169\189\29\201", 23382802237860)

    instance36["4u\221Q"] = UDim2.new(0.6, 0, 0, 35)
    instance36.Position = UDim2.new(0.2, 0, 0.3, 0)

    f2("{\212)\241q\31\210й>\213o\128\177\4\249", 31265826698627)
    f2("\131\160m\17\225k", 27698365574967)

    local color318 = Color3
    f2("\22\161<\247\168 \26", 6908615685823)
    local backgroundColor34 = color318.fromRGB(30, 30, 40)
    f2("\174E\169\201\239?", 15751144110627)

    instance36.BackgroundColor3 = backgroundColor34
    instance36.TextColor3 = Color3.new(1, 1, 1)
    instance36.PlaceholderText = "Enter number"

    f2("\196\251\30\244", 13026683042248)

    instance36.Font = Enum[" \8\16S"].Gotham
    instance36.TextSize = 14
    instance36.ZIndex = 12

    f2("5\1A'", 5943620180366)
    f2("\134\244\219\194p\\\21y", 34696894942748)

    local instance37 = Instance
    f2("\3Ò", 31778496355401)
    local new29 = instance37.new
    f2("z\211VV\227\175\239\15", 2568778202535)
    local v381 = new29("UICorner", instance36)
    local c = _G["\244c\141\171"]

    f2("v숽\194\2071\127\30\219\28v", 24342819562679)
    f2(" \139$", 9104830275160)

    local cornerRadius6 = c.new(0, 8)
    f2("\144\218`Ƣ\249\18\26", 19594811711472)
    v381.CornerRadius = cornerRadius6
    local instance38 = Instance
    f2("{\171U", 4077434894103)
    local new30 = instance38.new
    f2("\15ł\235\208", 16604603827673)

    local v382 = new30("TextButton", guess1To100)
    v382.Size = UDim2.new(0.6, 0, 0, 35)
    v382.Position = UDim2["\252N\3"](0.2, 0, 0.5, 0)

    f2("\129\158\201{G4", 26584853398191)
    v382.BackgroundColor3 = Color3.fromRGB(40, 200, 100)

    f2("\162t\238\205`", 11267730977946)
    f2("\250\206x\197", 5664052253498)
    f2("\231\176\193\166yQ", 6721852461634)

    v382.Text = "GUESS"
    v382.TextColor3 = Color3.new(1, 1, 1)

    f2("xx-\199", 3426736169169)

    v382.Font = Enum.Font.GothamBold
    v382["Z\187b\249\208\19\209*"] = 14
    v382.ZIndex = 12

    f2("\1590\200\254\193\30\14\6", 23239922094986)
    local instance39 = Instance
    f2("\188g\131", 27353861516776)
    local v383 = instance39["\169\159\143"]
    f2("\30\1643\159\136\18\172b", 3412092782928)
    local v384 = v383("UICorner", v382)
    f2("\0\204d\19", 27751952074891)
    local udim7 = UDim
    f2("\227\250z", 34505927794794)
    v384.CornerRadius = udim7.new(0, 8)

    local mouseButton1Click2 = v382.MouseButton1Click

    mouseButton1Click2["\236\161I96\2005"](mouseButton1Click2, function()
      local v385 = f2("TS\31xŞ\19\206", 20390431096902)
      local v386 = tonumber(instance36.Text)

      if not v386 then
        f2("\230\4{\145", 8960780900130)
        instance35.Text = "Enter a valid number!"
        return
      end

      if v386 > roll then
        instance35.Text = "Too High! Try lower."

        f2('\166\246\127\176"j\174J \240', 31444172909876)
        f2("ېtB\23.", 27219659164962)

        instance35.TextColor3 = Color3.fromRGB(255, 100, 100)
      elseif v386 < roll then
        instance35["\234\16Ϛ"] = "Too Low! Try higher."

        f2("\1\26\172B\250\154\12\171tt", 24040478908748)
        f2("\249뷐\131\136", 1927830464826)

        instance35.TextColor3 = Color3.fromRGB(255, 100, 100)
      else
        f2("h\195\244\238п\139v|\140\4\2148\191\159\178\0004(\128Ȭ", 31983683298768)
        f2("\149\128\139\169", 14695539264110)
        f2(",48\\ow", 23509684982666)

        instance35["(\203K\190"] = "🎉 Correct! You won!"
        local color319 = Color3
        f2("J^8\175gw\18", 2835524136720)
        instance35.TextColor3 = color319.fromRGB(100, 255, 100)
        roll = math.random(1, 100)
        v382.Text = "PLAY AGAIN"
      end
    end)
  end)

  createButton("Play: Rock Paper Scissors", function()
    local rockPaperScissors = openWindow("Rock Paper Scissors")
    local v387 = f2("\240\0=<\173\20q\24", 34993449978491)
    local instance40 = Instance
    local v388 = f2("(\167\165", 17684351018377)
    local new31 = instance40.new
    local v389 = f2("\218j\251̱\161VGl", 32124892305565)
    local v390 = new31("TextLabel", rockPaperScissors)
    local v391 = f2("\228\14\186\251b", 25949940055090)
    local udim221 = UDim2
    local v392 = f2("\131\238pA", 7607185367076)
    local v393 = f2("\16YT", 2597996375636)
    local size9 = udim221.new(1, 0, 0, 40)
    local v394 = f2("\14\245\213\0K", 26683147804966)

    v390.Size = size9
    v390.Position = UDim2.new(0, 0, 0, 10)

    f2("(\179\155\190@\185", 12814265393355)
    v390.BackgroundTransparency = 1
    f2("\19400\20\155\150Eki\140X\28#~\202ԧ7q", 15869578933499)

    v390.Text = "Choose your weapon!"
    v390.TextColor3 = _G["\215\2078o\17\232"].new(1, 1, 1)
    v390.Font = Enum.Font.GothamBold

    f2("\222\211k\0158D\233r", 12500061678089)

    v390.TextSize = 14
    v390.ZIndex = 12

    f2("kaH\160\205", 23935160690202)
    f2("V\205\12D", 21421612372071)
    f2("j[\255y\176`", 8632009643611)

    local list = { "Rock", "Paper", "Scissors" }

    for index2, value31 in ipairs(list) do
      f2("\19\135\180\236\250U\193\29", 1008449533646)
      local instance41 = Instance
      f2("\175m@", 12418570056705)
      local new32 = instance41.new
      f2("\25rF\190,/\188\238\239\147", 12043358921749)
      local v395 = new32("TextButton", rockPaperScissors)
      f2("\238G\170Q%", 29347424669070)
      local udim222 = UDim2
      f2('\171"\23', 3082544793074)
      local new33 = udim222.new
      f2(":+\205\0", 25040925241844)
      local size10 = new33(0.8, 0, 0, 35)
      f2("\206u\248\r\197", 28890181283836)

      v395.Size = size10
      v395.Position = UDim2.new(0.1, 0, 0.15 + index2 * 0.15, 0)
      v395.BackgroundColor3 = Color3.fromRGB(50, 50, 70)

      f2("\12\12\153\140", 15833715921657)
      f2("\196ߧH\222\241", 9995679451667)

      v395.Text = value31
      v395.TextColor3 = Color3.new(1, 1, 1)
      v395.Font = Enum.Font.GothamBold
      v395.TextSize = 14
      v395.ZIndex = 12

      f2("\139؇\248}\176\132\224", 8383205372538)
      local instance42 = Instance
      f2("PDH\163", 21390806840989)
      instance42.new("UICorner", v395).CornerRadius = UDim.new(0, 8)
      f2("\240c\204A#\176\214v\251>\1\188\236\251\199\193\1", 6490360819533)

      v395.MouseButton1Click:Connect(function()
        local v396 = list[_G["\231;\182g"]["$\20\150\198ɱ"](1, 3)]

        if value31 == v396 then
          f2("\197\254/\185G֟", 25220419754756)
          v390["\201\222\tj"] = "AI: " .. v396 .. " - Tie!"
          v390.TextColor3 = Color3.fromRGB(200, 200, 200)
        elseif value31 == "Rock" and v396 == "Scissors"
          or value31 == "Paper" and v396 == "Rock" or value31 == "Scissors" and v396 == "Paper" then
          f2('""\151h', 17150467565079)
          f2("ΐ\197$\192\\\7\1r\131\166\185n\176\218\198", 32851143620563)

          v390["C\7\241\240"] = "?R?l" .. v396 .. " - You Win! 🎉"

          f2("\210\234\209:9\2\198\0\1644", 6316111569707)
          f2(";\31\218\23M\247", 19012593403808)

          v390.TextColor3 = Color3.fromRGB(100, 255, 100)
        else
          f2("\248\137\214ƍ1\244\5\143\2311\242\156%ye\244", 20309799790767)
          v390.Text = "AI: " .. v396 .. " - You Lose! 😢"
          f2("\4\241\220%\17\172", 19314115722158)
          v390.TextColor3 = Color3.fromRGB(255, 100, 100)
        end
      end)
    end
  end)

  createButton("Play: Reaction Time Test", function()
    local v397 = f2("A\128\249\22\243]\14\165uv\240\194+", 19869844982175)
    local reactionTime = openWindow("Reaction Time")
    local v398 = f2("y\138\11\2\252\248\237\244", 5725655968164)
    local v399 = f2("\178\242\162Nf", 26723317463559)

    local instance43 = Instance.new("TextButton", reactionTime)
    instance43.Size = UDim2.new(0.8, 0, 0.5, 0)

    f2("@\204[\240s", 24675295765273)
    f2("Mk\141\152\154\236:\134", 1194195005546)

    local udim223 = UDim2
    f2('"\252\204', 20685409511065)
    local position11 = udim223.new(0.1, 0, 0.2, 0)
    f2("\192\238Qn3X", 2719232989082)
    instance43.Position = position11
    f2("\26U\8Q'\"1\2197\163A\205\232`z*", 10089348664406)
    local color320 = Color3
    f2("\156\144S\149\131?\245", 1496365155805)
    local backgroundColor35 = color320.fromRGB(50, 150, 255)
    f2("v\23}V?\135-V\151\tq\222\4Y", 32930502169983)
    instance43.BackgroundColor3 = backgroundColor35

    f2("\188\221c)", 32658628873849)
    f2("|\227N\n\252y", 9522195024879)

    instance43.Text = "Click to Start"
    f2("E\146\208\250f\7kPJ\187", 19765995463505)
    local color321 = Color3
    f2("U\228\29", 4665080821593)
    local textColor35 = color321.new(1, 1, 1)
    f2("\174\143~!", 32838796129713)

    instance43.TextColor3 = textColor35
    instance43.Font = Enum.Font["ј[1\171\26\6\22aS"]

    f2("\251\142 e", 9873115781662)

    instance43.TextSize = 16
    instance43.ZIndex = 12

    f2(")+Qzw\208j\162", 603072556406)
    local instance44 = Instance
    f2("y0N", 25079660211569)
    local new34 = instance44.new
    f2("\152F\189f!/\15\12", 18248756346678)
    local v400 = new34("UICorner", instance43)
    local udim8 = UDim
    f2("\2464\223", 34057420849404)
    v400.CornerRadius = udim8.new(0, 12)
    local v401 = "idle"
    f2("\216h\238\153\27\166\174w\184G\133\240\140\20\rc`", 1306239160237)
    local v402 = 0

    instance43.MouseButton1Click:Connect(function()
      if v401 == "idle" then
        f2("\23ܕA\224FӍ\243\241:/F\221m\153", 19855323761247)
        v401 = "waiting"
        f2("\208\3ǈ\219\11", 13786694989449)
        local color322 = Color3
        f2("\236\251\234d\rm\129", 13782381409244)
        local backgroundColor36 = color322.fromRGB(200, 50, 50)
        f2("\17867\158\166\144\6%g\129\188b\183V4\195\21", 23484539739589)

        instance43.BackgroundColor3 = backgroundColor36
        instance43.Text = "Wait for Green..."

        task.spawn(function()
          local v403 = f2("R\232_/", 34486576123552)
          local v404 = task
          local v405 = f2("Ư\191P", 4566978519802)
          local v406 = f2("\176'\238\176", 12588887566995)
          v404.wait(math.random(2, 6))

          if not instance43 or not instance43.Parent then
            return
          end

          if v401 == "waiting" then
            f2("\8\183\171\8\6", 8639670074469)
            f2("s'\2183\156{", 11395537436485)

            v401 = "ready"

            instance43.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
            instance43.Text = "CLICK NOW!"

            v402 = tick()
          end
        end)
      elseif v401 == "waiting" then
        f2("\136\196f\210\237k9\182\134\195%\131Q", 4745118640849)
        f2("\2023j/", 29248707890572)
        f2("\19**\182x\130", 29246638390392)

        v401 = "idle"

        instance43.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
        instance43.Text = "Too Soon! Restart."
      elseif v401 == "ready" then
        f2("i0\197\225", 33298451770831)
        local v407 = math

        f2("G\3\31e\11", 11281503427206)
        f2("\30\189\0\26", 25353522792178)

        local v408 = v407.floor((tick() - v402) * 1000)

        f2("\20r\19ݛe\30\192*~H\6\152Y\193K", 7324164100961)
        f2("\191 ad\155\209", 21700428175283)

        v401 = "idle"

        instance43.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
        instance43.Text = "Time: " .. v408 .. "ms! Play Again"
      end
    end)
  end)

  task.spawn(function()
    local v409 = f2("\170\19/O", 3278600680434)
    local v410 = f2("\15!+\248X\215\192\226\12\5\17", 6078697757185)
    local v411 = f2("\187\247\127\4l35\162:M\186\135e\200", 31494240469445)

    local env

    env = _G["\216\203z\133|\31k:\160\168\236 U\154"](game, "0G\6\\h`S\229\161a", newcclosure(function(p47, ...)
      local v412 = f2("\159}\207\t\131\6\2462)\23O\245\175\208Y<\166", 4464892681553)
      local namecallmethod = getnamecallmethod()

      if MONKSTATE.CarPremiumOnly and not checkcaller() then
        if namecallmethod == "UserOwnsGamePassAsync" or namecallmethod == "PlayerOwnsAsset" then
          return true
        end
      end

      return env(p47, ...)
    end))

    local v413, v414

    pcall(function()
      local v415 = f2("ߞa!\207\217g\233\2252fn", 1515997198891)
      local v416 = f2("\131\217k\8pܰ", 28171909855220)
      local fUH = _G[":\157f\246u\176h"]
      local waitForChild4 = replicatedStorage:WaitForChild("Modules", 5)
      local v417 = f2("\1$\183\137", 621165837723)
      local v418 = f2("β\242\161\26_L\184\2v\233\182", 29809303437606)
      local waitForChild5 = waitForChild4:WaitForChild("Core", 5)
      local v419 = f2("\234\221\219", 12439929966438)
      local v420 = fUH(waitForChild5:WaitForChild("Net", 5))
      local v421 = f2("u\188\208\28\224\20897\252T\168\247", 7333019023795)
      v413 = v420
      f2("{\227락\180\17", 18793448820089)
      local v422 = require
      local waitForChild6 = replicatedStorage:WaitForChild("Modules", 5)
      f2("\247\2052a", 16456687025031)

      v414 = v422(waitForChild6["M\242^\155)\15\155\0209U\174&"](
        waitForChild6, "Core", 5
      ):WaitForChild(
        "Char", 5
      ))

      local get

      if v413 and v413.get then
        f2("ey\211", 4201578855195)
        get = v413.get
        f2("=\249\170", 3124519588485)

        function v413.get(p48, ...)
          if MONKSTATE.AntiSit and p48 == "sit" then
            return nil
          end

          return get(p48, ...)
        end
      end
    end)

    task.spawn(function()
      while task.wait(0.05) do
        local rgbTool2 = MONKSTATE.RGBTool
        local v423 = rgbTool2

        if rgbTool2 then
          local v424 = v413
          local v425 = v424

          if v424 then
            f2("\233xq,", 2377024680279)
            v425 = type(v413.send) == "function"
          end

          v423 = v425
        end

        if v423 then
          f2("\146ýF", 4438103661457)
          tick()
          f2("\232Bߘ\173", 7478866266886)
        end
      end
    end)

    f2("Z\241:\158", 34164751827416)
    local v426 = task
    f2("g\245#L\252", 24335344890910)
    local v427 = v426.spawn
    f2("E\248\225\229", 34775888635819)

    v427(function()
      local v428 = f2('[~\196\20\30"', 23479586497464)
      local v429 = f2("\161F\29\3\238\228\150", 15085022964618)
      local v430 = f2("k/}\173ޜ\238ìY`", 19393173707892)
      local v431 = f2("\30A\213\255\173j", 23038601991363)
      local v432 = f2("\154 \0\133\222", 24989296609733)
      local v433 = f2("\196k\132\156G\137", 10839551126347)
      local v434 = f2(">\186\150^W%\145", 30725491595582)
      local v435 = f2("j\22J$w-\21", 3760137312160)

      local v436 = {
        "Police", "Doctor", "Teacher", "Baker", "Banker", "g_i\130\21^\23\12", "Citizen",
        "Firefighter", "Hacker", "Manager",
      }

      local v437 = 1

      while task["\230W,."](0.1) do
        if MONKSTATE.JobSpammer and v413 and _G["\24225\27"](v413.send) == "function" then
          pcall(function()
            local v438 = f2("\209*Ĺ", 27428916386641)
            v413.send("job", v436[v437])
          end)

          v437 = v437 % #v436 + 1
        end
      end
    end)

    local function getTotal(character16)
      local total6 = 0

      for _, v439 in _G["\219\192\127\187RP"](character16:GetDescendants()) do
        if v439:IsA("BasePart") and not v439.Massless then
          total6 = total6 + v439.Mass
        end
      end

      return total6
    end

    local function f18(character17, p49)
      local v440 = f2("\183\156f\193\22a\136\135q7\203\229\172\28", 11623785789580)
      local v441 = f2("Z\157l\210'\130]-\"\172\2344!ԁ\193", 33357434262579)
      local humanoidRootPart10 = character17:FindFirstChild("HumanoidRootPart")
      local v442 = f2("\16v\2E\223\194[\225\157f.y%\139̅", 10435423899236)
      local humanoidVehicles = workspace:FindFirstChild("HumanoidVehicles")

      if humanoidVehicles and humanoidRootPart10 then
        for _, value32 in ipairs(humanoidVehicles:GetChildren()) do
          for _, v443 in _G["%=\246Q~\188"](value32:GetChildren()) do
            if v443:IsA("Model") and v443:HasTag("HumanoidVehicle") then
              f2("\234r\239$\210&\170p\146\137L=\205~", 3548140091854)
              f2("ˣ\149\133\te\254A", 31810983854072)

              local findFirstChild2 = v443:FindFirstChild("\208\8\18\173\155\12\233\181")

              if findFirstChild2 and findFirstChild2["\21\159\11z\4"] == p49 then
                f2("\181\170\251\221\0\221V7Y", 7049339845050)
                local findFirstChild3 = v443:FindFirstChild("TouchPart", true)

                if findFirstChild3 then
                  f2("\189ò\222|ق \23\143\132", 23867408204362)

                  for _, value33 in ipairs(findFirstChild3:GetChildren()) do
                    if value33:IsA("WeldConstraint")
                      and (value33.Part0 == humanoidRootPart10
                        or value33.Part1 == humanoidRootPart10) then
                      pcall(function()
                        local v444 = f2("jJH\21\129\2a", 29490451385750)
                        value33["\173㸏\7\163{"](value33)
                      end)
                    end
                  end
                end

                pcall(function() findFirstChild2.Value = nil end)
              end
            end
          end
        end
      end

      if humanoidRootPart10 then
        f2("\232\205\243Ԗ\171", 16023053015468)
        f2("\218]\151\17\145\24\255<\17387", 18351166793168)

        for _, value34 in ipairs(humanoidRootPart10:GetChildren()) do
          f2("_\27a", 1072254387568)
          local jointInstance = value34:IsA("JointInstance")
          local weldConstraint = jointInstance

          if not jointInstance then
            f2("\4\224\254\252\144\136\148\254)\1487 \215S", 30960487525123)
            f2("\210(\132", 1267233088648)
            weldConstraint = value34:IsA("WeldConstraint")
          end

          if weldConstraint then
            local part1 = value34.Part0 == humanoidRootPart10 and value34.Part1 or value34.Part0
            local v445 = part1 and not part1:IsDescendantOf(character17)
          end
        end

        pcall(function()
          local v446 = f2(">^\179.\146\199", 20905837460567)
          local v447 = f2("Z\2\139\7R\187", 417233017734)
          local v448 = f2("~1\163W>\181", 27455670233667)
          humanoidRootPart10.CFrame = humanoidRootPart10.CFrame * CFrame["O\235\234"](0, 4, -3)
        end)
      end

      pcall(function() p49:ChangeState(Enum.HumanoidStateType.Jumping) end)

      if v414 and v414.stop_sitting then
        pcall(function() v414.stop_sitting() end)
      end
    end

    task["\14\182,k\19"](function()
      while task.wait(0.1) do
        if MONKSTATE.LoopFlingActive and MONKSTATE.LoopFlingTarget ~= "" then
          f2("A$\211W\205~", 33840648457633)
          f2("YCU\248\130<\180\1672\186", 7794348139900)

          local instance45

          for _, v449 in _G["\28\31\nV\166\22"](players:GetPlayers()) do
            local v450 = v449 ~= localPlayer
            local v451 = v450

            if v450 then
              f2("P\238\244\157O\170\250K\147C~\152\14\17\3", 17810751489734)
              f2("\29A6\160\27\202", 28055245118979)

              local v452 = string

              f2("T\235K\31", 12078459309987)
              f2("\205\229\228,", 28370398159386)
              f2("5\180\137\226H_", 29977183398639)

              local v453 = v452.find(
                string.lower(v449.Name), string.lower(MONKSTATE.LoopFlingTarget)
              )

              local v454 = v453

              if not v453 then
                f2("\160D<e\167+", 17033774520953)
                local v455 = string

                f2("\127OXHf\235\241x\162\139JR\2291\130", 5201093251650)
                f2("\136\255l\215\20\213", 13807279117237)
                f2("N_4\176\134E՝\134x\146", 22557600443682)

                local find2 = v455.find
                local v456 = string
                f2("zc\166\2404", 28076132749655)
                local lower3 = v456.lower
                local displayName = v449.DisplayName
                f2("g\20vw\187c", 25283439372482)
                v454 = find2(lower3(displayName), string["۬!Ac"](MONKSTATE.LoopFlingTarget))
              end

              v451 = v454
            end

            if v451 then
              instance45 = v449
              break
            end
          end

          if instance45 and instance45.Parent then
            local character18 = instance45.Character
            local humanoid7 = character18 and character18:FindFirstChildOfClass("Humanoid")

            local v457 = character18 and character18["\26\232\207$\6)\22\151\164\165\1521y<"](
              character18, "HumanoidRootPart"
            )
          end
        end
      end
    end)

    runService.Stepped:Connect(function()
      if MONKSTATE.AntiFling then
        f2("\16\27\18\145\nӕ \14\239", 5190346402138)
        f2("l\8\29\138qO", 14821723206556)

        for _, value35 in ipairs(players["\170\207\228r\143\233=)\3`"](players)) do
          if value35 ~= localPlayer and value35.Character then
            f2("2\24\145=\201w\135'\168\169\\\223V\149", 21832525751074)
            f2("R\161\187:\181\243", 26348340964055)

            for _, value36 in ipairs(value35.Character:GetDescendants()) do
              if value36:IsA("BasePart") then
                value36.CanCollide = false
              end
            end
          end
        end
      end

      if MONKSTATE.AntiCarFling then
        local vehicles2 = v36:FindFirstChild("Vehicles")

        if vehicles2 then
          for _, value37 in ipairs(vehicles2:GetDescendants()) do
            if value37:IsA("BasePart") and value37.CanCollide then
              value37.CanCollide = false
            end
          end
        end
      end
    end)

    local renderStepped = runService.RenderStepped
    local instance46

    renderStepped:Connect(function(p50)
      local v458 = f2("o\159\129\11C2\29b\146", 16357902008095)
      local character19 = localPlayer.Character

      if not character19 then
        return
      end

      local humanoidRootPart11 = character19:FindFirstChild("HumanoidRootPart")

      local instance47 = character19["]\n\173s\203~\238\160@d\152\1488\29"](
        character19, "Humanoid"
      )

      if not humanoidRootPart11 or not instance47 then
        return
      end

      if instance47.WalkSpeed ~= MONKSTATE["\168D\204A]\145\208$\181"] then
        instance47.WalkSpeed = MONKSTATE.WalkSpeed
      end

      if instance47.JumpHeight ~= MONKSTATE.JumpHeight then
        instance47.UseJumpPower = false
        instance47.JumpHeight = MONKSTATE.JumpHeight
      end

      if not MONKSTATE.Float then
        if MONKSTATE.Gravity ~= 196.2 then
          local total7 = getTotal(character19)
          local v459 = 196.2 - MONKSTATE.Gravity

          if not humanoidRootPart11:FindFirstChild("MONKGravityForce") then
            local eE = Instance.new("BodyForce")
            eE.Name = "\178\174\0e̚`\210E$\135\132\206>ʹ\185"
            eE.Parent = humanoidRootPart11
          end

          f2("\229Vp\135\28k\232", 24023182985525)
          humanoidRootPart11.MONKGravityForce.Force = Vector3.new(0, total7 * v459, 0)
        elseif humanoidRootPart11:FindFirstChild("MONKGravityForce") then
          humanoidRootPart11.MONKGravityForce:Destroy()
        end
      elseif humanoidRootPart11:FindFirstChild("MONKGravityForce") then
        humanoidRootPart11.MONKGravityForce:Destroy()
      end

      if MONKSTATE.Noclip then
        for i8 = 1, #MONKSTATE.NoclipParts do
          local instance48 = MONKSTATE.NoclipParts[i8]

          if instance48 and instance48.Parent and instance48.CanCollide then
            instance48.CanCollide = false
          end
        end
      end

      if MONKSTATE.Float then
        if not instance46 then
          f2("\239\177\14\136\137Ih\242", 22365048674601)
          local instance49 = Instance
          f2("\29\203^", 24762681405849)
          local new35 = instance49.new

          f2("L\21K\201", 28450698170811)
          f2("r\169\12\209ʇ\144z\215\227$", 21189574426237)
          f2("2\179\2\222", 20584067367442)

          local part = new35("Part")
          f2("\195ƭ\128", 3609102658781)
          instance46 = part
          local v460 = instance46
          f2("\185Ƽ\148\192\129\24\157", 30487190488342)
          local v461 = tostring
          local v462 = math
          f2("\11\18\134\188\7\193", 18092898904206)
          local v463 = v461(v462.random(1000, 9999))
          f2("u\128~\6\201z\20", 14681951425212)
          v460.Name = "\168U\n2\\\156Mym#F" .. v463
          instance46.Parent = workspace
          local v464 = instance46
          local vector35 = Vector3
          f2("\253\174\229", 34538351327578)
          v464.Size = vector35.new(10, 2, 10)

          instance46.Transparency = 1
          instance46.Anchored = true
          instance46.CanCollide = true
        end

        f2("Q(ϭ\28I\0\145]", 34191529372168)
        local v465 = workspace

        f2("y\165\1\1410\132\1q\225\155\6\138\151", 19290627041380)
        f2("R\11\161=\226\157%\136ʪ\247Җ", 32868232995705)

        local currentCamera5 = v465.CurrentCamera
        f2("\242\253X\184\21\206", 3961520320083)
        local cframe22 = currentCamera5.CFrame

        local v466 = cframe22["w\196\0218\238\0\167\130\149\154\135<\171q\231\157׵\160"](
          cframe22, instance47.MoveDirection
        )

        f2("\136ːW", 18849768312841)
        local v467 = (humanoidRootPart11.Size.Y or 2) * 0.5
        local v468 = instance46.Size.Y * 0.5
        local hipHeight = instance47.HipHeight > 0 and instance47.HipHeight or 2
        f2("\4", 23094918842761)
        local jump = instance47.Jump
        local v469 = v467 + hipHeight + v468
        local v470 = v466.Z > 0.3 and 1.5 or jump and -1.5 or 0

        f2("\202\30zMTnğ", 16112757848558)
        f2("\255O\198Q", 7061082978466)

        local v471 = math
        f2("\22\151\252", 7882573654900)
        local v472 = v471["\148\159\t"]
        f2("F\26\24\185t\207", 26332942534687)
        local v473 = v472(0, v469 + v470)
        local v474 = instance46
        local cframe23 = CFrame
        f2("\245\175\31\2530\244\136t", 3773575080490)

        v474.CFrame = cframe23.new(
          humanoidRootPart11.Position.X, humanoidRootPart11.Position.Y - v473,
          humanoidRootPart11.Position.Z
        )
      elseif instance46 then
        f2("\162+P\155\16\133.", 6584262718448)
        instance46:Destroy()
        instance46 = nil
      end

      if MONKSTATE.AntiVoid then
        if humanoidRootPart11["\11\158x\200\228qV-"].Y <= MONKSTATE.OriginalFPDH + 25 then
          local assemblyLinearVelocity2 = humanoidRootPart11.AssemblyLinearVelocity
          f2("w\208\215ٍ\190p", 7610699350628)

          humanoidRootPart11.AssemblyLinearVelocity = assemblyLinearVelocity2
            + Vector3.new(0, 300, 0)
        end
      end

      if MONKSTATE.AntiSit then
        if instance47.Sit then
          instance47.Sit = false
          f2("\6\213\202e", 27872504795401)
          instance47:ChangeState(Enum.HumanoidStateType.Jumping)

          if v414 and v414["\202+\159\173\2504\214PF\n\18P"] then
            pcall(function() v414.stop_sitting() end)
          end
        end

        f2("\205A,K\15!\128(\146o&U\186\156'%\234", 34861728749530)

        if instance47:GetAttribute("InHumanoidVehicle") ~= nil then
          f18(character19, instance47)
        end
      end

      if MONKSTATE.GlitchActive then
        f2("\1.\194\253c", 18998133708093)
        f2("A\158\162\138X\169\154\156\222P\255l", 17483714659871)
        f2("\172\176adK<\0\175\142g!3", 15136289336870)

        local timeElapsed = MONKSTATE._timeElapsed
        local x6 = MONKSTATE["\138x\251\136\204"]
        f2("\t\248_=VV\208\214Ծ\15N", 6905662369041)
        MONKSTATE._timeElapsed = timeElapsed + p50 * x6
        f2("\17\227m\141", 13621361746862)
        local v475 = math
        f2("\177\154\213", 4264077405469)
        local sin = v475.sin
        local timeElapsed2 = MONKSTATE._timeElapsed
        f2("6\149\nh2\150U2", 24695842537455)
        local v476 = sin(timeElapsed2)
        f2("m\139\178\130%\213", 16455555352149)
        local distance2 = MONKSTATE.Distance
        local cframe24 = humanoidRootPart11["T\rE]\12M"] * CFrame.new(v476 * distance2, 0, 0)

        if MONKSTATE.SmoothActive then
          f2("\210ß\141H\24", 19159380541750)
          f2("^|\188\178", 34020814446364)

          local cframe25 = humanoidRootPart11.CFrame
          local v477 = math

          f2("U\187K3\132", 2102557720076)
          f2("f\187]\235P\246)\247\184\16", 12122499652247)

          humanoidRootPart11['w\195r"*\223'] = cframe25:Lerp(cframe24, v477.clamp(MONKSTATE.Smoothness
            * (p50 * 60), 0, 1))
        else
          humanoidRootPart11.CFrame = cframe24
        end
      end

      if MONKSTATE.CrazyTpActive then
        f2("\130L3\20", 17608877848266)

        humanoidRootPart11.CFrame = CFrame.new(
          math.random(-50000, 50000), math.random(-5000, 50000), math.random(-50000, 50000)
        )
      end

      if MONKSTATE.OrbitActive and MONKSTATE.OrbitTarget ~= "" then
        if not MONKSTATE.CachedTarget or not MONKSTATE.CachedTarget.Parent then
          f2("\229X\22\139\221\15W1\187+", 23607405876513)
          MONKSTATE.CachedTarget = nil
          f2("\143\225 \181\202\238", 25271891798703)

          for _, value38 in ipairs(players:GetPlayers()) do
            local v478 = value38 ~= localPlayer
            local v479 = v478

            if v478 then
              f2("s\8\205u6\196", 27678525196136)
              f2("\233\14\171\228d~", 33762989894737)

              local v480 = string

              f2("\198ΧI", 11207818956998)
              f2("ʖ\188\216", 13315485934647)

              local v481 = v480["\194|\177\198"]
              local v482 = string
              f2("\148u9\232\233", 2282341482980)
              local lower4 = v482.lower
              local name9 = value38.Name
              f2("f'=\177\190\178", 11674853352034)

              local v483 = v481(
                lower4(name9),
                string["\250bT'\183"](MONKSTATE["g\237\r\176\140\2\15\243\230/\222"])
              )

              local v484 = v483

              if not v483 then
                f2("\197\208\26O~\209", 12133245923251)
                local v485 = string

                f2("2z\170\155", 6544341672784)
                f2("\238\164n2\191c", 13601133076224)
                f2("\17\7\141\17\212\243j\30W\150t", 15574030691382)

                local find3 = v485.find
                local v486 = string
                f2("\136\133[\227L", 34359092430784)
                local lower5 = v486.lower
                local aYK = value38["!\247A\238y\147?\11\30(k"]
                f2("\165JyR\254=", 29504250289225)
                local v487 = lower5(aYK)
                local v488 = string

                f2("\253\236e\247$", 5049995098945)
                f2('\161\28\253\149"\204\213\230\242G\221', 24346041953172)

                v484 = find3(v487, v488.lower(MONKSTATE.OrbitTarget))
              end

              v479 = v484
            end

            if v479 then
              MONKSTATE.CachedTarget = value38
              break
            end
          end
        end

        if MONKSTATE.CachedTarget and MONKSTATE.CachedTarget.Character
          and MONKSTATE["\7\188\19x\1612\199\237\24\190w\25"].Character:FindFirstChild("HumanoidRootPart") then
          f2("\0Q\198J\134A\139b\226a\231 ", 34337761366473)
          local cachedTarget = MONKSTATE.CachedTarget

          f2("\223\230NZ4\164\135\190\183_", 29712065186386)
          f2("\244\230\31\228\237\200\00304", 34390959466817)

          local character20 = cachedTarget.Character
          f2('\204\14|\184X""\229qѠTsoOa', 13182173582807)
          local humanoidRootPart12 = character20.HumanoidRootPart

          f2("\214\r\127w\129\156E\156\188V", 20458146043464)
          f2("l\193\127\209", 27119854883113)

          MONKSTATE.OrbitAngle = MONKSTATE.OrbitAngle
            + math.rad(MONKSTATE[":\168\183Zуr=\225!"] * p50)

          f2("\22\252eF", 24266018308801)
          local v489 = math
          f2("s\171\152", 32321324668151)
          local cos = v489.cos
          f2("M\192}\188\148\7\195L$f", 3780778255796)
          local v490 = cos(MONKSTATE.OrbitAngle)
          f2("\12\186#\194\211\242\199\217\234T\146mr", 13924384336149)
          local orbitDistance = MONKSTATE.OrbitDistance
          f2("c\171@\1", 14888822191231)
          local v491 = math
          f2("0\251\242", 3739190721453)
          local sin2 = v491.sin
          f2("\224\139\15\213\245\172*\140j\155", 20567481457785)
          local orbitAngle = MONKSTATE.OrbitAngle
          f2("6)0\191\154\27`\199\210uv\169\21", 23584248633816)
          local v492 = sin2(orbitAngle)
          local v493 = MONKSTATE["\136\2127\225\3\143\1640\165\237n\t\4"]
          f2("\158\144r\161\142\152\189", 22392391570646)
          local vector36 = Vector3
          f2("\138\16\233", 19730409571142)
          humanoidRootPart11.AssemblyLinearVelocity = vector36.new(0, 0, 0)
          f2("\181Y$/O\135\30", 2688413569536)
          humanoidRootPart11.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
          f2("e\247\1\252f|", 16048167971510)
          local cframe26 = CFrame
          f2(".\144H\2\211\1923J", 6689086282981)

          humanoidRootPart11.CFrame = cframe26.new(humanoidRootPart12.Position) * CFrame.new(
            v490 * orbitDistance, MONKSTATE.OrbitHeight, v492 * v493
          )
        end
      end
    end)
  end)

  local v494 = 50
  local flag13 = false
  f2("\134\204\224\194m", 23415609773732)
  local v495 = 0

  local flySection = Instance.new("Frame")
  flySection.Name = "FlySection"
  flySection.Size = UDim2.new(1, 0, 0, 156)

  f2("_\16\217w\224\160", 8821440663930)

  do
    flySection.BackgroundColor3 = Color3.fromRGB(20, 25, 28)
    flySection.BorderSizePixel = 0
    flySection["Y\173\231\127\248\141P\222ވ7"] = 100

    f2("\147\159\14\177X,", 16386305203330)
    f2("\237\2248w", 26425697214386)

    flySection.ZIndex = 2

    f2(",:\199W\167\224", 3678664337346)
    f2("C\164,|\190.\1617", 35042494266598)

    flySection.Parent = container
    local u = _G["\17\142?u\162\175\164\173"]
    f2("\159\202#", 12919532738868)
    local new36 = u.new
    f2("\154\216\239;\26\232\177D", 7504688928759)
    local v496 = new36("UICorner", flySection)
    local udim9 = UDim

    f2("hC;\169\24\30rš\141\179\138", 17069914202222)
    f2("\15\11g", 26498882148593)

    local cornerRadius7 = udim9.new(0, 8)
    f2("\134UOK\212~R ", 15245662440392)
    v496.CornerRadius = cornerRadius7
  end

  local textLabel7

  do
    local instance50 = Instance["%\208\207"]("UIStroke", flySection)
    instance50.Color = Color3.fromRGB(0, 180, 100)

    f2("\241Vc\205T\157\212\210\204n^\185", 15274019306104)
    f2("\152KR\140\215", 25978678135761)
    f2("\223~\250\20\255\240\250p", 34328832996455)

    instance50.Transparency = 0.25
    local instance51 = Instance
    f2("˫\254", 15952867309930)
    local new37 = instance51.new
    f2("\6\27\18\194.a\211\243\129", 16539299374261)
    textLabel7 = new37("TextLabel")
    f2("\189\253\30\209", 28873646386642)
  end

  do
    local udim224 = UDim2
    f2("P\215W", 14597551973486)
    local size11 = udim224["\163\3_"](1, -16, 0, 26)
    f2("o\245\218\239k", 2415006663667)

    textLabel7.Size = size11
    textLabel7.Position = UDim2.new(0, 8, 0, 5)

    f2("L[C\243{v", 541868732451)
    textLabel7.BackgroundTransparency = 1
    f2(",I\131\135\250]\226'\251\160\140\131", 27182065825783)
    textLabel7.Text = "FLY CONTROLS"
    f2("H\143V\149A\1901*\220X", 27754991470109)
    local color323 = Color3
    f2("O\140\216\242\3R\175", 22990896866768)
    local textColor36 = color323.fromRGB(0, 255, 120)
    f2("\210\4\225*", 12349964432979)
    textLabel7.TextColor3 = textColor36
  end

  do
    textLabel7.TextSize = 14
    textLabel7.Font = Enum.Font.GothamBold

    f2("\28\153\240M", 12258517874294)
    f2("b\150\152\183\1856\128\20\145l\232\15\12\146", 19048701625014)

    local enum9 = Enum
    f2("\11g<\253\190\21t\225\191G\224q\245\255", 26338223107130)
    local textXAlignment3 = enum9.TextXAlignment
    f2("Vt[E\236", 14006027766874)
    textLabel7.TextXAlignment = textXAlignment3.Left
    f2("^\18\27\29ˣ\226W", 2598842375433)

    textLabel7.ZIndex = 3
    textLabel7.Parent = flySection
  end

  local textButton8 = Instance.new("TextButton")
  textButton8.Size = UDim2.new(0.48, -8, 0, 32)

  f2("\195)\229\234&~\132\142", 22169954043837)
  f2("\1\27c\5k", 31253442070878)

  textButton8.Position = UDim2.new(0, 8, 0, 36)

  f2('\12\161\155X\141\147\186ʔL7\155\248"\7\202', 14680071083107)
  f2("K\214%\241Ԭ", 13730748787757)

  textButton8.BackgroundColor3 = Color3.fromRGB(35, 75, 55)

  f2("V\190\183\20", 32368082964672)
  f2("\2\1653\217\217k\255\237", 32141730327457)
  f2("\183\25v\241W\17", 10035943340452)

  textButton8.Text = "FLY: OFF"

  do
    local color324 = Color3
    f2("\134B\0058\223ߟ", 6778822269047)
    textButton8.TextColor3 = color324.fromRGB(240, 240, 240)
    f2("m\242!\165\240\15\6Z", 16834828427203)
    textButton8.TextSize = 12
    f2("\1(\252+", 19016575920471)

    textButton8.Font = Enum.Font.GothamBold
    textButton8["X\181\142\4$]"] = 3
    textButton8.Parent = flySection

    f2("\164N\134am\211)\240", 13615482605942)
    local instance52 = Instance
    f2("\145\229\255", 23270284824952)
    local new38 = instance52.new

    f2("\14\149\24\1419㍽", 4743087459119)
    f2("\191\2372?", 26267032336144)

    local v497 = new38("UICorner", textButton8)
    f2("D\204\242\184c\132\188\243+\188\190\15", 30914116888383)
    local udim10 = UDim
    f2("ـ\157", 17667951377367)
    local cornerRadius8 = udim10.new(0, 6)
    f2("\172>\22\209\238\1\254\183", 29862863776501)
    v497.CornerRadius = cornerRadius8
  end

  local textLabel8

  do
    local instance53 = Instance
    f2("y5t", 20681452585059)
    local v498 = instance53["\185\1279"]
    f2("\6eu\232\230\22\237(/", 14575944979258)

    textLabel8 = v498("TextLabel")
    textLabel8.Size = UDim2.new(0.48, -8, 0, 32)

    f2("P\194\127\0׫H\184", 13895639438262)
    f2("\4j\225Ո", 28533470887933)

    textLabel8.Position = UDim2.new(0.52, 0, 0, 36)
    f2("`㛵\190d", 19342274570298)
    textLabel8.BackgroundColor3 = Color3.fromRGB(30, 35, 42)
    f2("\191\136\178\127", 18001113009880)
  end

  do
    textLabel8.Text = "Speed: 50"
    f2("\16\r\189\8FvXE\152\153", 22110111145598)

    textLabel8["r<\22\223w\203Ss\189'"] = Color3.fromRGB(230, 230, 230)
    textLabel8.TextSize = 12

    f2('A"\217\193', 9612464577260)

    textLabel8.Font = Enum.Font.GothamBold
    textLabel8.ZIndex = 3

    f2("\235b\146\174>l", 32739451211055)
    textLabel8.Parent = flySection
    f2("\127\238#\179,A\15\22", 27694268936539)
    local instance54 = Instance
    f2("\142۞", 11932160147886)
    local new39 = instance54.new
    f2("\5\138Kh-\171^\225", 16566379175230)
    local v499 = new39("UICorner", textLabel8)
    local udim11 = UDim.new(0, 6)

    f2("#\1374\162^e leal\235", 12726184161098)
    f2("\27\129\246\3\135\228<\128", 15917069917900)

    v499.CornerRadius = udim11
  end

  local speedSlider

  do
    local instance55 = Instance
    f2("\20\151\220", 18337742129388)
    local new40 = instance55.new
    f2("Jz\234\254\\", 2118038987550)
    speedSlider = new40("TextButton")
    f2("^\1445\170", 4101247127909)
    speedSlider.Name = "SpeedSlider"
    f2("\142\198\231\143", 16616156149198)
    speedSlider.Size = UDim2.new(1, -20, 0, 12)
    f2("\218\252]\180\21?\216(", 25193907269817)
    local udim225 = UDim2
    f2("i\1578", 28709498733943)
    speedSlider.Position = udim225.new(0, 10, 0, 80)
  end

  do
    f2("\226~U\194\2\7wTΤeE\20\191\183\135", 8282690395881)
    local color2 = Color3.fromRGB(55, 65, 70)

    f2("", 18384827642428)
    f2("^gN\2", 1284064436273)

    speedSlider.BackgroundColor3 = color2
    speedSlider.Text = ""
    speedSlider.AutoButtonColor = false
    speedSlider.ZIndex = 3
    speedSlider.Parent = flySection

    f2("\170\191E\234y\209\11\232", 21307325721661)
    local instance56 = Instance
    f2("8\238\157", 28173955342151)
    local v500 = instance56["\237\26["]
    f2("3\181D\\\234\218\26\140", 12934704943616)
    local v501 = v500("UICorner", speedSlider)
    local udim12 = UDim
    f2("\224\136\226u%H\182\162\252\18\152\169", 25875790921527)
    local cornerRadius9 = udim12.new(1, 0)
    f2("\0\129&\189\134\239`\176", 24314289032720)
    v501.CornerRadius = cornerRadius9
  end

  local frame7

  do
    local instance57 = Instance
    f2("\174B\235\142\254", 1553399310605)

    frame7 = instance57.new("Frame")
    frame7.Size = UDim2.new((v494 - 10) / 290, 0, 1, 0)
    frame7.BackgroundColor3 = Color3.fromRGB(0, 255, 120)

    f2("\225\197\30f/rZ5D7\7o#\0\195", 9445346064159)

    frame7.BorderSizePixel = 0
    frame7.ZIndex = 4

    f2("^\251\151{r\229", 27454183568131)
    frame7.Parent = speedSlider
    local instance58 = Instance.new("UICorner", frame7)
    local udim13 = UDim

    f2("\169\147=", 10473673307598)
    f2("\22\1894C\137FNKn", 24690390996164)

    instance58.CornerRadius = udim13.new(1, 0)
  end

  local frame8 = Instance.new("Frame")
  frame8.Size = UDim2.new(0, 16, 0, 16)

  f2("\169\216;\167\156KI%\236F\151", 17927499205119)

  frame8.AnchorPoint = Vector2.new(0.5, 0.5)
  frame8.Position = UDim2.new((v494 - 10) / 290, 0, 0.5, 0)

  f2("\225BN\172%\222\194t\159\208D\166\145\161\29s", 33003425016837)

  frame8.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
  frame8.BorderSizePixel = 0
  frame8.ZIndex = 5
  frame8.Parent = speedSlider

  f2("\178\241`\158\2014qt", 5076518766929)
  f2(".\235\r6", 24275455145159)

  do
    local k2 = Instance["k`\169"]

    f2("\162\128\219zன\179", 14430734610096)
    f2("m}}z\129Z\157\3", 87852286102)

    k2("UICorner", frame8).CornerRadius = UDim.new(1, 0)

    f2("\143\192O\154\2@\128\141", 4907155406468)
    f2("8\172\149*l", 22701866578406)

    local textLabel9 = Instance.new("TextLabel")
    textLabel9.Size = UDim2.new(1, -20, 0, 18)
    textLabel9.Position = UDim2["}\161J"](0, 10, 0, 96)

    f2("\180\228\233\232\158ߔ\176XF\138Y\135`\21\0b\27\25;X\23", 10581064762694)
    f2("\147\235\146\19\8\159", 27688929869299)

    textLabel9.BackgroundTransparency = 1

    f2("\193\174\16\30\137m5fu\170πhSL~^\n\249\17\209", 4579116741636)
    f2("\179-\253\19", 1081047541965)

    textLabel9.Text = "Drag slider: 10 - 300"
    f2("\210\19m21\200\192)\1320", 16579947134027)
    local g = Color3["$g\152\244ڀ\2"]
    f2("\229\234\187\249&<\7*\139\r", 4871416482595)

    textLabel9.TextColor3 = g(150, 165, 160)
    textLabel9.TextSize = 10

    f2("\161{\146\191", 4595047428453)
    local v502 = Enum["\252\218<'"]

    f2("\143X;\201\16", 25098779223209)
    f2("ɗ\134\220\251\252", 7533376738318)

    textLabel9.Font = v502.Gotham
    textLabel9.TextXAlignment = Enum.TextXAlignment.Left

    f2("\179\1871\206]\220", 1577538501256)

    textLabel9.ZIndex = 3
    textLabel9.Parent = flySection
  end

  local instance59 = Instance.new("\168\22\135*\4")

  do
    f2("\133\199Q\4", 15975231317838)
    instance59.Size = UDim2.new(1, -20, 0, 28)

    f2("\190h\184\133\161", 33408840631069)
    f2("\n\0157\248U\215\225g", 5010573979877)

    local udim14 = UDim2.new(0, 10, 0, 120)

    f2("\251\149\20y,", 2643658224508)
    f2("r\143\23\180z\29o\198\218`", 30179609251164)

    instance59.Position = udim14
    instance59["\31u\26\167Z4\140Uɧ.Q\145:Yxm\193\174\132L|"] = 1
    instance59.ZIndex = 3
    instance59.Parent = flySection
  end

  local function makeTextButton2(text2, p51)
    local textButton9 = Instance.new("TextButton")
    textButton9.Size = UDim2.new(0.5, -4, 1, 0)

    f2("\25\188\222d\133", 11985413110462)
    textButton9.Position = UDim2.new(p51, p51 == 0 and 0 or 8, 0, 0)

    f2("u\151g\1\192YFa\t3\189\22033\190\242", 9165100995912)
    f2('\177"\169\4\148\7', 4161369406243)

    local color325 = Color3
    f2("G\181\25\205\217u\227", 7021248698594)
    local backgroundColor37 = color325.fromRGB(30, 65, 50)
    f2("b\151\181B0n", 6984704524729)

    textButton9.BackgroundColor3 = backgroundColor37
    textButton9.Text = text2

    f2("/+\134\251\12\203v֎\17", 33727703122720)
    local color326 = Color3
    f2("Q\14\16\n\165\18w", 35106586768562)
    local v503 = color326.fromRGB(240, 240, 240)
    f2("\130\203\205\207", 10590562429438)
    textButton9["\138|6\153\0079\220u\220\245"] = v503
    f2("\183$u\151\150\165qC", 22220571154029)
    textButton9.TextSize = 11
    local enum10 = Enum

    f2("ɍ\8S", 26964000462760)
    f2("\173\128\254\18", 12560603638483)

    local font5 = enum10.Font
    f2("\156\170;ii\206YF\196\209", 8638101638319)
    local gothamBold2 = font5.GothamBold
    f2("5\27\11\137*\176\155G", 12035211672832)

    textButton9.Font = gothamBold2
    textButton9.ZIndex = 4
    textButton9.Parent = instance59

    local instance60 = Instance.new("UICorner", textButton9)
    f2("\147!\146>", 17392366724967)
    instance60["\146\166!qյL|\236\244L\30"] = UDim.new(0, 5)
    return textButton9
  end

  f2("\152\30vlbl\136\167om\1799", 19095247855276)
  local textButton10 = makeTextButton2("HOLD TO RISE", 0)
  f2("Dm\1346\195o\144\181\247\188\237\127\132\229\152", 9853519341873)
  local textButton11 = makeTextButton2("HOLD TO DESCEND", 0.5)

  do
    local function f19(x7)
      local x8 = speedSlider.AbsoluteSize.X

      if x8 <= 0 then
        return
      end

      local clamped3 = math.clamp((x7 - speedSlider.AbsolutePosition.X) / x8, 0, 1)
      f2(" V\225\21", 17197785980780)
      local v504 = math
      f2("b\183\238j\\", 9639354946635)
      local floor3 = v504.floor
      f2("\193\137ï\180\162_\201", 26016371287197)
      local v505 = floor3(10 + clamped3 * 290 + 0.5)
      f2("\196ki_\25)K", 22827012727041)
      v494 = v505
      local v506 = tostring(v494)

      f2("\182\24=\176", 3532261897237)
      f2("\21&\186;\8", 18259519221154)

      textLabel8.Text = "Speed: " .. v506
      frame7.Size = UDim2.new(clamped3, 0, 1, 0)
      f2('\214QAv\201"l\1', 22423199110077)
      frame8.Position = UDim2.new(clamped3, 0, 0.5, 0)
    end

    local flag14 = false

    speedSlider.InputBegan:Connect(function(input6)
      local v507 = input6.UserInputType == Enum.UserInputType.MouseButton1
      local v508 = v507

      if not v507 then
        f2("4\134\16\187", 9386868493888)
        v508 = input6.UserInputType == Enum.UserInputType.Touch
      end

      if v508 then
        flag14 = true
        f19(input6.Position.X)
      end
    end)

    userInputService.InputChanged:Connect(function(input7)
      local v509 = flag14
      local v510 = v509

      if v509 then
        f2(".{\3\18\7\148Hn\22\19\20\2-", 1761876840604)
        f2("\143\2314\171", 22598586192268)

        local v511 = input7.UserInputType == Enum.UserInputType.MouseMovement
        local v512 = v511

        if not v511 then
          f2('\223\7~ 㠃^\149i%\21"', 8875912210136)
          f2("\141\129\131\251", 22589378300179)
          v512 = input7.UserInputType == Enum.UserInputType.Touch
        end

        v510 = v512
      end

      if v510 then
        f2("\152\174Mz\158\248+\250", 4893803195824)
        f19(input7.Position.X)
      end
    end)

    userInputService.InputEnded:Connect(function(input8)
      local v513 = f2("\149*\21\171\248\140\226T/\154\200N\252", 18881780760)
      local v514 = f2("C\29{\176", 32486317387140)
      local v515 = input8.UserInputType == Enum.UserInputType["\227\215ɘ\228+A O\157\30{"]
      local v516 = v515

      if not v515 then
        f2("\200\202'p\231\155#X)0O(\\", 22001544594935)
        f2("\189\203i\171", 16700949763921)
        v516 = input8["\143\222X\246s\228\255\169\6\6'zX"] == Enum.UserInputType.Touch
      end

      if v516 then
        flag14 = false
      end
    end)
  end

  local function getCharacter()
    local v517 = f2("\162\147(\240\238םY\244", 23425804204025)
    local character21 = localPlayer.Character

    if not character21 then
      return nil, nil, nil
    end

    f2("\247\161z\1858Ԉ\138", 29097040794262)
    return character21, character21:FindFirstChildOfClass("Humanoid"), character21:FindFirstChild("HumanoidRootPart") or character21:FindFirstChild("Torso")
  end

  local connect2, MONKFlyVelocity, MONKFlyGyro

  local function f20()
    flag13 = false
    v495 = 0

    if connect2 then
      connect2:Disconnect()
      connect2 = nil
    end

    if MONKFlyVelocity then
      MONKFlyVelocity:Destroy()
      MONKFlyVelocity = nil
    end

    if MONKFlyGyro then
      MONKFlyGyro:Destroy()
      MONKFlyGyro = nil
    end

    local _, v518 = getCharacter()

    if v518 then
      f2(")݊N\202M\22Z\150\174=QA", 11506143200481)
      f2("T\247ڃ", 1162517017944)

      v518.PlatformStand = false
      v518:ChangeState(Enum.HumanoidStateType["\137\30\nv\180\219`\1339"])
    end

    f2("\221ۣ5\222\224\215W", 29762968000141)
    f2("A:6\130", 26652043192055)
    f2("\228#JU?\224", 8096735864037)

    textButton8.Text = "FLY: OFF"
    local color327 = Color3
    f2("\30\150\243qf\254\199", 24561246344926)
    textButton8.BackgroundColor3 = color327.fromRGB(35, 75, 55)
  end

  local v519, v520, v521, v522, seen

  do
    local function makeBodyVelocity()
      local v523, v524, instance61 = getCharacter()

      if not v523 or not v524 or not instance61 then
        return
      end

      if connect2 then
        f2('\4N"\191\229\220&\199:\151', 32003966404431)
        connect2:Disconnect()
        connect2 = nil
      end

      if MONKFlyVelocity then
        f2("n\12@Nw\188\208", 7609291329789)
        MONKFlyVelocity:Destroy()
      end

      if MONKFlyGyro then
        f2("'\133\213ǭ\161\171", 9838163006473)
        MONKFlyGyro:Destroy()
      end

      f2("[>\142\252j\14DQ+nS\247p\5\194\30", 141394716624)
      f2("\1824\229\\@\6\250A\237\168\254\215\235", 1281696488184)

      flag13 = true
      v495 = 0
      v524.PlatformStand = true
      f2(" E\193\250\207-\222\244", 21049579989979)
      local bodyVelocity2 = Instance.new("BodyVelocity")

      f2('"\255\189\252', 15073767747189)
      f2("\186\21\158a쑚", 15215170452035)

      MONKFlyVelocity = bodyVelocity2
      MONKFlyVelocity.Name = "MONKFlyVelocity"

      local v525 = MONKFlyVelocity
      local vector37 = Vector3
      f2("\220b;", 24510711983216)
      v525.MaxForce = vector37.new(1000000000, 1000000000, 1000000000)

      MONKFlyVelocity["^"] = 10000
      MONKFlyVelocity.Velocity = Vector3.zero

      f2("+\245\15\203۰,", 7098644517531)
      f2("\5\142\232=˿", 23247782206409)

      local instance62 = MONKFlyVelocity
      f2("\19\254\190J҆E\156l\178\132\248", 24230937266018)
      instance62.Parent = instance61
      f2("^^ǚ\193\141\157,", 22986570946472)
      local bodyGyro = Instance.new("BodyGyro")
      f2('\28"\133S', 4113672577427)

      MONKFlyGyro = bodyGyro
      MONKFlyGyro.Name = "MONKFlyGyro"
      MONKFlyGyro.MaxTorque = Vector3.new(1000000000, 1000000000, 1000000000)

      local v526 = MONKFlyGyro
      f2("r޸h^\2", 18880753700642)
      v526.P = 10000

      MONKFlyGyro.CFrame = instance61.CFrame
      MONKFlyGyro.Parent = instance61

      f2("\3\131\180\154\248w\186", 8792440276749)
      textButton8.Text = "FLY: ON"

      f2("ߺrk\228\163", 29780205827701)
      f2("u:x\227\3\134\130\155\17\148\152\16m`KS", 32398339824521)

      local color328 = Color3
      f2("X\133\1\4\220'\19", 11176864247944)
      local backgroundColor38 = color328.fromRGB(0, 135, 75)
      f2("\239\26\189\27\31", 31122328938025)
      textButton8.BackgroundColor3 = backgroundColor38
      local v527

      pcall(function()
        local v528 = f2("\17\188\193\132\171(\251", 25925484321681)
        local v529 = f2("\23\1\225\29\140'\183\150\21P\159\158", 32742394327874)
        v527 = require(localPlayer:WaitForChild("PlayerScripts"):WaitForChild("\193kb\165L\2D\1309\186:\185"))
      end)

      local v530 = v527

      local getControls = v530
      getControls = v530 and v527:GetControls()

      f2("\29\215\2229ͼ\7F\169", 15879185987886)
      f2("P\16\\\23ȼ\5\21\238", 18649014287266)

      local v531 = getControls
      local currentCamera6 = workspace.CurrentCamera
      local xK = runService["\231!x\201^\207\8K\3"]
      f2("\18%W\229\129\192\139\6(\128\163!\18!", 21208400081275)

      connect2 = xK:Connect(function()
        if not flag13 or not instance61.Parent or not MONKFlyVelocity or not MONKFlyGyro then
          return
        end

        f2("\177\2j͊<8\146\218", 34069521723317)
        local v532 = workspace
        f2("h\192\r#\15V1Y\24<v3u", 33705245779539)
        local currentCamera7 = v532.CurrentCamera
        f2("\127!\219\1\137~h", 13270923166562)
        currentCamera6 = currentCamera7
        local zero = Vector3.zero

        if v531 then
          f2("\0\251\137\28\247\21\11\225s\154X\207\246", 31399409352672)
          local getMoveVector = v531:GetMoveVector()
          zero = currentCamera6.CFrame:VectorToWorldSpace(getMoveVector)
        end

        local v533 = zero + Vector3.new(0, v495, 0)

        if v533.Magnitude > 0 then
          v533 = v533.Unit * v494
        end

        f2("\4{\190\129\138\137{L", 19700440165554)
        local v534 = MONKFlyVelocity
        local v535 = MONKFlyVelocity
        f2("kM\27\20\130\23\231g", 32886072569623)
        local velocity5 = v535.Velocity

        f2("FV\173\211", 28473215140284)
        f2("_\146\187\8im\172'", 22641134941965)

        local lerp = velocity5:Lerp(v533, 0.25)
        f2("_\3\216ĒP", 11914057839880)
        v534.Velocity = lerp
        local v536 = MONKFlyGyro
        local cframe27 = CFrame
        f2("\243\179\15\128v\7", 4034532004748)
        local lookAt = cframe27.lookAt
        f2("Ë\194M &ڜ", 4038752440514)

        v536.CFrame = lookAt(
          instance61.Position, instance61.Position + currentCamera6.CFrame.LookVector
        )
      end)
    end

    textButton8.MouseButton1Click:Connect(function()
      if flag13 then
        f20()
      else
        makeBodyVelocity()
      end
    end)

    local function f21(p52, p53)
      p52.InputBegan:Connect(function(input9)
        local v537 = f2("\152\209\240\219", 8797919470716)
        local v538 = input9.UserInputType == Enum.UserInputType.MouseButton1
        local v539 = v538

        if not v538 then
          f2("lY\2429", 12454259263970)
          v539 = input9.UserInputType == Enum.UserInputType.Touch
        end

        if v539 then
          v495 = p53
        end
      end)

      p52.InputEnded:Connect(function(input10)
        local v540 = input10.UserInputType == Enum.UserInputType.MouseButton1
        local v541 = v540

        if not v540 then
          f2("Q:Q\162\137w\0L\218ig,\215", 7225160438765)
          f2("\152r\139k", 35135038703420)
          v541 = input10.UserInputType == Enum.UserInputType.Touch
        end

        if v541 then
          if v495 == p53 then
            v495 = 0
          end
        end
      end)
    end

    f21(textButton10, 1)
    f21(textButton11, -1)

    localPlayer.CharacterAdded:Connect(function()
      if flag13 then
        task["\238͏\12"](1)
        makeBodyVelocity()
      end
    end)

    f2("\149_\200\216\243g\170", 26260128628775)
    v519 = false
    v520 = 100
    v521 = 0
    v522 = 11979617884151

    seen = {
      forward = false,
      backward = false,
      left = false,
      right = false,
    }
  end

  local flag15 = false
  local map3 = {}
  local zero2 = Vector2.zero

  local frame9 = Instance.new("Frame")
  frame9["\168\219\29\30"] = "VehicleMobileJoystick"
  frame9.Size = UDim2.fromOffset(132, 132)

  f2("\158\18\163ٲ{\250\135", 4795291488488)
  f2("\0\243Uh3", 17945704912467)
  f2("\148\166\236\r", 8240350596802)

  frame9.Position = UDim2.new(0, 24, 1, -160)
  frame9.AnchorPoint = Vector2.new(0, 0)
  frame9.BackgroundColor3 = Color3.fromRGB(20, 25, 28)

  do
    f2("\6\8\223a\252|hT\242\160t8_&\184@SR\170c\22W", 5991259468199)

    frame9.BackgroundTransparency = 0.2
    frame9.Visible = false
    frame9.Active = true
    frame9.ZIndex = 20

    f2("\233\15Y\143\172\155", 18846229322989)
    frame9.Parent = screenGui

    local new41 = Instance.new
    new41("UICorner", frame9).CornerRadius = UDim.new(1, 0)

    local instance63 = Instance
    f2("\180>\252", 16810121513505)

    local v542 = instance63["\19ܴ"]("UIStroke", frame9)
    v542.Color = Color3.fromRGB(0, 255, 120)

    f2("\211\21\25Cdښ\129", 9531261474284)

    v542.Thickness = 2
    v542.Transparency = 0.15
  end

  local knob

  do
    local s9 = _G["\228\206\4\222\24S9\144"]
    f2("R\128\14\20", 11859138577286)
    knob = s9.new("Frame")
    f2("\181d\194\146", 1038645484223)
    knob.Name = "Knob"
    f2(">\19\160\215", 29453557230145)
    knob.Size = UDim2.fromOffset(52, 52)
    f2("*\174\149$\156\143\169fw\153\182", 5387539569957)

    knob.AnchorPoint = Vector2.new(0.5, 0.5)
    knob.Position = UDim2.new(0.5, 0, 0.5, 0)
    knob.BackgroundColor3 = Color3.fromRGB(0, 180, 100)
    knob.BackgroundTransparency = 0.05
  end

  do
    f2("\222cQi\148q", 20238754154342)

    knob.Active = true
    knob.ZIndex = 21

    f2("ZZ0\8cT", 21933474861464)
    knob.Parent = frame9

    local instance64 = Instance.new("UICorner", knob)
    instance64["\178F\147\157\nl|\19\29\247\131\129"] = UDim.new(1, 0)
  end

  local v543

  local function f22()
    local v544 = f2("\151\168\154\180\182ܖ", 34655778685323)
    local vector22 = Vector2
    local v545 = f2("\168\202\1\136k", 29712170983564)
    zero2 = vector22.zero
    v543 = nil
    knob.Position = UDim2.new(0.5, 0, 0.5, 0)
  end

  local function f23(position12)
    local v546 = f2('0`\\\155Qyg~\135"\164\135\169\253(\171', 25655268027993)
    local absolutePosition = frame9.AbsolutePosition
    local v547 = f2('Ԍ\24\152"\135\175k\241\159,\129', 7884800802761)
    local absoluteSize = frame9.AbsoluteSize
    local v548 = f2("\184\13728B\1940\246\146]\215r", 5919252559771)
    local v549 = f2("\239", 10468119413512)
    local v550 = f2("(\20\2(\234\139M", 7367529360466)
    local vector23 = Vector2
    local v551 = f2(" Tl", 31437844389904)
    local v552 = f2("\170", 3623965868955)
    local v553 = vector23.new(position12.X, position12["\5"])
    local v554 = f2('[3"_\29~\2213\201j\164X', 24003696100766)
    local v555 = v553 - (absolutePosition + absoluteSize / 2)
    local v556 = (frame9.AbsoluteSize.X - knob.AbsoluteSize.X) / 2

    if v555.Magnitude > v556 then
      v555 = v555.Unit * v556
    end

    f2("\221_\1924\141", 656314694113)
    f2("l\162\159\193\19jgt", 14307431786795)

    local udim226 = UDim2

    f2(">", 24689364561890)
    f2("\188\27\205", 23527934940206)

    local position13 = udim226.new(0.5, v555.X, 0.5, v555.Y)
    f2("\140", 15351813153606)
    knob.Position = position13

    f2("\213", 22145590708758)
    f2("X\160\218\216", 34687165713527)
    f2("\235\155\16\170\2223!", 29968035537269)

    local highest = math.max(1, v556)
    zero2 = Vector2.new(v555.X / highest, v555.Y / highest)
  end

  f2("u\21\tl&к\231\t\249)2\15\225Ѕ\168", 15463107982293)

  local function makeTextButton3(h2, text3, p54)
    local v557 = f2("!\180%\224\7+m\227", 23409960747382)
    local v558 = f2("V\190\242\128o", 9885869701841)

    local textButton12 = Instance.new("TextButton")
    textButton12["?\166h\26"] = h2

    local udim227 = UDim2

    f2("\0159w\207", 7944289025042)
    f2("\173\171\30\185V\t\187L\23\157", 15265390146944)

    local size12 = udim227.fromOffset(58, 58)
    f2("\2313\21\235B", 29256494087329)

    textButton12.Size = size12
    textButton12.Position = UDim2.new(1, p54, 1, -174)
    textButton12.AnchorPoint = Vector2.new(1, 0)

    f2("k\30D\227\22\176", 34993459237038)

    textButton12.BackgroundColor3 = Color3.fromRGB(20, 25, 28)
    textButton12.BackgroundTransparency = 0.15
    textButton12.Text = text3

    f2('+{\4p;"', 9945464147826)
    textButton12.TextColor3 = Color3.fromRGB(0, 255, 120)
    f2("d\212\29\145", 33601828616047)
    textButton12.TextSize = 24
    local enum11 = Enum
    f2("\163\230,\209", 11455590733558)

    textButton12.Font = enum11.Font.GothamBold
    textButton12.Visible = false
    textButton12.Active = true
    textButton12.ZIndex = 20

    f2("a\137\137^\193\142", 21152138812460)
    f2("\173ԥa\242\248K}", 26168431384257)

    textButton12.Parent = screenGui
    local k7 = _G["\254\156K7ܙ\193\200"]
    f2("ܴ\176", 27080570468069)
    local new42 = k7.new
    f2("\2\210\254\15V\0:\232", 10799581511214)
    local v559 = new42("UICorner", textButton12)

    f2("\128B\232\7", 895608576738)
    f2("\166\26Ay\205~P\1280\138T\254", 30836147272102)

    local udim15 = UDim
    f2("|Ϋ", 33322421806429)
    local cornerRadius10 = udim15.new(1, 0)

    f2("\241\rJ\130B1\144\186", 28623260701956)
    f2("}\n\200\8\177\26", 11765608371502)

    v559.CornerRadius = cornerRadius10
    local instance65 = Instance.new("UIStroke", textButton12)
    local yNV = _G["yN\223\248v\222"]
    f2("\20\206\127x/\130b", 12910311942902)

    instance65["\248z_\16U"] = yNV.fromRGB(0, 255, 120)
    instance65.Thickness = 2

    return textButton12
  end

  local textButton13 = makeTextButton3("VehicleRiseButton", "↑", -28)

  f2("\216\127\131", 28883047244194)
  f2("\189\251\14\14\173\241\168\3,\20\201ߡP\141\213/\152\1358", 9629613859634)

  local textButton14 = makeTextButton3("VehicleDescendButton", "↓", -96)

  do
    local function f24(p55)
      v521 = p55
    end

    local function f25(p56, p57)
      p56.InputBegan:Connect(function(input11)
        if input11.UserInputType == Enum.UserInputType.Touch
          or input11.UserInputType == Enum.UserInputType.MouseButton1 then
          f24(p57)
        end
      end)

      p56.InputEnded:Connect(function(input12)
        local v560 = input12.UserInputType == Enum["+\15\204&\249ɚ\252ƹ\212UA"].Touch
        local v561 = v560

        if not v560 then
          f2("\26\26[\1\222+\239\215-\192\17y8", 20337738288429)
          f2("\235d\166\250", 12886762534577)
          v561 = input12.UserInputType == Enum["\203MQ\236Jv\238\20\164\7\6H\7"].MouseButton1
        end

        if v561 then
          if v521 == p57 then
            f24(0)
          end
        end
      end)
    end

    f25(textButton13, 1)
    f25(textButton14, -1)
  end

  local function f26()
    local zpUSX = userInputService["\181\240>zpU\246\151S'x\209"] and v519
    frame9["W\228A\142\210\198\208"] = zpUSX
    textButton13.Visible = zpUSX
    textButton14.Visible = zpUSX

    if not zpUSX then
      f22()
      v521 = 0
    end
  end

  local vehicleFlySection

  do
    frame9.InputBegan:Connect(function(input13)
      local v562 = f2("rC\137g", 28328639308456)
      local v563 = input13.UserInputType == Enum.UserInputType.Touch
      local v564 = v563

      if not v563 then
        f2("^q\175\171\2\154\n\191\173ߥX\219", 20660107672221)
        f2("\239\30#\n", 26641166721489)
        v564 = input13.UserInputType == Enum.UserInputType.MouseButton1
      end

      if v564 then
        v543 = input13
        f23(input13.Position)
      end
    end)

    knob["\159\145\162or\163\200\195\7'"]:Connect(function(p58)
      local v565 = f2("\240낷", 4509946940704)

      if p58.UserInputType == Enum.UserInputType.Touch
        or p58.UserInputType == Enum.UserInputType.MouseButton1 then
        v543 = p58
        f23(p58.Position)
      end
    end)

    userInputService["˒\169q\207Ty\167d\246s\199"]:Connect(function(p59)
      if v543 and p59 == v543 then
        f23(p59.Position)
      else
        local v566 = v543
        local v567 = v566

        if v566 then
          f2("\176\31!\246", 29189613518419)
          v567 = p59.UserInputType == Enum.UserInputType.Touch
        end

        if v567 then
          f23(p59.Position)
        else
          local v568 = v543
          local v569 = v568

          if v568 then
            f2("Ba\244{", 27027556093334)
            v569 = p59.UserInputType == Enum.UserInputType.MouseMovement
          end

          if v569 then
            f23(p59.Position)
          end
        end
      end
    end)

    local inputEnded = userInputService.InputEnded
    f2("\11\r\254\172", 27865385708619)

    inputEnded:Connect(function(p60)
      local v570 = v543
      local v571 = v570

      if v570 then
        local v572 = p60 == v543
        local v573 = v572

        if not v572 then
          f2("\141\29\6\251T\218\228\189\204/@\1R", 14749041621435)
          f2("\222\206\23\156", 30049169557646)

          local v574 = p60["\178\244\16\0144\209\0\219@vB4\243"] == Enum.UserInputType.Touch
          local v575 = v574

          if not v574 then
            f2("\29\148\228y", 8242505299067)
            v575 = p60.UserInputType == Enum.UserInputType.MouseButton1
          end

          v573 = v575
        end

        v571 = v573
      end

      if v571 then
        f22()
      end
    end)

    vehicleFlySection = Instance.new("\183)B{I")
    vehicleFlySection.Name = "VehicleFlySection"

    local udim228 = UDim2
    f2("y\243\245\23", 24290495472167)
    vehicleFlySection.Size = udim228.new(1, 0, 0, 152)
    f2("\217\28\243\145tt", 28436575034523)
  end

  do
    vehicleFlySection.BackgroundColor3 = Color3.fromRGB(20, 25, 28)
    vehicleFlySection["\130\1618\25\247\248?\147\5\182ɣ\151\231\225"] = 0
    vehicleFlySection.LayoutOrder = 101

    f2("\213W*uFw\197\229", 4916396099957)
    f2("\8\152 \181", 9056098429724)

    vehicleFlySection.ZIndex = 2
    vehicleFlySection.Parent = container

    local instance66 = Instance.new("UICorner", vehicleFlySection)
    local udim16 = UDim

    f2("\171\174\252", 34917142217476)
    f2("\16\159\141\186\11\30\170\158q\1640U", 13359455771722)

    instance66["\0\248\245h6-\181\214\254\204b\4"] = udim16.new(0, 8)
  end

  do
    local instance67 = Instance
    f2("\4\252H", 10747925232270)
    local v576 = instance67.new("UIStroke", vehicleFlySection)
    f2("\188\\\2068\247", 12847388800084)
    local color329 = Color3
    f2("\230\212\225\6N^\209", 26549561926395)

    v576.Color = color329.fromRGB(0, 180, 100)
    v576.Transparency = 0.25

    local textLabel10 = Instance.new("TextLabel")
    textLabel10.Size = UDim2.new(1, -16, 0, 26)

    f2("I\160Ɇ\243", 31542075076629)
    local udim229 = UDim2
    f2("*\t\153", 13964094061264)

    textLabel10.Position = udim229["tL\20"](0, 8, 0, 5)
    textLabel10.BackgroundTransparency = 1
    textLabel10.Text = "VEHICLE FLY"
    textLabel10.TextColor3 = Color3["\141\141\17\19\213\196\193"](0, 255, 120)

    f2("\179+ht\237s\n\242", 5853980199118)
    f2("\1346\148\244", 16653197090781)

    textLabel10.TextSize = 14
    textLabel10["\139)\156F"] = Enum.Font.GothamBold

    local enum12 = Enum
    f2("\127\149\213Q\154\6iGfCp\145t\138", 35036156857958)
    textLabel10.TextXAlignment = enum12.TextXAlignment["\216V\0005"]
    f2("\0051u\236\172\21", 27934795047379)

    textLabel10.ZIndex = 3
    textLabel10["\210\r\249֢m"] = vehicleFlySection
  end

  local textButton15 = Instance["\250\223?"]("TextButton")
  textButton15["նy\177"] = UDim2.new(0.42, -8, 0, 32)

  f2("\\3\12e\237W\147\21", 5241715640951)
  textButton15.Position = UDim2.new(0, 8, 0, 36)
  f2("6 \27|\3\146\30Za\231auKG\243\219", 20737757527712)
  textButton15.BackgroundColor3 = Color3.fromRGB(35, 75, 55)

  f2('5*"\128', 6561456796649)
  f2("VUE+\0j", 25941799448406)

  textButton15.Text = "VEHICLE: OFF"
  textButton15.TextColor3 = Color3.fromRGB(240, 240, 240)

  f2("\24DgKj/\nc", 2189635889800)
  f2("\168߱h\251\232G\173\177\204\4\1\161\1997Bd", 25659526165961)

  do
    textButton15.TextSize = 11
    textButton15.Font = Enum.Font.GothamBold
    textButton15.ZIndex = 3

    f2("\187\223K\24\213\214", 28454348133274)
    f2("\r\2C\253", 24382998308540)

    textButton15.Parent = vehicleFlySection
    local instance68 = Instance.new("UICorner", textButton15)
    f2("\167\t\220\t\24\247\18G\222ěA", 23307929898804)
    local cornerRadius11 = _G["ٵ\214\243"]["\215~2"](0, 6)

    f2("\n\141T\223\239", 4123650629728)
    f2("\222^\236K:cf\241", 12993557691275)

    instance68.CornerRadius = cornerRadius11
  end

  local textLabel11

  do
    textLabel11 = Instance.new("TextLabel")
    textLabel11.Size = UDim2.new(0.52, -8, 0, 32)

    f2("4yJgR\231\133\243", 1997266881397)
    f2("\21\222Y\8(", 13660093816710)

    textLabel11.Position = UDim2.new(0.48, 0, 0, 36)
    f2("\251\137NT#\14&\216\127Z\223\224\211.\142\253", 19704612464098)
    local color4 = Color3.fromRGB(30, 35, 42)

    f2("\234\237}\187H\0X\199Q\184\154:\131\1754\163!\28", 29208042966610)
    f2("ѫ\235\138{T", 32927710586690)

    textLabel11.BackgroundColor3 = color4
    textLabel11.Text = "Vehicle speed: 100"

    f2("\n\168H̅\240Rq&^", 30410366156898)
  end

  local vehicleSpeedSlider

  do
    local color5 = Color3.fromRGB(230, 230, 230)
    f2("\198\228\131\217", 15763889544229)

    textLabel11.TextColor3 = color5
    textLabel11.TextSize = 11

    f2("\176\162\239\160", 31214548299194)

    textLabel11.Font = Enum.Font["\3\149S\175\192w/61\20"]
    textLabel11.ZIndex = 3
    textLabel11.Parent = vehicleFlySection

    local hAwx = _G["\153\173\153h\143awx"]
    hAwx.new("UICorner", textLabel11).CornerRadius = UDim.new(0, 6)

    local instance69 = Instance
    f2("⚣\12\182\226XMP\1359\213\253\222uf\n\24", 21269506460897)
    vehicleSpeedSlider = instance69["\216\25H"]("TextButton")
  end

  f2("\19\205\8\252", 10713035777876)
  vehicleSpeedSlider.Name = "VehicleSpeedSlider"
  f2("\tՖ\143", 28714639763881)
  vehicleSpeedSlider.Size = UDim2.new(1, -20, 0, 12)
  f2("Ӄ\234\207~\162a\164", 14111280503809)
  vehicleSpeedSlider.Position = UDim2.new(0, 10, 0, 82)
  f2("\251\15\1595O\0257\232+\143x@\30\186ԙ", 22740218023030)
  vehicleSpeedSlider.BackgroundColor3 = Color3.fromRGB(55, 65, 70)
  f2("\0\237\17\215", 10359202939281)

  vehicleSpeedSlider.Text = ""
  vehicleSpeedSlider.AutoButtonColor = false
  vehicleSpeedSlider[v14[v522("\234Sk\188P\127", 33682853972053)]] = 3

  local frame10

  do
    f2("c\150\202r\241=", v522)
    vehicleSpeedSlider.Parent = vehicleFlySection
    local instance70 = Instance.new("UICorner", vehicleSpeedSlider)
    local udim17 = UDim

    f2("\139\25\8", 10976919195170)
    f2("\2278\248'\18,z.\149\174\151C", 15274068784204)

    instance70["دG\204\31\177\12+d\2\14\12"] = udim17["\164sk"](1, 0)
    frame10 = Instance.new("Frame")
    local udim230 = UDim2
    f2("\\\188\238", 18824093207296)
    frame10.Size = udim230.new((v520 - 10) / 490, 0, 1, 0)
    f2("\150p\159\5ݠ\166\131v\206:\211x\3\143@", 18836887153475)
  end

  local frame11

  do
    frame10.BackgroundColor3 = Color3.fromRGB(0, 255, 120)
    frame10.BorderSizePixel = 0
    frame10.ZIndex = 4

    f2("\191Yr\137\160n", 22827900573725)
    frame10.Parent = vehicleSpeedSlider
    local instance71 = Instance.new("UICorner", frame10)
    f2("P\245u#\217$\244\171\190J~\152", 29944747548846)
    instance71.CornerRadius = UDim.new(1, 0)
    frame11 = Instance.new("Frame")
    local v577 = f2("\22\181\244\155", v14)
    frame11[v14[v577]] = UDim2.new(0, 16, 0, 16)
    f2("\227\198\195\201\203\238\221ٸ\14\176", 8971926856148)
  end

  do
    local new43 = Vector2.new
    f2("5NV>\2409ĸ\178`b\n\152\204\249\187`", 19067222642639)

    frame11.AnchorPoint = new43(0.5, 0.5)
    frame11.Position = UDim2.new((v520 - 10) / 490, 0, 0.5, 0)

    local color330 = Color3
    f2(" \240\t'DK>\t\174\136\244\226熳\170", 24196179202419)

    frame11.BackgroundColor3 = color330.fromRGB(245, 245, 245)
    frame11.BorderSizePixel = 0
    frame11["\188-\1574`c"] = 5
    frame11["[`\241\0282j"] = vehicleSpeedSlider

    local new44 = Instance.new
    f2("J\133ʧ: =\248", 33729165483248)
    local v578 = new44("UICorner", frame11)
    f2("Q\188{\24\138\191\1.\214g$N", 25582170767792)
    v578.CornerRadius = UDim.new(1, 0)
  end

  do
    local textLabel12 = Instance.new("TextLabel")

    f2("\160\26;7", 32731396948392)
    f2("y\135k\169H", 18984817168316)

    textLabel12.Size = UDim2.new(1, -20, 0, 18)
    textLabel12.Position = UDim2.new(0, 10, 0, 101)
    textLabel12.BackgroundTransparency = 1

    f2(
      '"V\148\246\246\140A\162\226J;\132m3X9\231\179bd\154b\n\135\11Q\187\167\176\208\225\8%\2D\190>\176\146\3\238U\216\207\240\170\136AZIp\245!>\1',
      26158125492279
    )

    f2("\202\254\239W\238]", 9159635884425)

    textLabel12["\20q\133\11"] = "Drag to set vehicle speed: 10 - 500 | WASD + Space/Ctrl"
    textLabel12.TextColor3 = Color3.fromRGB(150, 165, 160)
    textLabel12.TextSize = 9

    f2("\208RN\225", 13595772443903)
    local font6 = Enum.Font
    f2("\171p%\28", 7485914339493)
    textLabel12.Font = font6.Gotham
    f2("Z\140$@\25/:\151,[\236\199\249\250", 16617805486947)
    local enum13 = Enum
    f2("\227\173\196\219E\192'\226\165\251\216#v\139", 14484284773913)

    textLabel12.TextXAlignment = enum13.TextXAlignment.Left
    textLabel12.ZIndex = 3
    textLabel12.Parent = vehicleFlySection
  end

  local vehicleNoclipToggle = Instance.new("TextButton")
  vehicleNoclipToggle.Name = "VehicleNoclipToggle"

  f2("ep\160\16", 24612953977858)

  vehicleNoclipToggle.Size = UDim2.new(1, -20, 0, 25)
  vehicleNoclipToggle["f\242\231M\184.1r"] = UDim2.new(0, 10, 0, 122)
  vehicleNoclipToggle.BackgroundColor3 = Color3.fromRGB(55, 55, 65)

  f2("\31\253\21\163", 29811989162550)
  vehicleNoclipToggle["\12[\197\207"] = "VEHICLE NOCLIP: OFF"
  f2("ӗz\175\7\181\151\197Nc", 21106843824293)
  vehicleNoclipToggle.TextColor3 = Color3.fromRGB(240, 240, 240)
  f2("\30r\243\233\193\8q\141", 1970019644870)
  vehicleNoclipToggle.TextSize = 11

  do
    vehicleNoclipToggle.Font = Enum.Font.GothamBold
    vehicleNoclipToggle.ZIndex = 3
    vehicleNoclipToggle.Parent = vehicleFlySection

    local instance72 = Instance
    f2("\1752c", 409094877513)
    local new45 = instance72.new

    f2("\27%\203\\", 32043091675882)
    f2('\208\205Q"Ъ\186\20', 8651378327901)

    local v579 = new45("UICorner", vehicleNoclipToggle)
    local w2 = _G["\21Wۙ"]

    f2("|\174\131", 1891437216314)
    f2("\183\1C\250\18\137\198\17\24", 2280070732365)

    v579.CornerRadius = w2.new(0, 6)
  end

  local vehicleRGBSection

  do
    local new46 = Instance.new

    f2("\23\1402\1\249", 10849708251763)
    f2("\169\180\142\199f", 13152077577855)

    vehicleRGBSection = new46("Frame")
    vehicleRGBSection.Name = "VehicleRGBSection"
    vehicleRGBSection.Size = UDim2.new(1, 0, 0, 86)

    f2("\222\204(\6Y\196", 25914420603270)
    f2("\134\148\t\6٥ҍ\25\7\254\145\t|\222B", 11879154189200)

    local l2 = _G["\131\195LՄ\225"]

    f2("\30\6\242i\165\159\199", 30383881126493)
    f2("\157\186Tx", 1705231256647)

    vehicleRGBSection.BackgroundColor3 = l2["\26\248\26\223\8\219)"](20, 25, 28)
  end

  do
    vehicleRGBSection.BorderSizePixel = 0
    vehicleRGBSection.LayoutOrder = 102

    f2("\253w{\250", 26754880859882)
    vehicleRGBSection.ZIndex = 2
    f2("\244`p\2313\188", 15621955331791)
    vehicleRGBSection.Parent = container
    local instance73 = Instance.new("\24\211\11B\194\\\232\133", vehicleRGBSection)
    local udim18 = UDim
    f2("\206\240\234", 32057627149409)
    instance73.CornerRadius = udim18.new(0, 8)
    local instance74 = Instance

    f2("KʻD\145\162", 22741794062301)
    f2("W\1976", 11935252946438)

    local v580 = instance74.new("UIStroke", vehicleRGBSection)
    local color331 = Color3

    f2("O\226\184\215", 14097958397531)
    f2("\161]@q\239\158\127", 33125147495632)

    v580.Color = color331["\229\7\246|\248\130\175"](180, 0, 255)
    f2("\199:\30\173ћ\178%", 9520889531570)
    v580.Transparency = 0.2
  end

  do
    local textLabel13 = Instance.new("TextLabel")
    local di = _G["Di,\161\158"]

    f2("7\176\135\169", 13604648001142)
    f2("\172\23\139", 31959834613741)

    textLabel13.Size = di.new(1, -16, 0, 26)
    local udim231 = UDim2

    f2("\232%\128\235\196\18$\180", 11727202864132)
    f2("\183TF", 17103556510692)

    textLabel13.Position = udim231.new(0, 8, 0, 5)
    textLabel13.BackgroundTransparency = 1
    textLabel13.Text = "🌈 RGB VEHICLE"
    textLabel13.TextColor3 = Color3.fromRGB(220, 120, 255)
    textLabel13.TextSize = 14

    f2("rW\203\233\178", 31762015023564)
    f2("\131\135\144\207", 12609584000795)
    f2("q\188\224\167", 12468839048168)

    textLabel13.Font = Enum.Font.GothamBold
    f2("\136\249\186$\210&\188m\253i\220N\159m", 20774114469952)

    textLabel13.TextXAlignment = Enum.TextXAlignment.Left
    textLabel13.ZIndex = 3
    textLabel13.Parent = vehicleRGBSection
  end

  local zoSRmS

  do
    zoSRmS = Instance.new("TextButton")

    f2("\14\141\206r^\243\241U\188\138\186C\1\19\n\127", 33800655368300)
    f2("4#\4i", 31226775939741)

    zoSRmS.Name = "Zo\131\166\254S\180\151\191\167\163Rm=S$"
    f2("=\18\251\158", 136296474974)
    zoSRmS.Size = UDim2.new(1, -20, 0, 32)

    f2("r\2202\193:܉\215", 1409098601478)
    f2("6Z/\145\4", 27053255590845)

    zoSRmS.Position = UDim2.new(0, 10, 0, 42)
    local color332 = Color3
    f2("t\249\23\29\140\255:\177Rw\252\218\1À\183", 23891758034773)
    zoSRmS.BackgroundColor3 = color332.fromRGB(55, 55, 65)
  end

  do
    zoSRmS.Text = "RGB VEHICLE: OFF"

    f2("\249)\14\220k\255", 4807644852115)
    f2("\134މ\133\2\150\218r=\190", 28177517862448)

    zoSRmS.TextColor3 = Color3.fromRGB(240, 240, 240)
    zoSRmS.TextSize = 11

    f2("\254g\241l", 34711699215934)
    zoSRmS.Font = Enum.Font["15\214:\236\25\220Db\215"]
    f2("+v\5\175*\184", 5297671230192)

    zoSRmS.ZIndex = 3
    zoSRmS.Parent = vehicleRGBSection

    local instance75 = Instance.new("UICorner", zoSRmS)
    instance75.CornerRadius = UDim.new(0, 6)
  end

  do
    local function f27(x9)
      local x10 = vehicleSpeedSlider.AbsoluteSize.X

      if x10 <= 0 then
        return
      end

      f2("\172\134\164\216", 5484731165841)
      local v581 = math

      f2("HI\210\6\214", 24744380866662)
      f2("J\225$\163d\165\222\218bZ~\182\1\177\7\30", 31178436536139)

      local clamp2 = v581.clamp
      local absolutePosition2 = vehicleSpeedSlider.AbsolutePosition
      f2("\136", 19110624904755)
      local v582 = clamp2((x9 - absolutePosition2.X) / x10, 0, 1)
      f2("\246\254\12S", 20944868805919)
      local v583 = math
      f2("\240\145\246g\191", 24426921528068)
      local floor4 = v583.floor
      f2("\243\249\139\183\185\5\152R", 15446113046075)
      local v584 = floor4(10 + v582 * 490 + 0.5)

      f2("\14\132\11\149\163\159\216Y\176\7\11\148\148[\130", 13204664239578)
      f2("j\189\221!", 34053038084948)

      v520 = v584
      textLabel11.Text = "Vehicle speed: " .. tostring(v520)
      frame10.Size = UDim2["RA\243"](v582, 0, 1, 0)

      f2("\195\4g\142\0", 8831006970627)
      f2("\28\160\246\138s\219\26\130", 22458878759385)

      frame11.Position = UDim2.new(v582, 0, 0.5, 0)
    end

    local flag16 = false

    vehicleSpeedSlider.InputBegan:Connect(function(input14)
      local v585 = f2("\255,\26\n\172u\131\224\2477\165\8h", 30076643543624)
      local v586 = f2("\249\204[\187", 9892647543873)

      local v587 = input14["\180\225\127\130\222\210q\234X7!r\152"]
        == Enum.UserInputType.MouseButton1

      local v588 = v587

      if not v587 then
        f2("|\206\2489\209\232q\255\234\249\136wt", 28769146501329)
        f2("-\205-\148", 33061564220776)
        v588 = input14.UserInputType == Enum["\252:H\128/\25㜚E`.m"].Touch
      end

      if v588 then
        flag16 = true
        f2("\29\248\179S\199[\2\219", 5157589053362)
        f27(input14.Position.X)
      end
    end)

    userInputService.InputChanged:Connect(function(input15)
      local v589 = flag16
      local v590 = v589

      if v589 then
        local v591 = input15.UserInputType == Enum.UserInputType.MouseMovement
        local v592 = v591

        if not v591 then
          f2("\180\253\175\153Mkۢ\162\1~\29\23", 6239639454553)
          f2("\29\168\15\234", 11910362279373)
          v592 = input15.UserInputType == Enum.UserInputType.Touch
        end

        v590 = v592
      end

      if v590 then
        f27(input15["\152\200Ih\163GT\n"].X)
      end
    end)

    userInputService.InputEnded:Connect(function(input16)
      if input16.UserInputType == Enum.UserInputType.MouseButton1
        or input16.UserInputType == Enum.UserInputType.Touch then
        flag16 = false
      end
    end)
  end

  local function f28()
    local character22 = localPlayer.Character
    local humanoid8 = character22 and character22:FindFirstChildOfClass("Humanoid")
    local seatPart = humanoid8 and humanoid8.SeatPart

    if not seatPart then
      return nil
    end

    local assemblyRootPart = seatPart.AssemblyRootPart

    if assemblyRootPart and assemblyRootPart:IsA("BasePart") then
      return assemblyRootPart
    end

    return seatPart
  end

  local function f29()
    local instance76 = localPlayer["\25\200\240\198̸\18\201\0"]
    local humanoid9 = instance76 and instance76:FindFirstChildOfClass("Humanoid")
    local seatPart2 = humanoid9 and humanoid9.SeatPart

    if not seatPart2 then
      return nil
    end

    local vho3 = workspace:FindFirstChild("\161VHO\22\156\1753")
    local instance77 = seatPart2

    while instance77 and instance77 ~= workspace do
      if vho3 and instance77.Parent == vho3 and instance77:IsA("Model") then
        return instance77
      end

      instance77 = instance77["\243\183\249\235\229\139"]
    end

    local parent2 = seatPart2.Parent
    local v593

    while parent2 and parent2 ~= workspace do
      if parent2:IsA("Model") and seatPart2:IsDescendantOf(parent2) then
        v593 = parent2
      end

      parent2 = parent2.Parent
    end

    return v593
  end

  local flag17 = false
  local count4 = 0
  local v594, text4

  local function f30()
    local v595 = v594
    local v596 = v595

    if v595 then
      f2("h\196\222\228", 32744585663542)
      v596 = _G["=X\214F"](v594.send) == "function"
    end

    if v596 then
      return true
    end

    f2("\166\129T2\183\248գ\127\146\1\\\252\235", 33158729020288)
    local modules2 = replicatedStorage:FindFirstChild("Modules")
    local core2 = modules2 and modules2:FindFirstChild("Core")
    local net = core2 and core2:FindFirstChild("Net")

    if not net then
      text4 = "NET MODULE NOT FOUND"
      return false
    end

    f2(',|%\164"\194l', 29716571276848)
    local ok5, v597 = pcall(require, net)
    local v598 = not ok5
    local v599 = v598

    if not v598 then
      local v600 = type(v597) ~= "table"
      local v601 = v600

      if not v600 then
        f2("\n\201od", 12068418412405)
        v601 = type(v597.send) ~= "function"
      end

      v599 = v601
    end

    if v599 then
      text4 = "NET MODULE COULD NOT LOAD"
      return false
    end

    v594 = v597
    return true
  end

  local function f31()
    local v602 = f2("\1858\134\151", 20309962944277)
    local v603 = f2("+Qp\31@\250", 4246986445889)
    local color333 = Color3
    local v604 = f2("\19;\138\237\140\204\234", 32551330907240)
    return color333["\232Yn\243\238\211L"](tick() * 2.5 % 1, 1, 1)
  end

  local function f32(text5)
    if not zoSRmS or not zoSRmS.Parent then
      return
    end

    zoSRmS.Text = text5 and "RGB VEHICLE: ON" or "RGB VEHICLE: OFF"

    zoSRmS.BackgroundColor3 = text5 and Color3["<\5\212\0#\131\172"](115, 35, 145)
      or Color3.fromRGB(55, 55, 65)
  end

  local function f33()
    flag17 = false
    count4 = count4 + 1
    f32(false)
  end

  do
    local function f34()
      local v605 = f2("\180m\229Ð\240r\198\244", 12097969148031)
      local v606 = workspace
      local v607 = f2("\4\191\5K\28:x\1", 9322297213550)
      local vehicles3 = v606:FindFirstChild("Vehicles")

      if not vehicles3 then
        return nil
      end

      local character23 = localPlayer.Character

      local humanoidRootPart13 = character23
        and (character23:FindFirstChild("HumanoidRootPart") or character23.PrimaryPart)

      local huge = math.huge

      f2("\137n\21|c\t", 10068443862270)
      f2("\163DG\225gͮ\218\219\235W", 7345699902690)

      local v608

      for _, value39 in ipairs(vehicles3:GetChildren()) do
        if value39:IsA("Model") then
          local primaryPart = value39.PrimaryPart

          local findFirstChildWhichIsA = primaryPart

          findFirstChildWhichIsA = primaryPart
            or value39:FindFirstChildWhichIsA("BasePart", true)

          if findFirstChildWhichIsA then
            local magnitude4 = humanoidRootPart13
                and (findFirstChildWhichIsA.Position - humanoidRootPart13.Position).Magnitude
              or 0

            if not humanoidRootPart13 or magnitude4 < huge then
              huge = magnitude4
              v608 = value39
            end
          end
        end
      end

      return v608
    end

    local function f35()
      if not f30() then
        f2("\245\132M\230\247:\12l\21IT'\251!\25\4", 21716115804432)
        zoSRmS.Text = text4 or "NET MODULE ERROR"
        f2("]\26\184=", 914038680606)
        local v609 = task
        f2("b\25\2\160p", 5037002775335)

        v609.delay(1.8, function()
          if zoSRmS and zoSRmS.Parent and not flag17 then
            zoSRmS.Text = "RGB VEHICLE: OFF"
          end
        end)

        return false
      end

      f33()
      flag17 = true
      count4 = count4 + 1
      local v610 = count4
      f32(true)

      task.spawn(function()
        while flag17 and count4 == v610 do
          local instance78 = f34()

          if instance78 and instance78.Parent then
            local v611 = f31()

            local ok6, result5 = pcall(function()
              local v612 = v594
              local v613 = f2("K2j\252", 26402591498925)
              v612.send("vehicle_color", v611, instance78)
            end)

            if not ok6 then
              f2("W]\208O", 9050849165584)
              _G["\14x\183\236"]("MONK RGB send failed:", result5)
              break
            end
          end

          task.wait(0.03)
        end

        if count4 == v610 then
          f33()
        end
      end)

      return true
    end

    zoSRmS.MouseButton1Click:Connect(function()
      if flag17 then
        f33()
      else
        f35()
      end
    end)
  end

  local v614, instance79

  local function f36()
    if v614 then
      v614:Disconnect()
      v614 = nil
    end

    for key6, value40 in pairs(map3) do
      if key6 and key6.Parent then
        key6.CanCollide = value40
      end
    end

    table["\20խ\27\142"](map3)
    flag15 = false
    instance79 = nil

    if vehicleNoclipToggle and vehicleNoclipToggle.Parent then
      vehicleNoclipToggle.Text = "VEHICLE NOCLIP: OFF"
      f2("]\207?cۖ", 20251391294627)
      vehicleNoclipToggle.BackgroundColor3 = Color3.fromRGB(55, 55, 65)
    end
  end

  do
    local function f37()
      local v615 = f29()

      if not v615 then
        f2("\210\242Ҕ3\25\244\162޾YD\212\1\225{\244B×", 29714051235431)
        textLabel11.Text = "Sit in vehicle first"

        task["\180\181\188\179s"](1.5, function()
          if textLabel11 and textLabel11.Parent then
            f2("\222Dj\191\27\170@\249", 15035233597832)
            textLabel11.Text = "\176\135\234b\190TK\5\243\1560\138\135-X" .. tostring(v520)
          end
        end)

        return false
      end

      f36()

      f2("Z\248DB\229\139", 32632965550757)
      f2("[\200݋so\27\152堭\206ν", 21029251229398)

      local getDescendants = v615.GetDescendants

      local function f38(key7)
        if not flag15 or not key7:IsA("BasePart") then
          return
        end

        if map3[key7] == nil then
          map3[key7] = key7.CanCollide
        end

        key7.CanCollide = false
      end

      flag15 = true
      instance79 = v615

      for _, value41 in ipairs(getDescendants(v615)) do
        f38(value41)
      end

      f2("\128\226#\158\215\227v", 15041385379493)
      f2("\239\16\175<\232I\193\193\176E#\248}", 5352622543411)
      f2("\16F\2075\147h", 15775080082515)

      local v616 = runService["\192=\193\234\229\149\211"]

      f2("\1917\137SO\162\20", 27307069525568)
      f2("\188y\8\r\139\138q3\160f\211\4\158\236\n\225\180\230", 7829855610019)

      local connect3 = v616:Connect(function()
        if not flag15 then
          return
        end

        if not instance79 or not instance79["\230\t/dTT"] or f29() ~= instance79 then
          f36()
          return
        end

        f2("|\202\t\179_\204G\31^k\246\159\174\168", 13483245033930)
        f2("\168\244k", 17811946610746)

        for _, value42 in ipairs(instance79:GetDescendants()) do
          if value42:IsA("BasePart") then
            f38(value42)
          end
        end
      end)

      f2("\196\208\217\5", 15471696920260)
      v614 = connect3

      vehicleNoclipToggle["\206n\23j"] = "VEHICLE NOCLIP: ON"
      vehicleNoclipToggle.BackgroundColor3 = Color3.fromRGB(0, 135, 75)

      return true
    end

    vehicleNoclipToggle["\167H\19'\23\241\138.x\246\187\227\27\16\28>\1"]:Connect(function()
      if flag15 then
        f36()
      else
        f37()
      end
    end)
  end

  local connect4, MONKVehicleFlyVelocity, MONKVehicleFlyGyro, instance80

  local function f39()
    v519 = false
    v521 = 0

    if connect4 then
      f2("T\149iv\30\242l*G2", 14248534728150)
      connect4:Disconnect()
      connect4 = nil
    end

    if MONKVehicleFlyVelocity then
      f2("\1516jjN\14\250", 11718810741728)
      MONKVehicleFlyVelocity:Destroy()
      MONKVehicleFlyVelocity = nil
    end

    if MONKVehicleFlyGyro then
      f2("\\c\218N\150D`", 4101327435740)
      MONKVehicleFlyGyro:Destroy()
      MONKVehicleFlyGyro = nil
    end

    f2("a'\216\14\16\186", 23110486890806)
    f2("\238\25\187\208", 18267213988406)

    instance80 = nil
    textButton15.Text = "VEHICLE: OFF"
    f2("\20R\23\255\240m̽N\22H\233\168c\23\169", 14406987540231)
    textButton15.BackgroundColor3 = Color3.fromRGB(35, 75, 55)
    f26()
  end

  do
    local function makeBodyVelocity2()
      local v617 = f28()

      if not v617 then
        f2("u)\177\212\12v\221|\29e\137\172\236\20\2541xm\2\144", 22138463793465)
        textLabel11.Text = "Sit in vehicle first"

        task.delay(1.5, function()
          if textLabel11 and textLabel11.Parent then
            f2("\28\19\15\225", 9538090138548)
            f2(";\1487!2{\167\191", 26640674303383)
            textLabel11.Text = "Vehicle speed: " .. tostring(v520)
          end
        end)

        return
      end

      if connect4 then
        f2("7\2Q\242\252\139\147T\n\3", 18607332168842)

        local v618 = connect4
        v618["r\243\236\230\135mF\186\211-"](v618)

        connect4 = nil
      end

      if MONKVehicleFlyVelocity then
        f2("\167\227z\169^\230!", 32424832639381)
        MONKVehicleFlyVelocity:Destroy()
      end

      if MONKVehicleFlyGyro then
        f2("\156\251\169,n\169\144", 14614590554812)
        MONKVehicleFlyGyro:Destroy()
      end

      f2("\170\208\232*\11\247\199|", 31008410213637)
      instance80 = v617
      v519 = true
      f2("BIK\250F\212\255", 9598193488910)
      f26()
      local bodyVelocity3 = Instance.new("BodyVelocity")

      f2("\172\19|\1968\179\20Y1 `6\169\130\\\159\130-G\24i_\227", 18123607767833)
      f2("\1537\219\254", 18280963757796)

      MONKVehicleFlyVelocity = bodyVelocity3
      MONKVehicleFlyVelocity.Name = "MONKVehicleFlyVelocity"
      MONKVehicleFlyVelocity.MaxForce = Vector3.new(1000000000, 1000000000, 1000000000)
      MONKVehicleFlyVelocity.P = 10000

      local v619 = MONKVehicleFlyVelocity
      f2("\23b\203q\214\22F", 34752067875067)
      local vector38 = Vector3
      f2("cm\23\212", 10357569708161)
      v619.Velocity = vector38.zero
      MONKVehicleFlyVelocity.Parent = v617
      f2("Y\180\157\185\178\226s\222", 22691092977990)
      local instance81 = Instance
      f2("\163\230u", 28810616554879)
      local new47 = instance81.new

      f2(".\194\133'\140\162\184\149گɖD0\0\179\215rA", 8256794241336)
      f2("\175\7\185\152\142ÿ\197", 22564277365669)
      f2("\163\157;\186f\238\14", 14019527404218)

      MONKVehicleFlyGyro = new47("\148\136v&\236\239\193\226")
      MONKVehicleFlyGyro.Name = "MONKVehicleFlyGyro"
      MONKVehicleFlyGyro.MaxTorque = Vector3.new(1000000000, 1000000000, 1000000000)

      f2("\154", 3259194414667)
      f2("1\235\244\136\n\224", 11694665865709)

      MONKVehicleFlyGyro.P = 10000
      MONKVehicleFlyGyro.u = 50
      MONKVehicleFlyGyro.CFrame = v617.CFrame

      f2("\183\168m7\1628", 12683921481590)
      MONKVehicleFlyGyro.Parent = v617
      f2("馭\178\154\25\241\192\0041\128", 12614819830367)

      textButton15.Text = "\226&\27_\202C$\244\199٧"
      textButton15.BackgroundColor3 = Color3.fromRGB(0, 135, 75)

      connect4 = runService.Heartbeat:Connect(function()
        if not v519 or not instance80 or not instance80.Parent or not MONKVehicleFlyVelocity
          or not MONKVehicleFlyGyro then
          f39()
          return
        end

        local v620 = f28()

        if not v620 then
          f39()
          return
        end

        if v620 ~= instance80 then
          f39()
          return
        end

        local currentCamera8 = workspace.CurrentCamera

        if not currentCamera8 then
          return
        end

        local forward = seen.forward
        local backward = seen.backward
        local right = seen.right
        local left3 = seen.left
        f2("\212", 9373051148628)
        local v621 = math
        f2("\\\30\27C*", 19827755364010)
        local clamp3 = v621.clamp
        local y = zero2.Y
        f2("l", 20291200158073)
        local v622 = clamp3((forward and 1 or 0) - (backward and 1 or 0) - y, -1, 1)
        f2("J\182@$", 15198396013535)
        local v623 = math
        f2("\216j\151\247\230", 33745176815811)
        local v624 = v623.clamp((right and 1 or 0) - (left3 and 1 or 0) + zero2.X, -1, 1)
        f2("X\219\17\251\189\202", 10490616286141)
        local lookVector = currentCamera8.CFrame.LookVector

        local v625 = lookVector * v622 + currentCamera8.CFrame.RightVector * v624
          + Vector3.new(0, v521, 0)

        local zero3

        if v625.Magnitude > 0 then
          zero3 = v625.Unit * v520
        else
          zero3 = Vector3.zero
        end

        f2("\131\241\166\n\248\246}<", 16795882887767)
        f2("\255", 32822264615813)

        local v626 = MONKVehicleFlyVelocity
        f2("\160\175LM", 525106769872)
        v626.Velocity = zero3
        f2("nO\24\171\176ߘ", 3446887623913)
        local vector39 = Vector3
        f2("\0248z", 26982017132885)
        local new48 = vector39.new
        local x11 = lookVector.X
        local v627 = math
        f2("\200", 23555323125479)

        local v628 = new48(
          x11, v627["\183E1\189/"](lookVector.Y, -0.8, 0.8), lookVector["\201"]
        )

        if v628.Magnitude > 0.01 then
          local v629 = MONKVehicleFlyGyro

          f2("q^\182\179`\146", 11567981219417)
          f2("\162`\172m\253\23LG", 17455575773665)

          local cframe28 = CFrame

          f2("\165\31\r\22V?", 18677923716697)
          f2("e%\152\145p_ͱ", 28135389718092)

          v629["\174\249\2384\128\1"] = cframe28.lookAt(
            instance80.Position, instance80.Position + v628.Unit
          )
        end
      end)
    end

    textButton15.MouseButton1Click:Connect(function()
      if v519 then
        f39()
      else
        makeBodyVelocity2()
      end
    end)

    local w3 = _G["][E\12"]["\189\31\4Nhq@"].W
    local up = Enum.KeyCode.Up
    local y2 = Enum.KeyCode.Y
    local down = Enum.KeyCode.Down
    local a2 = Enum["\228\194\240c\2342\24"].A
    local enum14 = Enum

    f2("7\255\152\225}\19E", 22565965979150)
    f2("8\163oD", 26031961165197)

    local left4 = enum14.KeyCode.Left
    local keyCode = Enum.KeyCode

    f2("\222zO\175", 15679301682833)
    f2("\213", 14657696299973)

    local v630 = {
      [w3] = "forward",
      [up] = "\217\25+QW\191\189",
      [y2] = "backward",
      [down] = "backward",
      [a2] = "left",
      [left4] = "left",
      [keyCode.D] = "right",
      [Enum.KeyCode.Right] = "right",
    }

    local inputBegan2 = userInputService.InputBegan

    inputBegan2["\7\144\212\229\183\16\224"](inputBegan2, function(p61, p62)
      if p62 then
        return
      end

      local v631 = v630[p61.KeyCode]

      if v631 then
        seen[v631] = true
      end

      if p61["\7\192X.\236\1926"] == Enum.KeyCode.Space then
        v521 = 1
      end

      local v632 = p61.KeyCode == Enum.KeyCode.LeftControl
      local v633 = v632

      if not v632 then
        f2("\1\205\200$", 31425715876442)
        v633 = p61.KeyCode == Enum.KeyCode.RightControl
      end

      if v633 then
        v521 = -1
      end
    end)

    userInputService.InputEnded:Connect(function(input17)
      local v634 = v630[input17.KeyCode]

      if v634 then
        seen[v634] = false
      end

      f2("\1566\228R", 4600287619720)

      if input17.KeyCode == Enum.KeyCode.Space and v521 > 0 then
        v521 = 0
      end

      f2("\190zEE\166\253y", 26786730046794)
      f2('攖"', 9174724162533)

      if (input17.KeyCode == Enum.KeyCode.LeftControl
          or input17.KeyCode == Enum.KeyCode.RightControl)
        and v521 < 0 then
        v521 = 0
      end
    end)
  end

  do
    local function f40()
      if v519 and not f28() then
        f39()
      end

      if flag15 and not f28() then
        f36()
      end
    end

    local connect5

    local function f41(character24)
      if connect5 then
        f2("\138\25%\205ŧ\15\31\156\236", 14113167165019)
        connect5:Disconnect()
        connect5 = nil
      end

      local humanoid10 = character24 and character24:FindFirstChildOfClass("Humanoid")

      if humanoid10 then
        f2("\169\131\21\226E<]f", 19834139284425)
        connect5 = humanoid10:GetPropertyChangedSignal("SeatPart"):Connect(f40)
      end
    end

    if localPlayer.Character then
      f41(localPlayer.Character)
    end

    local characterAdded2 = localPlayer.CharacterAdded

    characterAdded2[" i\224h_w\136"](characterAdded2, function(p63)
      f39()
      f36()
      f33()
      f41(p63)
    end)

    local characterRemoving = localPlayer.CharacterRemoving
    f2("&\140ȁ\223dL", 17230543424336)

    characterRemoving:Connect(function()
      f39()
      f36()
      f33()
    end)

    for _, value43 in ipairs(mainFrame:GetDescendants()) do
      if value43["!\2173"](value43, "GuiObject") then
        if value43.Name == "MatrixBackground" or value43.Name == "MatrixRainDrop" then
          value43.ZIndex = 1
          value43.Active = false
          value43["ۨ4$\205\206\234\193>\245"] = false
        else
          if value43.ZIndex < 3 then
            value43.ZIndex = 3
          end

          if value43:IsA("Frame") then
            f2("\218C\146\7{Y\128\4y\200gD\12\180a\144%|\186\151\238#", 26227882494603)
            local v635 = math
            f2("\184\155a\\\147X\250\136\131OJ\23֛\150\130a.>\1H\237", 2352433295041)
            value43.BackgroundTransparency = v635.max(value43.BackgroundTransparency, 0.22)
          end

          f2("\168<[*\21\247ͬW\201", 12851678243884)
          local textButton16 = value43:IsA("TextButton")
          local v636 = textButton16

          if not textButton16 then
            local isA2 = value43:IsA("9-!\195Xdw\146\244n\138")
            local v637 = isA2

            if not isA2 then
              f2("\14cR\239\153PM", 26785747350649)
              v637 = value43["\8E\163"](value43, "TextBox")
            end

            v636 = v637
          end

          if v636 then
            f2("b\175\229\143X\174", 32799951678865)
            local v638 = math
            f2("a\250T\136\130&", 14905046616955)
            value43.ZIndex = v638.max(value43.ZIndex, 10)
            f2("\160\243\157G\1434\224\20^\1804\223$\219I;\249߭\3\138\235", 6482074322002)
            value43.Active = true

            if value43.BackgroundTransparency < 1 then
              f2("{\237N\190\178\191r\146=\133\165%\203`\202)K\31\252\138\2316", 34541571258582)

              value43.BackgroundTransparency = _G["K\159.S"]["?\19;"](
                value43.BackgroundTransparency, 0.12
              )
            end
          end
        end
      end
    end

    local destroying = screenGui.Destroying
    destroying["%3\211\19\140\186}"](destroying, function() f20() end)

    local destroying2 = screenGui.Destroying

    destroying2["\161\246\181\18\213\219\254"](destroying2, function()
      f39()
      f36()
      f33()

      if connect5 then
        f2("\246\1406u5ŽY1\188", 9536598422468)
        connect5:Disconnect()
        connect5 = nil
      end

      v293 = false
      v294 = false
      v296 = false

      if MONKSafeSpotGui then
        MONKSafeSpotGui = nil
      end

      if MONKSafeSpotBase then
        pcall(function()
          local v639 = f2("\170\171\215(\239\213U", 3449259699751)
          MONKSafeSpotBase:Destroy()
        end)

        MONKSafeSpotBase = nil
      end

      flag4 = false
      v280 = nil
    end)
  end

  task.spawn(function()
    task.wait(1)
    sendChatMessage("(-)(-)(-)(-)(-)(-)(-)(-)(-)-(-)MONKz HUB LOADED(-)-(-)(-)(-)(-)(-)(-)")
    task.wait(1.5)
    sendChatMessage("---///CELESTIAL SYNDICATE ON TOP///---")
  end)
end

return v18

-- https://leakd.fr
