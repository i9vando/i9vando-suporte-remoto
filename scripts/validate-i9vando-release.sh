#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
config_file="$root_dir/libs/hbb_common/src/config.rs"

if grep -q '__PENDENTE_CHAVE_PUBLICA_SERVIDOR__' "$config_file"; then
  echo "ERRO: a chave pública do servidor ainda não foi configurada." >&2
  exit 2
fi

grep -q 'remoto.i9vando.com.br' "$config_file"
grep -q 'I9VANDO' "$config_file"
grep -q 'ProductName = "I9VANDO Suporte Remoto"' "$root_dir/Cargo.toml"
grep -q 'CompanyName = "Inovando Tecnologia Ltda."' "$root_dir/Cargo.toml"
grep -q 'ProductName = "I9VANDO Suporte Remoto"' "$root_dir/libs/portable/Cargo.toml"
grep -q 'CompanyName = "Inovando Tecnologia Ltda."' "$root_dir/libs/portable/Cargo.toml"
grep -q 'CompanyName", "Inovando Tecnologia Ltda.' "$root_dir/flutter/windows/runner/Runner.rc"
grep -q 'applicationId "br.com.i9vando.suporte"' "$root_dir/flutter/android/app/build.gradle"
grep -q 'android:label="I9VANDO Suporte"' "$root_dir/flutter/android/app/src/main/AndroidManifest.xml"
grep -q '<string>I9VANDO Suporte</string>' "$root_dir/flutter/ios/Runner/Info.plist"
grep -q 'PRODUCT_BUNDLE_IDENTIFIER = br.com.i9vando.suporte;' "$root_dir/flutter/ios/Runner.xcodeproj/project.pbxproj"
grep -q '^Name=I9VANDO Suporte Remoto$' "$root_dir/res/rustdesk.desktop"
test -s "$root_dir/res/icon.png"
test -s "$root_dir/res/icon.ico"
test -s "$root_dir/res/tray-icon.ico"
test -s "$root_dir/res/mac-icon.png"
test -s "$root_dir/flutter/assets/icon.png"
test -s "$root_dir/flutter/assets/icon.ico"
test -s "$root_dir/flutter/assets/logo.png"
test -s "$root_dir/flutter/assets/logo_light.png"
test -s "$root_dir/flutter/assets/logo_dark.png"
test -s "$root_dir/flutter/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png"
test -s "$root_dir/flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png"
test -s "$root_dir/flutter/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@3x.png"
grep -q 'Baseado em RustDesk OSS' "$root_dir/flutter/lib/common.dart"
! test -e "$root_dir/flutter/assets/icon.svg"
! test -e "$root_dir/res/logo.svg"
! test -e "$root_dir/res/logo-header.svg"

echo "Pré-requisitos de marca e servidor validados."
