local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/monotter/keys/master/Kavo/Kavoui.lua"))()
local function SendMessage(Text)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Text,"All")
end
local Window = Library.CreateLib("JJ Script made by Monotter", "Midnight")
local Tab = Window:NewTab("JJ")
local KeyTab = Window:NewTab("Keybinds")
local GuiKeySec = KeyTab:NewSection("GUI Keybinds")
local SectionJJ = Tab:NewSection("JJ")
local SectionGJ = Tab:NewSection("GJ")

local JJSpeed = 3
local GJSpeed = 3

local JJStart = 1
local GJStart = 1

local JJCount = 1
local GJCount = 1

local JJEnabled = false
local GJEnabled = false


local JJFirst = false
local GJFirst = false


local JJTick = tick()
local GJTick = tick()

local HJ = false
local GHJ = false

local Texts = {
    JJ = {
        {
            "BİR",
            "İKİ",
            "ÜÇ",
            "DÖRT",
            "BEŞ",
            "ALTI",
            "YEDİ",
            "SEKİZ",
            "DOKUZ",
        },
        {
            "ON",
            "YİRMİ",
            "OTUZ",
            "KIRK",
            "ELLİ",
            "ALTMIŞ",
            "YETMİŞ",
            "SEKSEN",
            "DOKSAN",
        },
        "YÜZ",
        "BİN",
    },
    GJ = {
        {
            "Bir",
            "İki",
            "Üç",
            "Dört",
            "Beş",
            "Altı",
            "Yedi",
            "Sekiz",
            "Dokuz",
        },
        {
            "On",
            "Yirmi",
            "Otuz",
            "Kırk",
            "Elli",
            "Altmış",
            "Yetmiş",
            "Seksen",
            "Doksan",
        },
        "Yüz",
        "Bin",
    },
}

local ToggleJJ = SectionJJ:NewToggle("Enable", "Starts JJ When Enabled", function(state)
    JJFirst = state
    JJEnabled = state
end)
local ToggleGJ = SectionGJ:NewToggle("Enable", "Starts GJ When Enabled", function(state)
    GJFirst = state
    GJEnabled = state
end)


SectionJJ:NewToggle("HJ", "Enables HJ", function(state)
    HJ = state
end)
SectionGJ:NewToggle("GHJ", "Enables GHJ", function(state)
    GHJ = state
end)


SectionJJ:NewSlider("Speed", "Wait interval, (my suggestion is 3 seconds)", 5.9, 0, function(s)
    JJSpeed = 6 - s
end)
SectionGJ:NewSlider("Speed", "Wait interval, (my suggestion is 3 seconds)", 5.9, 0, function(s)
    GJSpeed = 6 - s
end)

SectionJJ:NewTextBox("Start Value", "Starts at ?", function(txt)
    JJStart = tonumber(txt) or 1
    JJStart = math.floor(JJStart)
    if JJStart == 0 then JJStart = 1 end
end)
SectionGJ:NewTextBox("Start Value", "Starts at ?", function(txt)
    GJStart = tonumber(txt) or 1
    GJStart = math.floor(GJStart)
    if GJStart == 0 then GJStart = 1 end
end)

local function JJ()
    if not JJEnabled then return end
    if JJFirst then
        JJCount = JJStart
        JJFirst = false
    end
    local text = ""

    local num = tostring(JJCount)
    if JJCount >= 200000 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["JJ"][1][tonumber(num:sub(1, 1))].." "
        end
    end
    if JJCount >= 100000 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["JJ"][3].." "
        end
        num = num:sub(2)
    end
    if JJCount >= 10000 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["JJ"][2][tonumber(num:sub(1, 1))].." "
        end
        num = num:sub(2)
    end
    if JJCount >= 2000 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["JJ"][1][tonumber(num:sub(1, 1))].." "
        end
    end
    if JJCount >= 1000 then
        text = text..Texts["JJ"][4].." "
        num = num:sub(2)
    end
    if JJCount >= 200 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["JJ"][1][tonumber(num:sub(1, 1))].." "
        end
    end
    if JJCount >= 100 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["JJ"][3].." "
        end
        num = num:sub(2)
    end
    if JJCount >= 10 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["JJ"][2][tonumber(num:sub(1, 1))].." "
        end
        num = num:sub(2)
    end
    if JJCount >= 1 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["JJ"][1][tonumber(num:sub(1, 1))].." "
        end
        num = num:sub(2)
    end
    text = string.gsub(text, "^%s*(.-)%s*$", "%1")
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        char.Humanoid.Jump = true
        SendMessage(text)
    end
    JJCount = JJCount + 1
end
local function GJ()
    if not GJEnabled then return end
    if GJFirst then
        GJCount = GJStart
        GJFirst = false
    end
    local text = ""

    local num = tostring(GJCount)
    if GJCount >= 200000 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["GJ"][1][tonumber(num:sub(1, 1))].." "
        end
    end
    if GJCount >= 100000 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["GJ"][3].." "
        end
        num = num:sub(2)
    end
    if GJCount >= 10000 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["GJ"][2][tonumber(num:sub(1, 1))].." "
        end
        num = num:sub(2)
    end
    if GJCount >= 2000 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["GJ"][1][tonumber(num:sub(1, 1))].." "
        end
    end
    if GJCount >= 1000 then
        text = text..Texts["GJ"][4].." "
        num = num:sub(2)
    end
    if GJCount >= 200 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["GJ"][1][tonumber(num:sub(1, 1))].." "
        end
    end
    if GJCount >= 100 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["GJ"][3].." "
        end
        num = num:sub(2)
    end
    if GJCount >= 10 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["GJ"][2][tonumber(num:sub(1, 1))].." "
        end
        num = num:sub(2)
    end
    if GJCount >= 1 then
        if num:sub(1, 1) ~= "0" then
            text = text..Texts["GJ"][1][tonumber(num:sub(1, 1))].." "
        end
        num = num:sub(2)
    end
    text = string.gsub(text, "^%s*(.-)%s*$", "%1")
    text = text.."."
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        char.Humanoid.Jump = true
        SendMessage(text)
    end
    GJCount = GJCount + 1
end

game:GetService("RunService").RenderStepped:Connect(function()
    if tick() - JJTick >= JJSpeed then
        JJTick = tick()
        JJ()
    end
    if tick() - GJTick >= GJSpeed then
        GJTick = tick()
        GJ()
    end
end)
GuiKeySec:NewKeybind("Toggle Gui", "Show and Hides GUI", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)
