#!/bin/sh

find='"$HERE/chrome"'
line='"$HERE/chrome" --user-data-dir --test-type --no-sandbox'
for i in google-chrome google-chrome-beta; do
    file="/bin/${i}"
    grep -q -- "${line}" "${file}" || sed -i "s|${find}|${line}|" "${file}"
done

find='$CHROMIUM_FLAGS'
line='$CHROMIUM_FLAGS --user-data-dir --test-type --no-sandbox'
file="/bin/chromium"
grep -q -- "${line}" "${file}" || sed -i "s|${find}|${line}|g" "${file}"
