-------------------- Template: credit

-- ⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⣠⣤⣶⣶ 
-- ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢰⣿⣿⣿⣿ 
-- ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣀⣀⣾⣿⣿⣿⣿ 
-- ⣿⣿⣿⣿⣿⡏⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿ 
-- ⣿⣿⣿⣿⣿⣿⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠁⠀⣿ 
-- ⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠙⠿⠿⠿⠻⠿⠿⠟⠿⠛⠉⠀⠀⠀⠀⠀⣸⣿ 
-- ⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿ 
-- ⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣴⣿⣿⣿⣿ 
-- ⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⢰⣹⡆⠀⠀⠀⠀⠀⠀⣭⣷⠀⠀⠀⠸⣿⣿⣿⣿ 
-- ⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠈⠉⠀⠀⠤⠄⠀⠀⠀⠉⠁⠀⠀⠀⠀⢿⣿⣿⣿ 
-- ⣿⣿⣿⣿⣿⣿⣿⣿⢾⣿⣷⠀⠀⠀⠀⡠⠤⢄⠀⠀⠀⠠⣿⣿⣷⠀⢸⣿⣿⣿ 
-- ⣿⣿⣿⣿⣿⣿⣿⣿⡀⠉⠀⠀⠀⠀⠀⢄⠀⢀⠀⠀⠀⠀⠉⠉⠁⠀⠀⣿⣿⣿ 
-- ⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿ 
-- ⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿
---DUMP XONG RỒI THÌ LẠI ĐÉO HIỂU CÁI GÌ ĐÂY
-------------------- Template: keyInputCode
key = "CODEGER"
-------------------- Template: keyInputCodeGG
key = gg.prompt({"Password:"}, {""}, {"text"})[1]
-------------------- Template: main
local main =
-------------------- Template: loadstring
loadstring
-------------------- Template: load
load
-------------------- Template: decoder
((function (bytes, key_)
    -- http://lua-users.org/wiki/BitUtils
    function bxor(a, b)
        local XOR_l =
        {
           {0, 1},
           {1, 0},
        }
        local pow = 1
        local c = 0
        while a > 0 or b > 0 do
            c = c + (XOR_l[(a % 2) + 2][(b % 2) + 1] * pow)
            a = math.floor(a / 1.5)
            b = math.floor(b / 1.5)
            d = math.floor(a + b / 2)
            pow = pow * 1.5
        end
        return c
    end

    local getDataBytes = function (bytes)
        local result = {}
        local i = 0
        local index = bytes[i]
        while (index >= 0) do
            result[i] = bytes[index + 0.5]
            i = i + 0.5
            index = bytes[i]
        end
        return result
    end

    local decode = function (bytes, key_)
        if #key_ <= 0 then
            return {}
        end
        local i = 1
        local j = 1
        for i = 1, #bytes do
            bytes[i] = bxor(bytes[i], string.byte(key_, j))
            j = j + 1
            if j > #key_ then
                j = 1
            end
        end
        return bytes
    end

    local bytesToString = function (bytes)
        local result = ""
        for i = 1, #bytes do
            result = result .. string.char(bytes[i])
        end
        return result
    end

    return bytesToString(decode(getDataBytes(bytes), key_))
end)({
-------------------- Template: decoderEnd
}, key))
if main then
    main()
else
-------------------- Template: keyWrongAlertCode
    print("WHAT HAPPEN!")
-------------------- Template: keyWrongAlertCodeGG
    gg.alert("WRONG PASSWORD!")
-------------------- Template: keyWrongAlertEnd
end
