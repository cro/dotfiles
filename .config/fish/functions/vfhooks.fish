function virtualhooks --on-event virtualenv_did_activate
    if test -f $VIRTUAL_ENV/bin/vfhooks.fish
        echo "Sourcing $VIRTUAL_ENV/bin/vfhooks.fish"
        source $VIRTUAL_ENV/bin/vfhooks.fish
    end
end
