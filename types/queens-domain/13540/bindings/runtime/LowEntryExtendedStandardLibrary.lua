---@meta

---@class FLowEntryRegexCaptureGroup
---@field CaptureGroupNumber int32
---@field BeginIndex int32
---@field EndIndex int32
---@field Match FString
local FLowEntryRegexCaptureGroup = {}

---@class FLowEntryRegexMatch
---@field MatchNumber int32
---@field BeginIndex int32
---@field EndIndex int32
---@field Match FString
---@field CaptureGroups TArray<FLowEntryRegexCaptureGroup>
local FLowEntryRegexMatch = {}

---@class ULowEntryBitDataEntry : UObject
---@field Type uint8
---@field ByteValue uint8
---@field IntegerValue int32
---@field LongValue int64
---@field LongBytesValue ULowEntryLong
---@field FloatValue float
---@field DoubleBytesValue ULowEntryDouble
---@field BooleanValue boolean
---@field StringUtf8Value FString
---@field ByteArrayValue TArray<uint8>
---@field IntegerArrayValue TArray<int32>
---@field LongArrayValue TArray<int64>
---@field LongBytesArrayValue TArray<ULowEntryLong>
---@field FloatArrayValue TArray<float>
---@field DoubleBytesArrayValue TArray<ULowEntryDouble>
---@field BooleanArrayValue TArray<boolean>
---@field StringUtf8ArrayValue TArray<FString>
local ULowEntryBitDataEntry = {}

---@class ULowEntryBitDataReader : UObject
---@field Bytes TArray<uint8>
---@field Position int32
---@field CurrentByte uint8
---@field CurrentBytePosition int32
local ULowEntryBitDataReader = {}

---@class ULowEntryBitDataWriter : UObject
---@field Bytes TArray<uint8>
---@field CurrentByte uint8
---@field CurrentBytePosition int32
local ULowEntryBitDataWriter = {}

---@class ULowEntryByteArray : UObject
---@field ByteArray TArray<uint8>
local ULowEntryByteArray = {}

---@class ULowEntryByteDataEntry : UObject
---@field Type uint8
---@field ByteValue uint8
---@field IntegerValue int32
---@field LongValue int64
---@field LongBytesValue ULowEntryLong
---@field FloatValue float
---@field DoubleBytesValue ULowEntryDouble
---@field BooleanValue boolean
---@field StringUtf8Value FString
---@field ByteArrayValue TArray<uint8>
---@field IntegerArrayValue TArray<int32>
---@field LongArrayValue TArray<int64>
---@field LongBytesArrayValue TArray<ULowEntryLong>
---@field FloatArrayValue TArray<float>
---@field DoubleBytesArrayValue TArray<ULowEntryDouble>
---@field BooleanArrayValue TArray<boolean>
---@field StringUtf8ArrayValue TArray<FString>
local ULowEntryByteDataEntry = {}

---@class ULowEntryByteDataReader : UObject
---@field Bytes TArray<uint8>
---@field Position int32
local ULowEntryByteDataReader = {}

---@class ULowEntryByteDataWriter : UObject
---@field Bytes TArray<uint8>
local ULowEntryByteDataWriter = {}

---@class ULowEntryDouble : UObject
---@field Bytes TArray<uint8>
local ULowEntryDouble = {}

---@class ULowEntryExecutionQueue : UObject
---@field Count int32
---@field Next boolean
local ULowEntryExecutionQueue = {}

---@class ULowEntryExtendedStandardLibrary : UBlueprintFunctionLibrary
local ULowEntryExtendedStandardLibrary = {}

---@class ULowEntryLatentActionBoolean : UObject
---@field Finished boolean
---@field Result boolean
---@field KeepAliveCount int32
local ULowEntryLatentActionBoolean = {}

---@class ULowEntryLatentActionFloat : UObject
---@field Finished boolean
---@field Result float
---@field KeepAliveCount int32
local ULowEntryLatentActionFloat = {}

---@class ULowEntryLatentActionInteger : UObject
---@field Finished boolean
---@field Result int32
---@field KeepAliveCount int32
local ULowEntryLatentActionInteger = {}

---@class ULowEntryLatentActionNone : UObject
---@field Finished boolean
---@field KeepAliveCount int32
local ULowEntryLatentActionNone = {}

---@class ULowEntryLatentActionObject : UObject
---@field Finished boolean
---@field Result UObject
---@field KeepAliveCount int32
local ULowEntryLatentActionObject = {}

---@class ULowEntryLatentActionString : UObject
---@field Finished boolean
---@field Result FString
---@field KeepAliveCount int32
local ULowEntryLatentActionString = {}

---@class ULowEntryLong : UObject
---@field Bytes TArray<uint8>
local ULowEntryLong = {}

---@class ULowEntryParsedHashcash : UObject
---@field Valid boolean
---@field Resource FString
---@field Date FDateTime
---@field Bits int32
local ULowEntryParsedHashcash = {}

function ULowEntryBitDataReader:Empty() end

function ULowEntryBitDataReader:GetBit() end

function ULowEntryBitDataReader:GetBitArray() end

function ULowEntryBitDataReader:GetBoolean() end

function ULowEntryBitDataReader:GetBooleanArray() end

function ULowEntryBitDataReader:GetByte() end

function ULowEntryBitDataReader:GetByteArray() end

---@param BitCount int32
function ULowEntryBitDataReader:GetByteArrayLeastSignificantBits(BitCount) end

---@param BitCount int32
function ULowEntryBitDataReader:GetByteArrayMostSignificantBits(BitCount) end

---@param BitCount int32
function ULowEntryBitDataReader:GetByteLeastSignificantBits(BitCount) end

---@param BitCount int32
function ULowEntryBitDataReader:GetByteMostSignificantBits(BitCount) end

function ULowEntryBitDataReader:GetClone() end

function ULowEntryBitDataReader:GetDoubleBytes() end

function ULowEntryBitDataReader:GetDoubleBytesArray() end

function ULowEntryBitDataReader:GetFloat() end

function ULowEntryBitDataReader:GetFloatArray() end

function ULowEntryBitDataReader:GetInteger() end

function ULowEntryBitDataReader:GetIntegerArray() end

---@param BitCount int32
function ULowEntryBitDataReader:GetIntegerArrayLeastSignificantBits(BitCount) end

---@param BitCount int32
function ULowEntryBitDataReader:GetIntegerArrayMostSignificantBits(BitCount) end

---@param BitCount int32
function ULowEntryBitDataReader:GetIntegerLeastSignificantBits(BitCount) end

---@param BitCount int32
function ULowEntryBitDataReader:GetIntegerMostSignificantBits(BitCount) end

function ULowEntryBitDataReader:GetLong() end

function ULowEntryBitDataReader:GetLongArray() end

function ULowEntryBitDataReader:GetLongBytes() end

function ULowEntryBitDataReader:GetLongBytesArray() end

function ULowEntryBitDataReader:GetPosition() end

function ULowEntryBitDataReader:GetPositiveInteger1() end

function ULowEntryBitDataReader:GetPositiveInteger1Array() end

function ULowEntryBitDataReader:GetPositiveInteger2() end

function ULowEntryBitDataReader:GetPositiveInteger2Array() end

function ULowEntryBitDataReader:GetPositiveInteger3() end

function ULowEntryBitDataReader:GetPositiveInteger3Array() end

function ULowEntryBitDataReader:GetStringUtf8() end

function ULowEntryBitDataReader:GetStringUtf8Array() end

function ULowEntryBitDataReader:Remaining() end

function ULowEntryBitDataReader:Reset() end

---@param Position_ int32
function ULowEntryBitDataReader:SetPosition(Position_) end

---@param Value boolean
function ULowEntryBitDataWriter:AddBit(Value) end

---@param Value TArray<boolean>
function ULowEntryBitDataWriter:AddBitArray(Value) end

---@param Value boolean
function ULowEntryBitDataWriter:AddBoolean(Value) end

---@param Value TArray<boolean>
function ULowEntryBitDataWriter:AddBooleanArray(Value) end

---@param Value uint8
function ULowEntryBitDataWriter:AddByte(Value) end

---@param Value TArray<uint8>
function ULowEntryBitDataWriter:AddByteArray(Value) end

---@param Value TArray<uint8>
---@param BitCount int32
function ULowEntryBitDataWriter:AddByteArrayLeastSignificantBits(Value, BitCount) end

