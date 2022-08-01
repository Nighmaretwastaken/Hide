local keybind = "t" -- set this to your keybind, must be lowercase
local soundid = "8604878451" -- put the soundid here
local toggled = true -- the toggle for it

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key) -- keypress event
	if key == "t" then -- checks if the key pressed is e
		if toggled then
			local soundid = "8604878451"
			local sound = Instance.new("Sound",game.Workspace) -- parents the sound to workspace
			sound.SoundId = "rbxassetid://"..soundid -- sets the sound id
			sound:Play() -- plays the sound
		else
			print("not toggled")
		end
	end
end)

local keybind = "r" -- set this to your keybind, must be lowercase
local soundid = "1278031541" -- put the soundid here
local toggled = true -- the toggle for it

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key) -- keypress event
	if key == "r" then -- checks if the key pressed is e
		if toggled then
			wait(1)
			local soundid = "1278031541"
			local sound = Instance.new("Sound",game.Workspace) -- parents the sound to workspace
			sound.SoundId = "rbxassetid://"..soundid -- sets the sound id
			sound:Play() -- plays the sound
		else
			print("not toggled")
		end
	end
end)

local Player = game.Players.LocalPlayer

Player.Chatted:connect(function(cht)
	if cht:match("z") then
		Mode='c'
		wait(.5)
		Mode='v'
	elseif cht:match("h") then
		Mode='c'
		wait(.7)
		Mode='v'
	elseif cht:match("a") then
		Mode='c'
		wait(.7)
		Mode='v'
	elseif cht:match("c") then
		Mode='c'
		wait(.7)
		Mode='v'
	elseif cht:match("b") then
		Mode='c'
		wait(.7)
		Mode='v'
	elseif cht:match("v") then
		Mode='c'
		wait(.7)
		Mode='v'
	elseif cht:match("l") then
		Mode='c'
		wait(.7)
		Mode='v'
	elseif cht:match("k") then
		Mode='c'
		wait(.7)
		Mode='v'
	elseif cht:match("j") then
		Mode='c'
		wait(.7)
		Mode='v'
	elseif cht:match("w") then
		Mode='c'
		wait(.7)
		Mode='v'
	elseif cht:match("a") then
		Mode='c'
		wait(.7)
		Mode='v'
	elseif cht:match("s") then
		Mode='c'
		wait(.7)
		Mode='v'
	elseif cht:match("d") then
		Mode='c'
		wait(.7)
		Mode='v'
	end
end)

function rmesh(a)
	if not (workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('Mesh') or workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('SpecialMesh')) then return end
	old=game.Players.LocalPlayer.Character
	game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
	for i,v in next, workspace[game.Players.LocalPlayer.Name]:FindFirstChild(a).Handle:GetDescendants() do
		if v:IsA('Mesh') or v:IsA('SpecialMesh') then
			v:Remove()
		end
	end
	for i = 1 , 2 do
		game.Players.LocalPlayer.Character=old
	end
end

