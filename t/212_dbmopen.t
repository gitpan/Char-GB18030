# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{��} ne "\x82\xa0";

my $__FILE__ = __FILE__;

use Char::GB18030;
print "1..1\n";

my $chcp = '';
if ($^O =~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    $chcp = `chcp`;
}
if ($chcp !~ /932|936/oxms) {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

open(FILE,'>F�@�\') || die "Can't open file: F�@�\\n";
print FILE "1\n";
close(FILE);

# dbmopen
my %DBM;
if (dbmopen(%DBM,'F�@�\',0777)) {
    print "ok - 1 dbmopen $^X $__FILE__\n";
    dbmclose(%DBM);
}
else {
    print "not ok - 1 dbmopen: $! $^X $__FILE__\n";
}
system('del F*.* >NUL 2>NUL');

unlink('F�@�\');

__END__