---@param Value TArray<uint8>
---@param BitCount int32
function ULowEntryBitDataWriter:AddByteArrayMostSignificantBits(Value, BitCount) end

---@param Value uint8
---@param BitCount int32
function ULowEntryBitDataWriter:AddByteLeastSignificantBits(Value, BitCount) end

---@param Value uint8
---@param BitCount int32
function ULowEntryBitDataWriter:AddByteMostSignificantBits(Value, BitCount) end

---@param Value ULowEntryDouble
function ULowEntryBitDataWriter:AddDoubleBytes(Value) end

---@param Value TArray<ULowEntryDouble>
function ULowEntryBitDataWriter:AddDoubleBytesArray(Value) end

---@param Value float
function ULowEntryBitDataWriter:AddFloat(Value) end

---@param Value TArray<float>
function ULowEntryBitDataWriter:AddFloatArray(Value) end

---@param Value int32
function ULowEntryBitDataWriter:AddInteger(Value) end

---@param Value TArray<int32>
function ULowEntryBitDataWriter:AddIntegerArray(Value) end

---@param Value TArray<int32>
---@param BitCount int32
function ULowEntryBitDataWriter:AddIntegerArrayLeastSignificantBits(Value, BitCount) end

---@param Value TArray<int32>
---@param BitCount int32
function ULowEntryBitDataWriter:AddIntegerArrayMostSignificantBits(Value, BitCount) end

---@param Value int32
---@param BitCount int32
function ULowEntryBitDataWriter:AddIntegerLeastSignificantBits(Value, BitCount) end

---@param Value int32
---@param BitCount int32
function ULowEntryBitDataWriter:AddIntegerMostSignificantBits(Value, BitCount) end

---@param Value int64
function ULowEntryBitDataWriter:AddLong(Value) end

---@param Value TArray<int64>
function ULowEntryBitDataWriter:AddLongArray(Value) end

---@param Value ULowEntryLong
function ULowEntryBitDataWriter:AddLongBytes(Value) end

---@param Value TArray<ULowEntryLong>
function ULowEntryBitDataWriter:AddLongBytesArray(Value) end

---@param Value int32
function ULowEntryBitDataWriter:AddPositiveInteger1(Value) end

---@param Value TArray<int32>
function ULowEntryBitDataWriter:AddPositiveInteger1Array(Value) end

---@param Value int32
function ULowEntryBitDataWriter:AddPositiveInteger2(Value) end

---@param Value TArray<int32>
function ULowEntryBitDataWriter:AddPositiveInteger2Array(Value) end

---@param Value int32
function ULowEntryBitDataWriter:AddPositiveInteger3(Value) end

---@param Value TArray<int32>
function ULowEntryBitDataWriter:AddPositiveInteger3Array(Value) end

---@param Value FString
function ULowEntryBitDataWriter:AddStringUtf8(Value) end

---@param Value TArray<FString>
function ULowEntryBitDataWriter:AddStringUtf8Array(Value) end

function ULowEntryByteDataReader:Empty() end

function ULowEntryByteDataReader:GetBoolean() end

function ULowEntryByteDataReader:GetBooleanArray() end

function ULowEntryByteDataReader:GetByte() end

function ULowEntryByteDataReader:GetByteArray() end

function ULowEntryByteDataReader:GetClone() end

function ULowEntryByteDataReader:GetDoubleBytes() end

function ULowEntryByteDataReader:GetDoubleBytesArray() end

function ULowEntryByteDataReader:GetFloat() end

function ULowEntryByteDataReader:GetFloatArray() end

function ULowEntryByteDataReader:GetInteger() end

function ULowEntryByteDataReader:GetIntegerArray() end

function ULowEntryByteDataReader:GetLong() end

function ULowEntryByteDataReader:GetLongArray() end

function ULowEntryByteDataReader:GetLongBytes() end

function ULowEntryByteDataReader:GetLongBytesArray() end

function ULowEntryByteDataReader:GetPosition() end

function ULowEntryByteDataReader:GetPositiveInteger1() end

function ULowEntryByteDataReader:GetPositiveInteger1Array() end

function ULowEntryByteDataReader:GetPositiveInteger2() end

function ULowEntryByteDataReader:GetPositiveInteger2Array() end

function ULowEntryByteDataReader:GetPositiveInteger3() end

function ULowEntryByteDataReader:GetPositiveInteger3Array() end

function ULowEntryByteDataReader:GetStringUtf8() end

function ULowEntryByteDataReader:GetStringUtf8Array() end

function ULowEntryByteDataReader:Remaining() end

function ULowEntryByteDataReader:Reset() end

---@param Position_ int32
function ULowEntryByteDataReader:SetPosition(Position_) end

---@param Value boolean
function ULowEntryByteDataWriter:AddBoolean(Value) end

---@param Value TArray<boolean>
function ULowEntryByteDataWriter:AddBooleanArray(Value) end

---@param Value uint8
function ULowEntryByteDataWriter:AddByte(Value) end

---@param Value TArray<uint8>
function ULowEntryByteDataWriter:AddByteArray(Value) end

---@param Value ULowEntryDouble
function ULowEntryByteDataWriter:AddDoubleBytes(Value) end

---@param Value TArray<ULowEntryDouble>
function ULowEntryByteDataWriter:AddDoubleBytesArray(Value) end

---@param Value float
function ULowEntryByteDataWriter:AddFloat(Value) end

---@param Value TArray<float>
function ULowEntryByteDataWriter:AddFloatArray(Value) end

---@param Value int32
function ULowEntryByteDataWriter:AddInteger(Value) end

---@param Value TArray<int32>
function ULowEntryByteDataWriter:AddIntegerArray(Value) end

---@param Value int64
function ULowEntryByteDataWriter:AddLong(Value) end

---@param Value TArray<int64>
function ULowEntryByteDataWriter:AddLongArray(Value) end

---@param Value ULowEntryLong
function ULowEntryByteDataWriter:AddLongBytes(Value) end

---@param Value TArray<ULowEntryLong>
function ULowEntryByteDataWriter:AddLongBytesArray(Value) end

---@param Value int32
function ULowEntryByteDataWriter:AddPositiveInteger1(Value) end

---@param Value TArray<int32>
function ULowEntryByteDataWriter:AddPositiveInteger1Array(Value) end

---@param Value int32
function ULowEntryByteDataWriter:AddPositiveInteger2(Value) end

---@param Value TArray<int32>
function ULowEntryByteDataWriter:AddPositiveInteger2Array(Value) end

---@param Value int32
function ULowEntryByteDataWriter:AddPositiveInteger3(Value) end

---@param Value TArray<int32>
function ULowEntryByteDataWriter:AddPositiveInteger3Array(Value) end

---@param Value FString
function ULowEntryByteDataWriter:AddStringUtf8(Value) end

---@param Value TArray<FString>
function ULowEntryByteDataWriter:AddStringUtf8Array(Value) end

function ULowEntryDouble:CastToLongBytes() end

---@param MinFractionalDigits int32
function ULowEntryDouble:CastToString(MinFractionalDigits) end

function ULowEntryDouble:CreateClone() end

---@param Value ULowEntryDouble
function ULowEntryDouble:DoubleBytes_Add(Value) end

---@param Value ULowEntryDouble
function ULowEntryDouble:DoubleBytes_Equals(Value) end

---@param Value ULowEntryDouble
function ULowEntryDouble:DoubleBytes_GreaterThan(Value) end

---@param Value ULowEntryDouble
function ULowEntryDouble:DoubleBytes_LessThan(Value) end

---@param Value ULowEntryDouble
function ULowEntryDouble:DoubleBytes_Subtract(Value) end

---@param Value float
function ULowEntryDouble:Float_Add(Value) end

---@param Value float
function ULowEntryDouble:Float_Equals(Value) end

---@param Value float
function ULowEntryDouble:Float_GreaterThan(Value) end

---@param Value float
function ULowEntryDouble:Float_LessThan(Value) end

---@param Value float
function ULowEntryDouble:Float_Subtract(Value) end

function ULowEntryDouble:GetBytes() end

---@param Value int32
function ULowEntryDouble:Integer_GreaterThan(Value) end

---@param Value int32
function ULowEntryDouble:Integer_LessThan(Value) end

---@param Value ULowEntryLong
function ULowEntryDouble:LongBytes_GreaterThan(Value) end

