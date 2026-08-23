---@meta

---@class archive
archive = {}

--- @param path string
--- @param outputPath string
function archive.compress(path, outputPath) end

--- @param archivePath string
--- @param outputPath string
function archive.extract(archivePath, outputPath) end

--- @param archivePath string
--- @param entryName string
--- @param destPath string
function archive.extractFile(archivePath, entryName, destPath) end

--- @class entry
--- @field name string
--- @field size number
--- @field is_directory boolean

--- @param archivePath string
--- @return entry[] entries
function archive.listEntries(archivePath) end

--- @param archivePath string
--- @param filePath string
--- @param entryName string
function archive.addFileToZip(archivePath, filePath, entryName) end

return archive
