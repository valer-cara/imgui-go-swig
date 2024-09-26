go-wrapper:
	# generate the go wrapper
	swig -go -c++ -intgosize 64 -module imgui -I./imgui -I./imgui/backends swig/imgui.i