HumanDied = false for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do if v:IsA("BasePart") and v.Name ~= 'Torso' and v.Name ~= 'Head' then  _G.netless=game:GetService("RunService").Heartbeat:connect(function() v.AssemblyLinearVelocity = Vector3.new(-30,0,0) sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge) sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",999999999) end) end end  local plr = game.Players.LocalPlayer local char = plr.Character local srv = game:GetService('RunService') local ct = {}  char.Archivable = true local reanim = char:Clone() reanim.Name = 'Nware '..plr.Name..'' fl=Instance.new('Folder',char) fl.Name ='Nware' reanim.Animate.Disabled=true char.HumanoidRootPart:Destroy() char.Humanoid:ChangeState(16)  for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do v:Stop() end char.Animate:Remove()  function create(part, parent, p, r) Instance.new("Attachment",part) Instance.new("AlignPosition",part) Instance.new("AlignOrientation",part) Instance.new("Attachment",parent) part.Attachment.Name = part.Name parent.Attachment.Name = part.Name part.AlignPosition.Attachment0 = part[part.Name] part.AlignOrientation.Attachment0 = part[part.Name] part.AlignPosition.Attachment1 = parent[part.Name] part.AlignOrientation.Attachment1 = parent[part.Name] parent[part.Name].Position = p or Vector3.new() part[part.Name].Orientation = r or Vector3.new() part.AlignPosition.MaxForce = 999999999 part.AlignPosition.MaxVelocity = math.huge part.AlignPosition.ReactionForceEnabled = false part.AlignPosition.Responsiveness = math.huge part.AlignOrientation.Responsiveness = math.huge part.AlignPosition.RigidityEnabled = false part.AlignOrientation.MaxTorque = 999999999 end  for i,v in next, char:GetDescendants() do if v:IsA('Accessory') then v.Handle:BreakJoints() create(v.Handle,reanim[v.Name].Handle) end end  char.Torso['Left Shoulder']:Destroy() char.Torso['Right Shoulder']:Destroy() char.Torso['Left Hip']:Destroy() char.Torso['Right Hip']:Destroy()  create(char['Torso'],reanim['Torso']) create(char['Left Arm'],reanim['Left Arm']) create(char['Right Arm'],reanim['Right Arm']) create(char['Left Leg'],reanim['Left Leg']) create(char['Right Leg'],reanim['Right Leg'])  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') or v:IsA('Decal') then v.Transparency = 1 end end  reanim.Parent = fl  table.insert(ct,srv.Heartbeat:Connect(function() char.Torso.CFrame=reanim.Torso.CFrame char.Torso.Velocity=Vector3.new(40000,40000,0) end))  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.RenderStepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.RenderStepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.Stepped:Connect(function() v.CanCollide = false end)) end end  for i,v in next, char:GetDescendants() do if v:IsA('BasePart') then table.insert(ct,srv.Stepped:Connect(function() v.CanCollide = false end)) end end  table.insert(ct,reanim.Humanoid.Died:Connect(function() plr.Character = char char:BreakJoints() reanim:Destroy() game.Players:Chat('-gr') _G.netless:Disconnect() HumanDied = true for _,v in pairs(ct) do v:Disconnect() end end))  plr.Character = reanim workspace.CurrentCamera.CameraSubject = reanim.Humanoid

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

reanim = game.Players.LocalPlayer.Character

function hat(h,p,c1,c0,m)
	reanim[h].Handle.AccessoryWeld.Part1=reanim[p]
	reanim[h].Handle.AccessoryWeld.C1=c1 or CFrame.new()
	reanim[h].Handle.AccessoryWeld.C0=reanim[h].Handle.AccessoryWeld.C0:Lerp(c0 or CFrame.new(),1)
	if m == true then
		rmesh(h)
	end
end

m=game.Players.LocalPlayer:GetMouse()
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,-1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))


Mode='1'

mousechanger=game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
	if k == 'q' then-- first mode
		Mode='1'
	elseif k == 'e' then-- second mode
		Mode='2'
	elseif k == 'r' then-- second mode
		Mode='r'
		wait(.1)
		Mode='f'
		wait(.1)
		Mode='z'
		wait(1.3)
		Mode='1'
	elseif k == 'x' then-- second mode
		Mode='x'
	elseif k == 'c' then-- second mode
		Mode='c'
	elseif k == 'v' then-- second mode
		Mode='v'
	elseif k == '1' then-- second mode
		Mode='1'
	elseif k == 't' then-- second mode
		Mode='t'
		wait(1.4)
		Mode='v'
	end
end)



