# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{‚ } ne "\x82\xa0";

use Char::GB18030;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('‚ ‚¢q' =~ /(‚ ‚¢{1,}‚¢‚¤)/) {
    print "not ok - 1 $^X $__FILE__ not ('‚ ‚¢q' =~ /‚ ‚¢{1,}‚¢‚¤/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('‚ ‚¢q' =~ /‚ ‚¢{1,}‚¢‚¤/).\n";
}

__END__
