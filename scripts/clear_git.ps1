# Удаляем папки и файлы из рабочей дериктории которых нет в гите
git clean -xdf -e .dart_tool, pubspec.lock
# Удаляем фалы из гита которые должны быть проигнорированы
git ls-files -i -c --exclude-from=.gitignore | ForEach-Object { git rm --cached $_ }
