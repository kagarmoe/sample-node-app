$pkg_name="sample-node-app"
$pkg_origin="kagarmoe"
$pkg_version="0.1.0"
$pkg_maintainer="The Chef Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("Apache-2.0")
$pkg_deps=(core/node)

do_build() {
  npm install
}

do_install() {
  local app_path="$pkg_prefix/app"
  mkdir -p $app_path

  cp -R \
    node_modules \
    public \
    routes \
    views \
    package.json \
    app.js \
    index.js \
    $app_path
}
