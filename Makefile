go-wrapper:
	# generate the go wrapper
	#swig -go -c++ -intgosize 64 -module imgui -I./imgui -I./imgui/backends imgui.i
	swig -go -c++ -intgosize 64 -module imgui imgui.i | tee build.log
