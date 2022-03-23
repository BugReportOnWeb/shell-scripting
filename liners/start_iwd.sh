#!/usr/bin/env fish

systemctl | grep -iq iwd

if test $status = 0
    iwctl
else
    echo -e "Start IWD and launch IWCTL? (Y/n): "; read OPTION
    
    if test $OPTION = 'Y'; or test $OPTION = 'y'
        sydo systemctl start iwd && iwctl
    end
end

