lib LibSTBImage
  alias STBIUC = UInt8 
  alias STBIUS = UInt16

  struct STBIIOCallbacks
    read  : (Pointer(Void), Pointer(UInt8), Int32 -> Pointer(Int32))
    skip  : (Pointer(Void), Int32 -> Pointer(Void))
    eof   : (Pointer(Void) -> Pointer(Int32))
  end

  fun load_from_memory = stbi_load_from_memory( buffer            : Pointer(STBIUC),
                                                len               : Int32,
                                                x                 : Pointer(Int32),
                                                y                 : Pointer(Int32),
                                                channels_in_file  : Pointer(Int32),
                                                desired_channels  : Int32) : Pointer(STBIUC)

  fun load_from_callbacks = stbi_load_from_callbacks( clbk              : Pointer(STBIIOCallbacks),
                                                      user              : Pointer(Void),
                                                      x                 : Pointer(Int32),
                                                      y                 : Pointer(Int32),
                                                      channels_in_file  : Pointer(Int32),
                                                      desired_channels  : Int32) : Pointer(STBIUC)

  fun load = stbi_load( filename          : Pointer(UInt8),
                        x                 : Pointer(Int32),
                        y                 : Pointer(Int32),
                        channels_in_file  : Pointer(Int32),
                        desired_channels  : Int32) : Pointer(STBIUC)

  fun load_from_file = stbi_load_from_file( f                 : Pointer(Void),
                                            x                 : Pointer(Int32),
                                            y                 : Pointer(Int32),
                                            channels_in_file  : Pointer(Int32),
                                            desired_channels  : Int32) : Pointer(STBIUC)
end
