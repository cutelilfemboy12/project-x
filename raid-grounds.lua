loadstring([[
    function LPH_NO_VIRTUALIZE(f) return f end;
    function LPH_JIT_MAX(f) return f end;
    function LPH_ENCSTR(str) return str end;
]])();

if game.PlaceId == 18208629822 then
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

    local Camera = workspace.CurrentCamera
    local LocalPlayer = Players.LocalPlayer
    local RenderStepped = RunService.RenderStepped

    local Modules = ReplicatedFirst.Modules
    local Remotes = ReplicatedStorage.Remotes

    local FastCastHandler = Modules.Client.FastCast.FastCastHandler
    local OriginalFire = clonefunction(require(FastCastHandler).Fire)

    local OriginalhandleDamage = nil
    local DamageRemote = Remotes.ACS.Damage

    local Whitelist = {}
    local Connections = {}

    local senv = getsenv(FastCastHandler)

    for _, obj in pairs(getgc()) do
        if type(obj) == LPH_ENCSTR("function") then
            local fenv = getfenv(obj)
            if rawequal(fenv, senv) then
                local info = getinfo(obj)

                if info.name == LPH_ENCSTR("handleDamage") then
                    OriginalhandleDamage = obj
                end
            end
        end
    end

    local Ragebot = {
        Config = {
            Ragebot = false,
            auto_capture = false
        }
    }

    Ragebot.GetClosestPlayer = LPH_JIT_MAX(function()
        if not Ragebot.Config.Ragebot then
            return nil
        end

        local valid_players = {}

        for _, player in next, Players:GetPlayers() do
            if player ~= LocalPlayer and not table.find(Whitelist, player) then
                local character = player.Character
                if character and character:FindFirstChild("Head") then
                    table.insert(valid_players, player)
                end
            end
        end

        if #valid_players > 0 then
            return valid_players[math.random(1, #valid_players)]
        end

        return nil
    end)

    Ragebot.Update = LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function()
        if Ragebot.Config.Ragebot then
            ReplicatedStorage.Assets.Sounds.BodyHit.SoundId = "rbxassetid://0"

            local player = Ragebot.GetClosestPlayer()

            if player.Character then
                local FakeRayInfo = {
                    Instance = player.Character.Head,
                    Position = player.Character.Head.Position,
                    Normal = Vector3.new(0, 1, 0),
                    Material = Enum.Material.Plastic
                }

                OriginalhandleDamage(player.Character.Humanoid, FakeRayInfo)
            end
        else
            ReplicatedStorage.Assets.Sounds.BodyHit.SoundId = "rbxassetid://705502934"
        end
    end))

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
                Library:Notify("Hit "..args[1].Parent.Name.." in the "..tostring(args[3]), DamageNotifcations.Config.Lifetime)
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

    local function IsInRadius(position, radius)
        local MousePosition = UserInputService:GetMouseLocation()
        return (position - MousePosition).Magnitude <= radius
    end

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
        local parts = Camera:GetPartsObscuringTarget({PartPosition}, {LocalPlayer.Character, Part, workspace.Vehicles})
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

    require(FastCastHandler).Fire = LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function(_, p35, p36, p37, p38, p39, p40, p41)
        if SilentAim.Config.enabled and SilentAim.Aiming then
            local ClosestHitpart = SilentAim.GetClosestHitpart()
            local Chance = SilentAim.CalculateChance(SilentAim.Config.hitchance)

            if ClosestHitpart then
                if Chance then
                    if SilentAim.Config.bullet_teleport then
                        p35.CFrame = CFrame.new(ClosestHitpart.Position + Vector3.new(0, 8, 0))
                    end

                    local direction = (ClosestHitpart.Position - p35.Position).Unit
                    p36 = CFrame.lookAt(p35.Position, p35.Position + direction)
                end
            end
        end

        return OriginalFire(_, p35, p36, p37, p38, p39, p40, p41)
    end))

    local SilentAimSection = Tabs.Legit:AddLeftGroupbox(LPH_ENCSTR('Silent Aim'))

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

    SilentAimSection:AddToggle(LPH_ENCSTR('SilentAimBulletTeleportEnabled'), {
        Text = LPH_ENCSTR('Bullet Teleport'),
        Default = false,
        Callback = function(Value)
            SilentAim.Config.bullet_teleport = Value
        end
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

    local HitSection = Tabs.Misc:AddLeftGroupbox(LPH_ENCSTR('Indicators'))

    HitSection:AddToggle(LPH_ENCSTR('HitNotifcationsEnabled'), {
        Text = LPH_ENCSTR('Damage Notification'),
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

    table.insert(Connections, RenderStepped:Connect(LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function()
        ESP.Update()
        SilentAim.Update()
        Ragebot.Update()
    end))))

    Library.KeybindFrame.Visible = true

    Library:Notify(LPH_ENCSTR("Loaded in ")..tostring(string.format("%."..tostring(3).."f", os.clock() - clock)).. LPH_ENCSTR(" seconds"), 5)
end
