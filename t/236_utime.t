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

mkdir('directory',0777);
mkdir('D�@�\',0777);
open(FILE,'>D�@�\/file1.txt') || die "Can't open file: D�@�\/file1.txt\n";
print FILE "1\n";
close(FILE);
open(FILE,'>D�@�\/file2.txt') || die "Can't open file: D�@�\/file2.txt\n";
print FILE "1\n";
close(FILE);
open(FILE,'>D�@�\/file3.txt') || die "Can't open file: D�@�\/file3.txt\n";
print FILE "1\n";
close(FILE);

# utime
if (utime(time(),time(),'D�@�\')) {
    print "ok - 1 utime $^X $__FILE__\n";
}
else {
    print "not - ok 1 utime: $! $^X $__FILE__\n";
}

unlink('D�@�\/file1.txt');
unlink('D�@�\/file2.txt');
unlink('D�@�\/file3.txt');
rmdir('directory');
rmdir('D�@�\');

__END__