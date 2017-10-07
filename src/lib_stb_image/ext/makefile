.PHONY: all
all: clean stb_image.a

stb_image.a: 	stb_image.o
							ar rcs stb_image.a stb_image.o

.PHONY: clean
clean:
				rm -rf stb_image.a stb_image.o