pkg_name=national-parks
pkg_origin=franklinwebber
pkg_version="0.1.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=('Apache-2.0')
pkg_build_deps=( core/maven )
pkg_deps=( core/tomcat8 core/jre8 )
pkg_svc_user=root

pkg_binds_optional=(
  [database]="port"
)

do_build() {
    cp -r src $HAB_CACHE_SRC_PATH/$pkg_dirname/src
    cp pom.xml $HAB_CACHE_SRC_PATH/$pkg_dirname/pom.xml
    cd $HAB_CACHE_SRC_PATH/$pkg_dirname
    mvn package
}

do_install() {
    cp $HAB_CACHE_SRC_PATH/$pkg_dirname/target/$pkg_name.war $pkg_prefix/
}
