class_name DPrint extends Object


static func d_print(...input:Array) -> void:
	if not OS.is_debug_build() : return
	print(input)
	return

static func d_print_verbose(...input:Array)-> void:
	if not OS.is_debug_build() : return
	print_verbose(input)
