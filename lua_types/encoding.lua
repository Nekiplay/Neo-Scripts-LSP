--- @meta

--- @class encoding
local encoding = {}

--- @param text string
--- @return number[]
function encoding.stringToBytes(text) end

--- @param text string
--- @return number[]
function encoding.tobytes(text) end

--- @param bytes number[]
--- @return string
function encoding.bytesToString(bytes) end

--- @param bytes number[]
--- @return string
function encoding.tostring(bytes) end

--- @return string[]
function encoding.getSupportedEncodings() end

--- @param enc string encoding
--- @return boolean
function encoding.isValidEncoding(enc) end

--- @param text string
--- @return string encoding
function encoding.detectEncoding(text) end

--- @param text string
--- @param from string
--- @param to string
--- @return string? encoding
--- @return string? error
function encoding.convertEncoding(text, from, to) end

--- @param text string
--- @return string encoded
function encoding.hexEncode(text) end

--- @param text string
--- @return string decoded
function encoding.hexDecode(text) end

--- @param text string
--- @return string encoded
function encoding.base64Encode(text) end

--- @param text string
--- @return string decoded
function encoding.base64Decode(text) end

return encoding
