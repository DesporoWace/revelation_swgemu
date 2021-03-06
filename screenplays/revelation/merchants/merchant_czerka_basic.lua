merchant_czerka_basic = ScreenPlay:new {
	numberOfActs = 1,
	questString = "merchant_czerka_basic",
	states = {}, 
}

registerScreenPlay("merchant_czerka_basic", true)
local ObjectManager = require("managers.object.object_manager")

function merchant_czerka_basic:start()
	if (isZoneEnabled("corellia")) and (isZoneEnabled("tatooine")) and (isZoneEnabled("naboo")) then
		--self:spawnStructures()
		self:spawnMobile()
	end
end

function merchant_czerka_basic:spawnStructures()
end

function merchant_czerka_basic:spawnMobile()
	spawnMobile("tatooine", "merchant_czerka_basic", 600, -1258, 12, -3610, 180, 0)
	spawnSceneObject("tatooine","object/tangible/symbols/icon_trader.iff", -1258, 15, -3610, 0, math.rad(180))
	spawnMobile("corellia", "merchant_czerka_basic", 600, -507, 28, -4635, 45, 0)
	spawnSceneObject("corellia","object/tangible/symbols/icon_trader.iff", -507, 30, -4635, 0, math.rad(45))
	spawnMobile("naboo", "merchant_czerka_basic", 600, -4946.8, 6, 4035.9, 90, 0)
	spawnSceneObject("naboo","object/tangible/symbols/icon_trader.iff", -4946.8, 8, 4035.9, 0, math.rad(90))
end


------------------------------------------- convohandler --------------------------------------------
merchant_czerka_basic_convo_handler = Object:new {

	tstring = "merchant_czerka_basic_convo_handler"
}
local merchantHelper = require("helper.merchantHelper")
local ObjectManager = require("managers.object.object_manager")
local lastConversationScreen

function merchant_czerka_basic_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

    local creature = LuaCreatureObject(conversingPlayer)
    local convosession = creature:getConversationSession()
    local nextConversationScreen
    local lastConversationScreen = nil
    
    if (conversationTemplate ~= nil ) then
        local conversation = LuaConversationTemplate(conversationTemplate)
        local session = LuaConversationSession(convosession)
        if ( session ~= nil ) then
            lastConversationScreen = session:getLastConversationScreen()
        end
        if (lastConversationScreen == nil ) then
            nextConversationScreen = conversation:getInitialScreen()
        else
            local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
            local screen = LuaConversationScreen(nextConversationScreen)
            local screenID = luaLastConversationScreen:getScreenID()
            local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
            nextConversationScreen = conversation:getScreen(optionLink)
            local ret = false

            if (screenID == "select_artisan") then
                if (optionLink == "rifle_cdef_1") then
                    ret = merchantHelper:sellItem(conversingPlayer, "rifle_cdef", 1, 67) 
                elseif (optionLink == "rifle_cdef_5") then
                    ret = merchantHelper:sellItem(conversingPlayer, "rifle_cdef", 5, 67) 
                elseif (optionLink == "jacket_s12_1") then
                    ret = merchantHelper:sellItem(conversingPlayer, "jacket_s12", 1, 135) 
                elseif (optionLink == "jacket_s12_5") then
                    ret = merchantHelper:sellItem(conversingPlayer, "jacket_s12", 5, 135) 
                elseif (optionLink == "large_glass_1") then
                    ret = merchantHelper:sellItem(conversingPlayer, "large_glass", 1, 225) 
                elseif (optionLink == "large_glass_5") then
                    ret = merchantHelper:sellItem(conversingPlayer, "large_glass", 5, 225) 
                elseif (optionLink == "wind_generator_deed_name_1") then
                    ret = merchantHelper:sellItem(conversingPlayer, "wind_generator_deed_name", 1, 575) 
                elseif (optionLink == "wind_generator_deed_name_5") then
                    ret = merchantHelper:sellItem(conversingPlayer, "wind_generator_deed_name", 5, 575) 
                end
                if (ret == false) then
                    nextConversationScreen = conversation:getScreen("insufficient_items")
                else
                    nextConversationScreen = lastConversationScreen
                end
            elseif (screenID == "select_entertainer") then
                if (optionLink == "obj_slitherhorn_1") then
                    ret = merchantHelper:sellItem(conversingPlayer, "obj_slitherhorn", 1, 115) 
                elseif (optionLink == "obj_slitherhornf_5") then
                    ret = merchantHelper:sellItem(conversingPlayer, "obj_slitherhorn", 5, 115) 
                end
                if (ret == false) then
                    nextConversationScreen = conversation:getScreen("insufficient_items")
                else
                    nextConversationScreen = lastConversationScreen
                end
            elseif (screenID == "select_medic") then
                if (optionLink == "stimpack_sm_s1_b_1") then
                    ret = merchantHelper:sellItem(conversingPlayer, "stimpack_sm_s1_b", 1, 153) 
                elseif (optionLink == "stimpack_sm_s1_b_5") then
                    ret = merchantHelper:sellItem(conversingPlayer, "stimpack_sm_s1_b", 5, 153) 
                end
                if (ret == false) then
                    nextConversationScreen = conversation:getScreen("insufficient_items")
                else
                    nextConversationScreen = lastConversationScreen
                end
            end
        end
    end
    return nextConversationScreen
end



function merchant_czerka_basic_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
    return conversationScreen
end
