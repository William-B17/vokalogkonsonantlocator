local chars = { -- true = vokal, false = konsonant
    ["A"] = true, 
    ["B"] = false, 
    ["C"] = false, 
    ["D"] = false, 
    ["E"] = true, 
    ["F"] = false, 
    ["G"] = false, 
    ["H"] = false, 
    ["I"] = true, 
    ["J"] = false, 
    ["K"] = false, 
    ["L"] = false, 
    ["M"] = false, 
    ["N"] = false, 
    ["O"] = true, 
    ["P"] = false, 
    ["Q"] = false, 
    ["R"] = false, 
    ["S"] = false, 
    ["T"] = false, 
    ["U"] = true, 
    ["V"] = false, 
    ["W"] = false, 
    ["X"] = false, 
    ["Y"] = true, 
    ["Z"] = false, 
    ["Æ"] = true, 
    ["Ø"] = true, 
    ["Å"] = true 
}

local text = "hej jeg hedder william"

nettotext  = {}

for i=1, #text do
    local localstring = string.upper(string.sub(text, i, i))
    if localstring == " " or localstring == "" then
        table.insert(nettotext, " ")
    elseif localstring ~= " " and chars[localstring] ~= nil then
        if chars[localstring] then 
            table.insert(nettotext, "\27[101;93m"..localstring.."\27[0m")
        else
            table.insert(nettotext, "\27[100;93m"..localstring.."\27[0m")
        end
    end
end
message = table.concat(nettotext)
print(message)
