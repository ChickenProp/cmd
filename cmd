#! /usr/bin/env perl
use warnings;
use strict;

my $cmd = shift;

if ($cmd =~ /^-c /) {
	$cmd = substr(shift, 3);
	exec("sh", "-c", $cmd, @ARGV);
}
else {
	exec("sh", "-c", qq{$cmd "\$0" "\$@"}, @ARGV);
}
