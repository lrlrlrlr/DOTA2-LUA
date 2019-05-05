require("libs.class_id")

function MakeCombo(  )
    local combo = {}
    
end

function GetEnemyTeamId(local_team)
    if local_team == 2 then
        return 3
    end
    return 2
end

function GetAntiSphereItem(local_hero, inventory, cast_range_extra, distance)
    -- 天堂之戟 3450
    local item_heavens_halberd = {}
    item_heavens_halberd.entity = inventory:GetItemByName("item_heavens_halberd")
    item_heavens_halberd.enable = item_heavens_halberd.entity and item_heavens_halberd.entity:IsItemEnabled() and item_heavens_halberd.entity:GetCooldown() == 0 and item_heavens_halberd.entity:CanBeExecuted() == -1 and local_hero:CanUseItem()
    item_heavens_halberd.cast_range = 600 + cast_range_extra
    if item_heavens_halberd.enable and distance < item_heavens_halberd.cast_range then return item_heavens_halberd end

    -- 原力法杖 2250
    local item_force_staff = {}
    item_force_staff.entity = inventory:GetItemByName("item_force_staff")
    item_force_staff.enable = item_force_staff.entity and item_force_staff.entity:IsItemEnabled() and item_force_staff.entity:GetCooldown() == 0 and item_force_staff.entity:CanBeExecuted() == -1 and local_hero:CanUseItem()
    item_force_staff.cast_range = 750 + cast_range_extra
    if item_force_staff.enable and distance < item_force_staff.cast_range then return item_force_staff end

    -- 风杖 2750
    local item_cyclone = {}
    item_cyclone.entity = inventory:GetItemByName("item_cyclone")
    item_cyclone.enable = item_cyclone.entity and item_cyclone.entity:IsItemEnabled() and item_cyclone.entity:GetCooldown() == 0 and item_cyclone.entity:CanBeExecuted() == -1 and local_hero:CanUseItem()
    item_cyclone.cast_range = 575 + cast_range_extra
    if item_cyclone.enable and distance < item_cyclone.cast_range then return item_cyclone end

    -- 飓风长戟 4600
    local item_hurricane_pike = {}
    item_hurricane_pike.entity = inventory:GetItemByName("item_hurricane_pike")
    item_hurricane_pike.enable = item_hurricane_pike.entity and item_hurricane_pike.entity:IsItemEnabled() and item_hurricane_pike.entity:GetCooldown() == 0 and item_hurricane_pike.entity:CanBeExecuted() == -1 and local_hero:CanUseItem()
    item_hurricane_pike.cast_range = 400 + cast_range_extra
    if item_hurricane_pike.enable and distance < item_hurricane_pike.cast_range then return item_hurricane_pike end

    -- 净魂之刃 3150
    local item_diffusal_blade = {}
    item_diffusal_blade.entity = inventory:GetItemByName("item_diffusal_blade")
    item_diffusal_blade.enable = item_diffusal_blade.entity and item_diffusal_blade.entity:IsItemEnabled() and item_diffusal_blade.entity:GetCooldown() == 0 and item_diffusal_blade.entity:CanBeExecuted() == -1 and local_hero:CanUseItem()
    item_diffusal_blade.cast_range = 600 + cast_range_extra
    if item_diffusal_blade.enable and distance < item_diffusal_blade.cast_range then return item_diffusal_blade end

    -- 紫怨 4075
    local item_orchid = {}
    item_orchid.entity = inventory:GetItemByName("item_orchid")
    item_orchid.enable = item_orchid.entity and item_orchid.entity:IsItemEnabled() and item_orchid.entity:GetCooldown() == 0 and item_orchid.entity:CanBeExecuted() == -1 and local_hero:CanUseItem()
    item_orchid.cast_range = 900 + cast_range_extra
    if item_orchid.enable and distance < item_orchid.cast_range then return item_orchid end
    
    -- 血棘 7205
    local item_bloodthorn = {}
    item_bloodthorn.entity = inventory:GetItemByName("item_bloodthorn")
    item_bloodthorn.enable = item_bloodthorn.entity and item_bloodthorn.entity:IsItemEnabled() and item_bloodthorn.entity:GetCooldown() == 0 and item_bloodthorn.entity:CanBeExecuted() == -1 and local_hero:CanUseItem()
    item_bloodthorn.cast_range = 900 + cast_range_extra
    if item_bloodthorn.enable and distance < item_bloodthorn.cast_range then return item_bloodthorn end

    -- 否决坠饰 4700
    local item_nullifier = {}
    item_nullifier.entity = inventory:GetItemByName("item_nullifier")
    item_nullifier.enable = item_nullifier.entity and item_nullifier.entity:IsItemEnabled() and item_nullifier.entity:GetCooldown() == 0 and item_nullifier.entity:CanBeExecuted() == -1 and local_hero:CanUseItem()
    item_nullifier.cast_range = 600 + cast_range_extra
    if item_nullifier.enable and distance < item_nullifier.cast_range then return item_nullifier end

    -- 深渊之刃 6650
    local item_abyssal_blade = {}
    item_abyssal_blade.entity = inventory:GetItemByName("item_abyssal_blade")
    item_abyssal_blade.enable = item_abyssal_blade.entity and item_abyssal_blade.entity:IsItemEnabled() and item_abyssal_blade.entity:GetCooldown() == 0 and item_abyssal_blade.entity:CanBeExecuted() == -1 and local_hero:CanUseItem()
    item_abyssal_blade.cast_range = 140 + cast_range_extra
    if item_abyssal_blade.enable and distance < item_abyssal_blade.cast_range then return item_abyssal_blade end
    
    -- 阿托斯之棍 2750
    local item_atos = {}
    item_atos.entity = inventory:GetItemByName("item_rod_of_atos")
    item_atos.enable = item_atos.entity and item_atos.entity:IsItemEnabled() and item_atos.entity:GetCooldown() == 0 and item_atos.entity:CanBeExecuted() == -1 and local_hero:CanUseItem()
    item_atos.cast_range = 1150 + cast_range_extra
    if item_atos.enable and distance < item_atos.cast_range then return item_atos end

    -- 羊刀 5700
    local item_sheepstick = {}
    item_sheepstick.entity = inventory:GetItemByName("item_sheepstick")
    item_sheepstick.enable = item_sheepstick.entity and item_sheepstick.entity:IsItemEnabled() and item_sheepstick.entity:GetCooldown() == 0 and item_sheepstick.entity:CanBeExecuted() == -1 and local_hero:CanUseItem()
    item_sheepstick.cast_range = 800 + cast_range_extra
    if item_sheepstick.enable and distance < item_sheepstick.cast_range then return item_sheepstick end

    return nil
