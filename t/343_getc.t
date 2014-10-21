# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{��} ne "\x82\xa0";

use Char::GB18030;
print "1..2\n";

my $__FILE__ = __FILE__;

open(FILE,">$__FILE__.txt") || die;
print FILE <DATA>;
close(FILE);

open(GETC,"<$__FILE__.txt") || die;
my @getc = ();
while (my $c = Char::GB18030::getc(GETC)) {
    last if $c =~ /\A[\r\n]\z/;
    push @getc, $c;
}
close(GETC);

my $result = join('', map {"($_)"} @getc);
if ($result eq '(1)(2)(��)(��)(��)(��)(�1�2)(�3�4)') {
    print "ok - 1 $^X $__FILE__ 12���������1�2�3�4 --> $result.\n";
}
else {
    print "not ok - 1 $^X $__FILE__ 12���������1�2�3�4 --> $result.\n";
}

{
    package Getc::Test;

    open(GETC2,"<$__FILE__.txt") || die;
    my @getc = ();
    while (my $c = Char::GB18030::getc(GETC2)) {
        last if $c =~ /\A[\r\n]\z/;
        push @getc, $c;
    }
    close(GETC2);

    my $result = join('', map {"($_)"} @getc);
    if ($result eq '(1)(2)(��)(��)(��)(��)(�1�2)(�3�4)') {
        print "ok - 1 $^X $__FILE__ 12���������1�2�3�4 --> $result.\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ 12���������1�2�3�4 --> $result.\n";
    }
}

unlink("$__FILE__.txt");

__END__
12���������1�2�3�4
