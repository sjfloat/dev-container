# .cshrc


if (-r /opt/local/share/terminfo) then
    setenv TERMINFO /opt/local/share/terminfo
endif

setenv LC_CTYPE C
setenv LANGUAGE C
setenv LC_ALL C
setenv LANG en_US.UTF-8

setenv PAGER less
setenv LESS "-RiX"
setenv EDITOR vim


setenv GREP_OPTIONS '--directories=skip'
#
cd .
umask 002
#
#    useful settings 
#
set history = 1000
set notify
set ignoreeof
set complete
set list
set filec

# set this for all shells
set noclobber

set savehist
# If env var is set, use it
if ( $?HISTFILE ) then
    set histfile="$HISTFILE"
endif

foreach file (~/.cshrc.d/*.csh) 
    source $file
end
