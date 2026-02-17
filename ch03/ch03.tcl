#!/usr/bin/env tclsh

# Simple Variables and the set Command
set a {Four score and seven years ago}
puts $a

set a 12.6
puts $a

set a [ expr $a + 1.2]
puts $a

append a 32
puts $a

#Four score and seven years ago
#12.6
#13.799999999999999
#13.79999999999999932

# associative arrays

set earnings(January) 87966
puts $earnings(January)

set earnings(February) 95400
puts $earnings(February)

#set yearTotal 0
#foreach month {Jan Feb Mar Apr May Jun Aug Sep Oct Nov Dec} {
#    set yearTotal [expr $yearTotal+$earnings($month)]
#}

set capital(New\ Jersey) Trenton
puts "$capital(New Jersey)"

set state "New Mexico"
puts $state

set capital($state) "Santa Fe"
puts $capital($state)

set x 43
incr x 12
puts $x

puts $tcl_platform(platform)
puts $tcl_platform(os)
puts $tcl_platform(machine)