---@param Value ULowEntryLong
function ULowEntryDouble:LongBytes_LessThan(Value) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryDouble:SetBytes(ByteArray, Index, Length) end

function ULowEntryExtendedStandardLibrary:AndroidPlatform() end

function ULowEntryExtendedStandardLibrary:AreAndroidHeadphonesPluggedIn() end

---@param A TArray<uint8>
---@param B TArray<uint8>
---@param IndexA int32
---@param LengthA int32
---@param IndexB int32
---@param LengthB int32
function ULowEntryExtendedStandardLibrary:AreBytesEqual(A, B, IndexA, LengthA, IndexB, LengthB) end

---@param ByteArray TArray<uint8>
---@param Salt TArray<uint8>
---@param Strength int32
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BCrypt(ByteArray, Salt, Strength, Index, Length) end

---@param Base64 FString
function ULowEntryExtendedStandardLibrary:Base64ToBase64Url(Base64) end

---@param Base64 FString
function ULowEntryExtendedStandardLibrary:Base64ToBytes(Base64) end

---@param Base64Url FString
function ULowEntryExtendedStandardLibrary:Base64UrlToBase64(Base64Url) end

---@param Base64Url FString
function ULowEntryExtendedStandardLibrary:Base64UrlToBytes(Base64Url) end

---@param Binary FString
function ULowEntryExtendedStandardLibrary:BinaryToBytes(Binary) end

---@param Value boolean
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromBit(Value) end

---@param Value TArray<boolean>
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromBitArray(Value) end

---@param Value boolean
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromBoolean(Value) end

---@param Value TArray<boolean>
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromBooleanArray(Value) end

---@param Value uint8
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromByte(Value) end

---@param Value TArray<uint8>
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromByteArray(Value) end

---@param Value TArray<uint8>
---@param BitCount int32
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromByteArrayLeastSignificantBits(Value, BitCount) end

---@param Value TArray<uint8>
---@param BitCount int32
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromByteArrayMostSignificantBits(Value, BitCount) end

---@param Value uint8
---@param BitCount int32
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromByteLeastSignificantBits(Value, BitCount) end

---@param Value uint8
---@param BitCount int32
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromByteMostSignificantBits(Value, BitCount) end

---@param Value ULowEntryDouble
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromDoubleBytes(Value) end

---@param Value TArray<ULowEntryDouble>
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromDoubleBytesArray(Value) end

---@param Value float
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromFloat(Value) end

---@param Value TArray<float>
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromFloatArray(Value) end

---@param Value int32
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromInteger(Value) end

---@param Value TArray<int32>
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromIntegerArray(Value) end

---@param Value TArray<int32>
---@param BitCount int32
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromIntegerArrayLeastSignificantBits(Value, BitCount) end

---@param Value TArray<int32>
---@param BitCount int32
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromIntegerArrayMostSignificantBits(Value, BitCount) end

---@param Value int32
---@param BitCount int32
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromIntegerLeastSignificantBits(Value, BitCount) end

---@param Value int32
---@param BitCount int32
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromIntegerMostSignificantBits(Value, BitCount) end

---@param Value int64
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromLong(Value) end

---@param Value TArray<int64>
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromLongArray(Value) end

---@param Value ULowEntryLong
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromLongBytes(Value) end

---@param Value TArray<ULowEntryLong>
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromLongBytesArray(Value) end

---@param Value int32
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromPositiveInteger1(Value) end

---@param Value TArray<int32>
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromPositiveInteger1Array(Value) end

---@param Value int32
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromPositiveInteger2(Value) end

---@param Value TArray<int32>
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromPositiveInteger2Array(Value) end

---@param Value int32
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromPositiveInteger3(Value) end

---@param Value TArray<int32>
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromPositiveInteger3Array(Value) end

---@param Value FString
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromStringUtf8(Value) end

---@param Value TArray<FString>
function ULowEntryExtendedStandardLibrary:BitDataEntry_CreateFromStringUtf8Array(Value) end

---@param Bytes TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BitDataReader_Create(Bytes, Index, Length) end

---@param Array TArray<ULowEntryBitDataEntry>
function ULowEntryExtendedStandardLibrary:BitDataWriter_CreateFromEntryArray(Array) end

---@param Array TArray<ULowEntryBitDataEntry>
function ULowEntryExtendedStandardLibrary:BitDataWriter_CreateFromEntryArrayPure(Array) end

---@param BitDataWriter ULowEntryBitDataWriter
function ULowEntryExtendedStandardLibrary:BitDataWriter_GetBytes(BitDataWriter) end

---@param Bits FString
function ULowEntryExtendedStandardLibrary:BitStringToBytes(Bits) end

---@param Bit1 boolean
---@param Bit2 boolean
---@param Bit3 boolean
---@param Bit4 boolean
---@param Bit5 boolean
---@param Bit6 boolean
---@param Bit7 boolean
---@param Bit8 boolean
---@param Byte uint8
function ULowEntryExtendedStandardLibrary:BitsToByte(Bit1, Bit2, Bit3, Bit4, Bit5, Bit6, Bit7, Bit8, Byte) end

---@param Value boolean
function ULowEntryExtendedStandardLibrary:BooleanToByte(Value) end

---@param Value boolean
function ULowEntryExtendedStandardLibrary:BooleanToBytes(Value) end

---@param Value boolean
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromBoolean(Value) end

---@param Value TArray<boolean>
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromBooleanArray(Value) end

---@param Value uint8
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromByte(Value) end

---@param Value TArray<uint8>
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromByteArray(Value) end

---@param Value ULowEntryDouble
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromDoubleBytes(Value) end

---@param Value TArray<ULowEntryDouble>
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromDoubleBytesArray(Value) end

---@param Value float
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromFloat(Value) end

---@param Value TArray<float>
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromFloatArray(Value) end

---@param Value int32
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromInteger(Value) end

---@param Value TArray<int32>
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromIntegerArray(Value) end

---@param Value int64
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromLong(Value) end

---@param Value TArray<int64>
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromLongArray(Value) end

---@param Value ULowEntryLong
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromLongBytes(Value) end

---@param Value TArray<ULowEntryLong>
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromLongBytesArray(Value) end

---@param Value int32
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromPositiveInteger1(Value) end

---@param Value TArray<int32>
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromPositiveInteger1Array(Value) end

---@param Value int32
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromPositiveInteger2(Value) end

---@param Value TArray<int32>
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromPositiveInteger2Array(Value) end

---@param Value int32
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromPositiveInteger3(Value) end

---@param Value TArray<int32>
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromPositiveInteger3Array(Value) end

---@param Value FString
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromStringUtf8(Value) end

---@param Value TArray<FString>
function ULowEntryExtendedStandardLibrary:ByteDataEntry_CreateFromStringUtf8Array(Value) end

---@param Bytes TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:ByteDataReader_Create(Bytes, Index, Length) end

---@param Array TArray<ULowEntryByteDataEntry>
function ULowEntryExtendedStandardLibrary:ByteDataWriter_CreateFromEntryArray(Array) end

---@param Array TArray<ULowEntryByteDataEntry>
function ULowEntryExtendedStandardLibrary:ByteDataWriter_CreateFromEntryArrayPure(Array) end

---@param ByteDataWriter ULowEntryByteDataWriter
function ULowEntryExtendedStandardLibrary:ByteDataWriter_GetBytes(ByteDataWriter) end

---@param Byte uint8
---@param Bit1 boolean
---@param Bit2 boolean
---@param Bit3 boolean
---@param Bit4 boolean
---@param Bit5 boolean
---@param Bit6 boolean
---@param Bit7 boolean
---@param Bit8 boolean
function ULowEntryExtendedStandardLibrary:ByteToBits(Byte, Bit1, Bit2, Bit3, Bit4, Bit5, Bit6, Bit7, Bit8) end

---@param Byte uint8
function ULowEntryExtendedStandardLibrary:ByteToBoolean(Byte) end

---@param Value uint8
function ULowEntryExtendedStandardLibrary:ByteToBytes(Value) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesSubArray(ByteArray, Index, Length) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToBase64(ByteArray, Index, Length) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToBase64Url(ByteArray, Index, Length) end

---@param ByteArray TArray<uint8>
---@param AddSpaces boolean
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToBinary(ByteArray, AddSpaces, Index, Length) end

