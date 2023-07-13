"(
:s/(\s*/(/ge
:s/\([[:alnum:]]\)\s*(\s*\(\)/\1 ( /ge
:s/\([[:alpha:]]*\.[[:alpha:]]*_*[[:alpha:]]*\)\s*(/\1(/ge

")
:s/\([[:graph:]]\)\s*)\s*/\1 )/ge

"=
:s/\([[:alnum:]]\)\s*=/\1 =/ge
:s/=\s*\([[:alnum:]]\)/= \1/ge

"<<
:s/\s*<<\s*/ << /ge
:s/\(cout\)\s*<<\s*/\1<< /ge
:s/\s*<<\s*\(endl\)/ <<\1/ge

">>
:s/\(cin\)\s*>>\s*/\1>> /ge

" set<vector>
:s/\([[:alpha:]]*\)\s*<\([[:alpha:]]*\)>\s*/\1<\2> /ge
:s/\(#include\)\s*</\1 </e
" %s/>\s*>/>>/g

",
:s/\s*,\s*/, /ge


:nohlsearch

echo "запуск myScript для форматирования текста"
