// imgui.i
%module imgui

%{
#include "imgui/imgui.h"
#include "imgui/backends/imgui_impl_opengl3.h"
#include "imgui/backends/imgui_impl_glfw.h"
%}

%include "imgui/imgui.h"
%include "imgui/backends/imgui_impl_opengl3.h"
%include "imgui/backends/imgui_impl_glfw.h"


