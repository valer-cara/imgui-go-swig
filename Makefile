go-wrapper:
	# generate the go wrapper
	swig -go -c++ -intgosize 64 -module imgui -I./imgui swig/imgui.i
