
function fish_right_prompt  --description 'Write out right-justified prompt'
	
	echo -n (set_color -b green black)(__fish_git_prompt)(set_color normal)

    if set -q VIRTUAL_ENV
      echo -n -s " " (set_color -b blue white) "[" (basename "$VIRTUAL_ENV") "]" (set_color normal)
    end

	set_color normal
end