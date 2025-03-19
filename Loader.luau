local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
api.script_id = "d4779cc1b245430d4829ed0bb3b1a007"

local function getService(name)
	local service = game:GetService(name)
	return if cloneref then cloneref(service) else service
end

local UserInputService = getService("UserInputService")
local TweenService = getService("TweenService")
local Players = getService("Players")
local CoreGui = getService("CoreGui")

local KeyUI = game:GetObjects("rbxassetid://11380036235")[1]
KeyUI.Enabled = true

if gethui then
	KeyUI.Parent = gethui()
elseif syn and syn.protect_gui then
	syn.protect_gui(KeyUI)
	KeyUI.Parent = CoreGui
elseif CoreGui:FindFirstChild("RobloxGui") then
	KeyUI.Parent = CoreGui:FindFirstChild("RobloxGui")
else
	KeyUI.Parent = CoreGui
end

local function disableDuplicateUI()
	local parent = gethui and gethui() or CoreGui
	for _, Interface in ipairs(parent:GetChildren()) do
		if Interface.Name == KeyUI.Name and Interface ~= KeyUI then
			Interface.Enabled = false
			Interface.Name = "KeyUI-Old"
		end
	end
end;disableDuplicateUI()

local KeyMain = KeyUI.Main
KeyMain.Title.Text = "Shadow Hub"
KeyMain.Subtitle.Text = "Key System"
KeyMain.NoteMessage.Selectable = true
KeyMain.NoteMessage.Text = "Lootlabs: https://ads.luarmor.net/get_key?for=FIAS__FREEVERSION-OWulwoDvNPea"

KeyMain.Size = UDim2.new(0, 467, 0, 175)
KeyMain.BackgroundTransparency = 1
KeyMain.Shadow.Image.ImageTransparency = 1
KeyMain.Title.TextTransparency = 1
KeyMain.Subtitle.TextTransparency = 1
KeyMain.KeyNote.TextTransparency = 1
KeyMain.Input.BackgroundTransparency = 1
KeyMain.Input.UIStroke.Transparency = 1
KeyMain.Input.InputBox.TextTransparency = 1
KeyMain.NoteTitle.TextTransparency = 1
KeyMain.NoteMessage.TextTransparency = 1
KeyMain.Hide.ImageTransparency = 1

local function animateUI()
	TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), { BackgroundTransparency = 0 })
		:Play()
	TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), { Size = UDim2.new(0, 500, 0, 187) })
		:Play()
	TweenService
		:Create(KeyMain.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { ImageTransparency = 0.5 })
		:Play()
	task.wait(0.05)
	TweenService:Create(KeyMain.Title, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), { TextTransparency = 0 })
		:Play()
	TweenService:Create(KeyMain.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { TextTransparency = 0 })
		:Play()
	task.wait(0.05)
	TweenService:Create(KeyMain.KeyNote, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { TextTransparency = 0 })
		:Play()
	TweenService:Create(KeyMain.Input, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { BackgroundTransparency = 0 })
		:Play()
	TweenService:Create(KeyMain.Input.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { Transparency = 0 })
		:Play()
	TweenService
		:Create(KeyMain.Input.InputBox, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { TextTransparency = 0 })
		:Play()
	task.wait(0.05)
	TweenService:Create(KeyMain.NoteTitle, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), { TextTransparency = 0 })
		:Play()
	TweenService:Create(KeyMain.NoteMessage, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), { TextTransparency = 0 })
		:Play()
	task.wait(0.15)
	TweenService:Create(KeyMain.Hide, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), { ImageTransparency = 0.3 })
		:Play()
end
animateUI()

KeyMain.Input.InputBox.FocusLost:Connect(function()
	if #KeyMain.Input.InputBox.Text == 0 then
		return
	end

	local status = api.check_key(KeyMain.Input.InputBox.Text)
	print(status)

	if status.code == "KEY_VALID" then
		TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), { BackgroundTransparency = 1 })
			:Play()
		TweenService
			:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), { Size = UDim2.new(0, 467, 0, 175) })
			:Play()
		TweenService
			:Create(KeyMain.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { ImageTransparency = 1 })
			:Play()
		TweenService:Create(KeyMain.Title, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), { TextTransparency = 1 })
			:Play()
		TweenService
			:Create(KeyMain.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { TextTransparency = 1 })
			:Play()
		TweenService:Create(KeyMain.KeyNote, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { TextTransparency = 1 })
			:Play()
		TweenService
			:Create(KeyMain.Input, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { BackgroundTransparency = 1 })
			:Play()
		TweenService
			:Create(KeyMain.Input.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { Transparency = 1 })
			:Play()
		TweenService
			:Create(KeyMain.Input.InputBox, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { TextTransparency = 1 })
			:Play()
		TweenService
			:Create(KeyMain.NoteTitle, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), { TextTransparency = 1 })
			:Play()
		TweenService
			:Create(KeyMain.NoteMessage, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), { TextTransparency = 1 })
			:Play()
		TweenService:Create(KeyMain.Hide, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), { ImageTransparency = 1 })
			:Play()
		task.wait(0.51)
		KeyMain.Visible = false

	        script_key = KeyMain.Input.InputBox.Text
	        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d4779cc1b245430d4829ed0bb3b1a007.lua"))() 

	elseif status.code == "KEY_INCORRECT" then
		KeyMain.Input.InputBox.Text = ""
		TweenService
			:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), { Size = UDim2.new(0, 467, 0, 175) })
			:Play()
		TweenService
			:Create(KeyMain, TweenInfo.new(0.4, Enum.EasingStyle.Elastic), { Position = UDim2.new(0.495, 0, 0.5, 0) })
			:Play()
		task.wait(0.1)
		TweenService
			:Create(KeyMain, TweenInfo.new(0.4, Enum.EasingStyle.Elastic), { Position = UDim2.new(0.505, 0, 0.5, 0) })
			:Play()
		task.wait(0.1)
		TweenService
			:Create(KeyMain, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), { Position = UDim2.new(0.5, 0, 0.5, 0) })
			:Play()
		TweenService
			:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), { Size = UDim2.new(0, 500, 0, 187) })
			:Play()
	end
end)

KeyMain.Hide.MouseButton1Click:Connect(function()
	TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), { BackgroundTransparency = 1 })
		:Play()
	TweenService:Create(KeyMain, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), { Size = UDim2.new(0, 467, 0, 175) })
		:Play()
	TweenService
		:Create(KeyMain.Shadow.Image, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { ImageTransparency = 1 })
		:Play()
	TweenService:Create(KeyMain.Title, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), { TextTransparency = 1 })
		:Play()
	TweenService:Create(KeyMain.Subtitle, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { TextTransparency = 1 })
		:Play()
	TweenService:Create(KeyMain.KeyNote, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { TextTransparency = 1 })
		:Play()
	TweenService:Create(KeyMain.Input, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { BackgroundTransparency = 1 })
		:Play()
	TweenService:Create(KeyMain.Input.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { Transparency = 1 })
		:Play()
	TweenService
		:Create(KeyMain.Input.InputBox, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { TextTransparency = 1 })
		:Play()
	TweenService:Create(KeyMain.NoteTitle, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), { TextTransparency = 1 })
		:Play()
	TweenService:Create(KeyMain.NoteMessage, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), { TextTransparency = 1 })
		:Play()
	TweenService:Create(KeyMain.Hide, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), { ImageTransparency = 1 })
		:Play()
	task.wait(0.51)
	KeyUI:Destroy()
end)
