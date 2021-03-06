-- Author: Matthias Muente (matthias.muente@gmx.de)

freelancer_transports_czerka_village = ScreenPlay:new {
}
registerScreenPlay("freelancer_transports_czerka_village", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")

function freelancer_transports_czerka_village:start()
    if (isZoneEnabled("lok") and isZoneEnabled("naboo")) then
        --self:spawnBuilding()
    end
end

function freelancer_transports_czerka_village:spawnBuilding()
end

------------------------------------------- convohandler --------------------------------------------
freelancer_transport_czerka_village_convo_handler = Object:new {

  tstring = "freelancer_transport_czerka_village_convo_handler"
}

function freelancer_transport_czerka_village_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

  local creature = LuaCreatureObject(conversingPlayer)
  local convosession = creature:getConversationSession()
  local conversation = LuaConversationTemplate(conversationTemplate)
  local nextConversationScreen

  if ( conversation ~= nil ) then
    if ( convosession ~= nil ) then
      local session = LuaConversationSession(convosession)
      if ( session ~= nil ) then
        lastConversationScreen = session:getLastConversationScreen()
      end
    end

    if ( lastConversationScreen == nil ) then
      nextConversationScreen = conversation:getInitialScreen()
    else
      local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
      local screen = LuaConversationScreen(nextConversationScreen)
      local screenID = luaLastConversationScreen:getScreenID()
      local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
      nextConversationScreen = conversation:getScreen(optionLink)
      local player = LuaSceneObject(conversingPlayer)
      if ( player ~= nil ) then
        if (screenID == "travel_village") then
          if (optionLink == "pay") then
            if (freelancer_transport_czerka_village_convo_handler:removeCash(conversingPlayer,20000)) then
              player:switchZone("dathomir", 5370, 78.5, -4110, 0)
            else
              nextConversationScreen = conversation:getScreen("insufficient_funds")
              creature:sendSystemMessage("You dont have enough credits to take the tour!")
            end
          end 
        end
      end
    end
  end
  return nextConversationScreen
end

function freelancer_transport_czerka_village_convo_handler:removeCash(conversingPlayer, money)
  local creature = LuaCreatureObject(conversingPlayer)
  local ret = false 
  if ( creature ~= nil ) then
    local credits = creature:getCashCredits()
    if (credits >= money) then
      creature:subtractCashCredits(money)
      ret = true
    end
  end
  return ret
end

function freelancer_transport_czerka_village_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
  return conversationScreen
end