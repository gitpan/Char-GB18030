# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{あ} ne "\x82\xa0";

use Char::GB18030;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あうe' =~ /(あ[い-え]e)/) {
    if ("$1" eq "あうe") {
        print "ok - 1 $^X $__FILE__ ('あうe' =~ /あ[い-え]e/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あうe' =~ /あ[い-え]e/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あうe' =~ /あ[い-え]e/).\n";
}

__END__