---@param ByteArray TArray<uint8>
---@param AddSpaces boolean
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToBitString(ByteArray, AddSpaces, Index, Length) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToBoolean(ByteArray, Index, Length) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToByte(ByteArray, Index, Length) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToDoubleBytes(ByteArray, Index, Length) end

---@param ReusedGivenTexture2D boolean
---@param Texture2D UTexture2D
---@param ByteArray TArray<uint8>
---@param ImageFormat ELowEntryImageFormat
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToExistingImage(ReusedGivenTexture2D, Texture2D, ByteArray, ImageFormat, Index, Length) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToFloat(ByteArray, Index, Length) end

---@param ByteArray TArray<uint8>
---@param AddSpaces boolean
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToHex(ByteArray, AddSpaces, Index, Length) end

---@param ByteArray TArray<uint8>
---@param ImageFormat ELowEntryImageFormat
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToImage(ByteArray, ImageFormat, Index, Length) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToInteger(ByteArray, Index, Length) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToLong(ByteArray, Index, Length) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToLongBytes(ByteArray, Index, Length) end

---@param ByteArray TArray<uint8>
---@param ImageFormat ELowEntryImageFormat
---@param Width int32
---@param Height int32
---@param Pixels TArray<FColor>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToPixels(ByteArray, ImageFormat, Width, Height, Pixels, Index, Length) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:BytesToStringUtf8(ByteArray, Index, Length) end

function ULowEntryExtendedStandardLibrary:CarriageReturnCharacter() end

---@param OnlyCheckFirstX int32
---@param Value uint8
---@param _1__ uint8
---@param _2__ uint8
---@param _3__ uint8
---@param _4__ uint8
---@param _5__ uint8
---@param _6__ uint8
---@param _7__ uint8
---@param _8__ uint8
---@param _9__ uint8
---@param _10__ uint8
---@param Branch ELowEntryExtendedStandardLibrary1to10other
function ULowEntryExtendedStandardLibrary:CaseSwitchByte(OnlyCheckFirstX, Value, _1__, _2__, _3__, _4__, _5__, _6__, _7__, _8__, _9__, _10__, Branch) end

---@param OnlyCheckFirstX int32
---@param Value int32
---@param _1__ int32
---@param _2__ int32
---@param _3__ int32
---@param _4__ int32
---@param _5__ int32
---@param _6__ int32
---@param _7__ int32
---@param _8__ int32
---@param _9__ int32
---@param _10__ int32
---@param Branch ELowEntryExtendedStandardLibrary1to10other
function ULowEntryExtendedStandardLibrary:CaseSwitchInteger(OnlyCheckFirstX, Value, _1__, _2__, _3__, _4__, _5__, _6__, _7__, _8__, _9__, _10__, Branch) end

---@param OnlyCheckFirstX int32
---@param Value UObject
---@param _1__ UObject
---@param _2__ UObject
---@param _3__ UObject
---@param _4__ UObject
---@param _5__ UObject
---@param _6__ UObject
---@param _7__ UObject
---@param _8__ UObject
---@param _9__ UObject
---@param _10__ UObject
---@param Branch ELowEntryExtendedStandardLibrary1to10other
function ULowEntryExtendedStandardLibrary:CaseSwitchObject(OnlyCheckFirstX, Value, _1__, _2__, _3__, _4__, _5__, _6__, _7__, _8__, _9__, _10__, Branch) end

---@param Number float
---@param Decimals int32
function ULowEntryExtendedStandardLibrary:CeilDecimals(Number, Decimals) end

---@param WorldContextObject UObject
---@param Map FString
---@param Args FString
---@param SpecificPlayer APlayerController
function ULowEntryExtendedStandardLibrary:ChangeMap(WorldContextObject, Map, Args, SpecificPlayer) end

function ULowEntryExtendedStandardLibrary:ClearAllUserFocus() end

function ULowEntryExtendedStandardLibrary:ClearKeyboardFocus() end

---@param UserIndex int32
function ULowEntryExtendedStandardLibrary:ClearUserFocus(UserIndex) end

function ULowEntryExtendedStandardLibrary:ClipboardGet() end

---@param Value FString
function ULowEntryExtendedStandardLibrary:ClipboardSet(Value) end

---@param Local FDateTime
---@param Utc FDateTime
function ULowEntryExtendedStandardLibrary:ConvertLocalDateToUtcDate(Local, Utc) end

---@param Utc FDateTime
---@param Local FDateTime
function ULowEntryExtendedStandardLibrary:ConvertUtcDateToLocalDate(Utc, Local) end

function ULowEntryExtendedStandardLibrary:Crash() end

---@param Class UClass
---@param Object UObject
function ULowEntryExtendedStandardLibrary:CreateObject(Class, Object) end

---@param Length int32
---@param Filler FString
function ULowEntryExtendedStandardLibrary:CreateString(Length, Filler) end

---@param Timestamp ULowEntryLong
---@param DateTime FDateTime
function ULowEntryExtendedStandardLibrary:DateTime_FromUnixTimestamp(Timestamp, DateTime) end

---@param DateTime FDateTime
---@param String FString
function ULowEntryExtendedStandardLibrary:DateTime_ToIso8601(DateTime, String) end

---@param DateTime FDateTime
---@param String FString
---@param Format FString
function ULowEntryExtendedStandardLibrary:DateTime_ToString(DateTime, String, Format) end

---@param DateTime FDateTime
---@param Timestamp ULowEntryLong
function ULowEntryExtendedStandardLibrary:DateTime_ToUnixTimestamp(DateTime, Timestamp) end

function ULowEntryExtendedStandardLibrary:DebugBuild() end

---@param WorldContextObject UObject
---@param Frames int32
---@param LatentInfo FLatentActionInfo
function ULowEntryExtendedStandardLibrary:DelayFrames(WorldContextObject, Frames, LatentInfo) end

function ULowEntryExtendedStandardLibrary:DesktopPlatform() end

function ULowEntryExtendedStandardLibrary:DevelopmentBuild() end

---@param A FVector2D
---@param B FVector2D
function ULowEntryExtendedStandardLibrary:Divide_Vector2dVector2d(A, B) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:Double_Create(ByteArray, Index, Length) end

function ULowEntryExtendedStandardLibrary:Double_CreateZero() end

---@param ByteArray TArray<uint8>
function ULowEntryExtendedStandardLibrary:EncapsulateByteArray(ByteArray) end

---@param Branch ELowEntryExtendedStandardLibraryTrueOrFalse
---@param Value boolean
function ULowEntryExtendedStandardLibrary:ExecToBoolean(Branch, Value) end

---@param Branch ELowEntryExtendedStandardLibrary0to9
---@param Value uint8
function ULowEntryExtendedStandardLibrary:ExecToByte(Branch, Value) end

---@param Branch ELowEntryExtendedStandardLibrary0to9
---@param Value int32
function ULowEntryExtendedStandardLibrary:ExecToInteger(Branch, Value) end

---@param Value float
function ULowEntryExtendedStandardLibrary:FloatToBytes(Value) end

---@param Number float
---@param Decimals int32
function ULowEntryExtendedStandardLibrary:FloorDecimals(Number, Decimals) end

---@param Length int32
---@param ByteArray TArray<uint8>
function ULowEntryExtendedStandardLibrary:GenerateRandomBytes(Length, ByteArray) end

---@param MinLength int32
---@param MaxLength int32
---@param ByteArray TArray<uint8>
function ULowEntryExtendedStandardLibrary:GenerateRandomBytesRandomLength(MinLength, MaxLength, ByteArray) end

---@param Geometry FGeometry
function ULowEntryExtendedStandardLibrary:GetAbsoluteSize(Geometry) end

---@param Geometry FGeometry
function ULowEntryExtendedStandardLibrary:GetAbsoluteToLocalScale(Geometry) end

function ULowEntryExtendedStandardLibrary:GetAndroidBuildVersion() end

function ULowEntryExtendedStandardLibrary:GetAndroidDefaultLocale() end

function ULowEntryExtendedStandardLibrary:GetAndroidDeviceMake() end

function ULowEntryExtendedStandardLibrary:GetAndroidDeviceModel() end

function ULowEntryExtendedStandardLibrary:GetAndroidGlVersion() end

function ULowEntryExtendedStandardLibrary:GetAndroidGpuFamily() end

function ULowEntryExtendedStandardLibrary:GetAndroidNumberOfCores() end

function ULowEntryExtendedStandardLibrary:GetAndroidOsLanguage() end

