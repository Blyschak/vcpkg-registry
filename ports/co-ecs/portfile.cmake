vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO Blyschak/cobalt-ecs
	REF fdd768bdaf2a894cedbb93a6146c52e4b0a3f92e
	SHA512 aacc08a4b80e4957d4fbcd317cc078dd909c93b6ce6ef01ab4b8c6ce55329e013d99c10ab37e1385555e2072c790932ff66460e97f3d6733bc591a909fb069ef
	HEAD_REF main
)

vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
