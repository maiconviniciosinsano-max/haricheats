-- HARI CHEATS - Blox Fruits (OPEN SOURCE)
-- Script simples para APRENDER e EDITAR

repeat task.wait() until game:IsLoaded()

-- Serviços
local Players = game:GetService("Players")
local LP = Players.LocalPlayer

-- Notificação
pcall(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "HARI CHEATS",
        Text = "Script carregado com sucesso!",
        Duration = 5
    })
end)

-- Menu simples (teclas)
local UIS = game:GetService("UserInputService")

local SpeedOn = false

UIS.InputBegan:Connect(function(input, gp)
    if gp then return end

    -- Tecla F = Speed
    if input.KeyCode == Enum.KeyCode.F then
        SpeedOn = not SpeedOn

        if SpeedOn then
            LP.Character.Humanoid.WalkSpeed = 40
            warn("Speed ON")
        else
            LP.Character.Humanoid.WalkSpeed = 16
            warn("Speed OFF")
        end
    end
end)

-- Loop seguro
task.spawn(function()
    while task.wait(1) do
        if SpeedOn and LP.Character and LP.Character:FindFirstChild("Humanoid") then
            LP.Character.Humanoid.WalkSpeed = 40
        end
    end
end)
