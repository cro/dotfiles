function spc --description='Spacemacs Client'
  /usr/local/bin/emacsclient -n $argv
end

function spct --description='Spacemacs Client, wait for buffer'
  /usr/local/bin/emacsclient $argv
end
