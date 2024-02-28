#!/usr/bin/perl

use strict;
use warnings;

# Send control sequences to set up the terminal
print "\e[?1049h"; # Enable alternate screen buffer
print "\e[?25l";   # Hide cursor

# Display a simple interface
print "\e[H";      # Move cursor to top left corner
print "Welcome to My Perl App\n";
print "Press q to quit\n\n";
my $input = '';
while ($input ne 'q') {
    print "Enter something: ";
    $input = <STDIN>;
    chomp $input;
    print "You entered: $input\n";
}

# Restore terminal to its original state
print "\e[?25h";   # Show cursor
print "\e[?1049l"; # Disable alternate screen buffer

