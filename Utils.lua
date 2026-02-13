--============================================================================
-- QuickCrafts: Utils.lua
--============================================================================

local addonName, addon = ...

addon.Utils = addon.Utils or {}

function addon.Utils.StripItemLink(str)
    if not str then return "" end
    -- Remove color codes and item link formatting
    local name = str:match("%[(.-)%]")
    if name then return name end
    str = str:gsub("|c%x%x%x%x%x%x%x%x", "")  -- Remove beginning of color
    str = str:gsub("|r", "")                    -- Remove end of color
    str = str:gsub("|H.-|h", "")                -- Remove beginning of hyperlink
    str = str:gsub("|h", "")                    -- Remove end of hyperlink
    return str
end

function addon.Utils.UTF8Len(str)
    if not str then return 0 end
    local len = 0
    local i = 1
    while i <= #str do
        local byte = str:byte(i)
        if byte >= 240 then i = i + 4
        elseif byte >= 224 then i = i + 3
        elseif byte >= 192 then i = i + 2
        else i = i + 1 end
        len = len + 1
    end
    return len
end

function addon.Utils.UTF8Sub(str, startChar, endChar)
    if not str then return "" end
    
    local byteStart = 1
    local byteEnd = #str
    local charCount = 0
    local i = 1
    
    while i <= #str do
        charCount = charCount + 1
        local byte = str:byte(i)
        local charBytes = 1
        
        if byte >= 240 then charBytes = 4
        elseif byte >= 224 then charBytes = 3
        elseif byte >= 192 then charBytes = 2 end
        
        if charCount == startChar then
            byteStart = i
        end
        if charCount == endChar then
            byteEnd = i + charBytes - 1
            break
        end
        
        i = i + charBytes
    end
    
    return str:sub(byteStart, byteEnd)
end

function addon.Utils.TruncateWithQuality(str, maxLen)
    if not str then return "" end
    
    -- Extract code if present (quality stars, etc.)
    local qualityCode = str:match("(|A.-|a)")
    
    -- Extract the display name from brackets
    local name = str:match("%[(.-)%]")
    if not name then
        name = str
        name = name:gsub("|c%x%x%x%x%x%x%x%x", "")
        name = name:gsub("|r", "")
        name = name:gsub("|H.-|h", "")
        name = name:gsub("|h", "")
        name = name:gsub("|A.-|a", "")
        name = name:gsub("|T.-|t", "")
    end
    
    -- Truncate the name if needed
    if addon.Utils.UTF8Len(name) > maxLen then
        name = addon.Utils.UTF8Sub(name, 1, maxLen - 1) .. "..."
    end

    if qualityCode then
        name = name .. " " .. qualityCode
    end
    
    return name
end