---@meta

---@class luajava
---@field bindClass fun(className: string): any
---@field loadClass fun(className: string): any
---@field newInstance fun(className: string, ...: any): any
---@field new fun(className: string, ...: any): any
---@field createProxy fun(interfaceName: string, luaTable: table): any

---Вызов статического метода Java класса
---@param className string Имя класса (например, "com.mojang.blaze3d.vertex.PoseStack")
---@param methodName string Имя метода
---@param ... any Аргументы метода
---@return any Результат вызова
function luajava.callStatic(className, methodName, ...) end

---Создание нового экземпляра Java класса
---@param className string Имя класса
---@param ... any Аргументы конструктора
---@return any Экземпляр класса
function luajava.newInstance(className, ...) end

---Получение статического поля класса
---@param className string Имя класса
---@param fieldName string Имя поля
---@return any Значение поля
function luajava.getStaticField(className, fieldName) end

---Создание Java объекта из Lua таблицы (прокси)
---@param interfaceName string Имя интерфейса
---@param luaTable table Lua таблица с методами
---@return any Java прокси объект
function luajava.createProxy(interfaceName, luaTable) end

-- Примеры использования:
--[[
    -- bindClass - получить доступ к Java классу
    local PoseStack = luajava.bindClass("com.mojang.blaze3d.vertex.PoseStack")
    local poseStack = PoseStack()

    -- Вызов метода объекта
    poseStack:translate(x, y, z)
    poseStack:scale(x, y, z)
    poseStack:last()

    -- newInstance - создание нового объекта
    local ItemStack = luajava.bindClass("net.minecraft.world.item.ItemStack")
    local itemStack = ItemStack.new()

    -- Работа с полями
    local Minecraft = luajava.bindClass("net.minecraft.client.Minecraft")
    local mc = Minecraft:getInstance()

    -- Создание прокси для интерфейса (колбэки)
    local keyHandler = {
        onKeyDown = function(self, keyCode, scanCode)
            print("Key pressed: " .. keyCode)
        end
    }
    local proxy = luajava.createProxy("net.minecraft.client.KeyboardListener", keyHandler)

    -- Вызов статических методов
    local Vec3 = luajava.bindClass("net.minecraft.world.phys.Vec3")
    local origin = Vec3:atCenterOf(blockPos)
]]

luajava = luajava or {}
