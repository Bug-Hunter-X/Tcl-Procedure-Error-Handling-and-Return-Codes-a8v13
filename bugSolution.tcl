proc get_element {list index} {
    if {$index < 0 || $index >= [llength $list]} {
        return -code error "Index out of range"
    }
    return [lindex $list $index]
}

set my_list {a b c d e}

catch {puts [get_element $my_list 10]} result

if {[string match -code* $result]} {
    puts "Error: $result"
} else {
    puts "Element: $result"
}