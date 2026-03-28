--- @meta

--- @alias SupportedEncoding
--- | '"UTF-8"'
--- | '"UTF-16"'
--- | '"UTF-16BE"'
--- | '"UTF-16LE"'
--- | '"UTF-32"'
--- | '"UTF-32BE"'
--- | '"UTF-32LE"'
--- | '"ASCII"'
--- | '"ISO-8859-1"'
--- | '"CP1251"'
--- | '"CP1252"'
--- | '"KOI8-R"'
--- | '"KOI8-U"'
--- | '"WINDOWS-1251"'


--- @class encoding
local encoding = {}

--- @param text string
--- @return number[]
function encoding.stringToBytes(text) end

--- @param text string
--- @return number[]
function encoding.tobytes(text) end

--- @param bytes number[]
--- @param enc SupportedEncoding encoding
--- @param startIndex number?
--- @param length  number?
--- @return string
function encoding.bytesToString(bytes, enc, startIndex, length) end

--- @param bytes number[]
--- @param enc SupportedEncoding encoding
--- @param startIndex number?
--- @param length  number?
--- @return string
function encoding.tostring(bytes, enc, startIndex, length) end

--- @return SupportedEncoding[]
function encoding.getSupportedEncodings() end

--- @param enc SupportedEncoding encoding
--- @return boolean
function encoding.isValidEncoding(enc) end

--- @param text string
--- @return SupportedEncoding encoding
function encoding.detectEncoding(text) end

--- @param text string
--- @param from SupportedEncoding
--- @param to SupportedEncoding
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
