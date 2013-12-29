# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{あ} ne "\x82\xa0";

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

if ($ENV{'PERL5SHELL'} =~ /Win95Cmd\.exe/xmsi) {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

open(FILE,'>F機能') || die "Can't open file: F機能\n";
print FILE "1\n";
close(FILE);

# system
my $command;
if (($ENV{'PERL5SHELL'}||$ENV{'COMSPEC'}) =~ / \\COMMAND\.COM \z/oxmsi) {
    $command = 'dir /b F機能 >NUL';
}
else {
    $command = 'dir /b F機能 >NUL 2>NUL';
}
if (system($command) == 0) {
    print "ok - 1 system $^X $__FILE__\n";
}
else {
    print "not ok - 1 system: $! $^X $__FILE__\n";
}

unlink('F機能');

__END__
