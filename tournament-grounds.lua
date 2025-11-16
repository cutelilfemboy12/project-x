loadstring([[
    function LPH_NO_VIRTUALIZE(f) return f end;
    function LPH_JIT_MAX(f) return f end;
    function LPH_ENCSTR(str) return str end;
]])();

if game.PlaceId == 4888256398 or game.PlaceId == 15247475957 or game.PlaceId == 17227761001 then
    local clock = os.clock()

    loadstring(game:HttpGet(LPH_ENCSTR("https://raw.githubusercontent.com/cutelilfemboy12/Resources/refs/heads/main/Bypass.lua")))()

    local Repo = LPH_ENCSTR('https://raw.githubusercontent.com/cutelilfemboy12/LinoriaLib/main/')
    local Library = loadstring(game:HttpGet(Repo .. LPH_ENCSTR('Library.lua')))()
    local ThemeManager = loadstring(game:HttpGet(Repo .. LPH_ENCSTR('addons/ThemeManager.lua')))()
    local SaveManager = loadstring(game:HttpGet(Repo .. LPH_ENCSTR('addons/SaveManager.lua')))()

    SaveManager:SetLibrary(Library)
    SaveManager:SetFolder(LPH_ENCSTR('Project X/Tournament Grounds'))
    SaveManager:IgnoreThemeSettings()

    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder(LPH_ENCSTR('Project X/Themes'))

    if not isfile(LPH_ENCSTR("Project X/Bow Shoot.mp3")) then
        writefile(LPH_ENCSTR("Project X/Bow Shoot.mp3"), game:HttpGet(LPH_ENCSTR("https://github.com/cutelilfemboy12/Resources/raw/refs/heads/main/Bow%20Shoot.mp3")))
    end

    if not isfile(LPH_ENCSTR("Project X/M4A1.mp3")) then
        writefile(LPH_ENCSTR("Project X/M4A1.mp3"), game:HttpGet(LPH_ENCSTR("https://github.com/cutelilfemboy12/Resources/raw/refs/heads/main/m4a1_01.mp3")))
    end

    if not isfile(LPH_ENCSTR("Project X/M249.mp3")) then
        writefile(LPH_ENCSTR("Project X/M249.mp3"), game:HttpGet(LPH_ENCSTR("https://github.com/cutelilfemboy12/Resources/raw/refs/heads/main/m249-1.mp3")))
    end

    if not isfile(LPH_ENCSTR("Project X/AK47.mp3")) then
        writefile(LPH_ENCSTR("Project X/AK47.mp3"), game:HttpGet(LPH_ENCSTR("https://github.com/cutelilfemboy12/Resources/raw/refs/heads/main/ak47_01.mp3")))
    end

    if not isfile(LPH_ENCSTR("Project X/Bow Hit.mp3")) then
        writefile(LPH_ENCSTR("Project X/Bow Hit.mp3"), game:HttpGet(LPH_ENCSTR("https://github.com/cutelilfemboy12/Resources/raw/refs/heads/main/Bow%20Hit.mp3")))
    end

    if not isfile(LPH_ENCSTR("Project X/CSGO.mp3")) then
        writefile(LPH_ENCSTR("Project X/CSGO.mp3"), game:HttpGet(LPH_ENCSTR("https://github.com/cutelilfemboy12/Resources/raw/refs/heads/main/CSGO.mp3")))
    end

    if not isfile(LPH_ENCSTR("Project X/Neverlose.mp3")) then
        writefile(LPH_ENCSTR("Project X/Neverlose.mp3"), game:HttpGet(LPH_ENCSTR("https://github.com/cutelilfemboy12/Resources/raw/refs/heads/main/Neverlose.mp3")))
    end

    if not isfile(LPH_ENCSTR("Project X/Rust.mp3")) then
        writefile(LPH_ENCSTR("Project X/Rust.mp3"), game:HttpGet(LPH_ENCSTR("https://github.com/cutelilfemboy12/Resources/raw/refs/heads/main/Rust.mp3")))
    end

    if not isfile(LPH_ENCSTR("Project X/smallest_pixel-7.ttf")) then
        writefile(LPH_ENCSTR("Project X/smallest_pixel-7.ttf"), game:HttpGet(LPH_ENCSTR("https://github.com/cutelilfemboy12/Resources/raw/refs/heads/main/smallest_pixel-7.ttf")))
    end

    local smallest_pixel = {
        name = LPH_ENCSTR("smallest_pixel-7"),
        faces = {
            {
                name = LPH_ENCSTR("Regular"),
                weight = 400,
                style = LPH_ENCSTR("normal"),
                assetId = getcustomasset(LPH_ENCSTR("Project X/smallest_pixel-7.ttf"))
            }
        }
    }

    writefile(LPH_ENCSTR("Project X/smallest_pixel-7.font"), game:GetService(LPH_ENCSTR("HttpService")):JSONEncode(smallest_pixel))

    getgenv().GlobalFont = LPH_ENCSTR("ProggyClean.font")

    local Window = Library:CreateWindow({
        Title = LPH_ENCSTR('Project X | https://discord.gg/pkWHRvbMVu'),
        Center = false,
        AutoShow = true,
        TabPadding = 9,
        MenuFadeTime = 0.1
    })

    local Tabs = {
        Legit = Window:AddTab(LPH_ENCSTR('   Legit   ')),
        --Rage = Window:AddTab(LPH_ENCSTR('   Rage   ')),
        Visuals = Window:AddTab(LPH_ENCSTR('  Visuals  ')),
        Misc = Window:AddTab(LPH_ENCSTR('   Misc   ')),
        Settings = Window:AddTab(LPH_ENCSTR(' Settings ')),
    }

    ThemeManager:ApplyToTab(Tabs.Settings)
    ThemeManager:ApplyTheme(LPH_ENCSTR('Project X'))
    SaveManager:BuildConfigSection(Tabs.Settings)

    local Debris = game:GetService(LPH_ENCSTR("Debris"))
    local CoreGui = game:GetService(LPH_ENCSTR("CoreGui"))
    local Players = game:GetService(LPH_ENCSTR("Players"))
    local Lighting = game:GetService(LPH_ENCSTR("Lighting"))
    local RunService = game:GetService(LPH_ENCSTR("RunService"))
    local HttpService = game:GetService(LPH_ENCSTR("HttpService"))
    local TweenService = game:GetService(LPH_ENCSTR("TweenService"))
    local ReplicatedFirst = game:GetService(LPH_ENCSTR("ReplicatedFirst"))
    local UserInputService = game:GetService(LPH_ENCSTR("UserInputService"))
    local ReplicatedStorage = game:GetService(LPH_ENCSTR("ReplicatedStorage"))

    local NormalFogEnd = Lighting.FogEnd
    local NormalAmbient = Lighting.Ambient
    local NormalFogStart = Lighting.FogStart
    local NormalFogColor = Lighting.FogColor
    local NormalTimeOfDay = Lighting.TimeOfDay
    local Atmosphere = Lighting:FindFirstChildOfClass(LPH_ENCSTR("Atmosphere"))

    local Camera = workspace.CurrentCamera
    local LocalPlayer = Players.LocalPlayer
    local RenderStepped = RunService.RenderStepped

    local SkinFolder = ReplicatedStorage.Models.Weapons
    local DamageRemote = ReplicatedStorage.Remotes.CarbonEngine.Damage
    local HalfStepEvent = ReplicatedStorage.Remotes.CarbonEngine.HalfStep

    local Modules = ReplicatedFirst.Modules
    local RaycastModule = Modules.Client.Utilities.Raycast
    local OriginalRaycast = clonefunction(require(RaycastModule).Raycast)
    local CarbonEngine = LocalPlayer.PlayerGui:WaitForChild(LPH_ENCSTR("Carbon_CEngine(Hit Scan)"))

    local Defaults = {}
    local Whitelist = {}
    local Connections = {}

    local function Draw(class: string, properties: {}?): Instance | boolean
        local success, instance = pcall(Drawing.new, class)

        if not success then
            return false
        end

        if properties then
            for key, value in next, properties do
                local succ, err = pcall(function()
                    (instance :: any)[key] = value
                end)

                if not succ then
                    warn(err)
                    return false
                end
            end
        end

        return instance
    end

    local function Create(class: string, properties: {}?, attributes: {}?): Instance | boolean
        local success, instance = pcall(Instance.new, class)

        if not success then
            return false
        end

        if properties then
            for key, value in next, properties do
                local succ, err = pcall(function()
                    (instance :: any)[key] = value
                end)

                if not succ then
                    warn(err)
                    return false
                end
            end
        end

        if attributes then
            for key, value in pairs(attributes) do
                instance:SetAttribute(key, value)
            end
        end

        return instance
    end

    local GunMods = {
        Config = {
            RapidFire = false,
            InfiniteAmmo = false,
            NoGunRecoil = false,
            NoCamRecoil = false,
        },
    }

    GunMods.Apply = LPH_JIT_MAX(function()
        repeat
            task.wait(0.1)
        until CarbonEngine

        CarbonEngine = getsenv(CarbonEngine)

        local fake_task = {
            delay = function(t, callback)
                if GunMods.Config.RapidFire then
                    t = 0
                end

                return task.spawn(function()
                    task.wait(t)
                    callback()
                end)
            end,
            wait = function(t)
                if GunMods.Config.RapidFire then
                    t = 0
                end

                local resume = coroutine.running()

                task.delay(t, function()
                    coroutine.resume(resume)
                end)

                return coroutine.yield()
            end,
            spawn = function(f, a)
                return task.spawn(f, a)
            end
        }

        local shoot_env = getfenv(CarbonEngine.Shoot)
        setfenv(CarbonEngine.Shoot, setmetatable(
            {task = fake_task},
            {__index = shoot_env}
        ))

        local old; old = hookfunction(CarbonEngine.calculateRecoil, function()
            if GunMods.Config.NoGunRecoil then
                return Vector3.zero
            end

            return old()
        end)

        local old; old = hookfunction(CarbonEngine.calculateCamRecoil, function()
            if GunMods.Config.NoCamRecoil then
                return Vector3.zero
            end

            return old()
        end)
    end)

    table.insert(Connections, LocalPlayer.PlayerGui.ChildAdded:Connect(function(child)
        if child.Name == LPH_ENCSTR("Carbon_CEngine(Hit Scan)") then
            CarbonEngine = child
            task.wait(0.2)
            GunMods.Apply()
        end
    end))

    for _, v in ipairs(Modules.Shared.Configs.Weapons:GetChildren()) do
        if v:IsA(LPH_ENCSTR("ModuleScript")) then
            local weapon = require(v)

            Defaults[v.Name] = {
                Ammo = weapon.Ammo,
                Module = weapon,
            }
        end
    end

    GunMods.ApplyModule = LPH_JIT_MAX(function()
        for _, v in pairs(Defaults) do
            local weapon = v.Module
            weapon.Ammo = GunMods.Config.InfiniteAmmo and math.huge or v.Ammo
        end
    end)

    GunMods.ApplyModule()
    GunMods.Apply()

    local GunSounds = {
        Config = {
            ShootSound = LPH_ENCSTR("Default"),
            ShootSoundTimePosition = 0,
            ShootSoundVolume = 1,

            HitSound = LPH_ENCSTR("rbxassetid://13744350422"),
            HitSoundTimePosition = 0,
            HitSoundVolume = 1,
        },

        DefaultHitSFX = LPH_ENCSTR("rbxassetid://13744350422"),
    }

    GunSounds.ChangeShootSound = LPH_JIT_MAX(function()
        if GunSounds.Config.ShootSound == LPH_ENCSTR("Default") then
            return
        end

        task.wait(0.1)

        local Sound = Camera:FindFirstChild(LPH_ENCSTR("Fire"), true)

        if Sound then
            Sound.PlaybackSpeed = 1
            Sound.SoundId = GunSounds.Config.ShootSound
            Sound.TimePosition = GunSounds.Config.ShootSoundTimePosition
            Sound.Volume = GunSounds.Config.ShootSoundVolume
        end
    end)

    GunSounds.ChangeHitSound = LPH_JIT_MAX(function()
        if GunSounds.Config.HitSound == GunSounds.DefaultHitSFX then
            ReplicatedStorage.FX.Sounds.BodyHit.SoundId = GunSounds.DefaultHitSFX
            ReplicatedStorage.FX.Sounds.BodyHit.TimePosition = 0
            ReplicatedStorage.FX.Sounds.BodyHit.Volume = 1
            return
        end

        ReplicatedStorage.FX.Sounds.BodyHit.SoundId = GunSounds.Config.HitSound
        ReplicatedStorage.FX.Sounds.BodyHit.TimePosition = GunSounds.Config.HitSoundTimePosition
        ReplicatedStorage.FX.Sounds.BodyHit.Volume = GunSounds.Config.HitSoundVolume
    end)

    table.insert(Connections, Camera.ChildAdded:Connect(function(child)
        if child.Name == LPH_ENCSTR("ArmModel") and child:IsA(LPH_ENCSTR("Model")) then
            GunSounds.ChangeShootSound()
        end
    end))

    local CharacterMaterial = {
        Config = {
            Enabled = false,
            Material = Enum.Material.ForceField,
            Color = Color3.fromRGB(255, 255, 255),
        },

        OldMaterial = {},
        OldColor = {},
    }

    CharacterMaterial.Change = LPH_JIT_MAX(function()
        if not LocalPlayer.Character then
            return
        end

        task.spawn(function()
            task.wait(0.2)

            for _, v in next, LocalPlayer.Character:GetDescendants() do
                local ok, has = pcall(function()
                    return v.Material and v.Color
                end)

                if ok and has then
                    if CharacterMaterial.Config.Enabled then
                        CharacterMaterial.OldMaterial[v] = v.Material
                        CharacterMaterial.OldColor[v] = v.Color

                        v.Material = CharacterMaterial.Config.Material
                        v.Color = CharacterMaterial.Config.Color
                    else
                        if CharacterMaterial.OldMaterial[v] and CharacterMaterial.OldColor[v] then
                            v.Material = CharacterMaterial.OldMaterial[v]
                            v.Color = CharacterMaterial.OldColor[v]
                        end
                    end
                end
            end
        end)
    end)

    local Crosshair = {
        Config = {
            Enabled = false,
            DisableMouseIcon = false,
            Color = Color3.fromRGB(45, 125, 254),

            Width = 2.5,
            Length = 25,
            Radius = 11,

            Spin = false,
            SpinSpeed = 150,
            SpinMax = 360,
            SpinStyle = Enum.EasingStyle.Linear,

            Resize = false,
            ResizeSpeed = 150,
            ResizeMin = 5,
            ResizeMax = 22,

            CenterDot = false,
            ReticleAmount = 4,
        },

        Lines = {},
        Outlines = {},
        Tick = tick(),
    }

    Crosshair.Gui = Create(LPH_ENCSTR("ScreenGui"), {
        Parent = gethui(),
        DisplayOrder = 11,
        IgnoreGuiInset = true,
        Name = HttpService:GenerateGUID(false),
        ZIndexBehavior = Enum.ZIndexBehavior.Global,
    })

    Crosshair.Dot = Create(LPH_ENCSTR("Frame"), {
        ZIndex = 9e8,
        Visible = false,
        BorderSizePixel = 0,
        Parent = Crosshair.Gui,
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Crosshair.Config.Color,
    })

    Create(LPH_ENCSTR("UIStroke"), {
        Thickness = 1,
        Parent = Crosshair.Dot,
        LineJoinMode = Enum.LineJoinMode.Round,
    })

    for I = 1, 4 do
        Crosshair.Outlines[I] = Create(LPH_ENCSTR("Frame"), {
            ZIndex = 9e9,
            Visible = false,
            BorderSizePixel = 0,
            Parent = Crosshair.Gui,
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Color3.new(0, 0, 0),
        })

        Crosshair.Lines[I] = Create(LPH_ENCSTR("Frame"), {
            ZIndex = 9e8,
            Visible = false,
            BorderSizePixel = 0,
            Parent = Crosshair.Gui,
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Crosshair.Config.Color,
        })

        Create(LPH_ENCSTR("UIGradient"), {
            Rotation = -90,
            Parent = Crosshair.Lines[I],
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(185, 185, 185))
            }),
        })
    end

    Crosshair.Solve = LPH_JIT_MAX(function(Angle, Radius)
        local R = math.rad(Angle)
        return Vector2.new(math.sin(R) * Radius, math.cos(R) * Radius)
    end)

    Crosshair.Update = LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function()
        Crosshair.Tick = tick()

        for _, Line in next, Crosshair.Lines do
            Line.Visible = false
        end

        for _, OutlineLine in next, Crosshair.Outlines do
            OutlineLine.Visible = false
        end

        Crosshair.Dot.Visible = false

        UserInputService.MouseIconEnabled = not Crosshair.Config.DisableMouseIcon

        if Crosshair.Config.Enabled then
            for I = 1, Crosshair.Config.ReticleAmount do
                local Length = Crosshair.Config.Length
                local Angle = (I - 1) * (360 / Crosshair.Config.ReticleAmount)

                if Crosshair.Config.Spin then
                    local Spin = -Crosshair.Tick * Crosshair.Config.SpinSpeed % Crosshair.Config.SpinMax
                    Angle += TweenService:GetValue(Spin / 360, Crosshair.Config.SpinStyle, Enum.EasingDirection.InOut) * 360
                end

                if Crosshair.Config.Resize then
                    local A = math.sin(math.rad(Crosshair.Tick * Crosshair.Config.ResizeSpeed % 360))
                    Length = Crosshair.Config.ResizeMin + (A + 1) / 2 * (Crosshair.Config.ResizeMax - Crosshair.Config.ResizeMin)
                end

                local From = Crosshair.Solve(Angle, Crosshair.Config.Radius)
                local To = Crosshair.Solve(Angle, Crosshair.Config.Radius + Length)
                local Mid = (From + To) / 2
                local Delta = To - From

                local Rotation = math.deg(math.atan2(-Delta.Y, Delta.X)) + 90
                local Size = UDim2.new(0, Crosshair.Config.Width, 0, Delta.Magnitude)
                local OutlineSize = UDim2.new(0, Crosshair.Config.Width + 2, 0, Delta.Magnitude + 2)
                local Position = UDim2.new(0, UserInputService:GetMouseLocation().X + Mid.X, 0, UserInputService:GetMouseLocation().Y - Mid.Y)

                local Line = Crosshair.Lines[I]
                local Outline = Crosshair.Outlines[I]
                local Dot = Crosshair.Dot

                Dot.Visible = Crosshair.Config.CenterDot
                Dot.BackgroundColor3 = Crosshair.Config.Color
                Dot.Size = UDim2.fromOffset(Crosshair.Config.Width, Crosshair.Config.Width)
                Dot.Position = UDim2.new(0, UserInputService:GetMouseLocation().X, 0, UserInputService:GetMouseLocation().Y)

                Outline.Visible = true
                Outline.Position = Position
                Outline.Size = OutlineSize
                Outline.Rotation = Rotation

                Line.Visible = true
                Line.BackgroundColor3 = Crosshair.Config.Color
                Line.Position = Position
                Line.Size = Size
                Line.Rotation = Rotation
            end
        end
    end))

    local ChinaHat = {
        Config = {
            Enabled = false,
            Color = Color3.fromRGB(255, 255, 255),
            Radius = 1.3,
            Height = 1,
            Chunk = 5,
            Offset = 0.5,
        },

        TopLines = {},
        BottomLines = {},
    }

    for i = 1, math.floor(360 / ChinaHat.Config.Chunk) do
        local TopLine = Draw(LPH_ENCSTR("Line"))
        TopLine.Visible = false
        TopLine.Thickness = 1.5
        table.insert(ChinaHat.TopLines, TopLine)

        local BottomLine = Draw(LPH_ENCSTR("Line"))
        BottomLine.Visible = false
        BottomLine.Thickness = 1.5
        table.insert(ChinaHat.BottomLines, BottomLine)
    end

    ChinaHat.Update = LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function()
        local Points = {}

        if ChinaHat.Config.Enabled and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(LPH_ENCSTR("Head")) then
            local Character = LocalPlayer.Character
            local Head = Character.Head
            local Root = Character:FindFirstChild(LPH_ENCSTR("HumanoidRootPart"))

            local Origin = Head.Position + Vector3.new(0, ChinaHat.Config.Height + ChinaHat.Config.Offset / 2, 0)
            local Top, OnScreen = Camera:WorldToViewportPoint(Origin)
            local InFirstPerson = (Camera.CFrame.Position - Head.Position).Magnitude < 1

            if not OnScreen or InFirstPerson then
                for _, v in next, ChinaHat.TopLines do
                    v.Visible = false
                end

                for _, v in next, ChinaHat.BottomLines do
                    v.Visible = false
                end

                return
            end

            for Angle = 0, 360, ChinaHat.Config.Chunk do
                local Radius = math.rad(Angle)

                local LocalPos = Vector3.new(math.cos(Radius) * ChinaHat.Config.Radius, ChinaHat.Config.Offset, math.sin(Radius) * ChinaHat.Config.Radius)

                if Root then
                    LocalPos = Root.CFrame:VectorToWorldSpace(LocalPos)
                end

                local Position = Head.Position + LocalPos
                local ScreenPosition, Visible = Camera:WorldToViewportPoint(Position)

                if Visible then
                    table.insert(Points, Vector2.new(ScreenPosition.X, ScreenPosition.Y))
                end
            end

            for i = 1, math.floor(360 / ChinaHat.Config.Chunk) do
                local a = Points[i]
                local b = Points[i + 1] or Points[1]
                local TopLine = ChinaHat.TopLines[i]

                if a then
                    TopLine.Visible = true
                    TopLine.Color = ChinaHat.Config.Color
                    TopLine.From = Vector2.new(Top.X, Top.Y)
                    TopLine.To = a
                else
                    TopLine.Visible = false
                end

                local BottomLine = ChinaHat.BottomLines[i]

                if a and b then
                    BottomLine.Visible = true
                    BottomLine.Color = ChinaHat.Config.Color
                    BottomLine.From = a
                    BottomLine.To = b
                else
                    BottomLine.Visible = false
                end
            end
        else
            for _, v in next, ChinaHat.TopLines do
                v.Visible = false
            end

            for _, v in next, ChinaHat.BottomLines do
                v.Visible = false
            end
        end
    end))

    local AntiPVEye = {
        Config = {
            Enabled = true,
            Method = LPH_ENCSTR("Constant Delay"),
            Wait = 2,
            MinWait = 0.5,
            MaxWait = 1,
        },

        Hook = nil,
        LastFire = 0
    }

    AntiPVEye.Hook = hookmetamethod(game, LPH_ENCSTR("__namecall"), LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function(self, ...)
        if not AntiPVEye.Config.Enabled then
            return AntiPVEye.Hook(self, ...)
        end

        if self == HalfStepEvent and getnamecallmethod() == LPH_ENCSTR("FireServer") then
            local now = tick()
            local delay = AntiPVEye.Config.MinWait + math.random() * (AntiPVEye.Config.MaxWait - AntiPVEye.Config.MinWait)

            if AntiPVEye.Config.Method == LPH_ENCSTR("Freeze") then
                return
            elseif AntiPVEye.Config.Method == LPH_ENCSTR("Random Delay") then
                task.wait(delay)
                AntiPVEye.LastFire = tick()
                return AntiPVEye.Hook(self, ...)
            elseif AntiPVEye.Config.Method == LPH_ENCSTR("Constant Delay") then
                task.wait(AntiPVEye.Config.Wait)
                return AntiPVEye.Hook(self, ...)
            elseif AntiPVEye.Config.Method == LPH_ENCSTR("Random Lag") and now - AntiPVEye.LastFire >= delay then
                AntiPVEye.LastFire = tick()
                return AntiPVEye.Hook(self, ...)
            end
        end

        return AntiPVEye.Hook(self, ...)
    end)))

    local DamageNotifcations = {
        Config = {
            Enabled = false,
            Lifetime = 1,
        }
    }

    DamageNotifcations.Hook = hookmetamethod(game, LPH_ENCSTR("__namecall"), LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function(self, ...)
        if not DamageNotifcations.Config.Enabled then
            return DamageNotifcations.Hook(self, ...)
        end

        if self == DamageRemote and getnamecallmethod() == LPH_ENCSTR("FireServer") then
            local args = {...}
            task.spawn(function()
                setthreadidentity(8)
                Library:Notify("Hit "..args[1].Parent.Name.." in the "..args[2], DamageNotifcations.Config.Lifetime)
            end)
        end

        return DamageNotifcations.Hook(self, ...)
    end)))

    local ESP = {
        Config = {
            Enabled = false,

            Box = false,
            BoxColor = Color3.fromRGB(45, 125, 254),

            Name = false,
            NameColor = Color3.fromRGB(255, 255, 255),

            Distance = false,
            DistanceColor = Color3.fromRGB(255, 255, 255),

            HealthBar = false,
            HighHealthColor = Color3.fromRGB(45, 125, 254),
            LowHealthColor = Color3.fromRGB(45, 125, 254),

            Chams = false,
            ChamsOutlineColor = Color3.fromRGB(45, 125, 254),
            ChamsFillColor = Color3.fromRGB(45, 125, 254),
            ChamsOutlineTransparency = 0,
            ChamsFillTransparency = 0.5,

            Tracers = false,
            TracerPosition = LPH_ENCSTR("Center"),
            TracerColor = Color3.fromRGB(255, 255, 255),

            OutlineColor = Color3.fromRGB(0, 0, 0),

            TeamCheck = false,
            InvisibleCheck = false,
        },

        Rigs = {
            R6 = {
                LPH_ENCSTR("Head"),
                LPH_ENCSTR("Torso"),
                LPH_ENCSTR("Left Arm"),
                LPH_ENCSTR("Right Arm"),
                LPH_ENCSTR("Left Leg"),
                LPH_ENCSTR("Right Leg"),
                LPH_ENCSTR("Humanoid")
            },

            R15 = {
                LPH_ENCSTR("Head"),
                LPH_ENCSTR("UpperTorso"),
                LPH_ENCSTR("LowerTorso"),
                LPH_ENCSTR("LeftUpperArm"),
                LPH_ENCSTR("LeftLowerArm"),
                LPH_ENCSTR("LeftHand"),
                LPH_ENCSTR("RightUpperArm"),
                LPH_ENCSTR("RightLowerArm"),
                LPH_ENCSTR("RightHand"),
                LPH_ENCSTR("LeftUpperLeg"),
                LPH_ENCSTR("LeftLowerLeg"),
                LPH_ENCSTR("LeftFoot"),
                LPH_ENCSTR("RightUpperLeg"),
                LPH_ENCSTR("RightLowerLeg"),
                LPH_ENCSTR("RightFoot"),
                LPH_ENCSTR("Humanoid")
            },
        },

        Limbs = {},
        Drawings = {},
    }

    ESP.ScreenGui = Create(LPH_ENCSTR("ScreenGui"), {
        Parent = gethui(),
        DisplayOrder = 10,
        IgnoreGuiInset = true,
        Name = HttpService:GenerateGUID(false),
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
    })

    ESP.Init = LPH_JIT_MAX(function(Player)
        local Drawings = {}

        Drawings.BoxOutline = Draw(LPH_ENCSTR("Square"), {
            Visible = false,
            Color = Color3.new(0, 0, 0),
            ZIndex = 1,
            Thickness = 3,
        })

        Drawings.Box = Draw(LPH_ENCSTR("Square"), {
            Visible = false,
            Color = Color3.new(1, 1, 1),
            ZIndex = 2,
            Thickness = 1,
        })

        Drawings.Name = Create(LPH_ENCSTR("TextLabel"), {
            Text = Player.Name,
            ZIndex = 9e9,
            TextSize = 12,
            Visible = false,
            RichText = true,
            Font = Enum.Font.Code,
            Parent = ESP.ScreenGui,
            BackgroundTransparency = 1,
            Size = UDim2.new(0, 100, 0, 20),
            TextColor3 = ESP.Config.NameColor,
            AnchorPoint = Vector2.new(0.5, 0.5),
            TextYAlignment = Enum.TextYAlignment.Top,
            FontFace = Font.new(getcustomasset(LPH_ENCSTR("Project X/") .. getgenv().GlobalFont), Enum.FontWeight.Regular),
        })

        Create(LPH_ENCSTR("UIStroke"), {
            ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
            LineJoinMode = Enum.LineJoinMode.Bevel,
            Color = Color3.fromRGB(0, 0, 0),
            Parent = Drawings.Name
        })

        Drawings.Distance = Create(LPH_ENCSTR("TextLabel"), {
            Text = LPH_ENCSTR("?m"),
            ZIndex = 9e9,
            TextSize = 12,
            Visible = false,
            RichText = true,
            Font = Enum.Font.Code,
            Parent = ESP.ScreenGui,
            BackgroundTransparency = 1,
            Size = UDim2.new(0, 100, 0, 20),
            TextColor3 = ESP.Config.NameColor,
            AnchorPoint = Vector2.new(0.5, 0.5),
            TextYAlignment = Enum.TextYAlignment.Bottom,
            FontFace = Font.new(getcustomasset(LPH_ENCSTR("Project X/") .. getgenv().GlobalFont), Enum.FontWeight.Regular),
        })

        Create(LPH_ENCSTR("UIStroke"), {
            ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
            LineJoinMode = Enum.LineJoinMode.Bevel,
            Color = Color3.fromRGB(0, 0, 0),
            Parent = Drawings.Distance
        })

        Drawings.HealthBarOutline = Draw(LPH_ENCSTR("Line"), {
            Visible = false,
            Thickness = 3,
            ZIndex = 1,
            Color = Color3.new(0, 0, 0),
        })

        Drawings.HealthBar = Draw(LPH_ENCSTR("Line"), {
            Visible = false,
            Thickness = 1,
            ZIndex = 2,
            Color = Color3.new(0, 1, 0),
        })

        Drawings.Tracer = Draw(LPH_ENCSTR("Line"), {
            Visible = false,
            Thickness = 1,
            ZIndex = 1,
            Color = Color3.new(1, 1, 1),
        })

        ESP.Drawings[Player] = Drawings

        local Limbs = {}

        local function Init()
            task.spawn(function()
                repeat
                    task.wait(0.2)
                until Player.Character

                if Player.Character and Player.Character:FindFirstChild(LPH_ENCSTR("Humanoid")) and Player.Character:FindFirstChild(LPH_ENCSTR("HumanoidRootPart")) and Player.Character:FindFirstChild(LPH_ENCSTR("Head")) then
                    if Player.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                        for _, Part in next, Player.Character:GetChildren() do
                            if table.find(ESP.Rigs.R6, Part.Name) then
                                table.insert(Limbs, Part)
                            end
                        end
                    else
                        for _, Part in next, Player.Character:GetChildren() do
                            if table.find(ESP.Rigs.R15, Part.Name) then
                                table.insert(Limbs, Part)
                            end
                        end
                    end
                end
            end)
        end

        Init()

        table.insert(Connections, Player.CharacterRemoving:Connect(function()
            Limbs = {}
            ESP.Limbs[Player] = Limbs
        end))

        table.insert(Connections, Player.CharacterAdded:Connect(function()
            task.wait(0.1)
            Init()
            ESP.Limbs[Player] = Limbs
        end))

        ESP.Limbs[Player] = Limbs
    end)

    ESP.GetBoxSize = LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function(Player)
        local MinX = math.huge
        local MinY = math.huge
        local MaxX = -math.huge
        local MaxY = -math.huge

        for _, Limb in next, ESP.Limbs[Player] do
            if Limb:IsA(LPH_ENCSTR("BasePart")) then
                local CFrame = Limb.CFrame
                local Size = Limb.Size * 0.5

                local Corners = {
                    Vector3.new(-Size.X, -Size.Y, -Size.Z),
                    Vector3.new(-Size.X, -Size.Y,  Size.Z),
                    Vector3.new(-Size.X,  Size.Y, -Size.Z),
                    Vector3.new(-Size.X,  Size.Y,  Size.Z),
                    Vector3.new( Size.X, -Size.Y, -Size.Z),
                    Vector3.new( Size.X, -Size.Y,  Size.Z),
                    Vector3.new( Size.X,  Size.Y, -Size.Z),
                    Vector3.new( Size.X,  Size.Y,  Size.Z)
                }

                for _, Offset in next, Corners do
                    local Point = Camera:WorldToViewportPoint(CFrame * Offset)

                    if Point.X < MinX then
                        MinX = Point.X
                    end

                    if Point.X > MaxX then
                        MaxX = Point.X
                    end

                    if Point.Y < MinY then
                        MinY = Point.Y
                    end

                    if Point.Y > MaxY then
                        MaxY = Point.Y
                    end
                end
            end
        end

        return {X = math.floor(MinX), Y = math.floor(MinY), W = math.floor(MaxX - MinX), H = math.floor(MaxY - MinY)}
    end))

    ESP.TeamCheck = LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function(player)
        if not ESP.Config.TeamCheck then
            return true
        end

        return player.Team ~= LocalPlayer.Team
    end))

    ESP.InvisibleCheck = LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function(Head)
        if not ESP.Config.InvisibleCheck then
            return true
        end

        return Head.Transparency == 0
    end))

    local NewParent = Create(LPH_ENCSTR("Model"), {
        Name = HttpService:GenerateGUID(false),
        Parent = workspace,
    })

    local ChamsHighlight = Create(LPH_ENCSTR("Highlight"), {
        Parent = CoreGui,
        Adornee = NewParent,
        Name = HttpService:GenerateGUID(false),
        FillColor = ESP.Config.ChamsFillColor,
        OutlineColor = ESP.Config.ChamsOutlineColor,
        FillTransparency = ESP.Config.ChamsFillTransparency,
        OutlineTransparency = ESP.Config.ChamsOutlineTransparency,
    })

    ESP.Reparent = LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function(Player)
        if not Player or not Player.Character then
            return
        end

        local ok, alive = pcall(function()
            return Player.Character.Humanoid.Health > 0
        end)

        if ESP.Config.Chams and ESP.TeamCheck(Player) and ok and alive then
            Player.Character.Parent = NewParent
        else
            Player.Character.Parent = workspace
        end
    end))

    ESP.UpdateFonts = LPH_JIT_MAX(function()
        for _, Drawings in next, ESP.Drawings do
            Drawings.Name.FontFace = Font.new(getcustomasset(LPH_ENCSTR("Project X/") .. getgenv().GlobalFont), Enum.FontWeight.Regular)
            Drawings.Distance.FontFace = Font.new(getcustomasset(LPH_ENCSTR("Project X/") .. getgenv().GlobalFont), Enum.FontWeight.Regular)
        end
    end)

    ESP.FadeObjects = LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function(instance)
        if isrenderobj(instance) then

        elseif instance:IsA(LPH_ENCSTR("TextLabel")) then
            instance.TextTransparency = nil
            instance.UIStroke.Transparency = nil
        end
    end))

    ESP.Update = LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function()
        for Player, Drawings in next, ESP.Drawings do
            local ok, notinvisible = pcall(function()
                return ESP.InvisibleCheck(Player.Character.Head)
            end)

            if ESP.Config.Enabled and Player.Character and ESP.Limbs[Player] and ESP.TeamCheck(Player) and ok and notinvisible then
                local To, OnScreen = Camera:WorldToViewportPoint(Player.Character:GetPivot().Position)
                local BoxSize = ESP.GetBoxSize(Player)

                local ok, alive = pcall(function()
                    return Player.Character.Humanoid.Health > 0
                end)

                if OnScreen and BoxSize and ok then
                    if alive then
                        for _, Drawing in next, Drawings do
                            if isrenderobj(Drawing) then
                                Drawing.Transparency = 1
                            elseif Drawing:IsA(LPH_ENCSTR("TextLabel")) then
                                Drawing.TextTransparency = 0
                                Drawing.UIStroke.Transparency = 0
                            end
                        end
                    else
                        task.spawn(function()
                            for _, v in next, Drawings do
                                if isrenderobj(v) then
                                    local Duration = 0.15
                                    local Start, Goal, StartTime = v.Transparency or 1, 0, tick()

                                    task.spawn(function()
                                        while tick() - StartTime < Duration do
                                            local Alpha = (tick() - StartTime) / Duration
                                            v.Transparency = Start + (Goal - Start) * Alpha
                                            task.wait()
                                        end

                                        v.Transparency = Goal
                                    end)
                                elseif v:IsA(LPH_ENCSTR("TextLabel")) then
                                    local TweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                                    TweenService:Create(v, TweenInfo, {TextTransparency = 1}):Play()
                                    TweenService:Create(v.UIStroke, TweenInfo, {Transparency = 1}):Play()
                                end
                            end
                        end)
                    end

                    if ESP.Config.Box then
                        Drawings.Box.Visible = true
                        Drawings.Box.Size = Vector2.new(BoxSize.W, BoxSize.H)
                        Drawings.Box.Position = Vector2.new(BoxSize.X, BoxSize.Y)
                        Drawings.Box.Color = ESP.Config.BoxColor

                        Drawings.BoxOutline.Visible = true
                        Drawings.BoxOutline.Size = Vector2.new(BoxSize.W, BoxSize.H)
                        Drawings.BoxOutline.Position = Vector2.new(BoxSize.X, BoxSize.Y)
                        Drawings.BoxOutline.Color = ESP.Config.OutlineColor
                    else
                        Drawings.Box.Visible = false
                        Drawings.BoxOutline.Visible = false
                    end

                    if ESP.Config.HealthBar then
                        local HealthPercent = math.clamp(Player.Character.Humanoid.Health / Player.Character.Humanoid.MaxHealth, 0, 1)

                        Drawings.HealthBar.Visible = true
                        Drawings.HealthBar.Color = ESP.Config.LowHealthColor:Lerp(ESP.Config.HighHealthColor, HealthPercent)
                        Drawings.HealthBar.From = Vector2.new(BoxSize.X - 4, BoxSize.Y + (BoxSize.H - BoxSize.H * HealthPercent))
                        Drawings.HealthBar.To = Vector2.new(BoxSize.X - 4, BoxSize.Y + BoxSize.H)

                        Drawings.HealthBarOutline.Visible = true
                        Drawings.HealthBarOutline.Color = ESP.Config.OutlineColor
                        Drawings.HealthBarOutline.From = Vector2.new(BoxSize.X - 4, BoxSize.Y - 1)
                        Drawings.HealthBarOutline.To = Vector2.new(BoxSize.X - 4, BoxSize.Y + BoxSize.H + 1)
                    else
                        Drawings.HealthBar.Visible = false
                        Drawings.HealthBarOutline.Visible = false
                    end

                    if ESP.Config.Tracers then
                        Drawings.Tracer.Visible = true
                        Drawings.Tracer.Color = ESP.Config.TracerColor

                        if ESP.Config.TracerPosition == LPH_ENCSTR("Top") then
                            Drawings.Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, 0)
                        elseif ESP.Config.TracerPosition == LPH_ENCSTR("Center") then
                            Drawings.Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
                        else
                            Drawings.Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                        end

                        Drawings.Tracer.To = Vector2.new(To.X, To.Y)
                    else
                        Drawings.Tracer.Visible = false
                    end

                    if ESP.Config.Name then
                        Drawings.Name.Visible = true
                        Drawings.Name.TextColor3 = ESP.Config.NameColor
                        Drawings.Name.Position = UDim2.fromOffset(BoxSize.X + BoxSize.W / 2, BoxSize.Y - 6)
                    else
                        Drawings.Name.Visible = false
                    end

                    if ESP.Config.Distance then
                        local Distance = (Camera.CFrame.Position - Player.Character:GetPivot().Position).Magnitude
                        Drawings.Distance.Visible = true
                        Drawings.Distance.Text = string.format(LPH_ENCSTR("%dm"), math.floor(Distance))
                        Drawings.Distance.TextColor3 = ESP.Config.DistanceColor
                        Drawings.Distance.Position = UDim2.fromOffset(BoxSize.X + BoxSize.W / 2, BoxSize.Y + BoxSize.H + 4)
                    else
                        Drawings.Distance.Visible = false
                    end
                else
                    for _, Drawing in next, Drawings do
                        Drawing.Visible = false
                    end
                end
            else
                for _, Drawing in next, Drawings do
                    Drawing.Visible = false
                end
            end

            ESP.Reparent(Player)
        end

        ChamsHighlight.OutlineColor = ESP.Config.ChamsOutlineColor
        ChamsHighlight.OutlineTransparency = Options.ESPHighlightOutlineColor.Transparency or 0

        ChamsHighlight.FillColor = ESP.Config.ChamsFillColor
        ChamsHighlight.FillTransparency = Options.ESPHighlightFillColor.Transparency or 0.5
    end))

    for _, Player in next, Players:GetPlayers() do
        if Player ~= LocalPlayer then
            ESP.Init(Player)
        end
    end

    table.insert(Connections, Players.PlayerAdded:Connect(function(Player)
        if Player ~= LocalPlayer then
            ESP.Init(Player)
        end
    end))

    table.insert(Connections, Players.PlayerRemoving:Connect(function(Player)
        for _, v in next, ESP.Drawings[Player] do
            v:Destroy()
        end

        ESP.Limbs[Player] = {}
    end))

    local Skins = {}

    for _, v in next, SkinFolder[LPH_ENCSTR("Glock 19")]:GetChildren() do
        if string.sub(v.Name, 1, string.len(LPH_ENCSTR("Glock 19_"))) == LPH_ENCSTR("Glock 19_") then
            local a = string.sub(v.Name, string.len(LPH_ENCSTR("Glock 19_")) + 1)
            table.insert(Skins, a)
        end
    end

    table.sort(Skins)

    local WorldVisuals = {
        Config = {
            Enabled = false,

            ChangeFog = false,
            CustomFogStart = 500,
            CustomFogEnd = 5000,
            CustomFogColor = Color3.fromRGB(255, 255, 255),

            ChangeAmbient = false,
            CustomAmbient = Color3.fromRGB(255, 255, 255),

            ChangeTimeOfDay = false,
            CustomTime = 12,
        }
    }

    WorldVisuals.Update = LPH_JIT_MAX(function()
        if WorldVisuals.Config.Enabled then
            if Atmosphere then
                Atmosphere.Parent = nil
            end

            Lighting.FogStart = WorldVisuals.Config.ChangeFog and WorldVisuals.Config.CustomFogStart or NormalFogStart
            Lighting.FogEnd = WorldVisuals.Config.ChangeFog and WorldVisuals.Config.CustomFogEnd or NormalFogEnd
            Lighting.FogColor = WorldVisuals.Config.ChangeFog and WorldVisuals.Config.CustomFogColor or NormalFogColor
            Lighting.Ambient = WorldVisuals.Config.ChangeAmbient and WorldVisuals.Config.CustomAmbient or NormalAmbient
            Lighting.TimeOfDay = WorldVisuals.Config.ChangeTimeOfDay and WorldVisuals.Config.CustomTime or NormalTimeOfDay
        else
            Lighting.FogStart, Lighting.FogEnd, Lighting.FogColor = NormalFogStart, NormalFogEnd, NormalFogColor
            Lighting.Ambient, Lighting.TimeOfDay = NormalAmbient, NormalTimeOfDay

            if Atmosphere then
                Atmosphere.Parent = Lighting
            end
        end
    end)

    local Aimbot = {
        Config = {
            enabled = false,
            aimpart = LPH_ENCSTR("Head"),
            smoothness = 0.01,
            method = LPH_ENCSTR("Camera"),

            wall_check = false,
            invis_check = false,
            team_check = false,
            forcefield_check = false
        },

        FOVConfig = {
            enabled = false,
            visible = false,

            color = Color3.new(1, 1, 1),
            numsides = 360,
            transparency = 1,
            radius = 100,
            thickness = 1,
            filled = false
        },

        Locked = false,
        FOVCircle = Draw(LPH_ENCSTR("Circle")),
        FOVCircleOutline = Draw(LPH_ENCSTR("Circle")),
    }

    local function IsInRadius(position, radius)
        local MousePosition = UserInputService:GetMouseLocation()
        return (position - MousePosition).Magnitude <= radius
    end

    Aimbot.WallCheck = LPH_JIT_MAX(function(Part)
        if not Aimbot.Config.wall_check then
            return true
        end

        if not Part or not Part.Position then return false end

        local PartPosition = Part and Part.Position
        local parts = Camera:GetPartsObscuringTarget({PartPosition}, {LocalPlayer.Character, Part})
        local visible = #parts == 0

        return visible
    end)

    Aimbot.IsVisible = LPH_JIT_MAX(function(Player)
        if not Aimbot.Config.invis_check then
            return true
        end

        return Player and Player.Character and Player.Character:FindFirstChild(LPH_ENCSTR("Head")) and Player.Character.Head.Transparency == 0
     end)

    Aimbot.TeamCheck = LPH_JIT_MAX(function(Player)
        if not Aimbot.Config.team_check then
            return true
        end

        return Player and Player.Team ~= LocalPlayer.Team
    end)

    Aimbot.HasForceField = LPH_JIT_MAX(function(Player)
        if not Aimbot.Config.forcefield_check then
            return true
        end

        return Player and Player.Character and Player.Character:FindFirstChildOfClass(LPH_ENCSTR("ForceField")) == nil
    end)

    Aimbot.IsAlive = LPH_JIT_MAX(function(Player)
        return Player and Player.Character and Player.Character:FindFirstChild(LPH_ENCSTR("Humanoid")) and Player.Character.Humanoid.Health > 0
    end)

    Aimbot.GetClosestPlayer = LPH_JIT_MAX(function()
        local closest_player, closest_distance, Mouse_pos = nil, math.huge, UserInputService:GetMouseLocation()

        if not Aimbot.Config.enabled then
            return nil
        end

        for _, player in next, Players:GetPlayers() do
            if player ~= LocalPlayer and not table.find(Whitelist, player) then
                local character = player.Character
                if character then
                    local aim_part = character:FindFirstChild(Aimbot.Config.aimpart or LPH_ENCSTR("HumanoidRootPart"))
                    if aim_part then
                        local aim_part_position, on_screen = Camera:WorldToViewportPoint(aim_part.Position)
                        if on_screen then
                            local aim_vector = Vector2.new(aim_part_position.X, aim_part_position.Y)
                            local distance = (Mouse_pos - aim_vector).Magnitude

                            if distance < closest_distance then
                                if not Aimbot.FOVConfig.enabled or IsInRadius(aim_vector, Aimbot.FOVConfig.radius) then
                                    if Aimbot.IsAlive(player) and Aimbot.TeamCheck(player) and Aimbot.IsVisible(player) and Aimbot.HasForceField(player) and Aimbot.WallCheck(aim_part) then
                                        closest_player = player
                                        closest_distance = distance
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end

        return closest_player
    end)

    Aimbot.Update = LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function()
        local MousePosition = UserInputService:GetMouseLocation()

        if Aimbot.Config.enabled then
            local ClosestPlayer = Aimbot.GetClosestPlayer()
            Aimbot.Locked = Options.AimbotBind:GetState()

            if Aimbot.FOVConfig.enabled then
                local FOVCircle = Aimbot.FOVCircle
                FOVCircle.Radius = Aimbot.FOVConfig.radius
                FOVCircle.Thickness = Aimbot.FOVConfig.thickness
                FOVCircle.Filled = Aimbot.FOVConfig.filled
                FOVCircle.NumSides = Aimbot.FOVConfig.numsides
                FOVCircle.Color = Aimbot.FOVConfig.color
                FOVCircle.Transparency = Aimbot.FOVConfig.transparency
                FOVCircle.Visible = Aimbot.FOVConfig.visible
                FOVCircle.Position = Vector2.new(MousePosition.X, MousePosition.Y)
                FOVCircle.ZIndex = 11

                local FOVCircleOutline = Aimbot.FOVCircleOutline
                FOVCircleOutline.Radius = Aimbot.FOVConfig.radius
                FOVCircleOutline.Thickness = Aimbot.FOVConfig.thickness + 2
                FOVCircleOutline.NumSides = Aimbot.FOVConfig.numsides
                FOVCircleOutline.Color = Color3.new(0, 0, 0)
                FOVCircleOutline.Transparency = Aimbot.FOVConfig.transparency
                FOVCircleOutline.Visible = Aimbot.FOVConfig.visible
                FOVCircleOutline.Position = Vector2.new(MousePosition.X, MousePosition.Y)
                FOVCircleOutline.ZIndex = 10
            else
                Aimbot.FOVCircle.Visible = false
                Aimbot.FOVCircleOutline.Visible = false
            end

            if Aimbot.Locked and ClosestPlayer then
                    local AimPartPosition = ClosestPlayer.Character[Aimbot.Config.aimpart].Position

                if Aimbot.Config.method == LPH_ENCSTR("Mouse") then
                    local Vector = Camera:WorldToViewportPoint(AimPartPosition)
                    local DeltaX = (Vector.X - MousePosition.X) * math.clamp(Aimbot.Config.smoothness, 0.1, 1)
                    local DeltaY = (Vector.Y - MousePosition.Y) * math.clamp(Aimbot.Config.smoothness, 0.1, 1)

                    mousemoverel(DeltaX, DeltaY)
                else
                    local TargetCFrame = CFrame.new(Camera.CFrame.Position, AimPartPosition)
                    Camera.CFrame = Camera.CFrame:Lerp(TargetCFrame, Aimbot.Config.smoothness)
                end
            else
                Aimbot.Locked = false
            end
        else
            Aimbot.Locked = false
            Aimbot.FOVCircle.Visible = false
            Aimbot.FOVCircleOutline.Visible = false
        end
    end))

    local SilentAim = {
        Config = {
            enabled = false,
            always_send_hit_packet = false,
            part_priority = false,
            priority_part = LPH_ENCSTR(""),
            bullet_teleport = false,
            hitchance = 50,
            hitparts = {LPH_ENCSTR("Head"), LPH_ENCSTR("Torso")},

            wall_check = false,
            invis_check = false,
            team_check = false,
            forcefield_check = false,
        },

        FOVConfig = {
            enabled = false,
            visible = false,

            color = Color3.new(1, 1, 1),
            numsides = 360,
            transparency = 1,
            radius = 100,
            thickness = 1,
            filled = false
        },

        FOVCircle = Draw(LPH_ENCSTR("Circle")),
        FOVCircleOutline = Draw(LPH_ENCSTR("Circle")),
    }

    SilentAim.WallCheck = LPH_JIT_MAX(function(Part)
        if not SilentAim.Config.wall_check then
            return true
        end

        if not Part or not Part.Position then
            return false
        end

        local PartPosition = Part and Part.Position
        local parts = Camera:GetPartsObscuringTarget({PartPosition}, {LocalPlayer.Character, Part})
        local visible = #parts == 0

        return visible
    end)

    SilentAim.HasForceField = LPH_JIT_MAX(function(Player)
        if not SilentAim.Config.forcefield_check then
            return true
        end

        return Player and Player.Character and Player.Character:FindFirstChildOfClass(LPH_ENCSTR("ForceField")) == nil
    end)

    SilentAim.IsVisible = LPH_JIT_MAX(function(Player)
        if not SilentAim.Config.invis_check then
            return true
        end

        return Player and Player.Character and Player.Character:FindFirstChild(LPH_ENCSTR("Head")) and Player.Character.Head.Transparency == 0
    end)

    SilentAim.TeamCheck = LPH_JIT_MAX(function(Player)
        if not SilentAim.Config.team_check then
            return true
        end

        return Player and Player.Team ~= LocalPlayer.Team
    end)

    SilentAim.IsAlive = LPH_JIT_MAX(function(Player)
        return Player and Player.Character and Player.Character:FindFirstChild(LPH_ENCSTR("Humanoid")) and Player.Character.Humanoid.Health > 0
    end)

    SilentAim.GetClosestHitpart = LPH_JIT_MAX(function()
        local _ClosestPart, MaxDistance, MousePosition = nil, math.huge, UserInputService:GetMouseLocation()
        local PriorityPart, HeadDistance = nil, math.huge

        if not SilentAim.Config.enabled then
            return nil
        end

        for _, Player in next, Players:GetPlayers() do
            if Player ~= LocalPlayer and not table.find(Whitelist, Player) then
                local Character = Player.Character
                if Character then
                    for _, Part in next, Character:GetChildren() do
                        if table.find(SilentAim.Config.hitparts, Part.Name) or (SilentAim.Config.part_priority and Part.Name == SilentAim.Config.priority_part) then
                            local AimPartPosition, onScreen = Camera:WorldToViewportPoint(Part.Position)

                            if onScreen then
                                local AimVector = Vector2.new(AimPartPosition.X, AimPartPosition.Y)
                                local DistanceToMouse = (Vector2.new(MousePosition.X, MousePosition.Y) - AimVector).Magnitude

                                if DistanceToMouse < math.min(MaxDistance, HeadDistance) then
                                    if not SilentAim.FOVConfig.enabled or IsInRadius(AimVector, SilentAim.FOVConfig.radius) then
                                        if SilentAim.IsAlive(Player) and SilentAim.TeamCheck(Player) and SilentAim.HasForceField(Player) and SilentAim.IsVisible(Player) and SilentAim.WallCheck(Part) then
                                            if SilentAim.Config.part_priority and Part.Name == SilentAim.Config.priority_part then
                                                PriorityPart = Part
                                                HeadDistance = DistanceToMouse
                                            elseif not SilentAim.Config.part_priority then
                                                _ClosestPart = Part
                                                MaxDistance = DistanceToMouse
                                            elseif not PriorityPart then
                                                _ClosestPart = Part
                                                MaxDistance = DistanceToMouse
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end

        return (SilentAim.Config.part_priority and PriorityPart) or _ClosestPart
    end)

    SilentAim.Update = LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function()
        local MousePosition = UserInputService:GetMouseLocation()
        SilentAim.Aiming = Options.SilentAimBind:GetState()

        if SilentAim.Config.enabled and SilentAim.FOVConfig.enabled then
            local FOVCircle = SilentAim.FOVCircle
            FOVCircle.Radius = SilentAim.FOVConfig.radius
            FOVCircle.Thickness = SilentAim.FOVConfig.thickness
            FOVCircle.Filled = SilentAim.FOVConfig.filled
            FOVCircle.NumSides = SilentAim.FOVConfig.numsides
            FOVCircle.Color = SilentAim.FOVConfig.color
            FOVCircle.Transparency = SilentAim.FOVConfig.transparency
            FOVCircle.Visible = SilentAim.FOVConfig.visible
            FOVCircle.Position = Vector2.new(MousePosition.X, MousePosition.Y)
            FOVCircle.ZIndex = 20

            local FOVCircleOutline = SilentAim.FOVCircleOutline
            FOVCircleOutline.Radius = SilentAim.FOVConfig.radius
            FOVCircleOutline.Thickness = SilentAim.FOVConfig.thickness + 2
            FOVCircleOutline.NumSides = SilentAim.FOVConfig.numsides
            FOVCircleOutline.Color = Color3.new(0, 0, 0)
            FOVCircleOutline.Transparency = SilentAim.FOVConfig.transparency
            FOVCircleOutline.Visible = SilentAim.FOVConfig.visible
            FOVCircleOutline.Position = Vector2.new(MousePosition.X, MousePosition.Y)
            FOVCircleOutline.ZIndex = 19
        else
            SilentAim.FOVCircle.Visible = false
            SilentAim.FOVCircleOutline.Visible = false
        end
    end))

    SilentAim.CalculateChance = LPH_JIT_MAX(function(Percentage)
        Percentage = math.floor(Percentage)
        local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100
        return chance <= Percentage / 100
    end)

    local function Direction(origin, pos)
        return (pos - origin).Unit * 1000
    end

    local BulletTracers = {
        Config = {
            Enabled = false,

            Lifetime = 1,
            FadeOut = false,

            Color1 = Color3.fromRGB(255, 255, 255),
            Color2 = Color3.fromRGB(255, 255, 255),

            Transparency1 = 0,
            Transparency2 = 0,

            Texture = LPH_ENCSTR("rbxassetid://446111271"),
            TextureLength = 1,
            TextureSpeed = 1,

            LightEmission = 1,
            FaceCamera = true,

            Width0 = 0.2,
            Width1 = 0.2
        }
    }

    require(RaycastModule).Raycast = LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function(self, name, data, extra)
        if name == LocalPlayer then
            if SilentAim.Config.enabled and SilentAim.Aiming then
                local ClosestHitpart = SilentAim.GetClosestHitpart()
                local Chance = SilentAim.CalculateChance(SilentAim.Config.hitchance)

                if ClosestHitpart then
                    if Chance then
                        data.direction = Direction(data.origin, ClosestHitpart.Position)
                    end
                end
            end

            task.spawn(function()
                if BulletTracers.Config.Enabled then
                    local RaycastParams = RaycastParams.new()
                    RaycastParams.FilterDescendantsInstances = {LocalPlayer.Character, Camera}
                    RaycastParams.FilterType = Enum.RaycastFilterType.Blacklist
                    RaycastParams.IgnoreWater = true

                    local RaycastResult = workspace:Raycast(Camera.CFrame.Position, data.direction * 1000, RaycastParams)
                    if not RaycastResult then return end

                    local Holder = Create(LPH_ENCSTR("Part"), {
                        Anchored = true,
                        Parent = workspace,
                        Transparency = 1
                    })

                    local MuzzleAttachment = Create(LPH_ENCSTR("Attachment"), {
                        WorldPosition = data.firePart.Position,
                        Parent = Holder
                    })

                    local HitAttachment = Create(LPH_ENCSTR("Attachment"), {
                        WorldPosition = RaycastResult.Position,
                        Parent = Holder
                    })

                    local Beam = Create(LPH_ENCSTR("Beam"), {
                        Parent = Holder,
                        Attachment0 = MuzzleAttachment,
                        Attachment1 = HitAttachment,
                        Color = ColorSequence.new(BulletTracers.Config.Color1, BulletTracers.Config.Color2),
                        Transparency = NumberSequence.new(Options.BulletTracersColor1.Transparency, Options.BulletTracersColor2.Transparency),
                        Texture = BulletTracers.Config.Texture,
                        TextureLength = BulletTracers.Config.TextureLength,
                        TextureSpeed = BulletTracers.Config.TextureSpeed,
                        LightEmission = BulletTracers.Config.LightEmission,
                        FaceCamera = BulletTracers.Config.FaceCamera,
                        Width0 = BulletTracers.Config.Width0,
                        Width1 = BulletTracers.Config.Width1
                    })

                    task.delay(BulletTracers.Config.Lifetime, function()
                        if BulletTracers.Config.FadeOut then
                            local t1 = Options.BulletTracersColor1.Transparency
                            local t2 = Options.BulletTracersColor2.Transparency

                            for i = 0, 1, 0.1 do
                                local v1 = t1 + (1 - t1) * i
                                local v2 = t2 + (1 - t2) * i
                                Beam.Transparency = NumberSequence.new(v1, v2)
                                task.wait(0.05)
                            end
                        end

                        Holder:Destroy()
                    end)
                end
            end)
        end

        return OriginalRaycast(self, name, data, extra)
    end))

    table.insert(Connections, LocalPlayer.CharacterAdded:Connect(function()
        CharacterMaterial.Change()
    end))

    local AimbotSection = Tabs.Legit:AddLeftGroupbox(LPH_ENCSTR('Aimbot'))

    AimbotSection:AddToggle(LPH_ENCSTR('AimbotEnabled'), {
        Text = LPH_ENCSTR('Enabled'),
        Default = false,
        Callback = function(Value)
            Aimbot.Config.enabled = Value
            Options.AimbotBind:SetNoUI(not Toggles.AimbotEnabled.Value)
        end
    }):AddKeyPicker(LPH_ENCSTR('AimbotBind'), {
        Default = LPH_ENCSTR('None'),
        Text = LPH_ENCSTR('Aimbot'),
        Mode = LPH_ENCSTR('Hold'),
        NoUI = true,
    })

    AimbotSection:AddSlider(LPH_ENCSTR('AimbotSmoothness'), {
        Text = LPH_ENCSTR('Smoothness'),
        Default = 1,
        Min = 1,
        Max = 100,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            Aimbot.Config.smoothness = Value / 100
        end
    })

    AimbotSection:AddDropdown(LPH_ENCSTR('AimbotAimpart'), {
        Values = {LPH_ENCSTR("Head"), LPH_ENCSTR("Torso"), LPH_ENCSTR("Left Leg"), LPH_ENCSTR("Right Leg"), LPH_ENCSTR("Left Arm"), LPH_ENCSTR("Right Arm")},
        Multi = false,
        Text = LPH_ENCSTR('Aimpart'),
        Default = LPH_ENCSTR("Head"),
        Callback = function(Value)
            Aimbot.Config.aimpart = Value
        end
    })

    AimbotSection:AddDropdown(LPH_ENCSTR('AimbotMethod'), {
        Values = {LPH_ENCSTR("Camera"), LPH_ENCSTR("Mouse")},
        Multi = false,
        Text = LPH_ENCSTR('Method'),
        Default = LPH_ENCSTR("Camera"),
        Callback = function(Value)
            Aimbot.Config.method = Value
        end
    })

    AimbotSection:AddDivider()

    AimbotSection:AddToggle(LPH_ENCSTR('AimbotWallCheckEnabled'), {
        Text = LPH_ENCSTR('Wall Check'),
        Default = false,
        Callback = function(Value)
            Aimbot.Config.wall_check = Value
        end
    })

    AimbotSection:AddToggle(LPH_ENCSTR('AimbotTeamCheckEnabled'), {
        Text = LPH_ENCSTR('Team Check'),
        Default = false,
        Callback = function(Value)
            Aimbot.Config.team_check = Value
        end
    })

    AimbotSection:AddToggle(LPH_ENCSTR('AimbotInvisibleCheckEnabled'), {
        Text = LPH_ENCSTR('Invisible Check'),
        Default = false,
        Callback = function(Value)
            Aimbot.Config.invis_check = Value
        end
    })

    AimbotSection:AddToggle(LPH_ENCSTR('AimbotForcefieldCheckEnabled'), {
        Text = LPH_ENCSTR('Forcefield Check'),
        Default = false,
        Callback = function(Value)
            Aimbot.Config.forcefield_check = Value
        end
    })

    AimbotSection:AddDivider()

    AimbotSection:AddToggle(LPH_ENCSTR('AimbotFOVEnabled'), {
        Text = LPH_ENCSTR('FOV Enabled'),
        Default = false,
        Callback = function(Value)
            Aimbot.FOVConfig.enabled = Value
        end
    })

    AimbotSection:AddToggle(LPH_ENCSTR('AimbotFOVVisible'), {
        Text = LPH_ENCSTR('FOV Visible'),
        Default = false,
        Callback = function(Value)
            Aimbot.FOVConfig.visible = Value
        end
    }):AddColorPicker(LPH_ENCSTR('AimbotFOVCircleColor'), {
        Default = Color3.fromRGB(255, 255, 255),
        Title = LPH_ENCSTR('Circle Color'),
        Transparency = nil,
        Callback = function(Value)
            Aimbot.FOVConfig.color = Value
        end
    })

    AimbotSection:AddSlider(LPH_ENCSTR('AimbotSmoothness'), {
        Text = LPH_ENCSTR('Range'),
        Default = 100,
        Min = 1,
        Max = 1000,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            Aimbot.FOVConfig.radius = Value
        end
    })

    local SilentAimSection = Tabs.Legit:AddRightGroupbox(LPH_ENCSTR('Silent Aim'))

    SilentAimSection:AddToggle(LPH_ENCSTR('SilentAimEnabled'), {
        Text = LPH_ENCSTR('Enabled'),
        Default = false,
        Callback = function(Value)
            SilentAim.Config.enabled = Value
            Options.SilentAimBind:SetNoUI(not Toggles.SilentAimEnabled.Value)
        end
    }):AddKeyPicker(LPH_ENCSTR('SilentAimBind'), {
        Default = LPH_ENCSTR('None'),
        Text = LPH_ENCSTR('Silent Aim'),
        NoUI = true,
    })

    SilentAimSection:AddSlider(LPH_ENCSTR('SilentAimHitchance'), {
        Text = LPH_ENCSTR('Hitchance'),
        Default = 1,
        Min = 1,
        Max = 100,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            SilentAim.Config.hitchance = Value
        end
    })

    SilentAimSection:AddDropdown(LPH_ENCSTR('SilentAimHitpart'), {
        Values = {LPH_ENCSTR("Head"), LPH_ENCSTR("Torso"), LPH_ENCSTR("Left Leg"), LPH_ENCSTR("Right Leg"), LPH_ENCSTR("Left Arm"), LPH_ENCSTR("Right Arm")},
        Multi = true,
        Text = LPH_ENCSTR('Hitparts'),
        Default = {LPH_ENCSTR("Head"), LPH_ENCSTR("Torso")},
        Callback = function(Value)
            local T = {}

            for k, v in next, Value do
                if v then
                    table.insert(T, k)
                end
            end

            SilentAim.Config.hitparts = T
        end
    })

    SilentAimSection:AddDropdown(LPH_ENCSTR('SilentAimHitpart'), {
        Values = {LPH_ENCSTR("Head"), LPH_ENCSTR("Torso"), LPH_ENCSTR("Left Leg"), LPH_ENCSTR("Right Leg"), LPH_ENCSTR("Left Arm"), LPH_ENCSTR("Right Arm")},
        Multi = false,
        AllowNull = true,
        Text = LPH_ENCSTR('Priority Hitpart'),
        Default = nil,
        Callback = function(Value)
            SilentAim.Config.priority_part = Value

            if Value ~= nil then
                SilentAim.Config.part_priority = true
            else
                SilentAim.Config.part_priority = false
            end
        end
    })

    SilentAimSection:AddDivider()

    SilentAimSection:AddToggle(LPH_ENCSTR('SilentAimWallCheckEnabled'), {
        Text = LPH_ENCSTR('Wall Check'),
        Default = false,
        Callback = function(Value)
            SilentAim.Config.wall_check = Value
        end
    })

    SilentAimSection:AddToggle(LPH_ENCSTR('SilentAimTeamCheckEnabled'), {
        Text = LPH_ENCSTR('Team Check'),
        Default = false,
        Callback = function(Value)
            SilentAim.Config.team_check = Value
        end
    })

    SilentAimSection:AddToggle(LPH_ENCSTR('SilentAimInvisibleCheckEnabled'), {
        Text = LPH_ENCSTR('Invisible Check'),
        Default = false,
        Callback = function(Value)
            SilentAim.Config.invis_check = Value
        end
    })

    SilentAimSection:AddToggle(LPH_ENCSTR('SilentAimForcefieldCheckEnabled'), {
        Text = LPH_ENCSTR('Forcefield Check'),
        Default = false,
        Callback = function(Value)
            SilentAim.Config.forcefield_check = Value
        end
    })

    SilentAimSection:AddDivider()

    SilentAimSection:AddToggle(LPH_ENCSTR('SilentAimFOVEnabled'), {
        Text = LPH_ENCSTR('FOV Enabled'),
        Default = false,
        Callback = function(Value)
            SilentAim.FOVConfig.enabled = Value
        end
    })

    SilentAimSection:AddToggle(LPH_ENCSTR('SilentAimFOVVisible'), {
        Text = LPH_ENCSTR('FOV Visible'),
        Default = false,
        Callback = function(Value)
            SilentAim.FOVConfig.visible = Value
        end
    }):AddColorPicker(LPH_ENCSTR('SilentAimFOVCircleColor'), {
        Default = Color3.fromRGB(255, 255, 255),
        Title = LPH_ENCSTR('Circle Color'),
        Transparency = nil,
        Callback = function(Value)
            SilentAim.FOVConfig.color = Value
        end
    })

    SilentAimSection:AddSlider(LPH_ENCSTR('SilentAimHitchance'), {
        Text = LPH_ENCSTR('Range'),
        Default = 100,
        Min = 1,
        Max = 1000,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            SilentAim.FOVConfig.radius = Value
        end
    })

    local ESPMainSection = Tabs.Visuals:AddLeftGroupbox(LPH_ENCSTR('ESP'))

    ESPMainSection:AddToggle(LPH_ENCSTR('ESPEnabled'), {
        Text = LPH_ENCSTR("Enabled"),
        Default = false,
        Callback = function(Value)
            ESP.Config.Enabled = Value
        end
    })

    ESPMainSection:AddToggle(LPH_ENCSTR('ESPBoxEnabled'), {
        Text = LPH_ENCSTR("Box"),
        Default = false,
        Callback = function(Value)
            ESP.Config.Box = Value
        end
    }):AddColorPicker(LPH_ENCSTR('ESPBoxColor'), {
        Title = LPH_ENCSTR('Box Color'),
        Default = Color3.fromRGB(45, 125, 254),
        Transparency = nil,
        Callback = function(Value)
            ESP.Config.BoxColor = Value
        end
    })

    ESPMainSection:AddToggle(LPH_ENCSTR('ESPNameEnabled'), {
        Text = LPH_ENCSTR("Name"),
        Default = false,
        Callback = function(Value)
            ESP.Config.Name = Value
        end
    }):AddColorPicker(LPH_ENCSTR('ESPNameColor'), {
        Title = LPH_ENCSTR('Name Color'),
        Default = Color3.fromRGB(255, 255, 255),
        Transparency = nil,
        Callback = function(Value)
            ESP.Config.NameColor = Value
        end
    })

    ESPMainSection:AddToggle(LPH_ENCSTR('ESPDistanceEnabled'), {
        Text = LPH_ENCSTR("Distance"),
        Default = false,
        Callback = function(Value)
            ESP.Config.Distance = Value
        end
    }):AddColorPicker(LPH_ENCSTR('ESPDistanceColor'), {
        Title = LPH_ENCSTR('Distance Color'),
        Default = Color3.fromRGB(255, 255, 255),
        Transparency = nil,
        Callback = function(Value)
            ESP.Config.DistanceColor = Value
        end
    })

    ESPMainSection:AddToggle(LPH_ENCSTR('ESPHealthBarEnabled'), {
        Text = LPH_ENCSTR("Healthbar"),
        Default = false,
        Callback = function(Value)
            ESP.Config.HealthBar = Value
        end
    }):AddColorPicker(LPH_ENCSTR('ESPHighHealthColor'), {
        Title = LPH_ENCSTR('High Health Color'),
        Default = Color3.fromRGB(0, 255, 0),
        Transparency = nil,
        Callback = function(Value)
            ESP.Config.HighHealthColor = Value
        end
    }):AddColorPicker(LPH_ENCSTR('ESPLowHealthColor'), {
        Title = LPH_ENCSTR('Low Health Color'),
        Default = Color3.fromRGB(255, 0, 0),
        Transparency = nil,
        Callback = function(Value)
            ESP.Config.LowHealthColor = Value
        end
    })

    ESPMainSection:AddToggle(LPH_ENCSTR('ESPHighlightEnabled'), {
        Text = LPH_ENCSTR("Highlight"),
        Default = false,
        Callback = function(Value)
            ESP.Config.Chams = Value
        end
    }):AddColorPicker(LPH_ENCSTR('ESPHighlightFillColor'), {
        Title = LPH_ENCSTR('Fill Color'),
        Default = Color3.fromRGB(45, 125, 254),
        Transparency = 0.5,
        Callback = function(Value, Alpha)
            ESP.Config.ChamsFillColor = Value
            ESP.Config.ChamsFillTransparency = Alpha
        end
    }):AddColorPicker(LPH_ENCSTR('ESPHighlightOutlineColor'), {
        Title = LPH_ENCSTR('Outline Color'),
        Default = Color3.fromRGB(45, 125, 254),
        Transparency = 0,
        Callback = function(Value, Alpha)
            ESP.Config.ChamsOutlineColor = Value
            ESP.Config.ChamsOutlineTransparency = Alpha
        end
    })

    ESPMainSection:AddDivider()

    ESPMainSection:AddToggle(LPH_ENCSTR('ESPTeamCheckEnabled'), {
        Text = LPH_ENCSTR("Team Check"),
        Default = false,
        Callback = function(Value)
            ESP.Config.TeamCheck = Value
        end
    })

    ESPMainSection:AddToggle(LPH_ENCSTR('ESPInvisibleCheckEnabled'), {
        Text = LPH_ENCSTR("Invisible Check"),
        Default = false,
        Callback = function(Value)
            ESP.Config.InvisibleCheck = Value
        end
    })

    ESPMainSection:AddDivider()

    ESPMainSection:AddDropdown(LPH_ENCSTR('ESPFont'), {
        Values = {LPH_ENCSTR("smallest_pixel-7"), LPH_ENCSTR("ProggyClean")},
        Multi = false,
        Text = LPH_ENCSTR('Font'),
        Default = LPH_ENCSTR("ProggyClean"),
        Callback = function(Value)
            getgenv().GlobalFont = Value .. LPH_ENCSTR(".font")

            ESP.UpdateFonts()
        end
    })

    local WorldVisualsSection = Tabs.Visuals:AddRightGroupbox(LPH_ENCSTR('World'))

    WorldVisualsSection:AddToggle(LPH_ENCSTR('WorldVisualsEnabled'), {
        Text = LPH_ENCSTR('Enabled'),
        Default = false,
        Callback = function(Value)
            WorldVisuals.Config.Enabled = Value
            WorldVisuals.Update()
        end
    })

    WorldVisualsSection:AddDivider()

    WorldVisualsSection:AddToggle(LPH_ENCSTR('WorldVisualsAmbienceEnabled'), {
        Text = LPH_ENCSTR('Ambience'),
        Default = false,
        Callback = function(Value)
            WorldVisuals.Config.ChangeAmbient = Value
            WorldVisuals.Update()
        end
    }):AddColorPicker(LPH_ENCSTR('AmbienceColor'), {
        Default = Color3.fromRGB(255, 255, 255),
        Transparency = nil,
        Callback = function(Value)
            WorldVisuals.Config.CustomAmbient = Value
            WorldVisuals.Update()
        end
    })

    WorldVisualsSection:AddDivider()

    WorldVisualsSection:AddToggle(LPH_ENCSTR('WorldVisualsFogEnabled'), {
        Text = LPH_ENCSTR('Fog'),
        Default = false,
        Callback = function(Value)
            WorldVisuals.Config.ChangeFog = Value
            WorldVisuals.Update()
        end
    }):AddColorPicker(LPH_ENCSTR('FogColor'), {
        Default = Color3.fromRGB(255, 255, 255),
        Title = LPH_ENCSTR('Fog Color'),
        Transparency = nil,
        Callback = function(Value)
            WorldVisuals.Config.CustomFogColor = Value
            WorldVisuals.Update()
        end
    })

    WorldVisualsSection:AddSlider(LPH_ENCSTR('WorldVisualsFogStart'), {
        Text = LPH_ENCSTR('Fog Start'),
        Default = 500,
        Min = 0,
        Max = 10000,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            WorldVisuals.Config.CustomFogStart = Value
            WorldVisuals.Update()
        end
    })

    WorldVisualsSection:AddSlider(LPH_ENCSTR('WorldVisualsFogEnd'), {
        Text = LPH_ENCSTR('Fog End'),
        Default = 5000,
        Min = 0,
        Max = 10000,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            WorldVisuals.Config.CustomFogEnd = Value
            WorldVisuals.Update()
        end
    })

    WorldVisualsSection:AddDivider()

    WorldVisualsSection:AddToggle(LPH_ENCSTR('WorldVisualsTimeEnabled'), {
        Text = LPH_ENCSTR('Time'),
        Default = false,
        Callback = function(Value)
            WorldVisuals.Config.ChangeTimeOfDay = Value
            WorldVisuals.Update()
        end
    })

    WorldVisualsSection:AddSlider(LPH_ENCSTR('WorldVisualsTime'), {
        Text = LPH_ENCSTR('Time'),
        Default = 12,
        Min = 0,
        Max = 24,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
            WorldVisuals.Config.CustomTime = Value
            WorldVisuals.Update()
        end
    })

    local CrosshairSection = Tabs.Visuals:AddRightGroupbox(LPH_ENCSTR('Crosshair'))

    CrosshairSection:AddToggle(LPH_ENCSTR('CrosshairEnabled'), {
        Text = LPH_ENCSTR('Enabled'),
        Default = false,
        Callback = function(Value)
            Crosshair.Config.Enabled = Value
        end
    }):AddColorPicker(LPH_ENCSTR('CrosshairColor'), {
        Default = Color3.fromRGB(45, 125, 254),
        Title = LPH_ENCSTR('Color'),
        Transparency = nil,
        Callback = function(Value)
            Crosshair.Config.Color = Value
        end
    })

    CrosshairSection:AddToggle(LPH_ENCSTR('MouseIconEnabled'), {
        Text = LPH_ENCSTR('Disable Cursor'),
        Default = false,
        Callback = function(Value)
            Crosshair.Config.DisableMouseIcon = Value
        end
    })

    CrosshairSection:AddToggle(LPH_ENCSTR('CrosshairCenterDotEnabled'), {
        Text = LPH_ENCSTR('Center Dot'),
        Default = false,
        Callback = function(Value)
            Crosshair.Config.CenterDot = Value
        end
    })

    CrosshairSection:AddSlider(LPH_ENCSTR('CrosshairReticleAmount'), {
        Text = LPH_ENCSTR('Reticle Amount'),
        Default = 4,
        Min = 2,
        Max = 4,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            Crosshair.Config.ReticleAmount = Value
        end
    })

    CrosshairSection:AddDivider()

    CrosshairSection:AddSlider(LPH_ENCSTR('CrosshairLength'), {
        Text = LPH_ENCSTR('Length'),
        Default = 25,
        Min = 1,
        Max = 250,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            Crosshair.Config.Length = Value
        end
    })

    CrosshairSection:AddSlider(LPH_ENCSTR('CrosshairWidth'), {
        Text = LPH_ENCSTR('Width'),
        Default = 2.5,
        Min = 1,
        Max = 10,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
            Crosshair.Config.Width = Value
        end
    })

    CrosshairSection:AddSlider(LPH_ENCSTR('CrosshairRadius'), {
        Text = LPH_ENCSTR('Radius'),
        Default = 11,
        Min = 1,
        Max = 100,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            Crosshair.Config.Radius = Value
        end
    })

    CrosshairSection:AddDivider()

    CrosshairSection:AddToggle(LPH_ENCSTR('CrosshairSpinEnabled'), {
        Text = LPH_ENCSTR('Spin'),
        Default = false,
        Callback = function(Value)
            Crosshair.Config.Spin = Value
        end
    })

    CrosshairSection:AddSlider(LPH_ENCSTR('CrosshairSpinSpeed'), {
        Text = LPH_ENCSTR('Speed'),
        Default = 15,
        Min = 1,
        Max = 100,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            Crosshair.Config.SpinSpeed = Value * 10
        end
    })

    CrosshairSection:AddSlider(LPH_ENCSTR('CrosshairResizeMinSize'), {
        Text = LPH_ENCSTR('Max Angle'),
        Default = 360,
        Min = 1,
        Max = 360,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            Crosshair.Config.SpinMax = Value
        end
    })

    CrosshairSection:AddDropdown(LPH_ENCSTR('EquippedSkin'), {
        Values = {LPH_ENCSTR("Linear"), LPH_ENCSTR("Sine"), LPH_ENCSTR("Back"), LPH_ENCSTR("Quad"), LPH_ENCSTR("Quart"), LPH_ENCSTR("Quint"), LPH_ENCSTR("Bounce"), LPH_ENCSTR("Elastic"), LPH_ENCSTR("Exponential"), LPH_ENCSTR("Circular"), LPH_ENCSTR("Cubic")},
        Multi = false,
        Text = LPH_ENCSTR('Style'),
        Default = LPH_ENCSTR("Linear"),
        Callback = function(Value)
            Crosshair.Config.SpinStyle = Enum.EasingStyle[Value]
        end
    })

    CrosshairSection:AddDivider()

    CrosshairSection:AddToggle(LPH_ENCSTR('CrosshairResizeEnabled'), {
        Text = LPH_ENCSTR('Resize'),
        Default = false,
        Callback = function(Value)
            Crosshair.Config.Resize = Value
        end
    })

    CrosshairSection:AddSlider(LPH_ENCSTR('CrosshairResizeSpeed'), {
        Text = LPH_ENCSTR('Speed'),
        Default = 15,
        Min = 1,
        Max = 100,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            Crosshair.Config.ResizeSpeed = Value * 10
        end
    })

    CrosshairSection:AddSlider(LPH_ENCSTR('CrosshairResizeMinSize'), {
        Text = LPH_ENCSTR('Min Size'),
        Default = 5,
        Min = 1,
        Max = 100,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            Crosshair.Config.ResizeMin = Value
        end
    })

    CrosshairSection:AddSlider(LPH_ENCSTR('CrosshairResizeMaxSize'), {
        Text = LPH_ENCSTR('Max Size'),
        Default = 22,
        Min = 10,
        Max = 100,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            Crosshair.Config.ResizeMax = Value
        end
    })

    local GunVisualSection = Tabs.Visuals:AddLeftGroupbox(LPH_ENCSTR('Gun'))

    GunVisualSection:AddToggle(LPH_ENCSTR('BulletTracersEnabled'), {
        Text = LPH_ENCSTR('Bullet Tracer'),
        Default = false,
        Callback = function(Value)
            BulletTracers.Config.Enabled = Value
        end
    }):AddColorPicker(LPH_ENCSTR('BulletTracersColor1'), {
        Title = LPH_ENCSTR('Color 1'),
        Default = Color3.fromRGB(255, 255, 255),
        Transparency = 0,
        Callback = function(Value, Alpha)
            BulletTracers.Config.Color1 = Value
            BulletTracers.Config.Transparency1 = Alpha
        end
    }):AddColorPicker(LPH_ENCSTR('BulletTracersColor2'), {
        Title = LPH_ENCSTR('Color 2'),
        Default = Color3.fromRGB(255, 255, 255),
        Transparency = 0,
        Callback = function(Value, Alpha)
            BulletTracers.Config.Color2 = Value
            BulletTracers.Config.Transparency2 = Alpha
        end
    })

    GunVisualSection:AddToggle(LPH_ENCSTR('BulletTracersFadeOutEnabled'), {
        Text = LPH_ENCSTR('Fade Out'),
        Default = false,
        Callback = function(Value)
            BulletTracers.Config.FadeOut = Value
        end
    })

    GunVisualSection:AddSlider(LPH_ENCSTR('BulletTracersLifetime'), {
        Text = LPH_ENCSTR('Lifetime'),
        Default = 1,
        Min = 0,
        Max = 1,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
            BulletTracers.Config.Lifetime = Value
        end
    })

    GunVisualSection:AddDivider()

    local HitSFX = {
        [LPH_ENCSTR("Bow Hit")] = LPH_ENCSTR("Project X/Bow Hit.mp3"),
        [LPH_ENCSTR("CSGO")] = LPH_ENCSTR("Project X/CSGO.mp3"),
        [LPH_ENCSTR("Neverlose")] = LPH_ENCSTR("Project X/Neverlose.mp3"),
        [LPH_ENCSTR("Rust")] = LPH_ENCSTR("Project X/Rust.mp3"),
        [LPH_ENCSTR("Default")] = LPH_ENCSTR("rbxassetid://13744350422"),
    }

    local HitSFXNames = {}

    for name in pairs(HitSFX) do
        table.insert(HitSFXNames, name)
    end

    GunVisualSection:AddDropdown(LPH_ENCSTR('GunSFXHit'), {
        Values = HitSFXNames,
        Multi = false,
        Text = LPH_ENCSTR('Hit'),
        Default = LPH_ENCSTR("Default"),
        Callback = function(selected)
            if selected == LPH_ENCSTR("Default") then
                GunSounds.Config.HitSound = LPH_ENCSTR("rbxassetid://13744350422")
            else
                local path = HitSFX[selected]

                if path and isfile(path) then
                    GunSounds.Config.HitSound = getcustomasset(path)
                end
            end

            GunSounds.ChangeHitSound()
        end
    })

    GunVisualSection:AddSlider(LPH_ENCSTR('GunSFXHitVolume'), {
        Text = LPH_ENCSTR('Volume'),
        Default = 1,
        Min = 0,
        Max = 3,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
            GunSounds.Config.HitSoundVolume = Value
            GunSounds.ChangeHitSound()
        end
    })

    GunVisualSection:AddDivider()

    local ShootSFX = {
        [LPH_ENCSTR("Bow Shoot")] = LPH_ENCSTR("Project X/Bow Shoot.mp3"),
        [LPH_ENCSTR("M4A1")] = LPH_ENCSTR("Project X/M4A1.mp3"),
        [LPH_ENCSTR("M249")] = LPH_ENCSTR("Project X/M249.mp3"),
        [LPH_ENCSTR("AK47")] = LPH_ENCSTR("Project X/AK47.mp3"),
        [LPH_ENCSTR("Default")] = LPH_ENCSTR("nil"),
    }

    local ShootSFXNames = {}

    for name in pairs(ShootSFX) do
        table.insert(ShootSFXNames, name)
    end

    GunVisualSection:AddDropdown(LPH_ENCSTR('GunSFXShoot'), {
        Values = ShootSFXNames,
        Multi = false,
        Text = LPH_ENCSTR('Shoot'),
        Default = LPH_ENCSTR("Default"),
        Callback = function(selected)
            if selected == LPH_ENCSTR("Default") then
                GunSounds.Config.ShootSound = selected
            else
                local path = ShootSFX[selected]

                if path and isfile(path) then
                    GunSounds.Config.ShootSound = getcustomasset(path)
                end
            end

            GunSounds.ChangeShootSound()
        end
    })

    GunVisualSection:AddSlider(LPH_ENCSTR('GunSFXShootVolume'), {
        Text = LPH_ENCSTR('Volume'),
        Default = 1,
        Min = 0,
        Max = 3,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
            GunSounds.Config.ShootSoundVolume = Value
            GunSounds.ChangeHitSound()
        end
    })

    GunVisualSection:AddDivider()

    GunVisualSection:AddDropdown(LPH_ENCSTR('EquippedSkinOnSkinChanger'), {
        Values = Skins,
        Multi = false,
        Text = LPH_ENCSTR('Skin'),
        Default = LPH_ENCSTR("Default"),
        Callback = function(Value)
            LocalPlayer:SetAttribute(LPH_ENCSTR("EquippedSkin"), tostring(Value))
        end
    })

    local CharacterSection = Tabs.Visuals:AddLeftGroupbox(LPH_ENCSTR('Character'))

    CharacterSection:AddToggle(LPH_ENCSTR('ChinaHatEnabled'), {
        Text = LPH_ENCSTR('China Hat'),
        Default = false,
        Callback = function(Value)
            ChinaHat.Config.Enabled = Value
        end
    }):AddColorPicker(LPH_ENCSTR('ChinaHatColor'), {
        Default = Color3.fromRGB(255, 255, 255),
        Title = LPH_ENCSTR('Color'),
        Transparency = nil,
        Callback = function(Value)
            ChinaHat.Config.Color = Value
        end
    })

    CharacterSection:AddSlider(LPH_ENCSTR('ChinaHatRadius'), {
        Text = LPH_ENCSTR('Radius'),
        Default = 1.3,
        Min = 0.1,
        Max = 2.5,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
            ChinaHat.Config.Radius = Value
        end
    })

    CharacterSection:AddSlider(LPH_ENCSTR('ChinaHatHeight'), {
        Text = LPH_ENCSTR('Height'),
        Default = 1,
        Min = 0.1,
        Max = 2.5,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
            ChinaHat.Config.Height = Value
        end
    })

    CharacterSection:AddDivider()

    CharacterSection:AddToggle(LPH_ENCSTR('CharacterMaterialEnabled'), {
        Text = LPH_ENCSTR('Material'),
        Default = false,
        Callback = function(Value)
            CharacterMaterial.Config.Enabled = Value
            CharacterMaterial.Change()
        end
    }):AddColorPicker(LPH_ENCSTR('CharacterMaterialColor'), {
        Default = Color3.fromRGB(255, 255, 255),
        Title = LPH_ENCSTR('Color'),
        Transparency = nil,
        Callback = function(Value)
            CharacterMaterial.Config.Color = Value
            CharacterMaterial.Change()
        end
    })

    local GunModsSection = Tabs.Misc:AddLeftGroupbox(LPH_ENCSTR('Gun'))

    GunModsSection:AddToggle(LPH_ENCSTR('InfiniteAmmo'), {
        Text = LPH_ENCSTR('Infinite Ammo'),
        Default = false,
        Callback = function(Value)
            GunMods.Config.InfiniteAmmo = Value
            GunMods.ApplyModule()
        end
    })

    GunModsSection:AddToggle(LPH_ENCSTR('RapidFire'), {
        Text = LPH_ENCSTR('Rapid Fire'),
        Default = false,
        Callback = function(Value)
            GunMods.Config.RapidFire = Value
            GunMods.Apply()
        end
    })

    GunModsSection:AddToggle(LPH_ENCSTR('NoCamRecoil'), {
        Text = LPH_ENCSTR('Remove Camera Recoil'),
        Default = false,
        Callback = function(Value)
            GunMods.Config.NoCamRecoil = Value
            GunMods.Apply()
        end
    })

    GunModsSection:AddToggle(LPH_ENCSTR('NoCamRecoil'), {
        Text = LPH_ENCSTR('Remove Visual Recoil'),
        Default = false,
        Callback = function(Value)
            GunMods.Config.NoGunRecoil = Value
            GunMods.Apply()
        end
    })

    local HitSection = Tabs.Misc:AddRightGroupbox(LPH_ENCSTR('Hit Notifcations'))

    HitSection:AddToggle(LPH_ENCSTR('HitNotifcationsEnabled'), {
        Text = LPH_ENCSTR('Enabled'),
        Default = false,
        Callback = function(Value)
            DamageNotifcations.Config.Enabled = Value
        end
    })

    HitSection:AddSlider(LPH_ENCSTR('HitNotifcationsLifeTime'), {
        Text = LPH_ENCSTR('Lifetime'),
        Default = 1,
        Min = 0.1,
        Max = 3,
        Rounding = 1,
        Compact = false,
        Callback = function(Value)
            DamageNotifcations.Config.Lifetime = Value
        end
    })

    Library.KeybindFrame.Visible = false

    table.insert(Connections, RenderStepped:Connect(LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function()
        ESP.Update()
        Aimbot.Update()
        ChinaHat.Update()
        SilentAim.Update()
        Crosshair.Update()
    end))))

    Library:Notify(LPH_ENCSTR("Loaded in ")..tostring(string.format("%."..tostring(3).."f", os.clock() - clock)).. LPH_ENCSTR(" seconds"), 5)
end
