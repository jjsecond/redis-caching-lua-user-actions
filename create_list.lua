-- must have a redis connection

-- arg from cli
-- someID
local id = KEYS[1]


local getAllUserActionKeys = redis.call("keys", "customerId:"..id..":userAction*")
-- getting all user actions
--[[

eg
1) "customerId:someID:userAction:savedStoryBefore"
2) "customerId:someID:userAction:hasGiftedArticle"
3) "customerId:someID:userAction:showNotification"
]]



-- string interpolation for a new hash
local newHash = "customerId"..id.."userActionHash"

local stringToRemove = 'customerId:'..id..':userAction:'


for _, key in ipairs(getAllUserActionKeys) do
    -- if the key exists then the value for these will be 'completed'
    local value = redis.call('GET', key)

    -- regex to remove customerId:someID:userAction:
    local newKey = string.gsub(key, stringToRemove, "")

    redis.call('HSET', newHash, newKey, value)
    --[[
    customerId:someID:userActionHash: {
        "savedStoryBefore": "completed"
        "hasGiftedArticle": "completed"
        "showNotification": "completed"
    }

    ]]
end

local redisCustomerHash = redis.call('HGETALL', newHash)

return redisCustomerHash
