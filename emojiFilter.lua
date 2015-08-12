import(".common.utils.utf8len")

--[[
@param char : utf8 character
@return : boolean
]]
function isEmojiCharacter( char )
    if string.len(char) == 3 then
        local codePoint1 = string.byte(char, 1)
        local codePoint2 = string.byte(char, 2)
        local codePoint3 = string.byte(char, 3)

        if (codePoint1 == 0xE2 and codePoint2 == 0x9C and codePoint3 == 0x82) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9C and codePoint3 == 0x85) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9C and codePoint3 == 0x88) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9C and codePoint3 == 0x89) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9C and codePoint3 == 0x8A) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9C and codePoint3 == 0x8B) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9C and codePoint3 == 0x8C) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9C and codePoint3 == 0x8F) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9C and codePoint3 == 0x92) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9C and codePoint3 == 0x94) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9C and codePoint3 == 0x96) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9C and codePoint3 == 0xA8) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9C and codePoint3 == 0xB3) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9C and codePoint3 == 0xB3) or
            (codePoint1 == 0xE2 and codePoint2 == 0x93 and codePoint3 == 0x82) or
            (codePoint1 == 0xE2 and codePoint2 == 0x80 and codePoint3 == 0xBC) or
            (codePoint1 == 0xE2 and codePoint2 == 0x81 and codePoint3 == 0x89) or
            (codePoint1 == 0xE2 and codePoint2 == 0x84 and codePoint3 == 0xA2) or
            (codePoint1 == 0xE2 and codePoint2 == 0x84 and codePoint3 == 0xB9) or
            (codePoint1 == 0xE2 and codePoint2 == 0x86 and codePoint3 == 0x94) or
            (codePoint1 == 0xE2 and codePoint2 == 0x86 and codePoint3 == 0x95) or
            (codePoint1 == 0xE2 and codePoint2 == 0x86 and codePoint3 == 0x96) or
            (codePoint1 == 0xE2 and codePoint2 == 0x86 and codePoint3 == 0x97) or
            (codePoint1 == 0xE2 and codePoint2 == 0x86 and codePoint3 == 0x98) or
            (codePoint1 == 0xE2 and codePoint2 == 0x86 and codePoint3 == 0x99) or
            (codePoint1 == 0xE2 and codePoint2 == 0x86 and codePoint3 == 0xA9) or
            (codePoint1 == 0xE2 and codePoint2 == 0x86 and codePoint3 == 0xAA) or
            (codePoint1 == 0xE2 and codePoint2 == 0x8C and codePoint3 == 0x9A) or
            (codePoint1 == 0xE2 and codePoint2 == 0x8C and codePoint3 == 0x9B) or
            (codePoint1 == 0xE2 and codePoint2 == 0x8F and codePoint3 == 0xA9) or
            (codePoint1 == 0xE2 and codePoint2 == 0x8F and codePoint3 == 0xAA) or
            (codePoint1 == 0xE2 and codePoint2 == 0x8F and codePoint3 == 0xAB) or
            (codePoint1 == 0xE2 and codePoint2 == 0x8F and codePoint3 == 0xAC) or
            (codePoint1 == 0xE2 and codePoint2 == 0x8F and codePoint3 == 0xB0) or
            (codePoint1 == 0xE2 and codePoint2 == 0x8F and codePoint3 == 0xB3) or
            (codePoint1 == 0xE2 and codePoint2 == 0x96 and codePoint3 == 0xAA) or
            (codePoint1 == 0xE2 and codePoint2 == 0x96 and codePoint3 == 0xAB) or
            (codePoint1 == 0xE2 and codePoint2 == 0x96 and codePoint3 == 0xB6) or
            (codePoint1 == 0xE2 and codePoint2 == 0x97 and codePoint3 == 0x80) or
            (codePoint1 == 0xE2 and codePoint2 == 0x97 and codePoint3 == 0xBB) or
            (codePoint1 == 0xE2 and codePoint2 == 0x97 and codePoint3 == 0xBC) or
            (codePoint1 == 0xE2 and codePoint2 == 0x97 and codePoint3 == 0xBD) or
            (codePoint1 == 0xE2 and codePoint2 == 0x97 and codePoint3 == 0xBE) or
            (codePoint1 == 0xE2 and codePoint2 == 0x98 and codePoint3 == 0x80) or
            (codePoint1 == 0xE2 and codePoint2 == 0x98 and codePoint3 == 0x81) or
            (codePoint1 == 0xE2 and codePoint2 == 0x98 and codePoint3 == 0x8E) or
            (codePoint1 == 0xE2 and codePoint2 == 0x98 and codePoint3 == 0x91) or
            (codePoint1 == 0xE2 and codePoint2 == 0x98 and codePoint3 == 0x94) or
            (codePoint1 == 0xE2 and codePoint2 == 0x98 and codePoint3 == 0x95) or
            (codePoint1 == 0xE2 and codePoint2 == 0x98 and codePoint3 == 0x9D) or
            (codePoint1 == 0xE2 and codePoint2 == 0x98 and codePoint3 == 0xBA) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0x88) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0x89) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0x8A) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0x8B) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0x8C) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0x8D) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0x8E) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0x8F) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0x90) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0x91) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0x92) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0x93) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0xA0) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0xA3) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0xA5) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0xA6) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0xA8) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0xBB) or
            (codePoint1 == 0xE2 and codePoint2 == 0x99 and codePoint3 == 0xBF) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9A and codePoint3 == 0x93) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9A and codePoint3 == 0xA0) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9A and codePoint3 == 0xA1) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9A and codePoint3 == 0xAA) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9A and codePoint3 == 0xAB) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9A and codePoint3 == 0xBD) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9A and codePoint3 == 0xBE) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9B and codePoint3 == 0x84) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9B and codePoint3 == 0x85) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9B and codePoint3 == 0x8E) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9B and codePoint3 == 0x94) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9B and codePoint3 == 0xAA) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9B and codePoint3 == 0xB2) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9B and codePoint3 == 0xB3) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9B and codePoint3 == 0xB5) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9B and codePoint3 == 0xBA) or
            (codePoint1 == 0xE2 and codePoint2 == 0x9B and codePoint3 == 0xBD) or
            (codePoint1 == 0xE2 and codePoint2 == 0xA4 and codePoint3 == 0xB4) or
            (codePoint1 == 0xE2 and codePoint2 == 0xA4 and codePoint3 == 0xB5) or
            (codePoint1 == 0xE2 and codePoint2 == 0xAC and codePoint3 == 0x85) or
            (codePoint1 == 0xE2 and codePoint2 == 0xAC and codePoint3 == 0x86) or
            (codePoint1 == 0xE2 and codePoint2 == 0xAC and codePoint3 == 0x87) or
            (codePoint1 == 0xE2 and codePoint2 == 0xAC and codePoint3 == 0x9B) or
            (codePoint1 == 0xE2 and codePoint2 == 0xAC and codePoint3 == 0x9C) or
            (codePoint1 == 0xE2 and codePoint2 == 0xAD and codePoint3 == 0x90) or
            (codePoint1 == 0xE2 and codePoint2 == 0xAD and codePoint3 == 0x95) or
            (codePoint1 == 0xE2 and codePoint2 == 0x80 and codePoint3 == 0xB0) or
            (codePoint1 == 0xE2 and codePoint2 == 0x80 and codePoint3 == 0xBD) or
            (codePoint1 == 0xE2 and codePoint2 == 0x8A and codePoint3 == 0x97) or
            (codePoint1 == 0xE2 and codePoint2 == 0x8A and codePoint3 == 0x99) then
            return true
        end
    elseif string.len(char) == 2 then
        local codePoint1 = string.byte(char, 1)
        local codePoint2 = string.byte(char, 2)
        if (codePoint1 == 0xC2 and codePoint2 == 0xA9) or
            (codePoint1 == 0xC2 and codePoint2 == 0xAE) then
            return true
        end
    end
    return false
end

--[[
@param str: string 
@return : booleans
]]
function existEmojiCharacter( str )
    local len = string.utf8len( str )
    for i = 1, len, 1 do
        local char = string.utf8sub(str, i, i)
        if isEmojiCharacter( char ) then
            return true
        end
    end
    return false
end