function ULowEntryExtendedStandardLibrary:GetAndroidVersion() end

---@param Volume int32
function ULowEntryExtendedStandardLibrary:GetAndroidVolume(Volume) end

---@param Percentage int32
---@param Success boolean
function ULowEntryExtendedStandardLibrary:GetBatteryCharge(Percentage, Success) end

---@param State ELowEntryBatteryState
---@param Success boolean
function ULowEntryExtendedStandardLibrary:GetBatteryState(State, Success) end

---@param Celsius float
---@param Success boolean
function ULowEntryExtendedStandardLibrary:GetBatteryTemperature(Celsius, Success) end

---@param Byte uint8
---@param Bit int32
---@param Value boolean
function ULowEntryExtendedStandardLibrary:GetByteWithBitSet(Byte, Bit, Value) end

---@param ClassName FString
---@param Class_ UClass
---@param Success boolean
function ULowEntryExtendedStandardLibrary:GetClassWithName(ClassName, Class_, Success) end

---@param Volume int32
---@param Success boolean
function ULowEntryExtendedStandardLibrary:GetCurrentVolume(Volume, Success) end

---@param Percentage float
---@param Success boolean
function ULowEntryExtendedStandardLibrary:GetCurrentVolumePercentage(Percentage, Success) end

---@param Target AActor
---@param TeamID uint8
function ULowEntryExtendedStandardLibrary:GetGenericTeamId(Target, TeamID) end

function ULowEntryExtendedStandardLibrary:GetKeyboardFocusedWidgetType() end

---@param Geometry FGeometry
function ULowEntryExtendedStandardLibrary:GetLocalToAbsoluteScale(Geometry) end

---@param Volume int32
---@param Success boolean
function ULowEntryExtendedStandardLibrary:GetMaximumVolume(Volume, Success) end

---@param Success boolean
---@param X int32
---@param Y int32
function ULowEntryExtendedStandardLibrary:GetMousePosition(Success, X, Y) end

---@param Success boolean
---@param X float
---@param Y float
function ULowEntryExtendedStandardLibrary:GetMousePositionInPercentages(Success, X, Y) end

---@param Width int32
---@param Height int32
function ULowEntryExtendedStandardLibrary:GetPrimaryMonitorResolution(Width, Height) end

---@param X int32
---@param Y int32
---@param Width int32
---@param Height int32
function ULowEntryExtendedStandardLibrary:GetPrimaryMonitorWorkArea(X, Y, Width, Height) end

function ULowEntryExtendedStandardLibrary:GetProjectName() end

function ULowEntryExtendedStandardLibrary:GetProjectVersion() end

---@param Type ELowEntrySplitScreenType
function ULowEntryExtendedStandardLibrary:GetSplitScreenType(Type) end

---@param UserIndex int32
function ULowEntryExtendedStandardLibrary:GetUserFocusedWidgetType(UserIndex) end

---@param Success boolean
---@param Margin FMargin
function ULowEntryExtendedStandardLibrary:GetWindowBorderSize(Success, Margin) end

---@param Success boolean
---@param X int32
---@param Y int32
---@param Width int32
---@param Height int32
function ULowEntryExtendedStandardLibrary:GetWindowBounds(Success, X, Y, Width, Height) end

---@param Success boolean
---@param Fullscreen boolean
---@param IsFullscreenWindowed boolean
function ULowEntryExtendedStandardLibrary:GetWindowMode(Success, Fullscreen, IsFullscreenWindowed) end

---@param Success boolean
---@param X float
---@param Y float
function ULowEntryExtendedStandardLibrary:GetWindowPositiomInPercentagesCentered(Success, X, Y) end

---@param Success boolean
---@param X int32
---@param Y int32
function ULowEntryExtendedStandardLibrary:GetWindowPosition(Success, X, Y) end

---@param Success boolean
---@param Width int32
---@param Height int32
function ULowEntryExtendedStandardLibrary:GetWindowSize(Success, Width, Height) end

---@param Pixel FColor
function ULowEntryExtendedStandardLibrary:GrayscalePixel(Pixel) end

---@param Pixel TArray<FColor>
function ULowEntryExtendedStandardLibrary:GrayscalePixels(Pixel) end

---@param A uint8
---@param B float
function ULowEntryExtendedStandardLibrary:GreaterByteFloat(A, B) end

---@param A uint8
---@param B int32
function ULowEntryExtendedStandardLibrary:GreaterByteInteger(A, B) end

---@param A uint8
---@param B float
function ULowEntryExtendedStandardLibrary:GreaterEqualByteFloat(A, B) end

---@param A uint8
---@param B int32
function ULowEntryExtendedStandardLibrary:GreaterEqualByteInteger(A, B) end

---@param A float
---@param B uint8
function ULowEntryExtendedStandardLibrary:GreaterEqualFloatByte(A, B) end

---@param A float
---@param B int32
function ULowEntryExtendedStandardLibrary:GreaterEqualFloatInteger(A, B) end

---@param A int32
---@param B uint8
function ULowEntryExtendedStandardLibrary:GreaterEqualIntegerByte(A, B) end

---@param A int32
---@param B float
function ULowEntryExtendedStandardLibrary:GreaterEqualIntegerFloat(A, B) end

---@param A FString
---@param B FString
function ULowEntryExtendedStandardLibrary:GreaterEqualStringString(A, B) end

---@param A float
---@param B uint8
function ULowEntryExtendedStandardLibrary:GreaterFloatByte(A, B) end

---@param A float
---@param B int32
function ULowEntryExtendedStandardLibrary:GreaterFloatInteger(A, B) end

---@param A int32
---@param B uint8
function ULowEntryExtendedStandardLibrary:GreaterIntegerByte(A, B) end

---@param A int32
---@param B float
function ULowEntryExtendedStandardLibrary:GreaterIntegerFloat(A, B) end

---@param A FString
---@param B FString
function ULowEntryExtendedStandardLibrary:GreaterStringString(A, B) end

---@param ByteArray TArray<uint8>
---@param Key TArray<uint8>
---@param Algorithm ELowEntryHmacAlgorithm
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:HMAC(ByteArray, Key, Algorithm, Index, Length) end

---@param Resource FString
---@param Bits int32
function ULowEntryExtendedStandardLibrary:Hashcash(Resource, Bits) end

---@param Resources TArray<FString>
---@param Bits int32
function ULowEntryExtendedStandardLibrary:HashcashArray(Resources, Bits) end

---@param Resources TArray<FString>
---@param UtcDate FDateTime
---@param Bits int32
function ULowEntryExtendedStandardLibrary:HashcashArrayCustomCreationDate(Resources, UtcDate, Bits) end

---@param Resource FString
---@param UtcDate FDateTime
---@param Bits int32
function ULowEntryExtendedStandardLibrary:HashcashCustomCreationDate(Resource, UtcDate, Bits) end

---@param Hash FString
function ULowEntryExtendedStandardLibrary:HashcashParse(Hash) end

---@param Hashes TArray<FString>
function ULowEntryExtendedStandardLibrary:HashcashParseArray(Hashes) end

---@param Hex FString
function ULowEntryExtendedStandardLibrary:HexToBytes(Hex) end

---@param WorldContextObject UObject
---@param Map FString
---@param Args FString
---@param SpecificPlayer APlayerController
function ULowEntryExtendedStandardLibrary:HostGame(WorldContextObject, Map, Args, SpecificPlayer) end

function ULowEntryExtendedStandardLibrary:Html5Platform() end

---@param Value int32
function ULowEntryExtendedStandardLibrary:IntegerToBytes(Value) end

function ULowEntryExtendedStandardLibrary:IosPlatform() end

function ULowEntryExtendedStandardLibrary:IsAndroidDaydreamApplication() end

---@param B uint8
---@param Bit int32
function ULowEntryExtendedStandardLibrary:IsBitSet(B, Bit) end

---@param Success boolean
---@param Enabled boolean
function ULowEntryExtendedStandardLibrary:IsWorldRenderingEnabled(Success, Enabled) end

---@param WorldContextObject UObject
---@param ServerAddress FString
---@param Args FString
---@param SpecificPlayer APlayerController
function ULowEntryExtendedStandardLibrary:JoinGame(WorldContextObject, ServerAddress, Args, SpecificPlayer) end

---@param LatentAction ULowEntryLatentActionBoolean
function ULowEntryExtendedStandardLibrary:LatentAction_Create_Boolean(LatentAction) end

