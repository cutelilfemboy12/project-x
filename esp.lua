function LPH_NO_VIRTUALIZE(f)
    return f
end;

function LPH_JIT_MAX(f) return
    f
end;

function LPH_ENCSTR(str)
    return str
end;

local CoreGui = game:GetService(LPH_ENCSTR("CoreGui"))
local Players = game:GetService(LPH_ENCSTR("Players"))
local RunService = game:GetService(LPH_ENCSTR("RunService"))
local HttpService = game:GetService(LPH_ENCSTR("HttpService"))
local TweenService = game:GetService(LPH_ENCSTR("TweenService"))

local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local RenderStepped = RunService.RenderStepped

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

getgenv().ESP = {
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

getgenv().GlobalFont = LPH_ENCSTR("ProggyClean.font")
local ESP = getgenv().ESP

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
    ChamsHighlight.OutlineTransparency = Options and Options.ESPHighlightOutlineColor and Options.ESPHighlightOutlineColor.Transparency or ESP.Config.ChamsOutlineTransparency

    ChamsHighlight.FillColor = ESP.Config.ChamsFillColor
    ChamsHighlight.FillTransparency = Options and Options.ESPHighlightFillColor and Options.ESPHighlightFillColor.Transparency or ESP.Config.ChamsFillTransparency
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

table.insert(Connections, RenderStepped:Connect(LPH_JIT_MAX(LPH_NO_VIRTUALIZE(function()
    ESP.Update()
end))))
