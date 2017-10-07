lib LibSTBImage

  enum Channels
    Default   = 0
    Grey      = 1
    GreyAlpha = 2
    RGB       = 3
    RGBAlpha  = 4
  end

  alias STBIUC = UInt8 
  alias STBIUS = UInt16

  struct STBIIOCallbacks
    read  : (Pointer(Void), Pointer(UInt8), Int32 -> Pointer(Int32))
    skip  : (Pointer(Void), Int32 -> Pointer(Void))
    eof   : (Pointer(Void) -> Pointer(Int32))
  end

end