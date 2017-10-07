require "./lib_stb_image/**"

@[Link(ldflags: "#{__DIR__}/lib_stb_image/ext/stb_image.a")]
lib LibSTBImage
end