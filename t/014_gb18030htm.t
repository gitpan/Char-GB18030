# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{��} ne "\x82\xa0";

use Char::GB18030;
print "1..1\n";

# Unrecognized character \x82
# �u�F������Ȃ����� \x82�v
if (q{�}�b�`} eq pack('C6',0x83,0x7d,0x83,0x62,0x83,0x60)) {
    print qq<ok - 1 q{MACCHI}\n>;
}
else {
    print qq<not ok - 1 q{MACCHI}\n>;
}

__END__

Char::GB18030.pm �̏������ʂ��ȉ��ɂȂ邱�Ƃ����҂��Ă���

if (q{�\}�b�`} eq pack('C6',0x83,0x7d,0x83,0x62,0x83,0x60)) {

Shift-JIS�e�L�X�g�𐳂�������
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm