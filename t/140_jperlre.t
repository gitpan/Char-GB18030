# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{��} ne "\x82\xa0";

use Char::GB18030;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('��xyz��' =~ /(��.*��)/) {
    if ("$1" eq "��xyz��") {
        print "ok - 1 $^X $__FILE__ ('��xyz��' =~ /��.*��/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('��xyz��' =~ /��.*��/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('��xyz��' =~ /��.*��/).\n";
}

__END__