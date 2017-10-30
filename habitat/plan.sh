pkg_name=national-parks
pkg_origin=franklinwebber
pkg_version="0.1.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=('Apache-2.0')
pkg_build_deps=( core/maven )
pkg_deps=( core/tomcat8 core/jre8 )
pkg_svc_user=root

pkg_binds=(
  [database]="port"
)

do_build() {
    mvn package
}

do_install() {
    cp target/$pkg_name.war $pkg_prefix
}
