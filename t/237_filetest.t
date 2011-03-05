# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{あ} ne "\x82\xa0";

# Char::Egb18030::X と -X (Perlのファイルテスト演算子) の結果が一致することのテスト

my $__FILE__ = __FILE__;

use Char::Egb18030;
print "1..48\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    for my $tno (1..48) {
        print "ok - $tno # SKIP $^X $0\n";
    }
    exit;
}

open(FILE,'>file');
close(FILE);

open(FILE,'file');

if (((Char::Egb18030::r 'file') ne '') == ((-r 'file') ne '')) {
    print "ok - 1 Char::Egb18030::r 'file' == -r 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 1 Char::Egb18030::r 'file' == -r 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::r FILE) ne '') == ((-r FILE) ne '')) {
    print "ok - 2 Char::Egb18030::r FILE == -r FILE $^X $__FILE__\n";
}
else {
    print "not ok - 2 Char::Egb18030::r FILE == -r FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::w 'file') ne '') == ((-w 'file') ne '')) {
    print "ok - 3 Char::Egb18030::w 'file' == -w 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 3 Char::Egb18030::w 'file' == -w 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::w FILE) ne '') == ((-w FILE) ne '')) {
    print "ok - 4 Char::Egb18030::w FILE == -w FILE $^X $__FILE__\n";
}
else {
    print "not ok - 4 Char::Egb18030::w FILE == -w FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::x 'file') ne '') == ((-x 'file') ne '')) {
    print "ok - 5 Char::Egb18030::x 'file' == -x 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 5 Char::Egb18030::x 'file' == -x 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::x FILE) ne '') == ((-x FILE) ne '')) {
    print "ok - 6 Char::Egb18030::x FILE == -x FILE $^X $__FILE__\n";
}
else {
    print "not ok - 6 Char::Egb18030::x FILE == -x FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::o 'file') ne '') == ((-o 'file') ne '')) {
    print "ok - 7 Char::Egb18030::o 'file' == -o 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 7 Char::Egb18030::o 'file' == -o 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::o FILE) ne '') == ((-o FILE) ne '')) {
    print "ok - 8 Char::Egb18030::o FILE == -o FILE $^X $__FILE__\n";
}
else {
    print "not ok - 8 Char::Egb18030::o FILE == -o FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::R 'file') ne '') == ((-R 'file') ne '')) {
    print "ok - 9 Char::Egb18030::R 'file' == -R 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 9 Char::Egb18030::R 'file' == -R 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::R FILE) ne '') == ((-R FILE) ne '')) {
    print "ok - 10 Char::Egb18030::R FILE == -R FILE $^X $__FILE__\n";
}
else {
    print "not ok - 10 Char::Egb18030::R FILE == -R FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::W 'file') ne '') == ((-W 'file') ne '')) {
    print "ok - 11 Char::Egb18030::W 'file' == -W 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 11 Char::Egb18030::W 'file' == -W 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::W FILE) ne '') == ((-W FILE) ne '')) {
    print "ok - 12 Char::Egb18030::W FILE == -W FILE $^X $__FILE__\n";
}
else {
    print "not ok - 12 Char::Egb18030::W FILE == -W FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::X 'file') ne '') == ((-X 'file') ne '')) {
    print "ok - 13 Char::Egb18030::X 'file' == -X 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 13 Char::Egb18030::X 'file' == -X 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::X FILE) ne '') == ((-X FILE) ne '')) {
    print "ok - 14 Char::Egb18030::X FILE == -X FILE $^X $__FILE__\n";
}
else {
    print "not ok - 14 Char::Egb18030::X FILE == -X FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::O 'file') ne '') == ((-O 'file') ne '')) {
    print "ok - 15 Char::Egb18030::O 'file' == -O 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 15 Char::Egb18030::O 'file' == -O 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::O FILE) ne '') == ((-O FILE) ne '')) {
    print "ok - 16 Char::Egb18030::O FILE == -O FILE $^X $__FILE__\n";
}
else {
    print "not ok - 16 Char::Egb18030::O FILE == -O FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::e 'file') ne '') == ((-e 'file') ne '')) {
    print "ok - 17 Char::Egb18030::e 'file' == -e 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 17 Char::Egb18030::e 'file' == -e 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::e FILE) ne '') == ((-e FILE) ne '')) {
    print "ok - 18 Char::Egb18030::e FILE == -e FILE $^X $__FILE__\n";
}
else {
    print "not ok - 18 Char::Egb18030::e FILE == -e FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::z 'file') ne '') == ((-z 'file') ne '')) {
    print "ok - 19 Char::Egb18030::z 'file' == -z 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 19 Char::Egb18030::z 'file' == -z 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::z FILE) ne '') == ((-z FILE) ne '')) {
    print "ok - 20 Char::Egb18030::z FILE == -z FILE $^X $__FILE__\n";
}
else {
    print "not ok - 20 Char::Egb18030::z FILE == -z FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::s 'file') ne '') == ((-s 'file') ne '')) {
    print "ok - 21 Char::Egb18030::s 'file' == -s 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 21 Char::Egb18030::s 'file' == -s 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::s FILE) ne '') == ((-s FILE) ne '')) {
    print "ok - 22 Char::Egb18030::s FILE == -s FILE $^X $__FILE__\n";
}
else {
    print "not ok - 22 Char::Egb18030::s FILE == -s FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::f 'file') ne '') == ((-f 'file') ne '')) {
    print "ok - 23 Char::Egb18030::f 'file' == -f 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 23 Char::Egb18030::f 'file' == -f 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::f FILE) ne '') == ((-f FILE) ne '')) {
    print "ok - 24 Char::Egb18030::f FILE == -f FILE $^X $__FILE__\n";
}
else {
    print "not ok - 24 Char::Egb18030::f FILE == -f FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::d 'file') ne '') == ((-d 'file') ne '')) {
    print "ok - 25 Char::Egb18030::d 'file' == -d 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 25 Char::Egb18030::d 'file' == -d 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::d FILE) ne '') == ((-d FILE) ne '')) {
    print "ok - 26 Char::Egb18030::d FILE == -d FILE $^X $__FILE__\n";
}
else {
    print "not ok - 26 Char::Egb18030::d FILE == -d FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::p 'file') ne '') == ((-p 'file') ne '')) {
    print "ok - 27 Char::Egb18030::p 'file' == -p 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 27 Char::Egb18030::p 'file' == -p 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::p FILE) ne '') == ((-p FILE) ne '')) {
    print "ok - 28 Char::Egb18030::p FILE == -p FILE $^X $__FILE__\n";
}
else {
    print "not ok - 28 Char::Egb18030::p FILE == -p FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::S 'file') ne '') == ((-S 'file') ne '')) {
    print "ok - 29 Char::Egb18030::S 'file' == -S 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 29 Char::Egb18030::S 'file' == -S 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::S FILE) ne '') == ((-S FILE) ne '')) {
    print "ok - 30 Char::Egb18030::S FILE == -S FILE $^X $__FILE__\n";
}
else {
    print "not ok - 30 Char::Egb18030::S FILE == -S FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::b 'file') ne '') == ((-b 'file') ne '')) {
    print "ok - 31 Char::Egb18030::b 'file' == -b 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 31 Char::Egb18030::b 'file' == -b 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::b FILE) ne '') == ((-b FILE) ne '')) {
    print "ok - 32 Char::Egb18030::b FILE == -b FILE $^X $__FILE__\n";
}
else {
    print "not ok - 32 Char::Egb18030::b FILE == -b FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::c 'file') ne '') == ((-c 'file') ne '')) {
    print "ok - 33 Char::Egb18030::c 'file' == -c 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 33 Char::Egb18030::c 'file' == -c 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::c FILE) ne '') == ((-c FILE) ne '')) {
    print "ok - 34 Char::Egb18030::c FILE == -c FILE $^X $__FILE__\n";
}
else {
    print "not ok - 34 Char::Egb18030::c FILE == -c FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::u 'file') ne '') == ((-u 'file') ne '')) {
    print "ok - 35 Char::Egb18030::u 'file' == -u 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 35 Char::Egb18030::u 'file' == -u 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::u FILE) ne '') == ((-u FILE) ne '')) {
    print "ok - 36 Char::Egb18030::u FILE == -u FILE $^X $__FILE__\n";
}
else {
    print "not ok - 36 Char::Egb18030::u FILE == -u FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::g 'file') ne '') == ((-g 'file') ne '')) {
    print "ok - 37 Char::Egb18030::g 'file' == -g 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 37 Char::Egb18030::g 'file' == -g 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::g FILE) ne '') == ((-g FILE) ne '')) {
    print "ok - 38 Char::Egb18030::g FILE == -g FILE $^X $__FILE__\n";
}
else {
    print "not ok - 38 Char::Egb18030::g FILE == -g FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::T 'file') ne '') == ((-T 'file') ne '')) {
    print "ok - 39 Char::Egb18030::T 'file' == -T 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 39 Char::Egb18030::T 'file' == -T 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::T FILE) ne '') == ((-T FILE) ne '')) {
    print "ok - 40 Char::Egb18030::T FILE == -T FILE $^X $__FILE__\n";
}
else {
    print "not ok - 40 Char::Egb18030::T FILE == -T FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::B 'file') ne '') == ((-B 'file') ne '')) {
    print "ok - 41 Char::Egb18030::B 'file' == -B 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 41 Char::Egb18030::B 'file' == -B 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::B FILE) ne '') == ((-B FILE) ne '')) {
    print "ok - 42 Char::Egb18030::B FILE == -B FILE $^X $__FILE__\n";
}
else {
    print "not ok - 42 Char::Egb18030::B FILE == -B FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::M 'file') ne '') == ((-M 'file') ne '')) {
    print "ok - 43 Char::Egb18030::M 'file' == -M 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 43 Char::Egb18030::M 'file' == -M 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::M FILE) ne '') == ((-M FILE) ne '')) {
    print "ok - 44 Char::Egb18030::M FILE == -M FILE $^X $__FILE__\n";
}
else {
    print "not ok - 44 Char::Egb18030::M FILE == -M FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::A 'file') ne '') == ((-A 'file') ne '')) {
    print "ok - 45 Char::Egb18030::A 'file' == -A 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 45 Char::Egb18030::A 'file' == -A 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::A FILE) ne '') == ((-A FILE) ne '')) {
    print "ok - 46 Char::Egb18030::A FILE == -A FILE $^X $__FILE__\n";
}
else {
    print "not ok - 46 Char::Egb18030::A FILE == -A FILE $^X $__FILE__\n";
}

if (((Char::Egb18030::C 'file') ne '') == ((-C 'file') ne '')) {
    print "ok - 47 Char::Egb18030::C 'file' == -C 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 47 Char::Egb18030::C 'file' == -C 'file' $^X $__FILE__\n";
}

if (((Char::Egb18030::C FILE) ne '') == ((-C FILE) ne '')) {
    print "ok - 48 Char::Egb18030::C FILE == -C FILE $^X $__FILE__\n";
}
else {
    print "not ok - 48 Char::Egb18030::C FILE == -C FILE $^X $__FILE__\n";
}

close(FILE);
unlink('file');

__END__
