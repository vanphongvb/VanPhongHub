
function CAC(a, b, c)
  set = {} Z = {} V = {} R = {}
  Hex = hex2tbl(c)
  for i = 1, #Hex do
    V[i] = tonumber(Hex[i], 16)
    if V[i] > 127 then V[i] = V[i] - 256
    end
  end
  if OFF[b] == nil then
    for i = 1, #Hex do
      Z[i] = {
        ['address'] = lib[a] + b + i - 1,
        ['flags'] = gg.TYPE_BYTE
      }
    end
    OFF[b] = gg.getValues(Z)
  end
  for i = 1, #Hex do
    R[i] = {
      ['address'] = lib[a] + b + i - 1,
      ['flags'] = gg.TYPE_BYTE
    }
  end
  R = gg.getValues(R)
  if R[1].value == V[1] and R[3].value == V[3] then
    gg.setValues(OFF[b])
   else
    for i = 1, #Hex do
      set[i] = {
        ['address'] = lib[a] + b + i - 1,
        ['value'] = V[i],
        ['flags'] = gg.TYPE_BYTE,
      }
    end
    gg.setValues(set)
  end
end
function CAC(Lib, Offset, Replaced) local info = gg.getTargetInfo() localpack = info.nativeLibraryDir local t = gg.getRangesList(localpack..'/lib'..Lib..'.so') for _, __ in pairs(t) do local t = gg.getValues({{address = __.start, flags = gg.TYPE_DWORD}, {address = __.start + 18, flags = gg.TYPE_WORD}}) if t[1].value == 1179403647 then Offset = __['start'] + Offset end assert(Offset ~= nil, '[rwmem]: error, provided address is nil.') _rw = {} if type(Replaced) == 'number' then _ = '' for _ = 1, Replaced do _rw[_] = {address = (Offset - 1) + _, flags = gg.TYPE_BYTE} end for v, __ in ipairs(gg.getValues(_rw)) do _ = _ .. string.format('%02X', __.value & 255) end return _ end Byte = {} Replaced:gsub('..', function(x) Byte[#Byte + 1] = x _rw[#Byte] = {address = (Offset - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. 'h'} end) gg.setValues(_rw) end end
function BanhKKK(A1_028, A0_031, A2_121)
local info = gg.getTargetInfo() 
localpack = info.nativeLibraryDir
local t = gg.getRangesList(localpack..'/'..A1_028) for _, __ in pairs(t)
do local t = gg.getValues({{
    address = __.start, flags = gg.TYPE_DWORD
}, {
    address = __.start + 18, flags = gg.TYPE_WORD
}}) if t[1].value == 1179403647
then A0_031 = __['start'] + A0_031
end
assert(A0_031 ~= nil, '[rwmem]: error, provided address is nil.') _rw = {}
if type(A2_121) == 'number'
then _ = ''
for _ = 1, A2_121
do _rw[_] = {
    address = (A0_031 - 1) + _, flags = gg.TYPE_BYTE
}
end
for v, __ in ipairs(gg.getValues(_rw))
do _ = _ .. string.format('%02X', __.value & 255)
end
return _
end
Byte = {} A2_121:gsub('..', 
function(x) Byte[#Byte + 1] = x _rw[#Byte] = {
        address = (A0_031 - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. 'h'
    } end)
gg.setValues(_rw)
end
end
	



local choice = gg.alert(">>> Điều Lưu Ý | Khi Vào Script <<<\n-> Rooted Máy Trước Khi Chạy Script\n-> Không Biết Antiban Ấn Nút ANTIBAN\n-> BYPASS Vô Trận Mới Bật Ko Là Ban\n-> Use Rethink Từ Lúc Chưa Vào Script \n-> Ko Biết Bật Chức Năng Thì Ấn Nút HDSD\n-> Bật 1 Magic Hoặc AimHead Ko Bật 2\n->>> Không Làm Theo Trên = Ban\n->>> Nếu Đã Biết Làm Ấn Button Next","HDSD","ANTIBAN","NEXT")

if choice == 1 then 
    gg.alert("-> Bật Ở Trận \n~ BYPASS , MAGIC , CAM \n-> Bật Ở Sảnh\n~ Wall Stone , Wall Hack , Speed Run , AimHead \n-> Bật Ở Login\n~ Antena , Reset Guest") 
    os.exit()
end

if choice == 2 then 
    gg.alert("-> Bật Rethink Ở Ngoài Vô Sảnh Bật Script Chạy Chức Nawnh Ở Sảnh Chức Năng Login Đều Dùng Được Nha , Vô Trận Bật BYPASS Xong Thoát Menu Hoặc Kill GG Càng Tốt Xong Trận Thoát Ra Xóa Tab FF Vô Lại Chơi Tiếp Fix Band Hỏi @ayamagic2k7 Khi Bạn Có Key") 
    os.exit()
end

if choice == 3 then 
    gg.toast("Please Wait ...") 
    gg.sleep(1000)
end
	

CAC("libil2cpp.so", 0x18f3fd4, "0100A0E31EFF2FE1")
gg.toast("Fix Crash Done")	

function Lon()
Noob = gg.multiChoice({
ghost ..  "[ ԍнosт мoᴅᴇ ]",
"[ ʙʏᴘᴀss ʙᴀттʟᴇ ]",
"[ мᴀԍιc ʙuʟʟᴇт ]",
"[ ᴀιмнᴇᴀᴅ vιᴘ ]",
"[ cᴀмcᴀo vιᴘ ]",
"[ sᴘᴇᴇᴅ ʀuɴ ]",
stone ..  "[ wᴀʟʟ sтoɴᴇ ]",
wall ..  "[ wᴀʟʟнᴀcκ ʟιтᴇ ]",
"[ ᴀɴтᴇɴᴀ тᴀʏ ]",
"[ ʀᴇsᴇт ԍuᴇsт ]",
"[ ᴅouʙʟᴇ ԍuɴ ]",
"[ cʟιcκғuʟʟ ғuɴcтιoɴ ]",
"[ ᴇxιт | тнoáт ]",
}, nil,'\n• scʀιᴘт ʙʏ тʏᴘᴇs: нᴇɴтᴀιzтᴇᴀм\n• suᴘᴘoʀт ᴅᴇvιcᴇs : ʀooтᴇᴅ\n• мãι ʏêu cнị ᴀɴɴᴀ ԍấu')
if Noob == nil then else
if Noob[1] == true then noob1() end
if Noob[2] == true then noob2() end
if Noob[3] == true then noob3() end
if Noob[4] == true then noob4() end
if Noob[5] == true then noob5() end
if Noob[6] == true then noob6() end
if Noob[7] == true then noob7() end
if Noob[8] == true then noob8() end
if Noob[9] == true then noob9() end
if Noob[10] == true then noob10() end
if Noob[11] == true then noob11() end
if Noob[12] == true then noob12() end
if Noob[13] == true then exit() end
end
XGCK = -1
end

ghost = "✘"
function noob1()
if ghost =="✘" then
CAC("libil2cpp.so", "0x18f3fd4", "00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.toast("ON")
ghost = "✓"
ghost = "✓" 
gg.clearResults()
("libil2cpp.so", "0x18f3fd4", "70 4C 2D E9 10 B0 8D E2")
gg.clearResults()
gg.toast("OFF")
ghost = "✘"
end
end

function noob2()
CAC("il2cpp.so", 0x142c654, "00000000")
CAC("il2cpp.so", 0x2fc86d8, "00000000")
CAC("il2cpp.so", 0x1da9950, "00000000")
CAC("il2cpp.so", 0x142d3a4, "00000000")
CAC("il2cpp.so", 0x142d400, "00000000")
CAC("il2cpp.so", 0x1b3df28, "00000000")
CAC("il2cpp.so", 0x142b5c8, "00000000")
CAC("il2cpp.so", 0x306b014, "00000000")
CAC("il2cpp.so", 0x306b138, "00000000")
CAC("il2cpp.so", 0x306b204, "00000000")
CAC("il2cpp.so", 0x306b2d0, "00000000")
CAC("il2cpp.so", 0x306b508, "00000000")
CAC("il2cpp.so", 0x5535fdc, "00000000")
CAC("il2cpp.so", 0x17716b4, "00000000")
CAC("il2cpp.so", 0x144aa6c, "00000000")
CAC("il2cpp.so", 0x3071164, "00000000")
CAC("il2cpp.so", 0x306f89c, "00000000")
CAC("il2cpp.so", 0x44e2268, "00000000")
CAC("il2cpp.so", 0x44e2270, "00000000")
CAC("il2cpp.so", 0x44e2278, "00000000")
CAC("libanogs.so", 0x4BAF8, "00 20 70 47")
CAC("libanogs.so", 0x4BAFC, "70470000")
CAC("libanogs.so", 0x4BB00, "00 20 70 47")
CAC("libanogs.so", 0x4BB04, "00 20 70 47")
CAC("libanogs.so", 0x4BB34, "00207047")
CAC("libanogs.so", 0x4BB72, "00 20 70 47")
CAC("libanogs.so", 0x2956C8, "00 20 70 47")
CAC("libanogs.so", 0x2956CC, "00 20 70 47")
CAC("libanogs.so", 0x2956F6, "00 20 70 47")
CAC("libanogs.so", 0x4B08C, "00 20 70 47")
CAC("libanogs.so", 0x28CC60, "00 20 70 47")
CAC("libanogs.so", 0x4A9B8, "00 20 70 47")
CAC("libanogs.so", 0x4BA60, "00 20 70 47")
CAC("libanogs.so", 0x28CC60, "00 20 70 47")
CAC("libanogs.so", 0x2B6A84, "00 20 70 47")
CAC("libanogs.so", 0x4B240, "00 20 70 47")
CAC("libanogs.so", 0x4920C, "00 20 70 47")
CAC("libanogs.so", 0x2BA038, "00 20 70 47")
CAC("libanogs.so", 0x4BB52, "00 20 70 47")
CAC("libanogs.so", 0x4AD88, "00 20 70 47")
CAC("libanogs.so", 0x4BB72, "00 20 70 47")
CAC("libanogs.so", 0x2956FC, "00 20 70 47")
CAC("libanogs.so", 0x4BB9E, "00 20 70 47")
CAC("libanogs.so", 0x29EB24, "00 20 70 47")
CAC("libanogs.so", 0x4BC96, "00 20 70 47")
CAC("libanogs.so", 0x4BC9A, "00 20 70 47")
CAC("libanogs.so", 0x2BA038, "00 20 70 47")
CAC("libanogs.so", 0x4BCCA, "00 20 70 47")
CAC("libanogs.so", 0x4BCCE, "00 20 70 47")
CAC("libanogs.so", 0x468146, "00 20 70 47")
CAC("libanogs.so", 0x29EF06, "00 20 70 47")
CAC("libanogs.so", 0x29EF08, "00 20 70 47")
CAC("libanogs.so", 0x97534, "00 20 70 47")
CAC("libanogs.so", 0x2A31C2, "00 20 70 47")
CAC("libanogs.so", 0x97794, "00 20 70 47")
CAC("libanogs.so", 0x29EF5C, "00 20 70 47")
CAC("libanogs.so", 0x29EF62, "00 20 70 47")
CAC("libanogs.so", 0x2BA038, "00 20 70 47")
CAC("libanogs.so", 0x29F0BC, "00 20 70 47")
CAC("libanogs.so", 0x2A111A, "00 20 70 47")
CAC("libanogs.so", 0x29F04A, "00 20 70 47")
CAC("libanogs.so", 0x29F07E, "00 20 70 47")
CAC("libanogs.so", 0x4AD88, "00 20 70 47")
CAC("libanogs.so", 0x4BB52, "00 20 70 47")
gg.toast("[ BYPASS DONE ]")
end
function noob3()
CAC("libunity.so", 6512468, "00 00 80 3F")
gg.toast("[ MAGIC BULLET ]")
end

function noob4()
CAC("libil2cpp.so", 0x1aa5708, "0100A0E31EFF2FE1")
gg.toast("[ AIMHEAD ]")
end


function noob5()
CAC("libil2cpp.so", 0x11038fc, "0100A0E31EFF2FE1")
gg.toast("[ CAM CAO ]")
end 


function noob6()
CAC("libil2cpp.so", 0x1708db8, "B20F43E31EFF2FE1")
gg.toast("[ SPEED RUN ]")
end


stone = "✘"
function noob7()
if stone =="✘" then
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-8388395.5F;-8388393.5F;-8388387.5F", gg.POINTER_WRITABLE, false, gg.SIGN_EQUAL, 0, -1)
Var = gg.getResults(100000)
gg.editAll("999", gg.POINTER_WRITABLE)
gg.clearResults()
gg.toast("[ STONE [ON]")
stone = "✓"
elseif stone == "✓" then
gg.searchNumber("999", gg.POINTER_WRITABLE, false, gg.SIGN_EQUAL, 0, -1)
Var = gg.getResults(100000)
gg.editAll("-8388395.5F;-8388393.5F;-8388387.5F", gg.POINTER_WRITABLE)
gg.clearResults()
gg.toast("STONE [OFF]")
stone = "✘"
end
end



wall = "✘"
function noob8()
if wall =="✘" then
gg.setRanges(gg.REGION_CODE_SYS | gg.REGION_CODE_APP)
gg.searchNumber("-6.11142992e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("6.11142992e27", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.toast("[ wall [ON]")
wall = "✓"
elseif wall == "✓" then
gg.searchNumber("6.11142992e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-6.11142992e27", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("wall [OFF]")
wall = "✘"
end
end


function noob9()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-0.02980032004;1:5", gg.TYPE_FLOAT)
gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1909.4", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.09043131769;1:5", gg.TYPE_FLOAT)
gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1909.4", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("[ ANTENA TAY [ON]")
end

function noob10()
CAC("libil2cpp.so", 0x174ed34, "B20F43E31EFF2FE1")
gg.toast("[ RESET GUEST ]")
end



function noob11()
CAC("libil2cpp.so", 0x1a7571c, "B20F43E31EFF2FE1")
gg.toast("[ DOUBLE GUN ]")
end


function noob12()
gg.alert("1 Click Function : Magic , Cam , Súng Đôi , Speed , Antena")
CAC("libunity.so", 6512468, "00 00 80 3F")
gg.toast("[ MAGIC BULLET ]")
CAC("libil2cpp.so", 0x11038fc, "0100A0E31EFF2FE1")
gg.toast("[ CAM CAO ]")
CAC("libil2cpp.so", 0x1708db8, "B20F43E31EFF2FE1")
gg.toast("[ SPEED RUN ]")
CAC("libil2cpp.so", 0x1a7571c, "B20F43E31EFF2FE1")
gg.toast("[ DOUBLE GUN ]")
gg.searchNumber("-0.02980032004;1:5", gg.TYPE_FLOAT)
gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1909.4", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.09043131769;1:5", gg.TYPE_FLOAT)
gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1909.4", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("[ ANTENA TAY [ON]") 
end



function exit()
print("Cảm Ơn Bạn Đã Sử Dụng")

os.exit()
end
while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
gg.clearResults()
if XGCK == 1 then Lon() end
end
