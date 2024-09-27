.PHONY: all libimgui.a imgui.go

all: libimgui.a imgui.go

# Build imgui as a static library. It's needed to be linked against when building
# the Go code using this wrapper.
#
# To add more backends, add the specific files here.
libimgui.a:
	@echo "Building libimgui.a..."
	cd ./imgui && \
	g++ -c -I. imgui*.cpp ./backends/imgui_impl_glfw.cpp ./backends/imgui_impl_opengl3.cpp && \
	ar rcs libimgui.a *.o

# Use swig to generate the Go & C++ wrapper code for imgui
imgui.go:
	@echo "Generating go wrapper with SWIG..."
	# generate the go wrapper
	#swig -go -c++ -intgosize 64 -module imgui -I./imgui -I./imgui/backends imgui.i
	swig -go -c++ -intgosize 64 -module imgui imgui.i 2>&1 | tee build.log

	## A very patchy fix 
	# Fixes the build error in Go
	# Better fix would be to add -I./imgui somehow in the generated go code
	# so that cgo knows to use it, but didn't figure that one out yet...
	cp ./imgui/imgui.h .
