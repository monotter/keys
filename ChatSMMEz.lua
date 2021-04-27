if game.PlaceId == 4913708314 then
    game.workspace.Vehicles["F-16"].Name = "F-161"
end

if not game.ReplicatedStorage.ChatSystemGetMessage then return end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/monotter/keys/master/Azure%20Library%20Mono%20Modded.lua", true))()
local MainTab = Library:CreateTab("Main", "Ana Mekan", true)
local anan = false
MainTab:CreateToggle("Enable JJ", function(a)
anan = a
while anan do
local count = 1
local bst = {
    "BİR",
    "İKİ",
    "ÜÇ",
    "DÖRT",
    "BEŞ",
    "ALTI",
    "YEDİ",
    "SEKİZ",
    "DOKUZ",
}
local tst = {
    "ON",
    "YİRMİ",
    "OTUZ",
    "KIRK",
    "ELLİ",
    "ALTMIŞ",
    "YETMİŞ",
    "SEKSEN",
    "DOKSAN",
}
local yz = "YÜZ"
local bn = "BİN"
while anan do
    local text = ""
    if count < 10 then
        text = text..bst[count]
    else
        if tostring(count):sub(2,2) == "0" then
            text = tst[tonumber(tostring(count):sub(1,1))]
        else
            text = tst[tonumber(tostring(count):sub(1,1))].." "..bst[tonumber(tostring(count):sub(2,2))]
        end
    end
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text,"All")
    count = count + 1
    if count > 50 then break end
    wait(3)
end
end
end)
local dayin = false
MainTab:CreateToggle("Enable GJ", function(b)
dayin = b
while dayin do
local count = 1
local bst = {
    "Bir.",
    "İki.",
    "Üç.",
    "Dört.",
    "Beş.",
    "Altı.",
    "Yedi.",
    "Sekiz.",
    "Dokuz.",
}
local tst = {
    "On",
    "Yirmi",
    "Otuz",
    "Kırk",
    "Elli",
    "Altmış",
    "Yetmiş",
    "Seksen",
    "Doksan",
}
local yz = "YÜZ"
local bn = "BİN"
while dayin do
    local text = ""
    if count < 10 then
        text = text..bst[count]
    else
        if tostring(count):sub(2,2) == "0" then
            text = tst[tonumber(tostring(count):sub(1,1))]
        else
            text = tst[tonumber(tostring(count):sub(1,1))].." "..bst[tonumber(tostring(count):sub(2,2))]
        end
    end
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text,"All")
    count = count + 1
    if count > 50 then break end
    wait(3)
end
end
end)
MainTab:CreateButton("Kill all", function ()
	for i,player in ipairs(game.Players:GetChildren()) do
		local args = {
			   [1] = "hit",
			   [2] = "}, {  ",
			   [3] = 9999999999999999999999999999999,
			   [4] = player.Character.Humanoid,
			   [5] = nil,
			   [6] = 1,
			   [7] = Vector3.new(0.99845665693283, 0.0020459268707782, -0.055498398840427),
			   [8] = 96.606246948242
		   }
		   game:GetService("ReplicatedStorage").ChatSystemGetMessage:InvokeServer(unpack(args))
	   end
end)
MainTab:CreateButton("Kill all V2", function ()
    for i,player in ipairs(game.Players:GetChildren()) do
        if not (player.Character and player.Character:FindFirstChild("HumanoidRootPart")) then continue end
        workspace.Vehicles["F-161"]["F-16"].Events.WeaponsFunction:InvokeServer("Bomb", "Explosive", player.Character.HumanoidRootPart.Position,"")
        end
end)
MainTab:CreateButton("Crash Server", function ()
    for i,part in pairs(workspace:GetDescendants()) do if not part:IsA("BasePart") then continue end
        workspace.Vehicles["F-161"]["F-16"].Events.WeaponsFunction:InvokeServer("Bomb", "Explosive", part.Position,"")
    end
end)
local bigbaban = false
MainTab:CreateToggle("Loop Kill All", function (ooof)
    bigbaban = ooof
    while bigbaban do
    for i,player in ipairs(game.Players:GetChildren()) do
		local args = {
			   [1] = "hit",
			   [2] = "}, {  ",
			   [3] = 9999999999999999999999999999999,
			   [4] = player.Character.Humanoid,
			   [5] = nil,
			   [6] = 1,
			   [7] = Vector3.new(0.99845665693283, 0.0020459268707782, -0.055498398840427),
			   [8] = 96.606246948242
		   }
		   game:GetService("ReplicatedStorage").ChatSystemGetMessage:InvokeServer(unpack(args))
	   end
       wait(0.1)
    end
end)
local Player = game.Players.LocalPlayer
local mouse = Player:GetMouse()
local selectionbox = Instance.new("SelectionBox")
local selectedhumn
local killactive
mouse.Move:Connect(function()
        if not selectedhumn then
            selectionbox.Adornee = nil
        end
        local mouseRay = mouse.UnitRay
        local castRay = Ray.new(mouseRay.Origin, mouseRay.Direction * 1000)
        local target = workspace:FindPartOnRay(castRay)
        if not target then selectedhumn = nil return end
        if not target.Parent:FindFirstChildOfClass("Humanoid") then selectedhumn = nil return end
        selectedhumn = target.Parent:FindFirstChildOfClass("Humanoid")
        selectionbox.Adornee = target.Parent
end)
mouse.Button1Down:Connect(function()
    if not killactive then return end
    if not selectedhumn then return end
    local args = {
        [1] = "hit",
        [2] = "}, {  ",
        [3] = math.huge,
        [4] = selectedhumn,
        [5] = nil,
        [6] = 1,
        [7] = Vector3.new(0.99845665693283, 0.0020459268707782, -0.055498398840427),
        [8] = 96.606246948242
    }
    game:GetService("ReplicatedStorage").ChatSystemGetMessage:InvokeServer(unpack(args))
end)
MainTab:CreateToggle("Click kill", function (teyzen)
    killactive = teyzen
end)

