#!/bin/sh

replace() {
    line="${1} --user-data-dir --test-type --no-sandbox"
    grep "${line}" "${2}"
    grep -q "${line}" "${2}" || sed -i "s|${1}|${line}|" "${2}"
}
#find='"$HERE/chrome"'
#line='"$HERE/chrome" --user-data-dir --test-type --no-sandbox'
#file='/opt/google/chrome-beta/google-chrome-beta'
#grep -q -- "${line}" "${file}" || sed -i "s|${find}|${line}|" "${file}"

#find='$CHROMIUM_FLAGS'
#line='$CHROMIUM_FLAGS --user-data-dir --test-type --no-sandbox'
#file='/bin/chromium'
# grep -q -- "${line}" "${file}" || sed -i "s|${find}|${line}|g" "${file}"

replace '"$HERE/chrome"' /opt/google/chrome-beta/google-chrome-beta
replace '$LIBDIR/$APPNAME $CHROMIUM_FLAGS' /bin/chromium
