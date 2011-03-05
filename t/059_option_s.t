# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{あ} ne "\x82\xa0";

use Char::GB18030;
print "1..1\n";

my $__FILE__ = __FILE__;

# s///g
$a = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

if ($a =~ s/[C]/あいう/g) {
    if ($a eq "ABあいうDEFGHIJKLMNOPQRSTUVWXYZ") {
        print qq{ok - 1 \$a =~ s/[C]/あいう/g ($a) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 \$a =~ s/[C]/あいう/g ($a) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 \$a =~ s/[C]/あいう/g ($a) $^X $__FILE__\n};
}

__END__
