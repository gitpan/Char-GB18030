# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{��} ne "\x82\xa0";

use strict;
use Char::GB18030;
print "1..2\n";

my $__FILE__ = __FILE__;

if ('��' =~ qr/(.)/b) {
    if (length($1) == 1) {
        print qq{ok - 1 '��'=~qr/(.)/b; length(\$1)==1 $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 '��'=~qr/(.)/b; length(\$1)==1 $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 '��'=~qr/(.)/b; length(\$1)==1 $^X $__FILE__\n};
}

if ('��' =~ qr'(.)'b) {
    if (length($1) == 1) {
        print qq{ok - 2 '��'=~qr'(.)'b; length(\$1)==1 $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 2 '��'=~qr'(.)'b; length(\$1)==1 $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 2 '��'=~qr'(.)'b; length(\$1)==1 $^X $__FILE__\n};
}

__END__
