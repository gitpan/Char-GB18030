# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{��} ne "\x82\xa0";

use Char::GB18030;
print "1..2\n";

my $__FILE__ = __FILE__;

if (length('����������') == 10) {
    print qq{ok - 1 length('����������') == 10 $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 length('����������') == 10 $^X $__FILE__\n};
}

if (Char::GB18030::length('����������') == 5) {
    print qq{ok - 2 Char::GB18030::length('����������') == 5 $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 Char::GB18030::length('����������') == 5 $^X $__FILE__\n};
}

__END__
