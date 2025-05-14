local giver = script.Parent
local preview = giver:WaitForChild("Preview")
local packageId = giver:WaitForChild("PackageId")
local validatorSrc = script:WaitForChild("PackageValidator")
local currentPackageId = 0

local market = game:GetService("MarketplaceService")
local insert = game:GetService("InsertService")
local assets = game:GetService("AssetService")
local debris = game:GetService("Debris")

-------------------------------------------------------------------------------------------------------------------------------
-- Logic for moddable PackageId

local function updatePackage(newId)
	if newId == currentPackageId then return end
	
	local info = market:GetProductInfo(newId)
	local assetType = info.AssetTypeId
	if assetType == Enum.AssetType.Package.Value then
		currentPackageId = newId
		preview.Texture = "https://www.roblox.com/asset-thumbnail/image?width=420&height=420&format=png&assetId=" .. newId
	else
		warn(newId,"is not a package!")
		packageId.Value = currentPackageId
	end
end

updatePackage(packageId.Value)
packageId.Changed:connect(updatePackage)

-------------------------------------------------------------------------------------------------------------------------------
-- Logic for applying packages

local function unload(bin,parent)
	for _,v in pairs(bin:GetChildren()) do
		v.Parent = parent
	end
	bin:Destroy()
end

local function bumpCharacterScales(humanoid)
	for _,v in pairs(humanoid:GetChildren()) do
		if v:IsA("NumberValue") then
			local value = v.Value
			v.Value = value - 0.01
			v.Value = value
		end
	end
end

local function getCurrentPackage(packageType)
	local id = packageId.Value
	local package = Instance.new("Folder")

	local r6 = Instance.new("Folder",package)
	r6.Name = "R6"
	
	local r15 = Instance.new("Folder",package)
	r15.Name = "R15"
		
	local packageIds = assets:GetAssetIdsForPackage(id)
	for _,packageId in pairs(packageIds) do
		local limb = insert:LoadAsset(packageId)
		if limb:FindFirstChild("R6") then
			unload(limb.R6,r6)
			unload(limb.R15,r15)
		else
			unload(limb,r6)
		end
		limb:Destroy()
	end
	
	return package
end

local function setDeathEnabled(humanoid,value)
	humanoid:SetStateEnabled("Dead",value)
	if humanoid:FindFirstChild("SetDeathEnabled") then
		local char = humanoid.Parent
		local player = game.Players:GetPlayerFromCharacter(char)
		if player then
			humanoid.SetDeathEnabled:InvokeClient(player,value)
		end
	end
end

local function prepareJointVerifier(humanoid)
	local verifyJoints = humanoid:FindFirstChild("VerifyJoints")
	if not verifyJoints then
		local disableDeath = Instance.new("RemoteFunction")
		disableDeath.Name = "SetDeathEnabled"
		disableDeath.Parent = humanoid
		
		local validator = validatorSrc:Clone()
		validator.Parent = humanoid	
		
		verifyJoints = Instance.new("RemoteFunction")
		verifyJoints.Name = "VerifyJoints"
		verifyJoints.Parent = humanoid
		
		validator.Disabled = false
	end
	return verifyJoints
end

local function applyPackage(character,humanoid)
	local charPackageId = character:FindFirstChild("PackageId")
	if not charPackageId then
		charPackageId = Instance.new("IntValue")
		charPackageId.Name = "PackageId"
		charPackageId.Parent = character
	end
	
	local inPackageQueue = charPackageId:FindFirstChild("InQueue")
	if not inPackageQueue then
		inPackageQueue = Instance.new("BoolValue")
		inPackageQueue.Name = "InQueue"
		inPackageQueue.Parent = charPackageId
	end
	
	if inPackageQueue.Value then
		return
	end
	
	if charPackageId.Value ~= packageId.Value then
		charPackageId.Value = packageId.Value
		inPackageQueue.Value = true
		
		local package = getCurrentPackage()
		local rigType = humanoid.RigType.Name
		
		if rigType == "R6" then
			for _,v in pairs(character:GetChildren()) do
				if v:IsA("CharacterMesh") then
					v:Destroy()
				end
			end
			for _,v in pairs(package.R6:GetChildren()) do
				v:Clone().Parent = character
			end
		elseif rigType == "R15" then -- R15 is "M I L D L Y" complicated when it comes to loading packages.
			local verifyJoints
			local player = game.Players:GetPlayerFromCharacter(character)
			if player then
				verifyJoints = prepareJointVerifier(humanoid)
				humanoid:UnequipTools()
			end
			
			local accessories = {}
			for _,child in pairs(character:GetChildren()) do
				if child:IsA("Accoutrement") then
					child.Parent = nil
					table.insert(accessories,child)
				end
			end
			
			setDeathEnabled(humanoid,false)
			
			for _,newLimb in pairs(package.R15:GetChildren()) do
				local oldLimb = character:FindFirstChild(newLimb.Name)
				if oldLimb then
					newLimb.BrickColor = oldLimb.BrickColor
					newLimb.CFrame = oldLimb.CFrame
					oldLimb:Destroy()
				end
				newLimb.Parent = character
			end
				
			humanoid:BuildRigFromAttachments()
			
			if player then
				pcall(function ()
					local attempts = 0
					while attempts < 10 do
						local success = verifyJoints:InvokeClient(player)
						if success then
							break
						else
							attempts = attempts + 1
						end
					end
					if attempts == 10 then
						warn("Failed to apply package to ",player)
					end
				end)
			end
				
			for _,accessory in pairs(accessories) do
				accessory.Parent = character
			end
			
			setDeathEnabled(humanoid,true)
		else
			warn("Unsupported rig type ",rigType)
		end
		
		inPackageQueue.Value = false
		package:Destroy()
	end
end

local function onTouched(hit)
	local char = hit.Parent
	if char then
		local humanoid = char:FindFirstChild("Humanoid")
		if humanoid then
			applyPackage(char,humanoid)
		end
	end
end

giver.Touched:connect(onTouched)