# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{あ} ne "\x82\xa0";

use Char::GB18030;
print "1..1\n";

# マッチするはずなのにマッチしない（１）
if ("運転免許" =~ m'運転') {
    print qq<ok - 1 "UNTENMENKYO" =~ m'UNTEN'>;
}
else {
    print qq<not ok - 1 "UNTENMENKYO" =~ m'UNTEN'>;
}

__END__

Shift-JISテキストを正しく扱う
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
