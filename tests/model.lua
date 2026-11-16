local M=require('card_model')
local ftext={native=true}
local base={known=true,name=ftext,stats={{caption=ftext,value=0,kind='hp'},{caption=ftext,value=25,kind='attack'}},resists={{caption=ftext,value=1}},drops={{item=ftext,name=ftext,chance=0.1,coins=-1}},showHint=true}
local p=M.build(base)
assert(p.name==ftext and p.stats[1].caption==ftext,'preserve native FText identity')
assert(p.stats[1].value==0,'zero is a real stat')
assert(M.build({known=true,stats={{value=0/0},{value=math.huge}}}).stats[1].value==nil,'NaN missing')
assert(M.build({known=true,stats={{value=math.huge}}}).stats[1].value==nil,'infinite stat missing')
local hidden=M.build({known=false,name=ftext,stats=base.stats,drops=base.drops,showHint=true})
assert(hidden.name==nil and #hidden.stats==0 and #hidden.drops==0 and not hidden.showHint,'unknown must not leak data')
local many={};for i=1,12 do many[i]={name=ftext,chance=0.1} end
assert(#M.build({known=true,drops=many}).drops==12,'renderer contract has no two-drop limit')
print('production model checks passed')
