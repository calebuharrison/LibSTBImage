lib LibSTBImage
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

  fun load_16_from_memory = stbi_load_16_from_memory( buffer            : Pointer(STBIUC),
                                                      len               : Int32,
                                                      x                 : Pointer(Int32),
                                                      y                 : Pointer(Int32),
                                                      channels_in_file  : Pointer(Int32),
                                                      desired_channels  : Int32) : Pointer(STBIUS)

  fun load_16_from_callbacks = stbi_load_16_from_callbacks( clbk              : Pointer(STBIIOCallbacks),
                                                            user              : Pointer(Void),
                                                            x                 : Pointer(Int32),
                                                            y                 : Pointer(Int32),
                                                            channels_in_file  : Pointer(Int32),
                                                            desired_channels  : Int32) : Pointer(STBIUS)

  fun load_16 = stbi_load_16( filename          : Pointer(UInt8),
                              x                 : Pointer(Int32),
                              y                 : Pointer(Int32),
                              channels_in_file  : Pointer(Int32),
                              desired_channels  : Int32) : Pointer(STBIUS)

  fun load_from_file_16 = stbi_load_from_file_16( f                 : Pointer(Void),
                                                  x                 : Pointer(Int32),
                                                  y                 : Pointer(Int32),
                                                  channels_in_file  : Pointer(Int32),
                                                  desired_channels  : Int32) : Pointer(STBIUS)

  fun loadf_from_memory = stbi_loadf_from_memory( buffer            : Pointer(STBIUC),
                                                  len               : Int32,
                                                  x                 : Pointer(Int32),
                                                  y                 : Pointer(Int32),
                                                  channels_in_file  : Pointer(Int32),
                                                  desired_channels  : Int32) : Pointer(Float32)

  fun loadf_from_callbacks = stbi_loadf_from_callbacks( clbk              : Pointer(STBIIOCallbacks),
                                                        user              : Pointer(Void),
                                                        x                 : Pointer(Int32),
                                                        y                 : Pointer(Int32),
                                                        channels_in_file  : Pointer(Int32),
                                                        desired_channels  : Int32) : Pointer(Float32)

  fun loadf = stbi_loadf( filename          : Pointer(UInt8),
                          x                 : Pointer(Int32),
                          y                 : Pointer(Int32),
                          channels_in_file  : Pointer(Int32),
                          desired_channels  : Int32) : Pointer(Float32)

  fun loadf_from_file = stbi_loadf_from_file( f                 : Pointer(Void),
                                              x                 : Pointer(Int32),
                                              y                 : Pointer(Int32),
                                              channels_in_file  : Pointer(Int32),
                                              desired_channels  : Int32) : Pointer(Float32)

  fun hdr_to_ldr_gamma = stbi_hdr_to_ldr_gamma(gamma : Float32) : Void

  fun hdr_to_ldr_scale = stbi_hdr_to_ldr_scale(scale : Float32) : Void

  fun ldr_to_hdr_gamma = stbi_ldr_to_hdr_gamma(gamma : Float32) : Void

  fun ldr_to_hdr_scale = stbi_ldr_to_hdr_scale(scale : Float32) : Void

  fun is_hdr_from_callbacks = stbi_is_hdr_from_callbacks( clbk  : Pointer(STBIIOCallbacks),
                                                          user  : Pointer(Void)) : Int32

  fun is_hdr_from_memory = stbi_is_hdr_from_memory( buffer  : Pointer(STBIUC),
                                                    len     : Int32) : Int32

  fun is_hdr = stbi_is_hdr(filename : Pointer(UInt8)) : Int32
  
  fun is_hdr_from_file = stbi_is_hdr_from_file(f : Pointer(Void)) : Int32

  fun failure_reason = stbi_failure_reason : Pointer(UInt8)

  fun image_free = stbi_image_free(retval_from_stbi_load : Pointer(Void)) : Void

  fun info_from_memory = stbi_info_from_memory( buffer  : Pointer(STBIUC),
                                                len     : Int32,
                                                x       : Pointer(Int32),
                                                y       : Pointer(Int32),
                                                comp    : Pointer(Int32)) : Int32

  fun info_from_callbacks = stbi_info_from_callbacks( clbk  : Pointer(STBIIOCallbacks),
                                                      user  : Pointer(Void),
                                                      x     : Pointer(Int32),
                                                      y     : Pointer(Int32),
                                                      comp  : Pointer(Int32)) : Int32

  fun info = stbi_info( filename  : Pointer(UInt8),
                        x         : Pointer(Int32),
                        y         : Pointer(Int32),
                        comp      : Pointer(Int32)) : Int32

  fun info_from_file = stbi_info_from_file( f     : Pointer(Void),
                                            x     : Pointer(Int32),
                                            y     : Pointer(Int32),
                                            comp  : Pointer(Int32)) : Int32

  fun set_unpremultiply_on_load = stbi_set_unpremultiply_on_load(flag_true_if_should_unpremultiply : Int32) : Void

  fun convert_iphone_png_to_rgb = stbi_convert_iphone_png_to_rgb(flag_true_if_should_convert : Int32) : Void

  fun set_flip_vertically_on_load = stbi_set_flip_vertically_on_load(flag_true_if_should_flip : Int32) : Void

  fun decode_malloc_guessize = stbi_zlib_decode_malloc_guessize(buffer        : Pointer(UInt8),
                                                                len           : Int32,
                                                                initial_size  : Int32,
                                                                outlen        : Pointer(Int32)) : Pointer(UInt8)

  fun decode_malloc_guessize_headerflag = stbi_zlib_decode_malloc_guessize_headerflag(buffer        : Pointer(UInt8),
                                                                                      len           : Int32,
                                                                                      initial_size  : Int32,
                                                                                      outlen        : Pointer(Int32),
                                                                                      parse_header  : Int32) : Pointer(UInt8)

  fun decode_malloc = stbi_zlib_decode_malloc(buffer  : Pointer(UInt8),
                                              len     : Int32,
                                              outlen  : Pointer(Int32)) : Pointer(UInt8)

  fun decode_buffer = stbi_zlib_decode_buffer(obuffer : Pointer(UInt8),
                                              olen    : Int32,
                                              ibuffer : Pointer(UInt8),
                                              ilen    : Int32) : Int32

  fun decode_noheader_malloc( buffer  : Pointer(UInt8),
                              len     : Int32,
                              outlen  : Pointer(Int32)) : Pointer(UInt8)

  fun decode_noheader_buffer( obuffer : Pointer(UInt8),
                              olen    : Int32,
                              ibuffer : Pointer(UInt8),
                              ilen    : Int32) : Int32
end