coroutine.wrap(function()
	while true do -- anim changer
		if HumanDied then break end
		sine = sine + speed
		local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
		local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
		local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
		local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
		local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
		local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
		if lookvector > reanim.Humanoid.WalkSpeed then
			lookvector = reanim.Humanoid.WalkSpeed
		end
		if lookvector < -reanim.Humanoid.WalkSpeed then
			lookvector = -reanim.Humanoid.WalkSpeed
		end
		if rightvector > reanim.Humanoid.WalkSpeed then
			rightvector = reanim.Humanoid.WalkSpeed
		end
		if rightvector < -reanim.Humanoid.WalkSpeed then
			rightvector = -reanim.Humanoid.WalkSpeed
		end
		local lookvel = lookvector / reanim.Humanoid.WalkSpeed
		local rightvel = rightvector / reanim.Humanoid.WalkSpeed
		if Mode == '1' then
			if reanim.Humanoid.Jump then -- jump

			elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall

			elseif Root.Velocity.Magnitude < 2 then -- idle
				hat('VANS_Umbrella','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('LavanderHair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Hat1','Head',CFrame.new(0,0,0),CFrame.new(0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Pink Hair','Head',CFrame.new(0,0,0),CFrame.new(0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Kate Hair','Head',CFrame.new(0,0,0),CFrame.new(-0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('RedcliffKnight_HelmetAccessory','Torso',CFrame.new(0,0,0),CFrame.new(2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('HatAccessory','Torso',CFrame.new(0,0,0),CFrame.new(-2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Pal Hair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('BrownCharmerHair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-0.4+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
				NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-17.34+-9.7*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1.47+0.93*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+-9.7*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-50+0*math.cos(sine/10))),.2) 
				LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.43+0.3*math.cos(sine/10))),.2) 
				RH.C0=RH.C0:Lerp(CFrame.new(1.47+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				LH.C0=LH.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
			elseif Root.Velocity.Magnitude < 20 then -- walk
				hat('VANS_Umbrella','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('LavanderHair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Hat1','Head',CFrame.new(0,0,0),CFrame.new(0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Pink Hair','Head',CFrame.new(0,0,0),CFrame.new(0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Kate Hair','Head',CFrame.new(0,0,0),CFrame.new(-0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('RedcliffKnight_HelmetAccessory','Torso',CFrame.new(0,0,0),CFrame.new(2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Pal Hair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('HatAccessory','Torso',CFrame.new(0,0,0),CFrame.new(-2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('BrownCharmerHair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-0.4+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
				NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-17.34+-9.7*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1.47+0.93*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+-9.7*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-50+0*math.cos(sine/10))),.2) 
				LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.43+0.3*math.cos(sine/10))),.2) 
				RH.C0=RH.C0:Lerp(CFrame.new(1.47+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				LH.C0=LH.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
			elseif Root.Velocity.Magnitude > 20 then -- run
				hat('VANS_Umbrella','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('LavanderHair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Hat1','Head',CFrame.new(0,0,0),CFrame.new(0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Pink Hair','Head',CFrame.new(0,0,0),CFrame.new(0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Pal Hair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Kate Hair','Head',CFrame.new(0,0,0),CFrame.new(-0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('RedcliffKnight_HelmetAccessory','Torso',CFrame.new(0,0,0),CFrame.new(2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('HatAccessory','Torso',CFrame.new(0,0,0),CFrame.new(-2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('BrownCharmerHair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-0.4+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
				NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-17.34+-9.7*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1.47+0.93*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+-9.7*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-50+0*math.cos(sine/10))),.2) 
				LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.43+0.3*math.cos(sine/10))),.2) 
				RH.C0=RH.C0:Lerp(CFrame.new(1.47+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				LH.C0=LH.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
			end

		elseif Mode == '2' then
			if reanim.Humanoid.Jump then -- jump

			elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall

			elseif Root.Velocity.Magnitude < 2 then -- idle
				hat('VANS_Umbrella','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('LavanderHair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Hat1','Head',CFrame.new(0,0,0),CFrame.new(0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Pink Hair','Head',CFrame.new(0,0,0),CFrame.new(0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Pal Hair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Kate Hair','Head',CFrame.new(0,0,0),CFrame.new(-0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('RedcliffKnight_HelmetAccessory','Torso',CFrame.new(0,0,0),CFrame.new(2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('HatAccessory','Torso',CFrame.new(0,0,0),CFrame.new(-2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('BrownCharmerHair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-0.4+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
				NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-17.34+-9.7*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1.47+0.93*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+-9.7*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-50+0*math.cos(sine/10))),.2) 
				LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.43+0.3*math.cos(sine/10))),.2) 
				RH.C0=RH.C0:Lerp(CFrame.new(1.47+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				LH.C0=LH.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
			elseif Root.Velocity.Magnitude < 20 then -- walk
				hat('VANS_Umbrella','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('LavanderHair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Hat1','Head',CFrame.new(0,0,0),CFrame.new(0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Pink Hair','Head',CFrame.new(0,0,0),CFrame.new(0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Pal Hair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Kate Hair','Head',CFrame.new(0,0,0),CFrame.new(-0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('RedcliffKnight_HelmetAccessory','Torso',CFrame.new(0,0,0),CFrame.new(2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('HatAccessory','Torso',CFrame.new(0,0,0),CFrame.new(-2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('BrownCharmerHair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-0.4+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
				NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-17.34+-9.7*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1.47+0.93*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+-9.7*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-50+0*math.cos(sine/10))),.2) 
				LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.43+0.3*math.cos(sine/10))),.2) 
				RH.C0=RH.C0:Lerp(CFrame.new(1.47+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				LH.C0=LH.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
			elseif Root.Velocity.Magnitude > 20 then -- run
				hat('VANS_Umbrella','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('LavanderHair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Hat1','Head',CFrame.new(0,0,0),CFrame.new(0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(90+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Pink Hair','Head',CFrame.new(0,0,0),CFrame.new(0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Kate Hair','Head',CFrame.new(0,0,0),CFrame.new(-0.93+0*math["cos"](sine/10),0+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('RedcliffKnight_HelmetAccessory','Torso',CFrame.new(0,0,0),CFrame.new(2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('Pal Hair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('HatAccessory','Torso',CFrame.new(0,0,0),CFrame.new(-2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
				hat('BrownCharmerHair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),-0.4+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
				NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-17.34+-9.7*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1.47+0.93*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+-9.7*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-50+0*math.cos(sine/10))),.2) 
				LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.43+0.3*math.cos(sine/10))),.2) 
				RH.C0=RH.C0:Lerp(CFrame.new(1.47+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
				LH.C0=LH.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
			end

		elseif Mode == 't' then
			NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0*math.cos(sine/10),0.93+0*math.cos(sine/10))*CFrame.Angles(math.rad(-63.19+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2+0.5*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+-2*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-50+0*math.cos(sine/10))),.2) 
			LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.43+0.3*math.cos(sine/10))),.2) 
			RH.C0=RH.C0:Lerp(CFrame.new(1.47+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			LH.C0=LH.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

		elseif Mode == 'r' then
			hat('RedcliffKnight_HelmetAccessory','Torso',CFrame.new(0,0,0),CFrame.new(2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			hat('HatAccessory','Torso',CFrame.new(0,0,0),CFrame.new(-2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			hat('Pal Hair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0*math.cos(sine/10),0.39+0*math.cos(sine/10))*CFrame.Angles(math.rad(-47.91+-9.7*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1.47+0.5*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(20.87+-2*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-50+0*math.cos(sine/10))),.2) 
			LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.43+0.3*math.cos(sine/10))),.2) 
			RH.C0=RH.C0:Lerp(CFrame.new(1.47+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			LH.C0=LH.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

		elseif Mode == 'f' then
			hat('RedcliffKnight_HelmetAccessory','Torso',CFrame.new(0,0,0),CFrame.new(2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			hat('HatAccessory','Torso',CFrame.new(0,0,0),CFrame.new(-2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			hat('Pal Hair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0*math.cos(sine/10),0.39+0*math.cos(sine/10))*CFrame.Angles(math.rad(-47.91+-9.7*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1.47+0.5*math.cos(sine/10),-3.91+0*math.cos(sine/10))*CFrame.Angles(math.rad(-40.27+-2*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-50+0*math.cos(sine/10))),.2) 
			LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.43+0.3*math.cos(sine/10))),.2) 
			RH.C0=RH.C0:Lerp(CFrame.new(1.47+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			LH.C0=LH.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

		elseif Mode == 'z' then
			hat('RedcliffKnight_HelmetAccessory','Torso',CFrame.new(0,0,0),CFrame.new(2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			hat('HatAccessory','Torso',CFrame.new(0,0,0),CFrame.new(-2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			hat('Pal Hair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0*math.cos(sine/10),-0.68+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-3.91+0*math.cos(sine/10))*CFrame.Angles(math.rad(-70.83+-2*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-50+0*math.cos(sine/10))),.2) 
			LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.43+0.3*math.cos(sine/10))),.2) 
			RH.C0=RH.C0:Lerp(CFrame.new(1.47+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			LH.C0=LH.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

		elseif Mode == 'x' then
			hat('RedcliffKnight_HelmetAccessory','Torso',CFrame.new(0,0,0),CFrame.new(2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			hat('HatAccessory','Torso',CFrame.new(0,0,0),CFrame.new(-2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			hat('Pal Hair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0*math.cos(sine/10),0.93+0*math.cos(sine/10))*CFrame.Angles(math.rad(-63.19+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2+0.5*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(13.23+-2*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-50+0*math.cos(sine/10))),.2) 
			LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.43+0.3*math.cos(sine/10))),.2) 
			RH.C0=RH.C0:Lerp(CFrame.new(1.47+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			LH.C0=LH.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
		elseif Mode == 'c' then
			hat('RedcliffKnight_HelmetAccessory','Torso',CFrame.new(0,0,0),CFrame.new(2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			hat('HatAccessory','Torso',CFrame.new(0,0,0),CFrame.new(-2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			hat('Pal Hair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0*math.cos(sine/10),0.93+0*math.cos(sine/10))*CFrame.Angles(math.rad(-63.19+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2+0.5*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-2.06+-2*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-50+0*math.cos(sine/10))),.2) 
			LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.43+0.3*math.cos(sine/10))),.2) 
			RH.C0=RH.C0:Lerp(CFrame.new(1.47+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			LH.C0=LH.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
		elseif Mode == 'v' then
			hat('RedcliffKnight_HelmetAccessory','Torso',CFrame.new(0,0,0),CFrame.new(2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			hat('HatAccessory','Torso',CFrame.new(0,0,0),CFrame.new(-2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			hat('Pal Hair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0*math.cos(sine/10),-0.14+0*math.cos(sine/10))*CFrame.Angles(math.rad(-2.06+-7*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
			RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2+0.5*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-2.06+-2*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-50+0*math.cos(sine/10))),.2) 
			LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.43+0.3*math.cos(sine/10))),.2) 
			RH.C0=RH.C0:Lerp(CFrame.new(1.47+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			LH.C0=LH.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
		elseif Mode == '1' then
			hat('RedcliffKnight_HelmetAccessory','Torso',CFrame.new(0,0,0),CFrame.new(2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			hat('HatAccessory','Torso',CFrame.new(0,0,0),CFrame.new(-2+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			hat('Pal Hair','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),0+0*math["cos"](sine/10),-0.14+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
			NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-3.37+0*math.cos(sine/10),-0.14+0*math.cos(sine/10))*CFrame.Angles(math.rad(-2.06+-7*math.sin(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
			RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),2+0.5*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-9.7+-2*math.sin(sine/10)),math.rad(0+30*math.sin(sine/6)),math.rad(0+0*math.cos(sine/10))),.2) 
			RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-50+0*math.cos(sine/10))),.2) 
			LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.93+0*math.cos(sine/10),-2+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.43+0.3*math.cos(sine/10))),.2) 
			RH.C0=RH.C0:Lerp(CFrame.new(1.47+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
			LH.C0=LH.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.39+0*math.cos(sine/10),-1.76+-0.2*math.cos(sine/2))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)

		end
		srv.RenderStepped:Wait()
	end
end)()
