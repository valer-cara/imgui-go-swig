// imgui.i
%module imgui

%{
#include "imgui/imgui.h"
#include "imgui/backends/imgui_impl_opengl3.h"
#include "imgui/backends/imgui_impl_glfw.h"
%}

%ignore ImGui::TextV;
%ignore ImGui::TextColoredV;
%ignore ImGui::TextDisabledV;
%ignore ImGui::TextWrappedV;
%ignore ImGui::LabelTextV;
%ignore ImGui::BulletTextV;
%ignore ImGui::TreeNodeV;
%ignore ImGui::TreeNodeV;
%ignore ImGui::TreeNodeExV;
%ignore ImGui::TreeNodeExV;
%ignore ImGui::SetTooltipV;
%ignore ImGui::SetItemTooltipV;
%ignore ImGui::LogTextV;
%ignore ImGui::DebugLogV;
%ignore ImGui::appendfv;

%include "imgui/imgui.h"
%include "imgui/backends/imgui_impl_opengl3.h"
%include "imgui/backends/imgui_impl_glfw.h"

