#! /usr/bin/env perl

if ($ARGV[0] =~ /^-c /) {
	my $shell_cmd = substr(shift, 3);
	exec("sh", "-c", $shell_cmd, @ARGV);
}
else {
	exec("sh", "-c", join(" ", @ARGV));
}
