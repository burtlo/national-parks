pkg_name=national-parks
pkg_origin=franklinwebber
pkg_version="0.1.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=('Apache-2.0')
pkg_build_deps=( core/maven )

do_build() {
    mvn package
}

do_install() {
    target/$pkg_name.war $pkg_prefix
}
