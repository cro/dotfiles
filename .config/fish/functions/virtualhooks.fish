function virtualhooks --on-event virtualenv_did_activate
    echo "hooking"
    if test -f $VIRTUAL_ENV/bin/vfhooks.fish
        echo "Sourcing $VIRTUAL_ENV/bin/vfhooks.fish"
        source $VIRTUAL_ENV/bin/vfhooks.fish
    end
end