end

function IsMechanical(class_id)
    if class_id == ClassIDs.CDOTA_Unit_Fountain 
    or class_id == ClassIDs.CDOTA_BaseNPC_Fort 
    or class_id == ClassIDs.CDOTA_BaseNPC_Tower 
    or class_id == ClassIDs.CDOTA_BaseNPC_Filler 
    or class_id == ClassIDs.CDOTA_BaseNPC_Barracks 
    or class_id == ClassIDs.CDOTA_BaseNPC_Healer 
    or class_id == ClassIDs.CDOTA_BaseNPC_Creep_Siege 
    then
        return true
    end
    return false
end

function IsBuildings(class_id)
    if class_id == ClassIDs.CDOTA_Unit_Fountain 
    or class_id == ClassIDs.CDOTA_BaseNPC_Fort 
    or class_id == ClassIDs.CDOTA_BaseNPC_Tower 
    or class_id == ClassIDs.CDOTA_BaseNPC_Filler 
    or class_id == ClassIDs.CDOTA_BaseNPC_Barracks 
    or class_id == ClassIDs.CDOTA_BaseNPC_Healer 
    then
        return true
    end
    return false
end

function table.get( tb, id )
    return tb[id]
end

function table.set( tb, id, value )
    tb[id] = value
end

function table.copy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[table.copy(orig_key)] = table.copy(orig_value)
        end
        setmetatable(copy, table.copy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

function string.split(input, delimiter)
    input = tostring(input)
    delimiter = tostring(delimiter)
    if (delimiter=='') then return false end
    local pos,arr = 0, {}
    for st,sp in function() return string.find(input, delimiter, pos, true) end do
        table.insert(arr, string.sub(input, pos, st - 1))
        pos = sp + 1
    end
    table.insert(arr, string.sub(input, pos))
    return arr
end

function spairs(t)  
    local a = {}  
    for n in pairs(t) do  
        a[#a+1] = n  
    end  
    table.sort(a)  
    local i = 0  
    return function()  
        i = i + 1  
        return a[i], t[a[i]]  
    end  
end 

--截取中英混合的UTF8字符串，endIndex可缺省
function SubStringUTF8(str, startIndex, endIndex)
    if startIndex < 0 then
        startIndex = SubStringGetTotalIndex(str) + startIndex + 1;
    end

    if endIndex ~= nil and endIndex < 0 then
        endIndex = SubStringGetTotalIndex(str) + endIndex + 1;
    end

    if endIndex == nil then 
        return string.sub(str, SubStringGetTrueIndex(str, startIndex));
    else
        return string.sub(str, SubStringGetTrueIndex(str, startIndex), SubStringGetTrueIndex(str, endIndex + 1) - 1);
    end
end

--获取中英混合UTF8字符串的真实字符数量
function SubStringGetTotalIndex(str)
    local curIndex = 0;
    local i = 1;
    local lastCount = 1;
    repeat 
        lastCount = SubStringGetByteCount(str, i)
        i = i + lastCount;
        curIndex = curIndex + 1;
    until(lastCount == 0);
    return curIndex - 1;
end

function SubStringGetTrueIndex(str, index)
    local curIndex = 0;
    local i = 1;
    local lastCount = 1;
    repeat 
        lastCount = SubStringGetByteCount(str, i)
        i = i + lastCount;
        curIndex = curIndex + 1;
    until(curIndex >= index);
    return i - lastCount;
end

--返回当前字符实际占用的字符数
function SubStringGetByteCount(str, index)
    local curByte = string.byte(str, index)
    local byteCount = 1;
    if curByte == nil then
        byteCount = 0
    elseif curByte > 0 and curByte <= 127 then
        byteCount = 1
    elseif curByte>=192 and curByte<=223 then
        byteCount = 2
    elseif curByte>=224 and curByte<=239 then
        byteCount = 3
    elseif curByte>=240 and curByte<=247 then
        byteCount = 4
    end
    return byteCount;
end

ModifierState = {
    ROOTED, --缠绕
    DISARMED, --缴械
    ATTACK_IMMUNE, --攻击免疫
    SILENCED, --沉默
    MUTED, --禁用物品
    STUNNED, --眩晕
    HEXED, --妖术
    INVISIBLE, --隐形
    INVULNERABLE, --无敌
    MAGIC_IMMUNE, --魔法免疫
    PROVIDES_VISION, --为敌方提供视野
    NIGHTMARED, --恶梦
    BLOCK_DISABLED, --格挡无效
    EVADE_DISABLED, --闪避无效
    UNSELECTABLE, --无法被选择
    CANNOT_TARGET_ENEMIES, --无法选中敌人
    CANNOT_MISS, --无法丢失
    SPECIALLY_DENIABLE, --特别否定
    FROZEN, --冰冻
    COMMAND_RESTRICTED, --指令受限
    NOT_ON_MINIMAP, --不在小地图上显示
    LOW_ATTACK_PRIORITY, --低攻击优先级
    NO_HEALTH_BAR, --没有生命条
    FLYING, --飞行
    NO_UNIT_COLLISION, --没有单位碰撞
    NO_TEAM_MOVE_TO, --
    NO_TEAM_SELECT, --
    PASSIVES_DISABLED, --被动技能无效
    DOMINATED, --被控制
    BLIND, --被致盲
    OUT_OF_GAME, --被移出游戏
    FAKE_ALLY, --假盟友
    FLYING_FOR_PATHING_PURPOSES_ONLY, --
    TRUESIGHT_IMMUNE, --真视免疫
    UNTARGETABLE, --无法被作为目标
    IGNORING_MOVE_AND_ATTACK_ORDERS, --无视移动和攻击命令
    ALLOW_PATHING_TROUGH_TREES, --
    NOT_ON_MINIMAP_FOR_ENEMIES, --
    UNSLOWABLE, --不可被减速
    TETHERED, --被束缚
    LAST --
}

ModifierStateString = {
    "ROOTED",  --缠绕
    "DISARMED",  --缴械
    "ATTACK_IMMUNE",  --攻击免疫
    "SILENCED",  --沉默
    "MUTED",  --禁用物品
    "STUNNED",  --眩晕
    "HEXED",  --妖术
    "INVISIBLE",  --隐形
    "INVULNERABLE",  --无敌
    "MAGIC_IMMUNE",  --魔法免疫
    "PROVIDES_VISION",  --为敌方提供视野
    "NIGHTMARED",  --恶梦
    "BLOCK_DISABLED",  --格挡无效
    "EVADE_DISABLED",  --闪避无效
    "UNSELECTABLE",  --无法被选择
    "CANNOT_TARGET_ENEMIES",  --无法选中敌人
    "CANNOT_MISS",  --无法丢失
    "SPECIALLY_DENIABLE",  --特别否定
    "FROZEN",  --冰冻
    "COMMAND_RESTRICTED",  --指令受限
    "NOT_ON_MINIMAP",  --不在小地图上显示
    "LOW_ATTACK_PRIORITY",  --低攻击优先级
    "NO_HEALTH_BAR",  --没有生命条
    "FLYING",  --飞行
    "NO_UNIT_COLLISION",  --没有单位碰撞
    "NO_TEAM_MOVE_TO",  --
    "NO_TEAM_SELECT",  --
    "PASSIVES_DISABLED",  --被动技能无效
    "DOMINATED",  --被控制
    "BLIND",  --被致盲
    "OUT_OF_GAME",  --被移出游戏
    "FAKE_ALLY",  --假盟友
    "FLYING_FOR_PATHING_PURPOSES_ONLY",  --
    "TRUESIGHT_IMMUNE",  --真视免疫
    "UNTARGETABLE",  --无法被作为目标
    "IGNORING_MOVE_AND_ATTACK_ORDERS",  --无视移动和攻击命令
    "ALLOW_PATHING_TROUGH_TREES",  --
    "NOT_ON_MINIMAP_FOR_ENEMIES",  --
    "UNSLOWABLE",  --不可被减速
    "TETHERED",  --被束缚
    "LAST"  --
}

DotaOrderType = {
    DOTA_UNIT_ORDER_NONE                           = 0,
    DOTA_UNIT_ORDER_MOVE_TO_POSITION               = 1,
    DOTA_UNIT_ORDER_MOVE_TO_TARGET                 = 2,
    DOTA_UNIT_ORDER_ATTACK_MOVE                    = 3,
    DOTA_UNIT_ORDER_ATTACK_TARGET                  = 4,
    DOTA_UNIT_ORDER_CAST_POSITION                  = 5,
    DOTA_UNIT_ORDER_CAST_TARGET                    = 6,
    DOTA_UNIT_ORDER_CAST_TARGET_TREE               = 7,
    DOTA_UNIT_ORDER_CAST_NO_TARGET                 = 8,
    DOTA_UNIT_ORDER_CAST_TOGGLE                    = 9,
    DOTA_UNIT_ORDER_HOLD_POSITION                  = 10,
    DOTA_UNIT_ORDER_TRAIN_ABILITY                  = 11,
    DOTA_UNIT_ORDER_DROP_ITEM                      = 12,
    DOTA_UNIT_ORDER_GIVE_ITEM                      = 13,
    DOTA_UNIT_ORDER_PICKUP_ITEM                    = 14,
    DOTA_UNIT_ORDER_PICKUP_RUNE                    = 15,
    DOTA_UNIT_ORDER_PURCHASE_ITEM                  = 16,
    DOTA_UNIT_ORDER_SELL_ITEM                      = 17,
    DOTA_UNIT_ORDER_DISASSEMBLE_ITEM               = 18,
    DOTA_UNIT_ORDER_MOVE_ITEM                      = 19,
    DOTA_UNIT_ORDER_CAST_TOGGLE_AUTO               = 20,
    DOTA_UNIT_ORDER_STOP                           = 21,
    DOTA_UNIT_ORDER_TAUNT                          = 22,
    DOTA_UNIT_ORDER_BUYBACK                        = 23,
    DOTA_UNIT_ORDER_GLYPH                          = 24,
    DOTA_UNIT_ORDER_EJECT_ITEM_FROM_STASH          = 25,
    DOTA_UNIT_ORDER_CAST_RUNE                      = 26,
    DOTA_UNIT_ORDER_PING_ABILITY                   = 27,
    DOTA_UNIT_ORDER_MOVE_TO_DIRECTION              = 28,
    DOTA_UNIT_ORDER_PATROL                         = 29,
    DOTA_UNIT_ORDER_VECTOR_TARGET_POSITION         = 30,
    DOTA_UNIT_ORDER_RADAR                          = 31,
    DOTA_UNIT_ORDER_SET_ITEM_COMBINE_LOCK          = 32,
    DOTA_UNIT_ORDER_CONTINUE                       = 33,
    DOTA_UNIT_ORDER_VECTOR_TARGET_CANCELED         = 34,
    DOTA_UNIT_ORDER_CAST_RIVER_PAINT               = 35,
    DOTA_UNIT_ORDER_PREGAME_ADJUST_ITEM_ASSIGNMENT = 36
};

WM_KEYDOWN = 0x0100
WM_KEYUP   = 0x0101
WM_DotaConfig = RegisterWindowMessage("WM_SH_GAME")

ConfigFlags = {
    FreeCameraDistance           = 1,
    AutoAccept                   = 2,
    LastHitTips                  = 3,
    LastHitCount                 = 4,
    CameraDisableZoom            = 5,
    MapHighDefinition            = 6,
    UltimateTimer                = 7,
    RightClickDeny               = 8,
    AntiRunBack                  = 9,
    NetGraph                     = 10,
    IngameTimer                  = 11,
    GamePausedTimer              = 12,
    GamePausedBroadcast          = 13,
    RuneTimer                    = 14,
    RuneTips                     = 15,
    RuneBroadcast                = 16,
    RoshanTimer                  = 17,
    RoshanBroadcast              = 18,
    ShowTeamHealthNum            = 19,
    ShowTeamManaNum              = 20,
    ShowTeamLevel                = 21,
    ShowEnemyHealthNum           = 22,
    ShowEnemyManaNum             = 23,
    ShowEnemyLevel               = 24,
    ShowPlayerNames              = 25,
    ObserveEnemyHero             = 26,
    ShowItemsPanel               = 27,
    EnableRangeFinder            = 28,
    ShowTopHealthBar             = 29,
    ShowEnemyHeroManaBar         = 30,
    ShowPing                     = 31,
    ShowTowerRange               = 32,
    AutoSwithToGame              = 33,
    WeatherEffects               = 34,
    WeatherEffects_Value         = 35,
    WeatherEffectsRandom         = 36,
    WeatherEffectsRandom_Value   = 37,
    FpsMax                       = 38,
    FpsMax_Value                 = 39,
    HealthPerVertical            = 40,
    HealthPerVertical_Value      = 41,
    ShowHeroRange                = 42,
    ShowHeroRange_Value          = 43,
    AntiLowViolence              = 44,
    AntiWordFilter               = 45,
    AccountIDFound               = 46,
    ModifyChatColor              = 47,
    ShowChatTails                = 48,
    StartOfflineGame             = 49,
    RemoteCmd                    = 50,
    ChatColorID                  = 51,
    dota_bot_practice_difficulty = 52,
    dota_start_ai_game           = 53,
    RainbowText                  = 54,
    PrivateBroadcast             = 55,
    SetHudSkin                   = 56,
    GamePathFound                = 57,
    LauncherChanged              = 58,
    SteamPathFound               = 59,
    GameStart                    = 60,
    CameraControl                = 61,
    StunBar                      = 62,
    MatchMakingTips              = 63,
    ShowEnemyVisible             = 64,
    ShowTeamData                 = 65,
    AxeAutoUlt                   = 66,
    AxeAutoBlinkDagger           = 67,
    LionAutoUlt                  = 68,
    LionAutoBlinkDagger          = 69,
    ZeusAutoUlt                  = 70,
    LegionAutoUlt                = 71,
    NecAutoUlt                   = 72,
    SkywrathAutoUlt              = 73,
    KunkkaAutoUlt                = 74,
    AutoHex                      = 75,
    EnigmaAutoUlt                = 76,
    ClassicalHotkey              = 77,
    HeroTinker                   = 78,
    ItemBot                      = 79,
    HeroPudge                    = 80,
    BlinkMax                     = 81,
    AutoDropItem                 = 82,
    TechiesAutoult               = 83
}

function LOWORD(dword)
    return bit.band(dword,0xFFFF)
end

function HIWORD(dword)
    return bit.band(bit.rshift(dword,16),0xFFFF)
end


--[[
 * Virtual Keys, Standard Set
--]]

VK_P  = 0x50
VK_R  = 0x52

VK_LBUTTON      =  0x01
VK_RBUTTON      =  0x02
VK_CANCEL       =  0x03
VK_MBUTTON      =  0x04    --[[ NOT contiguous with L & RBUTTON--]]
VK_XBUTTON1     =  0x05    --[[ NOT contiguous with L & RBUTTON--]]
VK_XBUTTON2     =  0x06    --[[ NOT contiguous with L & RBUTTON--]]

--[[
 * 0x07 : unassigned
--]]

VK_BACK         =  0x08
VK_TAB          =  0x09

--[[
 * 0x0A - 0x0B : reserved
--]]

VK_CLEAR        =  0x0C
VK_RETURN       =  0x0D

VK_SHIFT        =  0x10
VK_CONTROL      =  0x11
VK_MENU         =  0x12
VK_PAUSE        =  0x13
VK_CAPITAL      =  0x14

VK_KANA         =  0x15
VK_HANGEUL      =  0x15  --[[ old name - should be here for compatibility--]]
VK_HANGUL       =  0x15
VK_JUNJA        =  0x17
VK_FINAL        =  0x18
VK_HANJA        =  0x19
VK_KANJI        =  0x19

VK_ESCAPE       =  0x1B

VK_CONVERT      =  0x1C
VK_NONCONVERT   =  0x1D
VK_ACCEPT       =  0x1E
VK_MODECHANGE   =  0x1F

VK_SPACE        =  0x20
VK_PRIOR        =  0x21
VK_NEXT         =  0x22
VK_END          =  0x23
VK_HOME         =  0x24
VK_LEFT         =  0x25
VK_UP           =  0x26
VK_RIGHT        =  0x27
VK_DOWN         =  0x28
VK_SELECT       =  0x29
VK_PRINT        =  0x2A
VK_EXECUTE      =  0x2B
VK_SNAPSHOT     =  0x2C
VK_INSERT       =  0x2D
VK_DELETE       =  0x2E
VK_HELP         =  0x2F

--[[
 * VK_0 - VK_9 are the same as ASCII '0' - '9' (0x30 - 0x39)
 * 0x40 : unassigned
 * VK_A - VK_Z are the same as ASCII 'A' - 'Z' (0x41 - 0x5A)
--]]

VK_0 = 0x30
VK_1 = 0x31
VK_2 = 0x32
VK_3 = 0x33
VK_4 = 0x34
VK_5 = 0x35
VK_6 = 0x36
VK_7 = 0x37
VK_8 = 0x38
VK_9 = 0x39
VK_A = 0x41
VK_B = 0x42
VK_C = 0x43
VK_D = 0x44
VK_E = 0x45
VK_F = 0x46
VK_G = 0x47
VK_H = 0x48
VK_I = 0x49
VK_J = 0x4A
VK_K = 0x4B
VK_L = 0x4C
VK_M = 0x4D
VK_N = 0x4E
VK_O = 0x4F
VK_P = 0x50
VK_Q = 0x51
VK_R = 0x52
VK_S = 0x53
VK_T = 0x54
VK_U = 0x55
VK_V = 0x56
VK_W = 0x57
VK_X = 0x58
VK_Y = 0x59
VK_Z = 0x5A


VK_LWIN         =  0x5B
VK_RWIN         =  0x5C
VK_APPS         =  0x5D

--[[
 * 0x5E : reserved
--]]

VK_SLEEP        =  0x5F

VK_NUMPAD0      =  0x60
VK_NUMPAD1      =  0x61
VK_NUMPAD2      =  0x62
VK_NUMPAD3      =  0x63
VK_NUMPAD4      =  0x64
VK_NUMPAD5      =  0x65
VK_NUMPAD6      =  0x66
VK_NUMPAD7      =  0x67
VK_NUMPAD8      =  0x68
VK_NUMPAD9      =  0x69
VK_MULTIPLY     =  0x6A
VK_ADD          =  0x6B
VK_SEPARATOR    =  0x6C
VK_SUBTRACT     =  0x6D
VK_DECIMAL      =  0x6E
VK_DIVIDE       =  0x6F
VK_F1           =  0x70
VK_F2           =  0x71
VK_F3           =  0x72
VK_F4           =  0x73
VK_F5           =  0x74
VK_F6           =  0x75
VK_F7           =  0x76
VK_F8           =  0x77
VK_F9           =  0x78
VK_F10          =  0x79
VK_F11          =  0x7A
VK_F12          =  0x7B
VK_F13          =  0x7C
VK_F14          =  0x7D
VK_F15          =  0x7E
VK_F16          =  0x7F
VK_F17          =  0x80
VK_F18          =  0x81
VK_F19          =  0x82
VK_F20          =  0x83
VK_F21          =  0x84
VK_F22          =  0x85
VK_F23          =  0x86
VK_F24          =  0x87

--[[
 * 0x88 - 0x8F : unassigned
--]]

VK_NUMLOCK      =  0x90
VK_SCROLL       =  0x91

--[[
 * NEC PC-9800 kbd definitions
--]]
VK_OEM_NEC_EQUAL =  0x92   -- '=' key on numpad

--[[
 * Fujitsu/OASYS kbd definitions
--]]
VK_OEM_FJ_JISHO =  0x92   -- 'Dictionary' key
VK_OEM_FJ_MASSHOU =  0x93   -- 'Unregister word' key
VK_OEM_FJ_TOUROKU =  0x94   -- 'Register word' key
VK_OEM_FJ_LOYA  =  0x95   -- 'Left OYAYUBI' key
VK_OEM_FJ_ROYA  =  0x96   -- 'Right OYAYUBI' key

--[[
 * 0x97 - 0x9F : unassigned
--]]

--[[
 * VK_L* & VK_R* - left and right Alt, Ctrl and Shift virtual keys.
 * Used only as parameters to GetAsyncKeyState() and GetKeyState().
 * No other API or message will distinguish left and right keys in this way.
--]]
VK_LSHIFT       =  0xA0
VK_RSHIFT       =  0xA1
VK_LCONTROL     =  0xA2
VK_RCONTROL     =  0xA3
VK_LMENU        =  0xA4
VK_RMENU        =  0xA5

VK_OEM_1        = 0xBA   -- ';:' for US
VK_OEM_PLUS     = 0xBB   -- '+' any country
VK_OEM_COMMA    = 0xBC   -- ',' any country
VK_OEM_MINUS    = 0xBD   -- '-' any country
VK_OEM_PERIOD   = 0xBE   -- '.' any country
VK_OEM_2        = 0xBF   -- '/?' for US
VK_OEM_3        = 0xC0   -- '`~' for US

VK_OEM_4        = 0xDB   -- '[{' for US
VK_OEM_5        = 0xDC   -- '\|' for US
VK_OEM_6        = 0xDD   -- ']}' for US
VK_OEM_7        = 0xDE   -- ''"' for US
VK_OEM_8        = 0xDF


EFontFlags = {
    FONTFLAG_NONE           = 0x000,
    FONTFLAG_ITALIC         = 0x001,
    FONTFLAG_UNDERLINE      = 0x002,
    FONTFLAG_STRIKEOUT      = 0x004,
    FONTFLAG_SYMBOL         = 0x008,
    FONTFLAG_ANTIALIAS      = 0x010,
    FONTFLAG_GAUSSIANBLUR   = 0x020,
    FONTFLAG_ROTARY         = 0x040,
    FONTFLAG_DROPSHADOW     = 0x080,
    FONTFLAG_ADDITIVE       = 0x100,
    FONTFLAG_OUTLINE        = 0x200,
    FONTFLAG_CUSTOM         = 0x400
}
