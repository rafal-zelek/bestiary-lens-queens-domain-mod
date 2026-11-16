-- Data-only presentation contract. No Unreal lookups, actors, saves or UI calls.
local M={}
local function finite(v) return type(v)=='number' and v==v and math.abs(v)<math.huge end
function M.build(input)
    input=input or {}
    if input.known~=true then return {known=false,stats={},resists={},drops={},showHint=false} end
    local out={known=true,name=input.name,stats={},resists={},drops={},lootCaption=input.lootCaption,
        unknownCaption=input.unknownCaption,hintCaption=input.hintCaption,showHint=input.showHint==true,
        specialDrops=input.specialDrops==true}
    for i,row in ipairs(input.stats or {}) do
        out.stats[i]={caption=row.caption,value=finite(row.value) and row.value or nil,kind=row.kind}
    end
    for i,row in ipairs(input.resists or {}) do out.resists[i]={caption=row.caption,value=row.value} end
    for i,row in ipairs(input.drops or {}) do
        out.drops[i]={item=row.item,name=row.name,chance=finite(row.chance) and row.chance>=0 and row.chance<=1 and row.chance or nil,
            coins=finite(row.coins) and row.coins>=0 and row.coins or nil}
    end
    return out
end
return M
