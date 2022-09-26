vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO Blyschak/cobalt-ecs
	REF a55a98197419fff08828f479d8ac1b412bdb0a51
	SHA512 1cfc9af6fce2255e8a5fc919661482c18ea07bba391c3fe5c6f80cae77bf7aed9bd681227918cecaba102d29c9d4e1585055650e48b071aa3541269ad7f315c5
	HEAD_REF main
)

vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)
