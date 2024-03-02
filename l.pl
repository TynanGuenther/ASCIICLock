#!/usr/bin/perl
use strict;
use warnings;
my %numbers = (
    0 => ("ee", "ee", "EE"),
    1 => ("ee", "ee", "EE"),
    2 => ("ee", "ee", "EE"),
    3 =>("ee", "ee", "EE") ,
    4 => ("ee", "ee", "EE"),
    5 => ("ee", "ee", "EE"),
    6 => ("ee", "ee", "EE"),
    7 => ("ee", "ee", "EE"),
    8 => ("ee", "ee", "EE"),
    9 => ("ee", "ee", "EE"),
    10 => ':'  # Assuming you have a value for 10 in your hash
);

sub digitsplit {
    my @dave;
    my @times = @_;
    foreach my $time (@times){
        my @digits = split //, $time;
        foreach my $digit (@digits){
            if (exists $numbers{$digit}) {
                push @dave, $numbers{$digit};
            } else {
                push @dave, "unknown";  # Or some other placeholder value
            }
        } 
        if (exists $numbers{10}) {
            push @dave, $numbers{10};
        } else {
            push @dave, "unknown";  # Or some other placeholder value
        }
    }
    return @dave;
}
# Example input times
my @times = ("1", "45", "33");

# Call the digitsplit function
my @dave = digitsplit(@times);

# Print out the elements of @dave
foreach my $element (@dave) {
  print join(", ", @$element), "\n"
}
