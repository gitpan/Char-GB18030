# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{��} ne "\x82\xa0";

use strict;
use Char::GB18030;
print "1..256\n";

my $__FILE__ = __FILE__;

my $tno = 1;
for my $hexchr (0x00 .. 0xFF) {
    my $char = pack('C',$hexchr);
    if($char =~ /\C/){
        printf qq{ok - $tno "\\x%02X" =~ /\\C/ $^X $__FILE__\n}, $hexchr;
    }
    else{
        printf qq{not ok - $tno "\\x%02X" =~ /\\C/ $^X $__FILE__\n}, $hexchr;
    }
    $tno++;
}

__END__