---@param LatentAction ULowEntryLatentActionFloat
function ULowEntryExtendedStandardLibrary:LatentAction_Create_Float(LatentAction) end

---@param LatentAction ULowEntryLatentActionInteger
function ULowEntryExtendedStandardLibrary:LatentAction_Create_Integer(LatentAction) end

---@param LatentAction ULowEntryLatentActionNone
function ULowEntryExtendedStandardLibrary:LatentAction_Create_None(LatentAction) end

---@param LatentAction ULowEntryLatentActionObject
function ULowEntryExtendedStandardLibrary:LatentAction_Create_Object(LatentAction) end

---@param LatentAction ULowEntryLatentActionString
function ULowEntryExtendedStandardLibrary:LatentAction_Create_String(LatentAction) end

---@param A uint8
---@param B float
function ULowEntryExtendedStandardLibrary:LessByteFloat(A, B) end

---@param A uint8
---@param B int32
function ULowEntryExtendedStandardLibrary:LessByteInteger(A, B) end

---@param A uint8
---@param B float
function ULowEntryExtendedStandardLibrary:LessEqualByteFloat(A, B) end

---@param A uint8
---@param B int32
function ULowEntryExtendedStandardLibrary:LessEqualByteInteger(A, B) end

---@param A float
---@param B uint8
function ULowEntryExtendedStandardLibrary:LessEqualFloatByte(A, B) end

---@param A float
---@param B int32
function ULowEntryExtendedStandardLibrary:LessEqualFloatInteger(A, B) end

---@param A int32
---@param B uint8
function ULowEntryExtendedStandardLibrary:LessEqualIntegerByte(A, B) end

---@param A int32
---@param B float
function ULowEntryExtendedStandardLibrary:LessEqualIntegerFloat(A, B) end

---@param A FString
---@param B FString
function ULowEntryExtendedStandardLibrary:LessEqualStringString(A, B) end

---@param A float
---@param B uint8
function ULowEntryExtendedStandardLibrary:LessFloatByte(A, B) end

---@param A float
---@param B int32
function ULowEntryExtendedStandardLibrary:LessFloatInteger(A, B) end

---@param A int32
---@param B uint8
function ULowEntryExtendedStandardLibrary:LessIntegerByte(A, B) end

---@param A int32
---@param B float
function ULowEntryExtendedStandardLibrary:LessIntegerFloat(A, B) end

---@param A FString
---@param B FString
function ULowEntryExtendedStandardLibrary:LessStringString(A, B) end

function ULowEntryExtendedStandardLibrary:LinuxPlatform() end

---@param MediaSoundComponent UMediaSoundComponent
---@param URL FString
---@param Success boolean
---@param MediaPlayer UMediaPlayer
---@param MediaTexture UMediaTexture
---@param PlayOnOpen boolean
---@param Loop boolean
function ULowEntryExtendedStandardLibrary:LoadVideo(MediaSoundComponent, URL, Success, MediaPlayer, MediaTexture, PlayOnOpen, Loop) end

---@param Value int64
function ULowEntryExtendedStandardLibrary:LongToBytes(Value) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:Long_Create(ByteArray, Index, Length) end

function ULowEntryExtendedStandardLibrary:Long_CreateZero() end

function ULowEntryExtendedStandardLibrary:MacPlatform() end

---@param DateTimeArray TArray<FDateTime>
---@param IndexOfMaxValue int32
---@param MaxValue FDateTime
function ULowEntryExtendedStandardLibrary:MaxOfDateTimeArray(DateTimeArray, IndexOfMaxValue, MaxValue) end

---@param StringArray TArray<FString>
---@param IndexOfMaxValue int32
---@param MaxValue FString
function ULowEntryExtendedStandardLibrary:MaxOfStringArray(StringArray, IndexOfMaxValue, MaxValue) end

---@param TimespanArray TArray<FTimespan>
---@param IndexOfMaxValue int32
---@param MaxValue FTimespan
function ULowEntryExtendedStandardLibrary:MaxOfTimespanArray(TimespanArray, IndexOfMaxValue, MaxValue) end

---@param A FString
---@param B FString
function ULowEntryExtendedStandardLibrary:MaxString(A, B) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:Md5(ByteArray, Index, Length) end

---@param A TArray<uint8>
---@param B TArray<uint8>
function ULowEntryExtendedStandardLibrary:MergeBytes(A, B) end

---@param ByteArrays TArray<ULowEntryByteArray>
function ULowEntryExtendedStandardLibrary:MergeEncapsulatedByteArrays(ByteArrays) end

---@param DateTimeArray TArray<FDateTime>
---@param IndexOfMinValue int32
---@param MinValue FDateTime
function ULowEntryExtendedStandardLibrary:MinOfDateTimeArray(DateTimeArray, IndexOfMinValue, MinValue) end

---@param StringArray TArray<FString>
---@param IndexOfMinValue int32
---@param MinValue FString
function ULowEntryExtendedStandardLibrary:MinOfStringArray(StringArray, IndexOfMinValue, MinValue) end

---@param TimespanArray TArray<FTimespan>
---@param IndexOfMinValue int32
---@param MinValue FTimespan
function ULowEntryExtendedStandardLibrary:MinOfTimespanArray(TimespanArray, IndexOfMinValue, MinValue) end

---@param A FString
---@param B FString
function ULowEntryExtendedStandardLibrary:MinString(A, B) end

function ULowEntryExtendedStandardLibrary:NewlineCharacter() end

---@param Queue ULowEntryExecutionQueue
function ULowEntryExtendedStandardLibrary:NextQueueExecution(Queue) end

---@param String FString
function ULowEntryExtendedStandardLibrary:ParseStringIntoDoubleBytes(String) end

---@param String FString
function ULowEntryExtendedStandardLibrary:ParseStringIntoLong(String) end

---@param String FString
function ULowEntryExtendedStandardLibrary:ParseStringIntoLongBytes(String) end

---@param Target ULowEntryParsedHashcash
function ULowEntryExtendedStandardLibrary:ParsedHashcashIsValid(Target) end

---@param ByteArray TArray<uint8>
---@param HashLength int32
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:Pearson(ByteArray, HashLength, Index, Length) end

---@param Width int32
---@param Height int32
---@param Pixels TArray<FColor>
---@param ImageFormat ELowEntryImageFormat
---@param ByteArray TArray<uint8>
---@param CompressionQuality int32
function ULowEntryExtendedStandardLibrary:PixelsToBytes(Width, Height, Pixels, ImageFormat, ByteArray, CompressionQuality) end

---@param ReusedGivenTexture2D boolean
---@param Texture2D UTexture2D
---@param Width int32
---@param Height int32
---@param Pixels TArray<FColor>
function ULowEntryExtendedStandardLibrary:PixelsToExistingTexture2D(ReusedGivenTexture2D, Texture2D, Width, Height, Pixels) end

---@param Width int32
---@param Height int32
---@param Pixels TArray<FColor>
function ULowEntryExtendedStandardLibrary:PixelsToTexture2D(Width, Height, Pixels) end

---@param PlayerController APlayerController
---@param Success boolean
---@param LocalPlayer ULocalPlayer
function ULowEntryExtendedStandardLibrary:PlayerControllerGetLocalPlayer(PlayerController, Success, LocalPlayer) end

function ULowEntryExtendedStandardLibrary:Ps4Platform() end

---@param WorldContextObject UObject
---@param Queue ULowEntryExecutionQueue
---@param LatentInfo FLatentActionInfo
function ULowEntryExtendedStandardLibrary:QueueExecutions(WorldContextObject, Queue, LatentInfo) end

---@param WorldContextObject UObject
---@param MinDuration float
---@param MaxDuration float
---@param LatentInfo FLatentActionInfo
function ULowEntryExtendedStandardLibrary:RandomDelay(WorldContextObject, MinDuration, MaxDuration, LatentInfo) end

---@param WorldContextObject UObject
---@param MinFrames int32
---@param MaxFrames int32
---@param LatentInfo FLatentActionInfo
function ULowEntryExtendedStandardLibrary:RandomDelayFrames(WorldContextObject, MinFrames, MaxFrames, LatentInfo) end

---@param String FString
---@param Pattern FString
function ULowEntryExtendedStandardLibrary:RegexCount(String, Pattern) end

---@param String FString
---@param Pattern FString
function ULowEntryExtendedStandardLibrary:RegexGetMatches(String, Pattern) end

