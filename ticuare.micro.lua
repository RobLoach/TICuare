-- title:	TICuare
-- author:	Crutiatix
-- desc:	UI library for TIC-80 v0.6.1
-- script:	lua
-- input:	mouse

-- Copyright (c) 2017 Crutiatix
-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
-- The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

tu={name="tu",els={},z=1,hz=nil}tu.__index=tu tu.me={nothing=0,clk=1,noclick=2,none=3}local n={__index=ticuare}local function h(n,e,d,t,o,r)return n>d and n<d+o and e>t and e<t+r end local function w(n,o,d)for e,t in pairs(o)do if type(t)=="table"then if type(n[e]or false)=="table"then w(n[e]or{},o[e]or{},d)else if not n[e]or d then n[e]=t end end else if not n[e]or d then n[e]=t end end end return n end local function k(o)local d={}local function t(n)if type(n)~="table"then return n elseif d[n]then return d[n]end local e={}d[n]=e for n,d in pairs(n)do e[t(n)]=t(d)end return setmetatable(e,getmetatable(n))end return t(o)end function tu.mlPrint(d,l,r,i,t,c,u,f,a)local e,o,n=0,0,0 for d in d:gmatch("([^\n]+)")do n=n+1 if u then e=font(d,l,r+((n-1)*t),f,a)else e=print(d,l,r+((n-1)*t),i,c)end if e>o then o=e end end return e,n*t end function tu.el(t,e)if not e then e=t t="el"end local n=e setmetatable(n,tu)n.hv,n.clk=false,false n.ac=e.ac or true n.dr=e.dr or{ac=false}n.al=e.al or{x=0,y=0}n.vs=e.vs or true if n.cn then if not n.cn.sc then n.cn.sc={x=0,y=0}end n.cn.w,n.cn.h=n.cn.w or n.w,n.cn.h or n.h end n.type,n.z=t,tu.z tu.z=tu.z+1 tu.hz=tu.z table.insert(tu.els,n)return n end function tu.nE(n)return tu.el("el",n)end function tu.nS(n)return n end function tu.nG()local n={type="gr",els={}}setmetatable(n,tu)return n end function tu:uS(o,d,i,t)local c,u,e,l,r,n,n local n,a,f=tu.me,self.x-(self.al.x==1 and self.w*.5 or(self.al.x==2 and self.w or 0)),self.y-(self.al.y==1 and self.h*.5-1 or(self.al.y==2 and self.h-1 or 0))c=t~=n.none and i or false u=h(o,d,a,f,self.w,self.h)e=t~=n.none and u or false l,r=self.hv,self.hl self.hv=e or(self.dr.ac and tu.dro and tu.dro.obj==self)self.hl=((t==n.clk and e)and true)or(c and self.hl)or((e and t~=n.noclick and self.hl))if t==n.clk and e and self.oC then self.oC()elseif(t==n.noclick and e and r)and self.oCR then self.oCR()elseif((t==n.noclick and e and r)or(self.hl and not e))and self.oR then self.oR()elseif self.hl and self.oP then self.oP()elseif not l and self.hv and self.oSH then self.oSH()elseif self.hv and self.oH then self.oH()elseif l and not self.hv and self.oRH then self.oRH()end if self.hl and(not e or self.dr.ac)and not tu.dro then self.hl=self.dr.ac tu.dro={obj=self,d={x=a-o,y=f-d}}elseif not self.hl and e and(tu.dro and tu.dro.obj==self)then self.hl=true tu.dro=nil end if tu.dro and tu.dro.obj==self and self.dr.ac then self.x=(not self.dr.fx or not self.dr.fx.x)and o+tu.dro.d.x or self.x self.y=(not self.dr.fx or not self.dr.fx.y)and d+tu.dro.d.y or self.y local n=self.dr.bn if n then if n.x then self.x=(n.x[1]and self.x<n.x[1])and n.x[1]or self.x self.x=(n.x[2]and self.x>n.x[2])and n.x[2]or self.x end if n.y then self.y=(n.y[1]and self.y<n.y[1])and n.y[1]or self.y self.y=(n.y[2]and self.y>n.y[2])and n.y[2]or self.y end end if self.tr then self:an(self.tr.ref)end end return e end function tu:uT()local e,n=self.dr.bn,self.tr if n then self.x,self.y=n.ref.x+n.d.x,n.ref.y+n.d.y if e and e.rl then if e.x then e.x[1]=n.ref.x+n.b.x[1]or nil e.x[2]=n.ref.x+n.b.x[2]or nil end if e.y then e.y[1]=n.ref.y+n.b.y[1]or nil e.y[2]=n.ref.y+n.b.y[2]or nil end end end end function tu:dS()if self.vs then local i,h,p,c,u,w,o,r,y,s,f,a,x,l,b,n local d,t,n,e=self.sh,self.br,self.tx,self.ic o=self.x-(self.al.x==1 and self.w*.5-1 or(self.al.x==2 and self.w-1 or 0))r=self.y-(self.al.y==1 and self.h*.5-1 or(self.al.y==2 and self.h-1 or 0))if d and d.cl then d.of=d.of or{x=1,y=1}h=((self.hl and d.cl[3])and d.cl[3])or((self.hv and d.cl[2])and d.cl[2])or d.cl[1]or nil if h then rect(o+d.of.x,r+d.of.y,self.w,self.h,h)end end if self.cl then i=((self.hl and self.cl[3])and self.cl[3])or((self.hv and self.cl[2])and self.cl[2])or self.cl[1]or nil if i then rect(o,r,self.w,self.h,i)end end if t and t.cl and t.w then p=((self.hl and t.cl[3])and t.cl[3])or((self.hv and t.cl[2])and t.cl[2])or t.cl[1]or nil if p then for n=0,t.w-1 do rectb(o+n,r+n,self.w-2*n,self.h-2*n,p)end end end if e and e.sp and#e.sp>0 then w=((self.hl and e.sp[3])and e.sp[3])or((self.hv and e.sp[2])and e.sp[2])or e.sp[1]x=e.of or{x=0,y=0}e.ke=e.ke or-1 e.ms=e.ms or 1 e.fl=e.fl or 0 e.rt=e.rt or 0 e.ex=e.ex or{x=1,y=1}e.al=e.al or{x=0,y=0}for t=1,e.ex.x do for n=1,e.ex.y do spr(w+(t-1)+((n-1)*16),(o+(e.al.x==1 and self.w*.5-((t*e.ms*8)/2)or(e.al.x==2 and self.w-(t*e.ms*8)or 0))+x.x),(r+(e.al.y==1 and self.h*.5-((n*e.ms*8)/2)or(e.al.y==2 and self.h-(n*e.ms*8)or 0))+x.y),e.ke,e.ms,e.fl,e.rt)end end end if n and n.pr and n.cl[1]then n.cl[1]=n.cl[1]or 14 n.gp=n.gp or 5 n.ke=n.ke or-1 n.h=n.h or(n.fn and 8 or 6)n.fx=n.fx or false if(self.hl and n.cl[3])then u=n.cl[3]elseif(self.hv and n.cl[2])then u=n.cl[2]else u=n.cl[1]end if n.sh then if(self.hl and n.sh.cl[3])then c=n.cl[3]elseif(self.hv and n.sh.cl[2])then c=n.sh.cl[2]else c=n.sh.cl[1]end b=n.sh.of or{x=1,y=1}end l=n.of or{x=0,y=0}y,s=tu.mlPrint(n.pr,0,200,-1,n.h,n.fx,n.fn,n.ke,n.gp)n.al=n.al or{x=0,y=0}if n.al.x==1 then f=o+((self.w*.5)-(y*.5))+l.x elseif n.al.x==2 then f=o+((self.w)-(y))+l.x-t.w else f=o+l.x+t.w end if n.al.y==1 then a=r+((self.h*.5)-(s*.5))+l.y elseif n.al.y==2 then a=r+((self.h)-(s))+l.y-t.w else a=r+l.y+t.w end if n.sh and c then tu.mlPrint(n.pr,f+b.x,a+b.y,c,n.h,n.fx,n.fn,n.ke,n.gp)tu.mlPrint(n.pr,f,a,u,n.h,n.fx,n.fn,n.ke,n.gp)else tu.mlPrint(n.pr,f,a,u,n.h,n.fx,n.fn,n.ke,n.gp)end end if self.cn and self.dC then if self.cn.wr and clip then clip(o+t.w,r+t.w,self.w-(2*t.w),self.h-(2*t.w))end self:rC()if self.cn.wr and clip then clip()end end end end function tu:rC()local t,e=self.x-(self.al.x==1 and self.w*.5 or(self.al.x==2 and self.w or 0)),self.y-(self.al.y==1 and self.h*.5-1 or(self.al.y==2 and self.h-1 or 0))local n=self.br.w and self.br.w or 1 local t=t-(self.cn.sc.x or 0)*(self.cn.w-self.w)+n local n=e-(self.cn.sc.y or 0)*(self.cn.h-self.h)+n self.dC(self,t,n)end function tu:sC(n)self.dC=n end function tu:sCD(n,e)if self.cn then self.cn.w,self.cn.h=n,e end end function tu:sS(n)n.x=n.x or 0 n.y=n.y or 0 if self.cn then n.x=(n.x<0 and 0)or(n.x>1 and 1)or n.x n.y=(n.y<0 and 0)or(n.y>1 and 1)or n.y self.cn.sc.x,self.cn.sc.y=n.x or self.cn.sc.x,n.y or self.cn.sc.y end end function tu:gS()if self.cn then return{x=self.cn.sc.x,y=self.cn.sc.y}end end function tu.update(a,f,o)if a and f then local d,e=tu.me,tu.els local r,l,t,n=d.nothing,false,{},nil if tu.clk and not o then tu.clk=false r=d.noclick tu.dro=nil elseif not tu.clk and o then tu.clk=true r=d.clk tu.dro=nil end for n=1,#e do table.insert(t,e[n])end table.sort(t,function(e,n)return e.z>n.z end)for e=1,#t do n=t[e]if n then if n:uS(a,f,o,((l or(tu.dro and tu.dro.obj~=n))or not n.ac)and d.none or r)then l=true end end end for n=#e,1,-1 do if e[n]then e[n]:uT()end end end end function tu.draw()local n={}for e=1,#tu.els do if tu.els[e].draw then table.insert(n,tu.els[e])end end table.sort(n,function(e,n)return e.z<n.z end)for e=1,#n do n[e]:dS()end end function tu:st(n)if self.type=="gr"then for e=1,#self.els do w(self.els[e],k(n),false)end else w(self,k(n),false)end return self end function tu:an(e)local n,t,d,o,r=self.dr.bn,nil,nil,nil,nil if n and n.x then t=n.x[1]-e.x d=n.x[2]-e.x elseif n and n.y then o=n.y[1]-e.y r=n.y[2]-e.y end self.tr={ref=e,d={x=self.x-e.x,y=self.y-e.y},b={x={t,d},y={o,r}}}return self end function tu:gr(n)table.insert(n.els,self)return self end function tu:sA(n)if self.type=="gr"then for e=1,#self.els do self.els[e]:sA(n)end else self.ac=n end end function tu:en()return self:sA(true)end function tu:ds()return self:sA(false)end function tu:gA()if self.ac~=nil then return self.ac end end function tu:sV(n)if self.type=="gr"then for e=1,#self.els do self.els[e]:sV(n)end else self.vs=n end end function tu:view()return self:sV(true)end function tu:hd()return self:sV(false)end function tu:gV()if self.vs~=nil then return self.vs end end function tu:sDB(n)self.dr.bn=n end function tu:sHR(e)local n=self.dr.bn self.x=n.x[1]+(n.x[2]-n.x[1])*e end function tu:sVR(e)local n=self.dr.bn self.y=n.y[1]+(n.y[2]-n.y[1])*e end function tu:gHR()local n=self.dr.bn assert(n and n.x and#n.x==2,"X bn error!")return(self.x-n.x[1])/(n.x[2]-n.x[1])end function tu:gVR()local n=self.dr.bn assert(n and n.y and#n.y==2,"Y bn error!")return(self.y-n.y[1])/(n.y[2]-n.y[1])end function tu:sI(e)if self.type=="gr"then local n for e=1,#self.els do if not n or self.els[e].z<n then n=self.els[e].z end end for t=1,#self.els do local n=self.els[t].z-n+e self.els[t]:sI(n)end else self.z=e if e>tu.hz then tu.hz=e end end end function tu:tF()if self.z<tu.hz or self.type=="gr"then return self:sI(tu.hz+1)end end function tu:gI()return self.z end function tu:rm()for n=#tu.els,1,-1 do if tu.els[n]==self then table.rm(tu.els,n)self=nil end end end function tu.em()for n=1,#tu.els do tu.els[n]=nil end end