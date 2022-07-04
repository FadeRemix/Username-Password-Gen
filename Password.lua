local length = 15

local usenums = true
local usespecial = true
local letters = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
local nums = {"1","2","3","4","5","6","7","8","9","0"}
local special = {"!","@","#","$"} -- defining all characters in different tables


-- applying settings --
if usenums then
	for _,v in pairs(nums) do
		table.insert(letters,#letters+1,v) -- we only use table letters, so we add it to that table
	end
end

if usespecial then
	for _,v in pairs(special) do
		table.insert(letters,#letters+1,v) -- do the same here but for specials
	end
end

local pss = ""
	math.randomseed(os.time())
for i=1,length do 
		pss = pss..letters[math.random(1,#letters)]
end

appendfile("rndmstring.txt","\nPassword: "..pss)