---@param String FString
---@param Pattern FString
function ULowEntryExtendedStandardLibrary:RegexMatch(String, Pattern) end

---@param String FString
---@param Pattern FString
---@param Replacement FString
function ULowEntryExtendedStandardLibrary:RegexReplace(String, Pattern, Replacement) end

---@param String FString
---@param KeepLowercaseAZ boolean
---@param KeepUppercaseAZ boolean
---@param KeepNumbers boolean
---@param OtherCharactersToKeep FString
function ULowEntryExtendedStandardLibrary:RemoveCharactersExcept(String, KeepLowercaseAZ, KeepUppercaseAZ, KeepNumbers, OtherCharactersToKeep) end

---@param String FString
---@param ReplacementCharacter FString
---@param KeepLowercaseAZ boolean
---@param KeepUppercaseAZ boolean
---@param KeepNumbers boolean
---@param OtherCharactersToKeep FString
function ULowEntryExtendedStandardLibrary:ReplaceCharactersExcept(String, ReplacementCharacter, KeepLowercaseAZ, KeepUppercaseAZ, KeepNumbers, OtherCharactersToKeep) end

---@param WorldContextObject UObject
---@param Frames int32
---@param LatentInfo FLatentActionInfo
function ULowEntryExtendedStandardLibrary:RetriggerableDelayFrames(WorldContextObject, Frames, LatentInfo) end

---@param WorldContextObject UObject
---@param MinDuration float
---@param MaxDuration float
---@param LatentInfo FLatentActionInfo
function ULowEntryExtendedStandardLibrary:RetriggerableRandomDelay(WorldContextObject, MinDuration, MaxDuration, LatentInfo) end

---@param WorldContextObject UObject
---@param MinFrames int32
---@param MaxFrames int32
---@param LatentInfo FLatentActionInfo
function ULowEntryExtendedStandardLibrary:RetriggerableRandomDelayFrames(WorldContextObject, MinFrames, MaxFrames, LatentInfo) end

---@param Number float
---@param Decimals int32
function ULowEntryExtendedStandardLibrary:RoundDecimals(Number, Decimals) end

---@param SceneCapture2D ASceneCapture2D
---@param ImageFormat ELowEntryImageFormat
---@param ByteArray TArray<uint8>
---@param CompressionQuality int32
function ULowEntryExtendedStandardLibrary:SceneCapture2DToBytes(SceneCapture2D, ImageFormat, ByteArray, CompressionQuality) end

---@param SceneCapture2D ASceneCapture2D
---@param Width int32
---@param Height int32
---@param Pixels TArray<FColor>
function ULowEntryExtendedStandardLibrary:SceneCapture2DToPixels(SceneCapture2D, Width, Height, Pixels) end

---@param SceneCapture2D ASceneCapture2D
---@param FOV float
function ULowEntryExtendedStandardLibrary:SceneCapture2D_GetFov(SceneCapture2D, FOV) end

---@param SceneCapture2D ASceneCapture2D
---@param FOV float
function ULowEntryExtendedStandardLibrary:SceneCapture2D_SetFov(SceneCapture2D, FOV) end

---@param SceneCaptureComponent2D USceneCaptureComponent2D
---@param ImageFormat ELowEntryImageFormat
---@param ByteArray TArray<uint8>
---@param CompressionQuality int32
function ULowEntryExtendedStandardLibrary:SceneCaptureComponent2DToBytes(SceneCaptureComponent2D, ImageFormat, ByteArray, CompressionQuality) end

---@param SceneCaptureComponent2D USceneCaptureComponent2D
---@param Width int32
---@param Height int32
---@param Pixels TArray<FColor>
function ULowEntryExtendedStandardLibrary:SceneCaptureComponent2DToPixels(SceneCaptureComponent2D, Width, Height, Pixels) end

---@param SceneCaptureComponent2D USceneCaptureComponent2D
---@param FOV float
function ULowEntryExtendedStandardLibrary:SceneCaptureComponent2D_GetFov(SceneCaptureComponent2D, FOV) end

---@param SceneCaptureComponent2D USceneCaptureComponent2D
---@param FOV float
function ULowEntryExtendedStandardLibrary:SceneCaptureComponent2D_SetFov(SceneCaptureComponent2D, FOV) end

---@param WorldContextObject UObject
---@param Map FString
---@param Args FString
---@param SpecificPlayer APlayerController
function ULowEntryExtendedStandardLibrary:ServerChangeMap(WorldContextObject, Map, Args, SpecificPlayer) end

---@param Target AActor
---@param TeamID uint8
function ULowEntryExtendedStandardLibrary:SetGenericTeamId(Target, TeamID) end

---@param Locked boolean
function ULowEntryExtendedStandardLibrary:SetMouseLockedToViewport(Locked) end

---@param X int32
---@param Y int32
function ULowEntryExtendedStandardLibrary:SetMousePosition(X, Y) end

---@param X float
---@param Y float
function ULowEntryExtendedStandardLibrary:SetMousePositionInPercentages(X, Y) end

---@param Enabled boolean
function ULowEntryExtendedStandardLibrary:SetSplitScreenEnabled(Enabled) end

---@param Type ELowEntrySplitScreenTypeThreePlayers
function ULowEntryExtendedStandardLibrary:SetSplitScreenType_ThreePlayers(Type) end

---@param Type ELowEntrySplitScreenTypeTwoPlayers
function ULowEntryExtendedStandardLibrary:SetSplitScreenType_TwoPlayers(Type) end

---@param Fullscreen boolean
---@param IsFullscreenWindowed boolean
function ULowEntryExtendedStandardLibrary:SetWindowMode(Fullscreen, IsFullscreenWindowed) end

---@param X float
---@param Y float
function ULowEntryExtendedStandardLibrary:SetWindowPositiomInPercentagesCentered(X, Y) end

---@param X int32
---@param Y int32
function ULowEntryExtendedStandardLibrary:SetWindowPosition(X, Y) end

---@param Width int32
---@param Height int32
function ULowEntryExtendedStandardLibrary:SetWindowSize(Width, Height) end

---@param Enabled boolean
function ULowEntryExtendedStandardLibrary:SetWorldRenderingEnabled(Enabled) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:Sha1(ByteArray, Index, Length) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:Sha256(ByteArray, Index, Length) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryExtendedStandardLibrary:Sha512(ByteArray, Index, Length) end

function ULowEntryExtendedStandardLibrary:ShippingBuild() end

---@param inString FString
function ULowEntryExtendedStandardLibrary:SimpleKismetSystemLibraryPrintString(inString) end

---@param ByteArray TArray<uint8>
---@param Reversed boolean
function ULowEntryExtendedStandardLibrary:SortByteArray(ByteArray, Reversed) end

---@param ByteArray TArray<uint8>
---@param Reversed boolean
function ULowEntryExtendedStandardLibrary:SortByteArrayDirectly(ByteArray, Reversed) end

---@param DateTimeArray TArray<FDateTime>
---@param Reversed boolean
function ULowEntryExtendedStandardLibrary:SortDateTimeArray(DateTimeArray, Reversed) end

---@param DateTimeArray TArray<FDateTime>
---@param Reversed boolean
function ULowEntryExtendedStandardLibrary:SortDateTimeArrayDirectly(DateTimeArray, Reversed) end

---@param FloatArray TArray<float>
---@param Reversed boolean
function ULowEntryExtendedStandardLibrary:SortFloatArray(FloatArray, Reversed) end

---@param FloatArray TArray<float>
---@param Reversed boolean
function ULowEntryExtendedStandardLibrary:SortFloatArrayDirectly(FloatArray, Reversed) end

---@param IntegerArray TArray<int32>
---@param Reversed boolean
function ULowEntryExtendedStandardLibrary:SortIntegerArray(IntegerArray, Reversed) end

---@param IntegerArray TArray<int32>
---@param Reversed boolean
function ULowEntryExtendedStandardLibrary:SortIntegerArrayDirectly(IntegerArray, Reversed) end

---@param ObjectArray TArray<UObject>
---@param Comparator FSortObjectArrayComparator
---@param Reversed boolean
function ULowEntryExtendedStandardLibrary:SortObjectArray(ObjectArray, Comparator, Reversed) end

---@param ObjectArray TArray<UObject>
---@param Comparator FSortObjectArrayDirectlyComparator
---@param Reversed boolean
function ULowEntryExtendedStandardLibrary:SortObjectArrayDirectly(ObjectArray, Comparator, Reversed) end

