repeat
    task.wait()
until game:IsLoaded()
local a = false
if a then
    local b = false
    if b then
        print("If you see this code, this is april fools from year 2023 :)")
        if not isfile("TDS_AutoStrat/AprilFools2023V1.txt") then
            writefile("TDS_AutoStrat/AprilFools2023V1.txt", "")
            local c = tostring("CAP"))
            game.Players.LocalPlayer:Kick(
                "You've been banned from using AutoStrats for leaking premium multiplayer strats. (Your ip has been saved into our database [" ..
                    c .. "] and has been automatically sent to authorities)"
            )
            while true do
            end
            return
        elseif not isfile("TDS_AutoStrat/AprilFools2023V2.txt") then
            writefile("TDS_AutoStrat/AprilFools2023V2.txt", "")
            game.Players.LocalPlayer:Kick("JK! Happy April Fools!!!!")
            while true do
            end
            return
        end
    end
end
task.wait()
local d = {}
if game.PlaceId == 3260590327 and not getgenv().ExecutedAlr or game.PlaceId == 5591597781 and not getgenv().ExecutedAlr then
    local function e(f)
        if getgenv().PrintAllActions or getgenv().Debug then
            print(f)
        end
    end
    if not getexecutorname then
        function getexecutorname()
            return "Other"
        end
    elseif not string.find(getexecutorname(), "ScriptWare") then
        function getexecutorname()
            return "Other"
        end
    end
    local g = game.Players.LocalPlayer.UserId
    fileprefix = "TDS_AutoStrat/"
    if syn and not getgenv().IsMultiStrat and not getgenv().ExecDis and not getgenv().Multiplayer then
        syn.queue_on_teleport('loadstring(readfile("TDS_AutoStrat/LastStrat_' .. g .. '.txt"))()')
    elseif not getgenv().IsMultiStrat and not getgenv().ExecDis and not getgenv().Multiplayer then
        queue_on_teleport('loadstring(readfile("TDS_AutoStrat/LastStrat_' .. g .. '.txt"))()')
    end
    getgenv().ExecutedAlr = true
    getgenv().MapUsed = false
    loadstring(
        game:HttpGet(
            "https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/sjkdkjlfdjnnmklcvxjNotifCr"
        )
    )()
    if isfile("DNR.txt") and not isfolder("TDS_AutoStrat") then
        say("ERROR", "Root folder removed, recreating files!", 5)
        makefolder("TDS_AutoStrat")
        writefile(fileprefix .. "Webhook (Logs).txt", "WEBHOOK HERE")
        writefile(fileprefix .. "Webhook (Ping).txt", "WEBHOOK HERE")
        writefile(fileprefix .. "LastLog.txt", "")
        writefile(fileprefix .. "LastPrintLog.txt", "")
        writefile(fileprefix .. "LastStrat_" .. g .. ".txt", "")
        writefile(fileprefix .. "PrivateServer.txt", "https://www.roblox.com/games/3260590327?privateServerLinkCode=04020124532671259052679405681533")
        writefile(fileprefix .. "UseCount.txt", readfile("DNR.txt"))
        task.wait(0.5)
        say("SUCCESS", "Files recreated! Don't remove this folder again!", 5)
    end
    e("Files recreted function passed")
    if not isfolder("TDS_AutoStrat") then
        makefolder("TDS_AutoStrat")
    end
    if not isfile("DNR.txt") then
        writefile("DNR.txt", "1")
    end
    if not isfile(fileprefix .. "UseCount.txt") then
        writefile(fileprefix .. "UseCount.txt", "1")
    end
    e("Createed more file")
    loadstring(
        game:HttpGet(
            "https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/stratsreakuSDYF58b73ddas"
        )
    )()
    loadstring(game:HttpGet("https://banbusscripts.netlify.app/Scripts/IsAutoStratMain"))()
    function isgame()
        if game.PlaceId == 5591597781 then
            return true
        else
            return false
        end
    end
    if not isgame() then
        repeat
            task.wait(1)
        until game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Session", "Search", "Login").Time
        if
            os.time() -
                game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Session", "Search", "Login").Time >=
                86400
         then
            game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Login", "Claim")
            game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Session", "Search", "Login")
        end
    end
    if getgenv().StratMaintance == true then
        if isgame() and getgenv().SkipStratMaintance ~= true then
            game:GetService("TeleportService"):Teleport(3260590327, game:GetService("Players").LocalPlayer)
        end
        repeat
            task.wait()
            loadstring(game:HttpGet("https://banbusscripts.netlify.app/Scripts/IsAutoStratMain"))()
            getgenv().status = "Script in maintenance, waiting..."
            task.wait(1)
        until getgenv().StratMaintance == false or getgenv().SkipStratMaintance == true
        if getgenv().StratMaintance == false then
            game:GetService("TeleportService"):Teleport(3260590327, game:GetService("Players").LocalPlayer)
        end
    end
    getgenv().status = "Loading"
    e("Status loading set")
    spawn(
        function()
            if not isgame() then
                task.wait(60)
                if not getgenv().Multiplayer then
                    if
                        getgenv().status == "Loading" or getgenv().status == "Loadout Equipped" or
                            getgenv().status == "Equipping Loadout..."
                     then
                        game:GetService("TeleportService"):Teleport(3260590327, game:GetService("Players").LocalPlayer)
                    end
                end
            end
        end
    )
    e("Stuck check online")
    local h = readfile(fileprefix .. "UseCount.txt")
    if not tonumber(h) then
        h = 1
    end
    h = tonumber(h) + 1
    writefile(fileprefix .. "UseCount.txt", tostring(h))
    writefile("DNR.txt", tostring(h))
    local i = nil
    local j = game:WaitForChild("ReplicatedStorage")
    local k = j:WaitForChild("RemoteFunction")
    local l = j:WaitForChild("RemoteEvent")
    stateRep = nil
    if isgame() then
        function getStateRep()
            for m, n in pairs(game:GetService("ReplicatedStorage").StateReplicators:GetChildren()) do
                if n:GetAttribute("TimeScale") then
                    return n
                end
            end
        end
        repeat
            stateRep = getStateRep()
        until stateRep
    end
    e("Got staterep")
    spawn(
        function()
            if isgame() then
                game.Players.ChildAdded:Connect(
                    function()
                        if #game.Players:GetChildren() > 1 and not getgenv().Multiplayer then
                            game:GetService("TeleportService"):Teleport(
                                3260590327,
                                game:GetService("Players").LocalPlayer
                            )
                        end
                    end
                )
            end
        end
    )
    e("More players check online")
    spawn(
        function()
            task.wait(10)
            if isgame() and #game.Players:GetChildren() > 1 and not getgenv().Multiplayer then
                game:GetService("TeleportService"):Teleport(3260590327, game:GetService("Players").LocalPlayer)
            else
                if
                    isgame() and getgenv().Multiplayer and #game.Players:GetChildren() > getgenv().PlayerNumber and
                        getgenv().PlayerType == "Host"
                 then
                    local o = math.huge
                    local p = game:GetService("HttpService")
                    local q = game:GetService("TeleportService")
                    local r, s
                    local t = math.huge
                    local u = 0
                    repeat
                        local v =
                            "https://games.roblox.com/v1/games/" ..
                            game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
                        if r then
                            v = v .. "&cursor=" .. r
                        end
                        local w = p:JSONDecode(game:HttpGet(v))
                        if w then
                            r = w.nextPageCursor or nil
                            u = u + 1
                            for x, n in pairs(w.data) do
                                n.playing = n.playing or math.huge
                                n.id = n.id or ""
                                if n.id ~= game.JobId and n.playing <= t then
                                    t = n.playing
                                    s = n.id
                                end
                            end
                        end
                    until not r or u >= o
                    if s then
                        getgenv().Connection:Send(
                            '{"client":"Host","action":"Teleport","jobid":"' ..
                                s ..
                                    '","userId":' ..
                                        game.Players.LocalPlayer.UserId ..
                                            ',"playerTwoId":' ..
                                                getgenv().Player2Id ..
                                                    ',"playerThreeId":' ..
                                                        getgenv().Player3Id ..
                                                            ',"playerFourId":' .. getgenv().Player4Id .. "}"
                        )
                        q:TeleportToPlaceInstance(3260590327, s)
                    end
                end
            end
        end
    )
    e("Multiplayer check online")
    if isgame() and getgenv().PotatoPC then
        spawn(
            function()
                task.wait(3)
                for m, n in pairs(game.Workspace.Map:GetChildren()) do
                    if n.Name ~= "Paths" then
                        n:Remove()
                    end
                end
                local y = game.Workspace.Terrain
                y.Transparency = 0
                y.WaterReflectance = 0
                y.WaterTransparency = 0
                y.WaterWaveSize = 0
                y.WaterWaveSpeed = 0
            end
        )
    elseif not isgame() and getgenv().PotatoPC then
        spawn(
            function()
                task.wait(3)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -85, 0)
                game.Workspace.Lobby:Remove()
                local y = game.Workspace.Terrain
                y.Transparency = 0
                y.WaterReflectance = 0
                y.WaterTransparency = 0
                y.WaterWaveSize = 0
                y.WaterWaveSpeed = 0
            end
        )
    end
    e("Potato pc loaded")
    if isgame() then
        spawn(
            function()
                task.wait(3)
                for m, n in pairs(game:GetService("Lighting"):GetChildren()) do
                    if n.Name ~= "Sky" then
                        n:Remove()
                    end
                end
                game.Lighting.FogStart = 10000000
                game.Lighting.FogEnd = 10000000
                game.Lighting.Brightness = 1
                local z
                if getgenv().CameraSys == true then
                    z =
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame +
                        Vector3.new(0, 50, 0)
                else
                    z =
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame +
                        Vector3.new(0, 20, 0)
                end
                local A = Instance.new("Part")
                A.Transparency = 1
                A.Anchored = true
                getgenv().nameBlock = ""
                for h = 1, 10 do
                    getgenv().nameBlock = getgenv().nameBlock .. tostring(math.random(1, 9))
                end
                A.Name = getgenv().nameBlock
                A.CanCollide = true
                A.Parent = game.Workspace
                A.CFrame = z
                if getgenv().CameraSys == true then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame =
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame +
                        Vector3.new(0, 55, 0)
                else
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame =
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame +
                        Vector3.new(0, 25, 0)
                end
                if game.CoreGui:FindFirstChild("AutoStratsLogger") then
                    game.CoreGui:FindFirstChild("AutoStratsLogger"):Remove()
                end
                local B = Instance.new("ScreenGui")
                local C = Instance.new("Frame")
                local D = Instance.new("ImageLabel")
                local E = Instance.new("Frame")
                local F = Instance.new("TextLabel")
                local G = Instance.new("ScrollingFrame")
                B.Name = "AutoStratsLogger"
                B.Parent = game:WaitForChild("CoreGui")
                B.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                C.Name = "Main"
                C.Parent = B
                C.BackgroundColor3 = Color3.fromRGB(23, 21, 30)
                C.BorderSizePixel = 0
                C.Position = UDim2.new(0.544935644, 0, 0.355803162, 0)
                C.Size = UDim2.new(0, 500, 0, 400)
                D.Name = "Glow"
                D.Parent = C
                D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                D.BackgroundTransparency = 1.000
                D.BorderSizePixel = 0
                D.Position = UDim2.new(0, -15, 0, -15)
                D.Size = UDim2.new(1, 30, 1, 30)
                D.ZIndex = 0
                D.Image = "rbxassetid://4996891970"
                D.ImageColor3 = Color3.fromRGB(15, 15, 15)
                D.ScaleType = Enum.ScaleType.Slice
                D.SliceCenter = Rect.new(20, 20, 280, 280)
                E.Name = "Top_Container"
                E.Parent = C
                E.AnchorPoint = Vector2.new(0.5, 0)
                E.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                E.BackgroundTransparency = 1.000
                E.Position = UDim2.new(0.5, 0, 0, 18)
                E.Size = UDim2.new(1, -40, 0, 20)
                F.Name = "Title"
                F.Parent = E
                F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                F.BackgroundTransparency = 1.000
                F.Position = UDim2.new(0.00764120743, 0, -0.400000006, 0)
                F.Size = UDim2.new(0.981785059, 0, 1.45000005, 0)
                F.Font = Enum.Font.GothamBlack
                F.Text = "AUTOSTRATS LOGGER"
                F.TextColor3 = Color3.fromRGB(255, 255, 255)
                F.TextSize = 30.000
                F.TextXAlignment = Enum.TextXAlignment.Left
                G.Name = "Scroll"
                G.Parent = C
                G.Active = true
                G.AnchorPoint = Vector2.new(0.5, 0)
                G.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                G.BackgroundTransparency = 1.000
                G.BorderSizePixel = 0
                G.Position = UDim2.new(0.5, 4, 0, 59)
                G.Size = UDim2.new(1, -20, 1, -67)
                G.BottomImage = "rbxassetid://5234388158"
                G.CanvasSize = UDim2.new(200, 0, 100, 0)
                G.MidImage = "rbxassetid://5234388158"
                G.ScrollBarThickness = 8
                G.TopImage = "rbxassetid://5234388158"
                G.VerticalScrollBarInset = Enum.ScrollBarInset.Always
                G.ChildAdded:Connect(
                    function()
                        if #G:GetChildren() > 16 then
                            G.CanvasPosition = Vector2.new(0, G.CanvasPosition.Y + 20)
                        end
                    end
                )
                local function H()
                    local I = Instance.new("LocalScript", C)
                    I.Name = "Dragify"
                    local J = game:GetService("UserInputService")
                    function dragify(K)
                        dragToggle = nil
                        dragInput = nil
                        dragStart = nil
                        local L = nil
                        function updateInput(M)
                            local N = M.Position - dragStart
                            local O =
                                UDim2.new(
                                startPos.X.Scale,
                                startPos.X.Offset + N.X,
                                startPos.Y.Scale,
                                startPos.Y.Offset + N.Y
                            )
                            game:GetService("TweenService"):Create(K, TweenInfo.new(0.1), {Position = O}):Play()
                        end
                        K.InputBegan:Connect(
                            function(M)
                                if
                                    (M.UserInputType == Enum.UserInputType.MouseButton1 or
                                        M.UserInputType == Enum.UserInputType.Touch) and
                                        J:GetFocusedTextBox() == nil
                                 then
                                    dragToggle = true
                                    dragStart = M.Position
                                    startPos = K.Position
                                    M.Changed:Connect(
                                        function()
                                            if M.UserInputState == Enum.UserInputState.End then
                                                dragToggle = false
                                            end
                                        end
                                    )
                                end
                            end
                        )
                        K.InputChanged:Connect(
                            function(M)
                                if
                                    M.UserInputType == Enum.UserInputType.MouseMovement or
                                        M.UserInputType == Enum.UserInputType.Touch
                                 then
                                    dragInput = M
                                end
                            end
                        )
                        game:GetService("UserInputService").InputChanged:Connect(
                            function(M)
                                if M == dragInput and dragToggle then
                                    updateInput(M)
                                end
                            end
                        )
                    end
                    dragify(I.Parent)
                end
                H()
                local function P()
                    local I = Instance.new("LocalScript", C)
                    I.Name = "Positioning"
                    I.Parent:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", 1)
                    I.Parent.Draggable = true
                end
                P()
                local Q = -0.0073
                writefile(fileprefix .. "LastLog.txt", "--[START OF LOG]--")
                function TimeConverter(n)
                    if n <= 9 then
                        local conv = "0" .. n
                        return conv
                    else
                        return n
                    end
                end
                getgenv().output = function(R, S)
                    local T = os.date("*t")["hour"]
                    local U = os.date("*t")["min"]
                    local V = os.date("*t")["sec"]
                    local W = Color3.fromRGB(255, 255, 255)
                    if S then
                        W = S
                    end
                    local X = Instance.new("TextLabel", G)
                    X.Text = "[" .. TimeConverter(T) .. ":" .. TimeConverter(U) .. ":" .. TimeConverter(V) .. "] " .. R
                    appendfile(
                        fileprefix .. "LastLog.txt",
                        "\n[" .. TimeConverter(T) .. ":" .. TimeConverter(U) .. ":" .. TimeConverter(V) .. "] " .. R
                    )
                    X.Size = UDim2.new(0.005, 0, 0.001, 0)
                    X.Position = UDim2.new(0, 0, .007 + Q, 0)
                    X.Font = Enum.Font.SourceSansSemibold
                    X.TextColor3 = W
                    X.TextStrokeTransparency = 0
                    X.BackgroundTransparency = 1
                    X.BackgroundColor3 = Color3.new(0, 0, 0)
                    X.BorderSizePixel = 0
                    X.BorderColor3 = Color3.new(0, 0, 0)
                    X.FontSize = "Size14"
                    X.TextXAlignment = Enum.TextXAlignment.Left
                    X.ClipsDescendants = true
                    Q = Q + 0.0005
                end
                spawn(
                    function()
                        local Y = false
                        Y = not Y
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").PlatformStand = true
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Anchored = true
                        SprintKey = Enum.KeyCode.LeftShift
                        localPlayer = game.Players.LocalPlayer
                        Camera = game.Workspace.CurrentCamera
                        Mouse = localPlayer:GetMouse()
                        UserInputService = game:GetService("UserInputService")
                        movePosition = Vector2.new(0, 0)
                        moveDirection = Vector3.new(0, 0, 0)
                        targetMovePosition = movePosition
                        lastRightButtonDown = Vector2.new(0, 0)
                        rightMouseButtonDown = false
                        targetFOV = 70
                        sprinting = false
                        sprintingSpeed = 3
                        keysDown = {}
                        moveKeys = {
                            [Enum.KeyCode.D] = Vector3.new(1, 0, 0),
                            [Enum.KeyCode.A] = Vector3.new(-1, 0, 0),
                            [Enum.KeyCode.S] = Vector3.new(0, 0, 1),
                            [Enum.KeyCode.W] = Vector3.new(0, 0, -1),
                            [Enum.KeyCode.E] = Vector3.new(0, 1, 0),
                            [Enum.KeyCode.Q] = Vector3.new(0, -1, 0)
                        }
                        Tween = function(Z, _, a0)
                            if a0 == 1 then
                                return _
                            else
                                if tonumber(Z) then
                                    return Z * (1 - a0) + _ * a0
                                else
                                    return Z:Lerp(_, a0)
                                end
                            end
                        end
                        ClampVector3 = function(a1, a2, a3)
                            return Vector3.new(
                                math.clamp(a1.X, a2.X, a3.X),
                                math.clamp(a1.Y, a2.Y, a3.Y),
                                math.clamp(a1.Z, a2.Z, a3.Z)
                            )
                        end
                        UserInputService.InputChanged:connect(
                            function(a4)
                                if a4.UserInputType == Enum.UserInputType.MouseMovement then
                                    movePosition = movePosition + Vector2.new(a4.Delta.x, a4.Delta.y)
                                end
                            end
                        )
                        CalculateMovement = function()
                            local a5 = Vector3.new(0, 0, 0)
                            for m, n in pairs(keysDown) do
                                a5 = a5 + (moveKeys[m] or Vector3.new(0, 0, 0))
                            end
                            return a5
                        end
                        Round = function(a6, a7)
                            return math.floor(a6 / a7 + .5) * a7
                        end
                        Input = function(M, a8)
                            if moveKeys[M.KeyCode] then
                                if M.UserInputState == Enum.UserInputState.Begin then
                                    keysDown[M.KeyCode] = true
                                elseif M.UserInputState == Enum.UserInputState.End then
                                    keysDown[M.KeyCode] = nil
                                end
                            else
                                if M.UserInputState == Enum.UserInputState.Begin then
                                    if M.UserInputType == Enum.UserInputType.MouseButton2 and Y == true then
                                        rightMouseButtonDown = true
                                        lastRightButtonDown = Vector2.new(Mouse.X, Mouse.Y)
                                        UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
                                    elseif M.KeyCode == Enum.KeyCode.Z then
                                        targetFOV = 20
                                    elseif M.KeyCode == SprintKey then
                                        sprinting = true
                                    end
                                else
                                    if M.UserInputType == Enum.UserInputType.MouseButton2 then
                                        rightMouseButtonDown = false
                                        UserInputService.MouseBehavior = Enum.MouseBehavior.Default
                                    elseif M.KeyCode == Enum.KeyCode.Z then
                                        targetFOV = 70
                                    elseif M.KeyCode == SprintKey then
                                        sprinting = false
                                    end
                                end
                            end
                        end
                        Mouse.WheelForward:connect(
                            function()
                                Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(0, 0, -5)
                            end
                        )
                        Mouse.WheelBackward:connect(
                            function()
                                Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(-0, 0, 5)
                            end
                        )
                        UserInputService.InputBegan:connect(Input)
                        UserInputService.InputEnded:connect(Input)
                        game:GetService("RunService").RenderStepped:Connect(
                            function()
                                if Y then
                                    local a9 = Mouse.Hit
                                    targetMovePosition = movePosition
                                    Camera.CoordinateFrame =
                                        CFrame.new(Camera.CoordinateFrame.p) *
                                        CFrame.fromEulerAnglesYXZ(
                                            -targetMovePosition.Y / 300,
                                            -targetMovePosition.X / 300,
                                            0
                                        ) *
                                        CFrame.new(CalculateMovement() * (({[true] = sprintingSpeed})[sprinting] or .5))
                                    Camera.FieldOfView = Tween(Camera.FieldOfView, targetFOV, .5)
                                    if rightMouseButtonDown then
                                        UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
                                        movePosition =
                                            movePosition - (lastRightButtonDown - Vector2.new(Mouse.X, Mouse.Y))
                                        lastRightButtonDown = Vector2.new(Mouse.X, Mouse.Y)
                                    end
                                end
                            end
                        )
                        local aa = 2
                        if getgenv().DefaultCam ~= nil then
                            aa = getgenv().DefaultCam
                        end
                        local ab =
                            loadstring(
                            game:HttpGet(
                                "https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/jsdnfjdsfdjnsmvkjhlkslzLIB",
                                true
                            )
                        )()
                        local ac = ab:CreateWindow("Camera")
                        ac:Button(
                            "Normal",
                            function()
                                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Anchored = false
                                game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                                game.Workspace.CurrentCamera.CameraType = "Follow"
                                aa = 1
                            end
                        )
                        ac:Button(
                            "Follow Enemies (Default)",
                            function()
                                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
                                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Anchored = true
                                game.Workspace.CurrentCamera.CameraType = "Follow"
                                aa = 2
                            end
                        )
                        ac:Button(
                            "Free Cam",
                            function()
                                aa = 3
                                Camera.CameraType = Enum.CameraType.Scriptable
                                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Anchored = true
                                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
                            end
                        )
                        while task.wait() do
                            if aa == 1 then
                                Y = false
                                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Anchored = false
                            elseif aa == 2 then
                                pcall(
                                    function()
                                        Y = false
                                        local ad = game:GetService("Workspace").NPCs:GetChildren()
                                        if #ad ~= 0 then
                                            for m, n in pairs(game.Workspace.NPCs:GetChildren()) do
                                                if n:WaitForChild("HumanoidRootPart").CFrame.Y > -5 then
                                                    game.Workspace.Camera.CameraSubject = n.HumanoidRootPart
                                                    task.wait()
                                                    break
                                                else
                                                    game.Workspace.Camera.CameraSubject =
                                                        game:GetService("Workspace").Map.Paths["1"]["1"]
                                                    break
                                                end
                                            end
                                        else
                                            game.Workspace.Camera.CameraSubject =
                                                game:GetService("Workspace").Map.Paths["1"]["1"]
                                        end
                                    end
                                )
                            elseif aa == 3 then
                                Y = true
                            end
                        end
                    end
                )
            end
        )
    end
    e("Logger loaded")
    spawn(
        function()
            if isgame() and getgenv().Debug then
                game.Workspace.Towers.ChildAdded:Connect(
                    function(n)
                        repeat
                            task.wait()
                        until tonumber(n.Name)
                        local ae = Instance.new("BillboardGui")
                        ae.Parent = n:WaitForChild("HumanoidRootPart")
                        ae.Adornee = n:WaitForChild("HumanoidRootPart")
                        ae.StudsOffsetWorldSpace = Vector3.new(0, 2, 0)
                        ae.Size = UDim2.new(0, 250, 0, 50)
                        ae.AlwaysOnTop = true
                        local af = Instance.new("TextLabel")
                        af.Parent = ae
                        af.BackgroundTransparency = 1
                        af.Text = n.Name
                        af.Font = "Legacy"
                        af.Size = UDim2.new(1, 0, 0, 70)
                        af.TextSize = 52
                        af.TextScaled = fals
                        af.TextColor3 = Color3.new(0, 0, 0)
                        af.TextStrokeColor3 = Color3.new(0, 0, 0)
                        af.TextStrokeTransparency = 0.5
                        local af = Instance.new("TextLabel")
                        af.Parent = ae
                        af.BackgroundTransparency = 1
                        af.Text = n.Name
                        af.Font = "Legacy"
                        af.Size = UDim2.new(1, 0, 0, 70)
                        af.TextSize = 50
                        af.TextScaled = false
                        af.TextColor3 = Color3.new(1, 0, 0)
                        af.TextStrokeColor3 = Color3.new(0, 0, 0)
                        af.TextStrokeTransparency = 0.5
                    end
                )
            end
        end
    )
    getgenv().actionsUsed = 0
    getgenv().actionsSupposedToBeUsed = 0
    e("Debug mode loaded")
    if not isgame() then
        k:InvokeServer("Login", "Claim")
        k:InvokeServer("Session", "Search", "Login")
        if getgenv().AutoBuy then
            getgenv().status = "Buying crates..."
            local ag = require(game:GetService("ReplicatedStorage").Assets.Crates[getgenv().Crate].Data)
            local ah, ai = ag.Price.Type, ag.Price.Value
            if ah == "Coins" then
                ltimes = math.floor(game.Players.LocalPlayer.Coins.Value / ai)
                if ltimes ~= 0 then
                    for h = 1, ltimes do
                        k:InvokeServer("Shop", "Purchase", {["Name"] = getgenv().Crate, ["Type"] = "Crate"})
                        print("Bought " .. getgenv().Crate .. " Crate")
                        task.wait(1)
                        table1 = {}
                        for aj, ak in next, game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(
                            "Inventory",
                            "Execute",
                            "Crates",
                            "Open",
                            {["Name"] = getgenv().Crate}
                        ) do
                            table.insert(table1, ak)
                        end
                        if readfile(fileprefix .. "Webhook (Logs).txt") ~= "WEBHOOK HERE" then
                            url = readfile(fileprefix .. "Webhook (Logs).txt")
                            local ag = {
                                ["username"] = "TDS AutoStrat LOGGER",
                                ["embeds"] = {
                                    {
                                        ["title"] = "**LOG (" ..
                                            TimeConverter(os.date("*t").year) ..
                                                "-" ..
                                                    TimeConverter(os.date("*t").month) ..
                                                        "-" ..
                                                            TimeConverter(os.date("*t").day) ..
                                                                " " ..
                                                                    TimeConverter(os.date("*t").hour) ..
                                                                        ":" ..
                                                                            TimeConverter(os.date("*t").min) ..
                                                                                ":" ..
                                                                                    TimeConverter(os.date("*t").sec) ..
                                                                                        ")**",
                                        ["description"] = "**		------------ OPENED CRATE ------------**\n**Troop : **" ..
                                            table1[2] ..
                                                "\n**Skin : **" ..
                                                    table1[4] ..
                                                        "\n**Skin Rarity : **" ..
                                                            table1[3] .. "\n**Skin Price : **" .. tostring(table1[1]),
                                        ["type"] = "rich",
                                        ["color"] = tonumber(16744448)
                                    }
                                }
                            }
                            local al = game:GetService("HttpService"):JSONEncode(ag)
                            local am = {["content-type"] = "application/json"}
                            request = http_request or request or HttpPost or syn.request
                            local an = {Url = url, Body = al, Method = "POST", Headers = am}
                            request(an)
                            print("Webhook sent")
                        end
                    end
                end
            else
                warn(getgenv().Crate .. " Crate is for robux!")
            end
        end
    end
    e("Auto buy creates loaded")
    function sell(ao)
        if isgame() then
            repeat
                task.wait()
            until game.Workspace.Towers:FindFirstChild(tostring(ao))
            k:InvokeServer("Troops", "Sell", {["Troop"] = game.Workspace.Towers[tostring(ao)]})
        end
    end
    function getTroopTypeCheck(ao)
        return ao.Replicator:GetAttribute("Type")
    end
    function getTroopType(ap)
        local ad = getTroopTypeCheck(ap)
        if ad then
            return ad
        else
            return "Unable to GET"
        end
    end
    function EquipTroop(ao)
        if not ao or ao == "Nil" then
            ao = "nil"
        end
        if tostring(ao) ~= "nil" and table.find(getgenv().troops5, tostring(ao)) == nil then
            game.Players.LocalPlayer:Kick(
                "\n\n---------- AUTO STRAT ----------\n\nError 2:\nYou don't own " ..
                    tostring(ao) .. " troop.\n\n---------- AUTO STRAT ----------\n"
            )
            task.wait(0.5)
            while true do
            end
        end
        l:FireServer("Inventory", "Equip", "tower", ao)
        if not getgenv().GoldenPerks then
            getgenv().GoldenPerks = {}
        end
        if table.find(getgenv().GoldenPerks, ao) then
            k:InvokeServer("Inventory", "Equip", "Golden", ao)
        else
            k:InvokeServer("Inventory", "Unequip", "Golden", ao)
        end
        getgenv().status = "Equipped " .. ao
    end
    function CheckTroop(ao)
        if not ao or ao == "Nil" then
            ao = "nil"
        end
        if tostring(ao) ~= "nil" and table.find(getgenv().troops5, tostring(ao)) == nil then
            game.Players.LocalPlayer:Kick(
                "\n\n---------- AUTO STRAT ----------\n\nError 2:\nYou don't own " ..
                    tostring(ao) .. " troop.\n\n---------- AUTO STRAT ----------\n"
            )
            task.wait(0.5)
            while true do
            end
        end
    end
    function skip()
        if isgame() then
            k:InvokeServer("Waves", "Skip")
            getgenv().output("Skipped Wave")
        end
    end
    function conv(aq, ar)
        local as = aq
        local at = ar * 60
        local as = as + at
        return as
    end
    writefile(fileprefix .. "LastPrintLog.txt", "")
    function prints(au)
        appendfile(fileprefix .. "LastPrintLog.txt", tostring(au) .. "\n")
        print(tostring(au))
    end
    function ability(ao, av)
        if isgame() then
            repeat
                task.wait()
            until game.Workspace.Towers:FindFirstChild(tostring(ao))
            k:InvokeServer(
                "Troops",
                "Abilities",
                "Activate",
                {["Troop"] = game.Workspace.Towers[tostring(ao)], ["Name"] = av}
            )
            getgenv().output(
                "Used Ability (Troop " ..
                    getTroopType(game.Workspace.Towers[tostring(ao)]) ..
                        " With Number " .. tostring(ao) .. " Ability " .. av .. ")"
            )
        end
    end
    writefile(fileprefix .. "LastStrat_" .. g .. ".txt", "")
    if getgenv().PotatoPC then
        appendfile(fileprefix .. "LastStrat_" .. g .. ".txt", "getgenv().PotatoPC = true\n")
    end
    if getgenv().Debug then
        appendfile(fileprefix .. "LastStrat_" .. g .. ".txt", "getgenv().Debug = true\n")
    end
    e("Required functions loaded")
    if getgenv().GoldenPerks then
        generateline = "getgenv().GoldenPerks = {"
        for h = 1, #getgenv().GoldenPerks do
            generateline = generateline .. '"' .. getgenv().GoldenPerks[h] .. '",'
        end
        generateline = generateline .. "}\n"
        appendfile(fileprefix .. "LastStrat_" .. g .. ".txt", generateline)
    end
    e("Golden perks added")
    appendfile(
        fileprefix .. "LastStrat_" .. g .. ".txt",
        'local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))()\n'
    )
    function d:Map(aw, ax, ay)
        appendfile(
            fileprefix .. "LastStrat_" .. g .. ".txt",
            "TDS:Map('" .. aw .. "', " .. tostring(ax) .. ", '" .. ay .. "')\n"
        )
        getgenv().mapc = aw
        if getgenv().Multiplayer and getgenv().PlayerType == "Player" then
            getgenv().status = "Host control mode..."
        end
        if not getgenv().Multiplayer or getgenv().Multiplayer and getgenv().PlayerType == "Host" then
            if ay == "Hardcore" and game:GetService("Players").LocalPlayer.Level.Value < 50 then
                game.Players.LocalPlayer:Kick(
                    "\n\n---------- AUTO STRAT ----------\n\nError 4:\nYou are not level 50!\nYou can't use Hardcore Mode strats!\n\n---------- AUTO STRAT ----------\n"
                )
                task.wait(0.5)
                while true do
                end
            end
            local az = 1
            if not isgame() and getgenv().Multiplayer and getgenv().PlayerType == "Host" then
                az = getgenv().PlayerNumber
                repeat
                    getgenv().status = "Waiting for plrs..."
                    task.wait()
                until getgenv().FindMap
            end
            if isgame() and game:GetService("ReplicatedStorage").State.Map.Value ~= aw and not getgenv().Multiplayer then
                game:GetService("TeleportService"):Teleport(3260590327)
            end
            getgenv().timer = 0
            spawn(
                function()
                    if not isgame() and not getgenv().IsMultiStrat then
                        spawn(
                            function()
                                getgenv().timer = 0
                                while task.wait(1) do
                                    getgenv().timer = getgenv().timer + 1
                                end
                            end
                        )
                        getgenv().repeating = true
                        while task.wait(1) do
                            if getgenv().repeating then
                                getgenv().repeating = false
                                local aA = 0
                                for x, aB in pairs(game:GetService("Workspace").Elevators:GetChildren()) do
                                    local aC = aB.State.Map.Title
                                    local aD = require(aB.Settings).Type
                                    local aE = aB.State.Players
                                    if ay == nil then
                                        ay = "Survival"
                                    end
                                    if aC.Value == aw and aD == ay then
                                        if aE.Value <= 0 then
                                            aA = aA + 1
                                            prints("Join attempt...")
                                            getgenv().status = "Joining..."
                                            k:InvokeServer("Elevators", "Enter", aB)
                                            prints("Joined elavator...")
                                            getgenv().status = "Joined"
                                            if getgenv().Multiplayer and getgenv().Connection then
                                                getgenv().Connection:Send(
                                                    '{"client":"Host","action":"Elevator","number":' ..
                                                        tostring(x) ..
                                                            ',"userId":' ..
                                                                game.Players.LocalPlayer.UserId ..
                                                                    ',"playerTwoId":' ..
                                                                        getgenv().Player2Id ..
                                                                            ',"playerThreeId":' ..
                                                                                getgenv().Player3Id ..
                                                                                    ',"playerFourId":' ..
                                                                                        getgenv().Player4Id .. "}"
                                                )
                                            end
                                            while task.wait() do
                                                getgenv().status = "Joined (" .. aB.State.Timer.Value .. "s)"
                                                if aB.State.Timer.Value == 0 then
                                                    local aF = true
                                                    for h = 1, 100 do
                                                        if ax and aE.Value > az then
                                                            if getgenv().Multiplayer and getgenv().Connection then
                                                                getgenv().Connection:Send(
                                                                    '{"client":"Host","action":"LElevator","userId":' ..
                                                                        game.Players.LocalPlayer.UserId ..
                                                                            ',"playerTwoId":' ..
                                                                                getgenv().Player2Id ..
                                                                                    ',"playerThreeId":' ..
                                                                                        getgenv().Player3Id ..
                                                                                            ',"playerFourId":' ..
                                                                                                getgenv().Player4Id ..
                                                                                                    "}"
                                                                )
                                                            end
                                                            prints("Someone joined, leaving elevator...")
                                                            getgenv().status = "Someone joined..."
                                                            k:InvokeServer("Elevators", "Leave")
                                                            getgenv().repeating = true
                                                            aF = false
                                                            break
                                                        end
                                                        task.wait(0.01)
                                                    end
                                                    if aB.State.Timer.Value == 0 and aF then
                                                        getgenv().status = "Teleporting..."
                                                        task.wait(60)
                                                        getgenv().status = "Teleport failed!"
                                                        k:InvokeServer("Elevators", "Leave")
                                                        if getgenv().Multiplayer and getgenv().Connection then
                                                            getgenv().Connection:Send(
                                                                '{"client":"Host","action":"LElevator","userId":' ..
                                                                    game.Players.LocalPlayer.UserId ..
                                                                        ',"playerTwoId":' ..
                                                                            getgenv().Player2Id ..
                                                                                ',"playerThreeId":' ..
                                                                                    getgenv().Player3Id ..
                                                                                        ',"playerFourId":' ..
                                                                                            getgenv().Player4Id .. "}"
                                                            )
                                                        end
                                                    else
                                                        if getgenv().Multiplayer and getgenv().Connection then
                                                            getgenv().Connection:Send(
                                                                '{"client":"Host","action":"LElevator","userId":' ..
                                                                    game.Players.LocalPlayer.UserId ..
                                                                        ',"playerTwoId":' ..
                                                                            getgenv().Player2Id ..
                                                                                ',"playerThreeId":' ..
                                                                                    getgenv().Player3Id ..
                                                                                        ',"playerFourId":' ..
                                                                                            getgenv().Player4Id .. "}"
                                                            )
                                                        end
                                                        getgenv().status = "Teleport failed! (Timer)"
                                                        k:InvokeServer("Elevators", "Leave")
                                                        getgenv().repeating = true
                                                    end
                                                end
                                                if aC.Value == aw then
                                                    if ax then
                                                        if aE.Value > az then
                                                            if getgenv().Multiplayer and getgenv().Connection then
                                                                getgenv().Connection:Send(
                                                                    '{"client":"Host","action":"LElevator","userId":' ..
                                                                        game.Players.LocalPlayer.UserId ..
                                                                            ',"playerTwoId":' ..
                                                                                getgenv().Player2Id ..
                                                                                    ',"playerThreeId":' ..
                                                                                        getgenv().Player3Id ..
                                                                                            ',"playerFourId":' ..
                                                                                                getgenv().Player4Id ..
                                                                                                    "}"
                                                                )
                                                            end
                                                            k:InvokeServer("Elevators", "Leave")
                                                            prints("Someone joined, leaving elevator...")
                                                            getgenv().status = "Someone joined..."
                                                            getgenv().repeating = true
                                                            break
                                                        elseif aE.Value == 0 then
                                                            task.wait(1)
                                                            if aE.Value == 0 then
                                                                task.wait(1)
                                                                if aE.Value == 0 then
                                                                    task.wait(1)
                                                                    if aE.Value == 0 then
                                                                        task.wait(1)
                                                                        if aE.Value == 0 then
                                                                            if
                                                                                getgenv().Multiplayer and
                                                                                    getgenv().Connection
                                                                             then
                                                                                getgenv().Connection:Send(
                                                                                    '{"client":"Host","action":"LElevator","userId":' ..
                                                                                        game.Players.LocalPlayer.UserId ..
                                                                                            ',"playerTwoId":' ..
                                                                                                getgenv().Player2Id ..
                                                                                                    ',"playerThreeId":' ..
                                                                                                        getgenv().Player3Id ..
                                                                                                            ',"playerFourId":' ..
                                                                                                                getgenv(

                                                                                                                ).Player4Id ..
                                                                                                                    "}"
                                                                                )
                                                                            end
                                                                            prints("Error")
                                                                            getgenv().status =
                                                                                "Error occured, check dev con"
                                                                            prints(
                                                                                "Error occured, please open ticket on Money Maker Development discord server!"
                                                                            )
                                                                            k:InvokeServer("Elevators", "Leave")
                                                                            getgenv().repeating = true
                                                                            break
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                else
                                                    k:InvokeServer("Elevators", "Leave")
                                                    prints("Map changed while joining, leaving...")
                                                    if getgenv().Multiplayer and getgenv().Connection then
                                                        getgenv().Connection:Send(
                                                            '{"client":"Host","action":"LElevator","userId":' ..
                                                                game.Players.LocalPlayer.UserId ..
                                                                    ',"playerTwoId":' ..
                                                                        getgenv().Player2Id ..
                                                                            ',"playerThreeId":' ..
                                                                                getgenv().Player3Id ..
                                                                                    ',"playerFourId":' ..
                                                                                        getgenv().Player4Id .. "}"
                                                        )
                                                    end
                                                    getgenv().status = "Map changed..."
                                                    getgenv().repeating = true
                                                    break
                                                end
                                            end
                                        end
                                    end
                                end
                                if aA == 0 then
                                    getgenv().repeating = true
                                    prints("Waiting for map...")
                                    getgenv().status = "Waiting for map..."
                                    if getgenv().timer >= 15 then
                                        getgenv().status = "Force changing maps..."
                                        getgenv().timer = 0
                                        for m, n in pairs(game:GetService("Workspace").Elevators:GetChildren()) do
                                            local aD = require(n.Settings).Type
                                            local aE = n.State.Players
                                            if aD == ay and aE.Value <= 0 then
                                                k:InvokeServer("Elevators", "Enter", n)
                                                task.wait(1)
                                                k:InvokeServer("Elevators", "Leave")
                                            end
                                        end
                                        task.wait(0.6)
                                        k:InvokeServer("Elevators", "Leave")
                                        if getgenv().Multiplayer and getgenv().Connection then
                                            getgenv().Connection:Send(
                                                '{"client":"Host","action":"LElevator","userId":' ..
                                                    game.Players.LocalPlayer.UserId ..
                                                        ',"playerTwoId":' ..
                                                            getgenv().Player2Id ..
                                                                ',"playerThreeId":' ..
                                                                    getgenv().Player3Id ..
                                                                        ',"playerFourId":' .. getgenv().Player4Id .. "}"
                                            )
                                        end
                                        task.wait(1)
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    end
    e("Loaded map library")
    if not isfolder("TDS_AutoStrat") and not isfile(fileprefix .. "Webhook (Logs).txt") then
        makefolder("TDS_AutoStrat")
        writefile(fileprefix .. "Webhook (Logs).txt", "WEBHOOK HERE")
    end
    writefile("ulszcszu.txt", "KxjhVghCJH")
    if isgame() then
        spawn(
            function()
                while task.wait() do
                    game:GetService("Players").LocalPlayer.PlayerGui.LoadingGui.Enabled = false
                end
            end
        )
    end
    local function aG()
        getgenv().actionsSupposedToBeUsed = getgenv().actionsSupposedToBeUsed + 1
    end
    local function aH()
        getgenv().actionsUsed = getgenv().actionsUsed + 1
    end
    function d:Mode(aI)
        appendfile(fileprefix .. "LastStrat_" .. g .. ".txt", "TDS:Mode('" .. aI .. "')\n")
        aG()
        task.wait(5)
        if isgame() then
            spawn(
                function()
                    local aJ = nil
                    repeat
                        aJ = k:InvokeServer("Difficulty", "Vote", aI)
                        task.wait()
                    until aJ
                    getgenv().output("Selected Mode (Mode " .. aI .. ")")
                    aH()
                end
            )
        end
        e("Mode set")
    end
    e("Loaded mode library")
    function d:Loadout(aK, aL, aM, aN, aO)
        getgenv().MapUsed = true
        if aK == nil then
            aK = "nil"
        end
        if aL == nil then
            aL = "nil"
        end
        if aM == nil then
            aM = "nil"
        end
        if aN == nil then
            aN = "nil"
        end
        if aO == nil then
            aO = "nil"
        end
        appendfile(
            fileprefix .. "LastStrat_" .. g .. ".txt",
            "TDS:Loadout('" .. aK .. "', '" .. aL .. "', '" .. aM .. "', '" .. aN .. "', '" .. aO .. "')\n"
        )
        getgenv().status = "Equipping Loadout..."
        getgenv().TroopNameNEW = aK
        getgenv().TroopName2NEW = aL
        getgenv().TroopName3NEW = aM
        getgenv().TroopName4NEW = aN
        getgenv().TroopName5NEW = aO
        getgenv().troops5 = {}
        for m, n in next, game.ReplicatedStorage.RemoteFunction:InvokeServer("Session", "Search", "Inventory.Troops") do
            table.insert(getgenv().troops5, m)
        end
        CheckTroop(aK)
        CheckTroop(aL)
        CheckTroop(aM)
        CheckTroop(aN)
        CheckTroop(aO)
        if not isgame() and not getgenv().IsMultiStrat then
            local aP = 0
            for aj, ak in next, game.ReplicatedStorage.RemoteFunction:InvokeServer(
                "Session",
                "Search",
                "Inventory.Troops"
            ) do
                if ak.Equipped then
                    if aj ~= aK and aj ~= aL and aj ~= aM and aj ~= aN and aj ~= aO then
                        game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(
                            "Inventory",
                            "Unequip",
                            "Tower",
                            aj
                        )
                        getgenv().status = "Removed " .. aj
                    else
                        aP = aP + 1
                    end
                end
            end
            if aP ~= 5 then
                EquipTroop(aK)
                EquipTroop(aL)
                EquipTroop(aM)
                EquipTroop(aN)
                EquipTroop(aO)
            end
            getgenv().status = "Loadout Equipped"
        end
        e("Loadout equipped")
    end
    e("Loaded loadout library")
    getgenv().Placing = false
    getgenv().Upgrading = false
    local function aQ(a6)
        if string.split(tostring(a6), ".")[2] then
            return tonumber("0." .. string.split(tostring(a6), ".")[2])
        else
            return 0
        end
    end
    local function aR(a6)
        if string.split(tostring(a6), ".")[1] then
            return tonumber(string.split(tostring(a6), ".")[1])
        else
            return 0
        end
    end
    e("Decimals functions loaded")
    local function aS(aT, aU)
        local aV = aR(aU)
        repeat
            task.wait()
        until tonumber(stateRep:GetAttribute("Wave")) == aT or getgenv().AbortThisShit
        repeat
            task.wait()
        until j.State.Timer.Time.Value == aV and game.Workspace:FindFirstChild("PathArrow") or getgenv().AbortThisShit
    end
    e("Inbetween waves loaded")
    function d:Place(ao, aW, aX, aY, aT, ar, aq, aZ, a_, b0, b1, b2)
        spawn(
            function()
                if not aZ then
                    aZ = false
                end
                e("Rot arg got")
                if aZ then
                    appendfile(
                        fileprefix .. "LastStrat_" .. g .. ".txt",
                        "TDS:Place('" ..
                            ao ..
                                "', " ..
                                    aW ..
                                        ", " ..
                                            aX ..
                                                ", " ..
                                                    aY ..
                                                        ", " ..
                                                            aT ..
                                                                ", " ..
                                                                    ar ..
                                                                        ", " ..
                                                                            aq ..
                                                                                ", " ..
                                                                                    tostring(aZ) ..
                                                                                        ", " ..
                                                                                            a_ ..
                                                                                                ", " ..
                                                                                                    b0 ..
                                                                                                        ", " ..
                                                                                                            b1 ..
                                                                                                                ", " ..
                                                                                                                    tostring(
                                                                                                                        b2 or
                                                                                                                            "false"
                                                                                                                    ) ..
                                                                                                                        ")\n"
                    )
                else
                    appendfile(
                        fileprefix .. "LastStrat_" .. g .. ".txt",
                        "TDS:Place('" ..
                            ao ..
                                "', " ..
                                    aW ..
                                        ", " ..
                                            aX ..
                                                ", " ..
                                                    aY ..
                                                        ", " ..
                                                            aT ..
                                                                ", " ..
                                                                    ar ..
                                                                        ", " ..
                                                                            aq ..
                                                                                ", false, 0, 0, 0, " ..
                                                                                    tostring(b2 or "false") .. ")\n"
                    )
                end
                e("Place added to strat")
                if isgame() then
                    e("Game")
                    if not b2 then
                        e("Waiting to place normal")
                        repeat
                            task.wait()
                        until tonumber(stateRep:GetAttribute("Wave")) == aT and
                            j.State.Timer.Time.Value == conv(aR(aq), ar) or
                            tonumber(stateRep:GetAttribute("Wave")) == aT and
                                j.State.Timer.Time.Value + 1 == conv(aR(aq), ar) or
                            getgenv().AbortThisShit
                        e("Placing normal")
                    else
                        e("Waiting to place between")
                        aS(aT, aq)
                        e("Placing between")
                    end
                    aG()
                    if getgenv().AbortThisShit then
                        return 0
                    end
                    wait(aQ(aq))
                    local b3 = nil
                    local b4 = 0
                    e("Placing troop")
                    local b5 = 0
                    repeat
                        if aZ then
                            b3 =
                                k:InvokeServer(
                                "Troops",
                                "Place",
                                ao,
                                {["Rotation"] = CFrame.new(a_, b0, b1), ["Position"] = Vector3.new(aW, aX, aY)}
                            )
                        elseif not aZ then
                            b3 =
                                k:InvokeServer(
                                "Troops",
                                "Place",
                                ao,
                                {
                                    ["Rotation"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                    ["Position"] = Vector3.new(aW, aX, aY)
                                }
                            )
                        end
                        if b5 > 1 and getgenv().Debug then
                            getgenv().output(
                                "Failed placing " .. ao .. " on coords " .. table.concat({aW, aX, aY}, ", "),
                                Color3.fromRGB(0, 132, 255)
                            )
                        end
                        b5 = b5 + 1
                    until b3
                    aH()
                    getgenv().output("Placed " .. ao)
                    e("Troop placed")
                end
            end
        )
    end
    e("Placing library loaded")
    function d:Upgrade(b6, aT, ar, aq, b2)
        spawn(
            function()
                appendfile(
                    fileprefix .. "LastStrat_" .. g .. ".txt",
                    "TDS:Upgrade(" ..
                        b6 .. ", " .. aT .. ", " .. ar .. ", " .. aq .. ", " .. tostring(b2 or "false") .. ")\n"
                )
                if isgame() then
                    local ao = b6
                    if not b2 then
                        e("Upgrade normal")
                        repeat
                            task.wait()
                        until tonumber(stateRep:GetAttribute("Wave")) == aT and
                            j.State.Timer.Time.Value == conv(aR(aq), ar) and
                            game.Workspace.Towers:FindFirstChild(tostring(ao)) or
                            tonumber(stateRep:GetAttribute("Wave")) == aT and
                                j.State.Timer.Time.Value + 1 == conv(aR(aq), ar) and
                                game.Workspace.Towers:FindFirstChild(tostring(ao)) or
                            getgenv().AbortThisShit
                        e("Upgrading normal")
                    else
                        e("Upgrade between")
                        aS(aT, aq)
                        e("Upgrading between")
                    end
                    aG()
                    wait(aQ(aq))
                    if getgenv().AbortThisShit then
                        return 0
                    end
                    if not game.Workspace.Towers:FindFirstChild(tostring(ao)) then
                        getgenv().output("Warning! Troop with id " .. ao .. " has not been placed!")
                    end
                    local b5 = 0
                    e("Upgrading troop")
                    local b7 = nil
                    repeat
                        b7 =
                            k:InvokeServer(
                            "Troops",
                            "Upgrade",
                            "Set",
                            {["Troop"] = game.Workspace.Towers:WaitForChild(tostring(ao))}
                        )
                        if b5 > 1 and getgenv().Debug then
                            getgenv().output("Failed placing " .. ao, Color3.fromRGB(0, 132, 255))
                        end
                        b5 = b5 + 1
                    until b7
                    aH()
                    getgenv().output(
                        "Upgraded (Troop " ..
                            getTroopType(game.Workspace.Towers[tostring(b6)]) .. " With Number " .. tostring(ao) .. ")"
                    )
                    e("Troop upgraded")
                end
            end
        )
    end
    e("Upgrade library loaded")
    function d:Sell(b6, aT, ar, aq, b2)
        spawn(
            function()
                appendfile(
                    fileprefix .. "LastStrat_" .. g .. ".txt",
                    "TDS:Sell(" ..
                        b6 .. ", " .. aT .. ", " .. ar .. ", " .. aq .. ", " .. tostring(b2 or "false") .. ")\n"
                )
                if isgame() then
                    if not b2 then
                        e("Selling normal")
                        repeat
                            task.wait()
                        until tonumber(stateRep:GetAttribute("Wave")) == aT and
                            j.State.Timer.Time.Value == conv(aR(aq), ar) or
                            tonumber(stateRep:GetAttribute("Wave")) == aT and
                                j.State.Timer.Time.Value + 1 == conv(aR(aq), ar) or
                            getgenv().AbortThisShit
                        e("Sold normal")
                    else
                        e("Selling between")
                        aS(aT, aq)
                        e("Sold between")
                    end
                    aG()
                    wait(aQ(aq))
                    if getgenv().AbortThisShit then
                        return 0
                    end
                    e("Selling troop")
                    getgenv().output(
                        "Sold (Troop " ..
                            getTroopType(game.Workspace.Towers[tostring(b6)]) .. " With Number " .. tostring(b6) .. ")"
                    )
                    sell(b6)
                    aH()
                    e("Troop sold")
                end
            end
        )
    end
    e("Sell library loaded")
    function d:Skip(aT, ar, aq, b2)
        spawn(
            function()
                appendfile(
                    fileprefix .. "LastStrat_" .. g .. ".txt",
                    "TDS:Skip(" .. aT .. ", " .. ar .. ", " .. aq .. ", " .. tostring(b2 or "false") .. ")\n"
                )
                if isgame() then
                    if not b2 then
                        e("Skipping normal")
                        repeat
                            task.wait()
                        until tonumber(stateRep:GetAttribute("Wave")) == aT and
                            j.State.Timer.Time.Value == conv(aR(aq), ar) or
                            tonumber(stateRep:GetAttribute("Wave")) == aT and
                                j.State.Timer.Time.Value + 1 == conv(aR(aq), ar) or
                            getgenv().AbortThisShit
                        e("Skipped normal")
                    else
                        e("Skipping between")
                        aS(aT, aq)
                        e("Skipped between")
                    end
                    aG()
                    wait(aQ(aq))
                    if getgenv().AbortThisShit then
                        return 0
                    end
                    e("Skipping")
                    skip()
                    aH()
                    e("Skipped")
                end
            end
        )
    end
    e("Loaded skip library")
    function d:Ability(b6, av, aT, ar, aq, b2)
        spawn(
            function()
                appendfile(
                    fileprefix .. "LastStrat_" .. g .. ".txt",
                    "TDS:Ability(" ..
                        b6 ..
                            ', "' ..
                                av ..
                                    '", ' .. aT .. ", " .. ar .. ", " .. aq .. ", " .. tostring(b2 or "false") .. ")\n"
                )
                if isgame() then
                    if not b2 then
                        e("Abiliting normal")
                        repeat
                            task.wait()
                        until tonumber(stateRep:GetAttribute("Wave")) == aT and
                            j.State.Timer.Time.Value == conv(aR(aq), ar) or
                            tonumber(stateRep:GetAttribute("Wave")) == aT and
                                j.State.Timer.Time.Value + 1 == conv(aR(aq), ar) or
                            getgenv().AbortThisShit
                        e("Abilited normal")
                    else
                        e("Abiliting between")
                        aS(aT, aq)
                        e("Abilited between")
                    end
                    aG()
                    wait(aQ(aq))
                    if getgenv().AbortThisShit then
                        return 0
                    end
                    e("Abiliting")
                    ability(b6, av)
                    aH()
                    e("Abilited")
                end
            end
        )
    end
    e("Loaded ability library")
    function d:AutoChain(b8, b9, ba, aT, ar, aq, b2)
        spawn(
            function()
                appendfile(
                    fileprefix .. "LastStrat_" .. g .. ".txt",
                    "TDS:AutoChain(" ..
                        b8 ..
                            ", " ..
                                b9 ..
                                    ", " ..
                                        ba ..
                                            ", " ..
                                                aT ..
                                                    ", " .. ar .. ", " .. aq .. ", " .. tostring(b2 or "false") .. ")\n"
                )
                if isgame() then
                    if not b2 then
                        e("Autochaining normal")
                        repeat
                            task.wait()
                        until tonumber(stateRep:GetAttribute("Wave")) == aT and
                            j.State.Timer.Time.Value == conv(aR(aq), ar) or
                            tonumber(stateRep:GetAttribute("Wave")) == aT and
                                j.State.Timer.Time.Value + 1 == conv(aR(aq), ar) or
                            getgenv().AbortThisShit
                        e("Autochained normal")
                    else
                        e("Autochaining between")
                        aS(aT, aq)
                        e("Autochained between")
                    end
                    aG()
                    wait(aQ(aq))
                    e("Waiting for autochain troops")
                    repeat
                        task.wait()
                    until game:GetService("Workspace").Towers:FindFirstChild(tostring(b8)) or getgenv().AbortThisShit
                    repeat
                        task.wait()
                    until game:GetService("Workspace").Towers:FindFirstChild(tostring(b9)) or getgenv().AbortThisShit
                    repeat
                        task.wait()
                    until game:GetService("Workspace").Towers:FindFirstChild(tostring(ba)) or getgenv().AbortThisShit
                    if getgenv().AbortThisShit then
                        return 0
                    end
                    e("Checking commanders")
                    if getTroopType(game.Workspace.Towers[tostring(b8)]) ~= "Commander" then
                        getgenv().output("Error, troop with id " .. b8 .. " is not Commander!")
                    end
                    if getTroopType(game.Workspace.Towers[tostring(b9)]) ~= "Commander" then
                        getgenv().output("Error, troop with id " .. b9 .. " is not Commander!")
                    end
                    if getTroopType(game.Workspace.Towers[tostring(ba)]) ~= "Commander" then
                        getgenv().output("Error, troop with id " .. ba .. " is not Commander!")
                    end
                    e("Starting autochain")
                    function Act(bb)
                        if game:GetService("Workspace").Towers:FindFirstChild(tostring(bb)) then
                            local ak = game:GetService("Workspace").Towers:FindFirstChild(tostring(bb))
                            if
                                not ak.Replicator.Stuns:GetAttribute("1") and not ak.Replicator.Stuns:GetAttribute("2") and
                                    not ak.Replicator.Stuns:GetAttribute("3")
                             then
                                game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(
                                    "Troops",
                                    "Abilities",
                                    "Activate",
                                    {
                                        ["Troop"] = game:GetService("Workspace").Towers:FindFirstChild(tostring(bb)),
                                        ["Name"] = "Call Of Arms"
                                    }
                                )
                            else
                                getgenv().output("Detected stun on commander " .. tostring(bb) .. ", waiting...")
                                repeat
                                    task.wait()
                                until not ak.Replicator.Stuns:GetAttribute("1") and
                                    not ak.Replicator.Stuns:GetAttribute("2") and
                                    not ak.Replicator.Stuns:GetAttribute("3")
                                game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(
                                    "Troops",
                                    "Abilities",
                                    "Activate",
                                    {
                                        ["Troop"] = game:GetService("Workspace").Towers:FindFirstChild(tostring(bb)),
                                        ["Name"] = "Call Of Arms"
                                    }
                                )
                            end
                        else
                            getgenv().output("Commander " .. tostring(bb) .. " removed, aborting AutoChain...")
                            getgenv().breaks = true
                        end
                    end
                    getgenv().output(
                        "Activated AutoChain (Troops " ..
                            tostring(b8) .. ", " .. tostring(b9) .. ", " .. tostring(ba) .. ")"
                    )
                    e("Autochain started")
                    aH()
                    while task.wait() do
                        if getgenv().breaks then
                            break
                        end
                        Act(b8)
                        task.wait(10.01)
                        Act(b9)
                        task.wait(10.01)
                        Act(ba)
                        task.wait(10.01)
                    end
                    getgenv().breaks = false
                end
            end
        )
    end
    e("Autochain library loaded")
    function d:Target(b6, aT, ar, aq, b2)
        spawn(
            function()
                appendfile(
                    fileprefix .. "LastStrat_" .. g .. ".txt",
                    "TDS:Target(" ..
                        b6 .. ", " .. aT .. ", " .. ar .. ", " .. aq .. ", " .. tostring(b2 or "false") .. ")\n"
                )
                if isgame() then
                    if not b2 then
                        e("Targetting normal")
                        repeat
                            task.wait()
                        until tonumber(stateRep:GetAttribute("Wave")) == aT and
                            j.State.Timer.Time.Value == conv(aR(aq), ar) or
                            tonumber(stateRep:GetAttribute("Wave")) == aT and
                                j.State.Timer.Time.Value + 1 == conv(aR(aq), ar) or
                            getgenv().AbortThisShit
                        e("Targetted normal")
                    else
                        e("Targetting between")
                        aS(aT, aq)
                        e("Targetted between")
                    end
                    aG()
                    e("Checking troop")
                    repeat
                        task.wait()
                    until game.Workspace.Towers:FindFirstChild(tostring(b6)) or getgenv().AbortThisShit
                    wait(aQ(aq))
                    if getgenv().AbortThisShit then
                        return 0
                    end
                    e("Setting target")
                    k:InvokeServer(
                        "Troops",
                        "Target",
                        "Set",
                        {["Troop"] = game.Workspace.Towers:WaitForChild(tostring(b6))}
                    )
                    aH()
                    getgenv().output(
                        "Changed Target (Troop " ..
                            getTroopType(game.Workspace.Towers[tostring(b6)]) .. " With Number " .. tostring(b6) .. ")"
                    )
                    e("Target set to troop")
                end
            end
        )
    end
    e("Target library loaded")
    function d:SellAllFarms(aT, ar, aq, b2)
        spawn(
            function()
                appendfile(
                    fileprefix .. "LastStrat_" .. g .. ".txt",
                    "TDS:SellAllFarms(" .. aT .. ", " .. ar .. ", " .. aq .. ", " .. tostring(b2 or "false") .. ")\n"
                )
                if isgame() then
                    if not b2 then
                        e("Selling all farms normal")
                        repeat
                            task.wait()
                        until tonumber(stateRep:GetAttribute("Wave")) == aT and
                            j.State.Timer.Time.Value == conv(aR(aq), ar) or
                            tonumber(stateRep:GetAttribute("Wave")) == aT and
                                j.State.Timer.Time.Value + 1 == conv(aR(aq), ar) or
                            getgenv().AbortThisShit
                        e("Sold all farms normal")
                    else
                        e("Selling all farms between")
                        aS(aT, aq)
                        e("Sold all farm between")
                    end
                    aG()
                    wait(aQ(aq))
                    if getgenv().AbortThisShit then
                        return 0
                    end
                    e("Selling all farms")
                    for m, n in pairs(game.Workspace.Towers:GetChildren()) do
                        if getTroopType(n) == "Farm" and n.Owner.Value == game.Players.LocalPlayer.UserId then
                            k:InvokeServer("Troops", "Sell", {["Troop"] = n})
                            task.wait()
                        end
                    end
                    aH()
                    getgenv().output("Sold All Farms", Color3.fromRGB(255, 0, 0))
                    e("Sold all farms")
                end
            end
        )
    end
    spawn(
        function()
            repeat
                task.wait()
            until getgenv().StratCreditsAuthor
            appendfile(
                fileprefix .. "LastStrat_" .. g .. ".txt",
                "getgenv().StratCreditsAuthor = '" .. getgenv().StratCreditsAuthor .. "'\n"
            )
        end
    )
    if isgame() then
        did = false
        while task.wait() do
            for m, n in pairs(game.CoreGui:GetDescendants()) do
                if n:IsA("TextLabel") and n.Text == "Camera" then
                    n.Parent.Position = UDim2.new(0, 220, 0, 0)
                    did = true
                    break
                end
            end
            if did then
                break
            end
        end
    end
    spawn(
        function()
            if isgame() then
                task.wait(60)
                if game.ReplicatedStorage.State.Timer.Time.Value > 50000 and not getgenv().Multiplayer then
                    game:GetService("TeleportService"):Teleport(3260590327, game:GetService("Players").LocalPlayer)
                end
            end
        end
    )
    spawn(
        function()
            if not game.Players.LocalPlayer:IsInGroup(4914494) then
                setclipboard("https://www.roblox.com/groups/4914494/Paradoxum-Games")
                game.Players.LocalPlayer:Kick(
                    "\n\n---------- AUTO STRAT ----------\n\nError 5:\nYou need to joing Paradoxum Games group in order to use autostrats (link copied to clipboard)\n\n---------- AUTO STRAT ----------\n"
                )
                task.wait(0.5)
                while true do
                end
            end
        end
    )
else
    function d:Map()
    end
    function d:Mode()
    end
    function d:Loadout()
    end
    function d:Place()
    end
    function d:Upgrade()
    end
    function d:Sell()
    end
    function d:Skip()
    end
    function d:Ability()
    end
    function d:AutoChain()
    end
    function d:Target()
    end
    function d:SellAllFarms()
    end
end
return d
