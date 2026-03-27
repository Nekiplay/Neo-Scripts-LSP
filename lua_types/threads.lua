---@meta

---@class threads
threads = {}

--- Runs a function in a thread
--- @param callback fun() The function that will be called in the thread
--- @return number Thread id
function threads.startThread(callback) end

--- Call to wait for the thread to complete
--- @param id number Thread id
function threads.joinThread(id) end

--- Checks if the thread is running
--- @param id number Thread id
function threads.isAlive(id) end

--- Stops the thread
--- @param id number Thread id
function threads.stopThread(id) end

return threads
