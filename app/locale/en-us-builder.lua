locale_index = {
	copyright = "eluaproject.net",
	upload_title = "Upload",
	builds_title = "Build Configurations",
	edit_build_title = "Edit Build Configuration",
	new_build_title = "New Build Configuration",
	files_title = "Stored Files for the ROM File System",
	label_progress = "Progress",
	label_back = "Back",
	label_remove = "Remove",
	label_edit = "Edit",
	label_actions = "Actions",
	label_download = "Download",
	label_addfile = "Add Files",
	label_select = "Add",
	open_file = "The selected file does not exist.",
	label_add_files = "Selected Files",
	label_autorun = "Autorun",
	label_remove_edit = "Remove/Edit",
	label_remove_download = "Remove/Download",
	files_romfs_title = "ROM File System",
	files_romfsmode_title = "ROMFS Build Mode",
	labels = {
				greeting = "Hello",
				filename = "File Name",
				created_at = "Created at",
				title = "Build Name",
				id = "Id",
				configs = "Scons line command",
				newbuild = "New Build",
				title_build = "Build Configuration Name",
				title_MCU = "MCU",
				confirmDeleteFile= "Do you really want to remove this file?",
				confirmDeleteBuild= "Do you really want to remove this build?",
				logout = "Logout",
				edit_account = "Account",
				confirmDownloadFile = "Confirms download file?",
				open_file = "The selected file does not exist.",
				file_type = "File Type",
				view = "Only user files",
				basic = "Basic",
				advanced = "Advanced",
				mode = "Build Options Configuration",
				general = "General",
				net ="Network",
				luarpc = "LuaRPC",
				box_view = "Add Files",
				close_box = "Close",
				files_list = "Stored Files",
				home = "Home",
	},
	validator = {
					title_build = "The field 'Build Name' must be filled in.",
					file_id = "Select a file",
					title_target =  "Select a Target",
					checkNotExistBuild = "This Build name has already been used.",
					ip_address = "The IP address",
					mask_address = "The subnet mask",
					gateway_address = "The gateway IP",
					dns_address = "The DNS",
					address_valid = "is not valid.",
					autorun = "You cannot have selected autorun option distinct of the physical autorun file.",
	}
}
	
locale_components = {
	target_title = "Target Platform",
	component_title = "Components",
	net_title = "Network",
	luarpc_title = "LuaRPC",
	toolchain_title = "Toolchain",
	lua_optimize = "Lua Optimize RAM Flag",
	labels = {
				target = "Target",
				build_xmodem = "BUILD_XMODEM",
				build_shell = "BUILD_SHELL",
				build_romfs = "BUILD_ROMFS",
				build_term = "BUILD_TERM",
				build_uip = "BUILD_UIP",
				build_dhcpc = "BUILD_DHCPC",
				build_dns = "BUILD_DNS",
				build_con_generic = "BUILD_CON_GENERIC",
				build_con_tcp = "BUILD_CON_TCP",
				build_adc = "BUILD_ADC",
				build_rpc = "BUILD_RPC",
				build_mmcfs = "BUILD_MMCFS",
				toolchain_default = "Default",
				toolchain_codesourcery = "CodeSourcery",
				toolchain_eabi = "EABI",	
				toolchain_yagarto = "Yagarto",
				romfsmode_verbatim = "VERBATIM",
				romfsmode_compressed = "COMPRESSED",
				romfsmode_compiled = "COMPILED",
				ip = "IP Adress:",	
				mask = "Subnet Mask:",	
				dns = "DNS:",
				gateway = "Gateway IP:",
			},
	target_prompt = "Select your target",
	target_info = "The targeted platform for the build.",
	label_build = "Save",
	build_xmodem = "XModem Protocol support for file transfers on the eLua Terminal.",	
	build_shell = "A simple command line Shell for eLua.",
	build_romfs = "A simple Flash read-only File System.",
	build_term = "Video Terminal I/O support.",
	build_uip = "TCP/IP Stack suppor.t",
	build_dhcpc = "A DHCP client.",
	build_dns = "A DNS client.",
	build_con_generic = "Serial (UART) Console support.",
	build_con_tcp = "TCP/IP (Ethernet) Console support.",
	build_adc = "Analog to Digital Converter module support.",
	build_rpc = "",
	build_mmcfs = "",
}
