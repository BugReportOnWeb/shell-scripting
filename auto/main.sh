#!/usr/bin/env fish

# Used to load lecture links. Modify data.sh for a personalised one.
source ./data.sh  
set week (date | awk '{print $1}')

function lets_go
    while true
        # Lopping over hour/min/value(AM/PM) after every 10sec in negative result.
        set hour (date | awk '{print $5}' | cut -d: -f1)
        set min (date | awk '{print $5}' | cut -d: -f2)
        set value (date | awk '{print $6}')

        # Cases for lectures on specific weekdays.
        switch $argv
            case "Monday"
                if test 
                    \($hour = "09" -a $min = "55" -a $value = "AM"\) -o
                    \($hour = "12" -a $min = "40" -a $value = "PM"\) -o
                    \($hour = "02" -a $min = "30" -a $vlaue = "PM"\)

                    echo -e "Opening MAIN link..."
                    open MAIN_LINK
                    sleep 3600
                else if test 
                    \($hour = "09" -a $min = "00" -a $value = "AM"\)

                    echo -e "Opening OTHER link"
                    open DET_LINK
                    sleep 3600
                end
            case "Tuesday"
                if test
                    \($hour = "09" -a $min = "00" -a $value = "AM"\) -o
                    \($hour = "01" -a $min = "35" -a $value = "PM"\)

                    echo -e "Opening MAIN link..."
                    open MAIN_LINK
                    sleep 3600
                else if test
                    \($hour = "10" -a $min = "50" -a $value = "AM"\) -o
                    \($hour = "03" -a $min = "25" -a $value = "PM"\)

                    echo -e "Opening OTHER link"
                    open DET_LINK
                    sleep 3600
                end
            case "Wednesday"
                if test
                    \($hour = "09" -a $min = "00" -a $value = "AM"\) -o
                    \($hour = "09" -a $min = "55" -a $value = "AM"\) -o
                    \($hour = "11" -a $min = "45" -a $value = "AM"\) -o
                    \($hour = "03" -a $min = "25" -a $value = "PM"\)

                    echo -e "Opening MAIN link..."
                    open MAIN_LINK
                    sleep 3600
                end
            case "Thursday"
                if test
                    \($hour = "09" -a $min = "00" -a $value = "AM"\) -o
                    \($hour = "10" -a $min = "50" -a $value = "AM"\) -o
                    \($hour = "11" -a $min = "45" -a $value = "AM"\) -o
                    \($hour = "02" -a $min = "30" -a $value = "PM"\)

                    echo -e "Opening MAIN link..."
                    open MAIN_LINK
                    sleep 3600
                else if test
                    \($hour = "01" -a $min = "35" -a $value = "PM"\)

                    echo -e "Opening OTHER link"
                    open DET_LINK
                    sleep 3600
                end
            case "Friday"
                if test
                    \($hour = "10" -a $min = "50" -a $value = "AM"\) -o
                    \($hour = "12" -a $min = "40" -a $value = "PM"\) -o
                    \($hour = "02" -a $min = "30" -a $value = "PM"\) -o
                    \($hour = "03" -a $min = "25" -a $value = "PM"\)

                    echo -e "Opening MAIN link..."
                    open MAIN_LINK
                    sleep 3600
                else if test
                    \($hour = "01" -a $min = "35" -a $value = "PM"\)

                    echo -e "Opening OTHER link"
                    open DET_LINK
                    sleep 3600
                end
            case '*'
                echo "Today is weedend!"
                return 0
        end

        sleep 10
    end
end

# Main block
lets_go $week