---@param StringArray TArray<FString>
---@param Reversed boolean
function ULowEntryExtendedStandardLibrary:SortStringArray(StringArray, Reversed) end

---@param StringArray TArray<FString>
---@param Reversed boolean
function ULowEntryExtendedStandardLibrary:SortStringArrayDirectly(StringArray, Reversed) end

---@param TimespanArray TArray<FTimespan>
---@param Reversed boolean
function ULowEntryExtendedStandardLibrary:SortTimespanArray(TimespanArray, Reversed) end

---@param TimespanArray TArray<FTimespan>
---@param Reversed boolean
function ULowEntryExtendedStandardLibrary:SortTimespanArrayDirectly(TimespanArray, Reversed) end

---@param SoundClass USoundClass
function ULowEntryExtendedStandardLibrary:SoundClass_GetPitch(SoundClass) end

---@param SoundClass USoundClass
function ULowEntryExtendedStandardLibrary:SoundClass_GetVolume(SoundClass) end

---@param SoundClass USoundClass
---@param Pitch float
function ULowEntryExtendedStandardLibrary:SoundClass_SetPitch(SoundClass, Pitch) end

---@param SoundClass USoundClass
---@param Volume float
function ULowEntryExtendedStandardLibrary:SoundClass_SetVolume(SoundClass, Volume) end

---@param ByteArray TArray<uint8>
---@param LengthA int32
---@param A TArray<uint8>
---@param B TArray<uint8>
function ULowEntryExtendedStandardLibrary:SplitBytes(ByteArray, LengthA, A, B) end

---@param String FString
function ULowEntryExtendedStandardLibrary:StringToBytesUtf8(String) end

function ULowEntryExtendedStandardLibrary:SwitchPlatform() end

function ULowEntryExtendedStandardLibrary:TabCharacter() end

function ULowEntryExtendedStandardLibrary:TestBuild() end

---@param Texture2D UTexture2D
---@param ImageFormat ELowEntryImageFormat
---@param ByteArray TArray<uint8>
---@param CompressionQuality int32
function ULowEntryExtendedStandardLibrary:Texture2DToBytes(Texture2D, ImageFormat, ByteArray, CompressionQuality) end

---@param Texture2D UTexture2D
---@param Width int32
---@param Height int32
---@param Pixels TArray<FColor>
function ULowEntryExtendedStandardLibrary:Texture2DToPixels(Texture2D, Width, Height, Pixels) end

---@param TextureRenderTarget2D UTextureRenderTarget2D
---@param ImageFormat ELowEntryImageFormat
---@param ByteArray TArray<uint8>
---@param CompressionQuality int32
function ULowEntryExtendedStandardLibrary:TextureRenderTarget2DToBytes(TextureRenderTarget2D, ImageFormat, ByteArray, CompressionQuality) end

---@param TextureRenderTarget2D UTextureRenderTarget2D
---@param Width int32
---@param Height int32
---@param Pixels TArray<FColor>
function ULowEntryExtendedStandardLibrary:TextureRenderTarget2DToPixels(TextureRenderTarget2D, Width, Height, Pixels) end

---@param Texture UTexture
function ULowEntryExtendedStandardLibrary:TextureUpdateResource(Texture) end

---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
---@param Ticks int32
---@param FramesInterval int32
---@param Tick int32
function ULowEntryExtendedStandardLibrary:TickFrames(WorldContextObject, LatentInfo, Ticks, FramesInterval, Tick) end

---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
---@param Ticks int32
---@param SecondsInterval float
---@param Tick int32
function ULowEntryExtendedStandardLibrary:TickSeconds(WorldContextObject, LatentInfo, Ticks, SecondsInterval, Tick) end

function ULowEntryExtendedStandardLibrary:Windows32Platform() end

function ULowEntryExtendedStandardLibrary:Windows64Platform() end

function ULowEntryExtendedStandardLibrary:WindowsNewlineCharacter() end

function ULowEntryExtendedStandardLibrary:WindowsPlatform() end

function ULowEntryExtendedStandardLibrary:WindowsRtArmPlatform() end

function ULowEntryExtendedStandardLibrary:WindowsRtPlatform() end

function ULowEntryExtendedStandardLibrary:WithEditor() end

function ULowEntryExtendedStandardLibrary:XboxOnePlatform() end

---@param Result_ boolean
function ULowEntryLatentActionBoolean:Done(Result_) end

---@param Result_ boolean
function ULowEntryLatentActionBoolean:GetResult(Result_) end

function ULowEntryLatentActionBoolean:IsDone() end

---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
---@param Result_ boolean
function ULowEntryLatentActionBoolean:WaitTillDone(WorldContextObject, LatentInfo, Result_) end

---@param Result_ float
function ULowEntryLatentActionFloat:Done(Result_) end

---@param Result_ float
function ULowEntryLatentActionFloat:GetResult(Result_) end

function ULowEntryLatentActionFloat:IsDone() end

---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
---@param Result_ float
function ULowEntryLatentActionFloat:WaitTillDone(WorldContextObject, LatentInfo, Result_) end

---@param Result_ int32
function ULowEntryLatentActionInteger:Done(Result_) end

---@param Result_ int32
function ULowEntryLatentActionInteger:GetResult(Result_) end

function ULowEntryLatentActionInteger:IsDone() end

---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
---@param Result_ int32
function ULowEntryLatentActionInteger:WaitTillDone(WorldContextObject, LatentInfo, Result_) end

function ULowEntryLatentActionNone:Done() end

function ULowEntryLatentActionNone:IsDone() end

---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
function ULowEntryLatentActionNone:WaitTillDone(WorldContextObject, LatentInfo) end

---@param Result_ UObject
function ULowEntryLatentActionObject:Done(Result_) end

---@param Result_ UObject
function ULowEntryLatentActionObject:GetResult(Result_) end

function ULowEntryLatentActionObject:IsDone() end

---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
---@param Result_ UObject
function ULowEntryLatentActionObject:WaitTillDone(WorldContextObject, LatentInfo, Result_) end

---@param Result_ FString
function ULowEntryLatentActionString:Done(Result_) end

---@param Result_ FString
function ULowEntryLatentActionString:GetResult(Result_) end

function ULowEntryLatentActionString:IsDone() end

---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
---@param Result_ FString
function ULowEntryLatentActionString:WaitTillDone(WorldContextObject, LatentInfo, Result_) end

function ULowEntryLong:CastToDoubleBytes() end

function ULowEntryLong:CastToString() end

function ULowEntryLong:CreateClone() end

---@param Value ULowEntryDouble
function ULowEntryLong:DoubleBytes_GreaterThan(Value) end

---@param Value ULowEntryDouble
function ULowEntryLong:DoubleBytes_LessThan(Value) end

---@param Value float
function ULowEntryLong:Float_GreaterThan(Value) end

---@param Value float
function ULowEntryLong:Float_LessThan(Value) end

function ULowEntryLong:GetBytes() end

function ULowEntryLong:GetLong() end

---@param Value int32
function ULowEntryLong:Integer_Add(Value) end

---@param Value int32
function ULowEntryLong:Integer_Equals(Value) end

---@param Value int32
function ULowEntryLong:Integer_GreaterThan(Value) end

---@param Value int32
function ULowEntryLong:Integer_LessThan(Value) end

---@param Value int32
function ULowEntryLong:Integer_Subtract(Value) end

---@param Value ULowEntryLong
function ULowEntryLong:LongBytes_Add(Value) end

---@param Value ULowEntryLong
function ULowEntryLong:LongBytes_Equals(Value) end

---@param Value ULowEntryLong
function ULowEntryLong:LongBytes_GreaterThan(Value) end

---@param Value ULowEntryLong
function ULowEntryLong:LongBytes_LessThan(Value) end

---@param Value ULowEntryLong
function ULowEntryLong:LongBytes_Subtract(Value) end

---@param ByteArray TArray<uint8>
---@param Index int32
---@param Length int32
function ULowEntryLong:SetBytes(ByteArray, Index, Length) end

---@param Value int64
function ULowEntryLong:SetLong(Value) end

function ULowEntryParsedHashcash:GetBits() end

function ULowEntryParsedHashcash:GetDate() end

function ULowEntryParsedHashcash:GetResource() end

function ULowEntryParsedHashcash:ToString() end
