---@meta

---@class threads
threads = {}

--- Runs a function in a thread
--- @param callback fun() The function that will be called in the thread
--- @return number threadId Thread id
function threads.startThread(callback) end

--- Call to wait for the thread to complete
--- @param threadId number Thread id
function threads.joinThread(threadId) end

--- Checks if the thread is running
--- @param threadId number Thread id
function threads.isAlive(threadId) end

--- Stops the thread
--- @param threadId number Thread id
function threads.stopThread(threadId) end

--- Stops the thread
--- @param threadId number Thread id
function threads.interruptThread(threadId) end

--- Stops the thread
--- @param delay number Delay in (ms)
function threads.sleep(delay) end

return threads
