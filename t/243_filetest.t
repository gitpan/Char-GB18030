# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{あ} ne "\x82\xa0";

# ファイルテストが真になる場合は 1 が返るテスト

my $__FILE__ = __FILE__;

use Char::Egb18030;
print "1..9\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    for my $tno (1..9) {
        print "ok - $tno # SKIP $^X $0\n";
    }
    exit;
}

open(FILE,'>file');
close(FILE);

open(FILE,'file');

if ((Char::Egb18030::r 'file') == 1) {
    $_ = Char::Egb18030::r 'file';
    print "ok - 1 Char::Egb18030::r 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Egb18030::r 'file';
    print "not ok - 1 Char::Egb18030::r 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Egb18030::w 'file') == 1) {
    $_ = Char::Egb18030::w 'file';
    print "ok - 2 Char::Egb18030::w 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Egb18030::w 'file';
    print "not ok - 2 Char::Egb18030::w 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Egb18030::o 'file') == 1) {
    $_ = Char::Egb18030::o 'file';
    print "ok - 3 Char::Egb18030::o 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Egb18030::o 'file';
    print "not ok - 3 Char::Egb18030::o 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Egb18030::R 'file') == 1) {
    $_ = Char::Egb18030::R 'file';
    print "ok - 4 Char::Egb18030::R 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Egb18030::R 'file';
    print "not ok - 4 Char::Egb18030::R 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Egb18030::W 'file') == 1) {
    $_ = Char::Egb18030::W 'file';
    print "ok - 5 Char::Egb18030::W 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Egb18030::W 'file';
    print "not ok - 5 Char::Egb18030::W 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Egb18030::O 'file') == 1) {
    $_ = Char::Egb18030::O 'file';
    print "ok - 6 Char::Egb18030::O 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Egb18030::O 'file';
    print "not ok - 6 Char::Egb18030::O 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Egb18030::e 'file') == 1) {
    $_ = Char::Egb18030::e 'file';
    print "ok - 7 Char::Egb18030::e 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Egb18030::e 'file';
    print "not ok - 7 Char::Egb18030::e 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Egb18030::z 'file') == 1) {
    $_ = Char::Egb18030::z 'file';
    print "ok - 8 Char::Egb18030::z 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Egb18030::z 'file';
    print "not ok - 8 Char::Egb18030::z 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Egb18030::f 'file') == 1) {
    $_ = Char::Egb18030::f 'file';
    print "ok - 9 Char::Egb18030::f 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Egb18030::f 'file';
    print "not ok - 9 Char::Egb18030::f 'file' ($_) == 1 $^X $__FILE__\n";
}

close(FILE);
unlink('file');

__END__
