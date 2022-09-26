vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO Blyschak/cobalt-ecs
	REF a55a98197419fff08828f479d8ac1b412bdb0a51
	SHA512 5a245f8c8ed3fd61f3a6c4d8efc2fd0238c1a2f13189fabb06608de7437906bf2ffb6f54dffe5c777f9fe9e643f41c326093405669b4f58237b0373bf0081ec4
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
