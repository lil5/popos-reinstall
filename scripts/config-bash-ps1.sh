#!/usr/bin/php

<?php

# if [ "$color_prompt" = yes ]; then
#     if [[ ${EUID} == 0 ]] ; then # if root
#         PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;31m\]\h\[\033[01;34m\] \w\[\033[00m\]\$(parse_git_branch)\[\033[00m\] \#\[\033[01;31m\] "
#     else
# 		echo $USER@$HOSTNAME
#         PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\W\[\033[33m\]$(parse_git_branch)\[\033[01;32m\] \$\[\033[00m\] "
#     fi
# else
#     PS1="\${debian_chroot:+(\$debian_chroot)}\u@\h \W \$ "
# fi
#
# parse_git_branch() {
#      git branch 2> /dev/null | sed -e "/^[^*]/d' -e 's/* \(.*\)/ (\1)/"
# }
#
# unset color_prompt force_color_prompt

$path_to_file = $_SERVER['HOME'].'/.bashrc';
$file_contents = file_get_contents($path_to_file);

$regex='/if \[ "\$color_prompt" = yes \]; then(.*\n)*(\s*PS1=(.*\n)*){2}unset color_prompt force_color_prompt/';
$replace="if [ \"\$color_prompt\" = yes ]; then

  parse_git_branch() {
    git branch 2> /dev/null | sed -e \"/^[^*]/d\" -e \"s/* \(.*\)/ (\\\\1)/\"
  }

  if [[ \${EUID} == 0 ]] ; then # if root
    PS1=\"\${debian_chroot:+(\$debian_chroot)}\[\\\\033[01;31m\]\h\[\\\\033[01;34m\] \w\[\\\\033[00m\]\\\\\$(parse_git_branch)\[\\\\033[00m\] \#\[\\\\033[01;31m\] \"
  else
    echo \$USER@\$HOSTNAME
    PS1=\"\${debian_chroot:+(\$debian_chroot)}\[\\\\033[01;32m\]\W\[\\\\033[33m\]\\\\\$(parse_git_branch)\[\\\\033[01;32m\] \\\$\[\\\\033[00m\] \"
  fi
else
  PS1=\"\${debian_chroot:+(\$debian_chroot)}\u@\h \W \\\$ \"
fi


unset color_prompt force_color_prompt";

$file_contents = preg_replace($regex, $replace, $file_contents);
file_put_contents($path_to_file, $file_contents);