local killactiveb
mouse.Button1Down:Connect(function()
    if not killactiveb then return end
    if not selectedhumn then return end
        workspace.Vehicles["F-161"]["F-16"].Events.WeaponsFunction:InvokeServer("Bomb", "Explosive", selectedhumn.Parent.HumanoidRootPart.Position,"")
end)
MainTab:CreateToggle("Click kill V2", function (enisten)
    killactiveb = enisten
end)
MainTab:CreateButton("Name Protect", function ()
    local Config =
{
    ProtectedName = "BSGONTOP",
    OtherPlayers = true,
    OtherPlayersTemplate = "BSGONTOP",
    RenameTextBoxes = false,
    UseFilterPadding = false,
    FilterPad = " ",
    UseMetatableHook = true,
    UseAggressiveFiltering = false
}

local ProtectedNames = {}
local Counter = 1
if Config.OtherPlayers then
    for I, V in pairs(game:GetService("Players"):GetPlayers()) do
        local Filter = Config.OtherPlayersTemplate .. tostring(Counter)
        if Config.UseFilterPadding then
            if string.len(Filter) > string.len(V.Name) then
                Filter = string.sub(Filter, 1, string.len(V.Name))
            elseif string.len(Filter) < string.len(V.Name) then
                local Add = string.len(V.Name) - string.len(Filter)
                for I=1,Add do
                    Filter = Filter .. Config.FilterPad
                end
            end
        end
        ProtectedNames[V.Name] = Filter
        Counter = Counter + 1
    end

    game:GetService("Players").PlayerAdded:connect(function(Player)
        local Filter = Config.OtherPlayersTemplate .. tostring(Counter)
        if Config.UseFilterPadding then
            if string.len(Filter) > string.len(V.Name) then
                Filter = string.sub(Filter, 1, string.len(V.Name))
            elseif string.len(Filter) < string.len(V.Name) then
                local Add = string.len(V.Name) - string.len(Filter)
                for I=1,Add do
                    Filter = Filter .. Config.FilterPad
                end
            end
        end
        ProtectedNames[Player.Name] = Filter
        Counter = Counter + 1
    end)
end

local LPName = game:GetService("Players").LocalPlayer.Name
local IsA = game.IsA

if Config.UseFilterPadding then
    if string.len(Config.ProtectedName) > string.len(LPName) then
        Config.ProtectedName = string.sub(Config.ProtectedName, 1, string.len(LPName))
    elseif string.len(Config.ProtectedName) < string.len(LPName) then
        local Add = string.len(LPName) - string.len(Config.ProtectedName)
        for I=1,Add do
            Config.ProtectedName = Config.ProtectedName .. Config.FilterPad
        end
    end
end

local function FilterString(S)
    local RS = S
    if Config.OtherPlayers then
        for I, V in pairs(ProtectedNames) do
            RS = string.gsub(RS, I, V)
        end
    end
    RS = string.gsub(RS, LPName, Config.ProtectedName)
    return RS
end

for I, V in pairs(game:GetDescendants()) do
    if Config.RenameTextBoxes then
        if IsA(V, "TextLabel") or IsA(V, "TextButton") or IsA(V, "TextBox") then
            V.Text = FilterString(V.Text)

            if Config.UseAggressiveFiltering then
                V:GetPropertyChangedSignal("Text"):connect(function()
                    V.Text = FilterString(V.Text)
                end)
            end
        end
    else
        if IsA(V, "TextLabel") or IsA(V, "TextButton") then
            V.Text = FilterString(V.Text)

            if Config.UseAggressiveFiltering then
                V:GetPropertyChangedSignal("Text"):connect(function()
                    V.Text = FilterString(V.Text)
                end)
            end
        end
    end
end

if Config.UseAggressiveFiltering then
    game.DescendantAdded:connect(function(V)
        if Config.RenameTextBoxes then
            if IsA(V, "TextLabel") or IsA(V, "TextButton") or IsA(V, "TextBox") then
                V:GetPropertyChangedSignal("Text"):connect(function()
                    V.Text = FilterString(V.Text)
                end)
            end
        else
            if IsA(V, "TextLabel") or IsA(V, "TextButton") then
                V:GetPropertyChangedSignal("Text"):connect(function()
                    V.Text = FilterString(V.Text)
                end)
            end
        end
    end)
end

if Config.UseMetatableHook then
    if not getrawmetatable then
        error("GetRawMetaTable not found")
    end

    local NewCC = function(F)
        if newcclosure then return newcclosure(F) end
        return F
    end

    local SetRO = function(MT, V)
        if setreadonly then return setreadonly(MT, V) end
        if not V and make_writeable then return make_writeable(MT) end
        if V and make_readonly then return make_readonly(MT) end
        error("No setreadonly found")
    end

    local MT = getrawmetatable(game)
    local OldNewIndex = MT.__newindex
    SetRO(MT, false)

    MT.__newindex = NewCC(function(T, K, V)
        if Config.RenameTextBoxes then
            if (IsA(T, "TextLabel") or IsA(T, "TextButton") or IsA(T, "TextBox")) and K == "Text" and type(V) == "string" then
                return OldNewIndex(T, K, FilterString(V))
            end
        else
            if (IsA(T, "TextLabel") or IsA(T, "TextButton")) and K == "Text" and type(V) == "string" then
                return OldNewIndex(T, K, FilterString(V))
            end
        end

        return OldNewIndex(T, K, V)
    end)

    SetRO(MT, true)
end
end)
end
