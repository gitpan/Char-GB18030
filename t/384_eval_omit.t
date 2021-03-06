# This file is encoded in Char::GB18030.
die "This file is not encoded in Char::GB18030.\n" if q{あ} ne "\x82\xa0";

use Char::GB18030;

print "1..12\n";

# eval (omit) has eval "..."
$_ = <<'END';
eval Char::GB18030::escape " if ('アソ' !~ /A/) { return 1 } else { return 0 } "
END
if (eval Char::GB18030::escape) {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# eval (omit) has eval qq{...}
$_ = <<'END';
eval Char::GB18030::escape qq{ if ('アソ' !~ /A/) { return 1 } else { return 0 } }
END
if (eval Char::GB18030::escape) {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# eval (omit) has eval '...'
$_ = <<'END';
eval Char::GB18030::escape ' if (qq{アソ} !~ /A/) { return 1 } else { return 0 } '
END
if (eval Char::GB18030::escape) {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# eval (omit) has eval q{...}
$_ = <<'END';
eval Char::GB18030::escape q{ if ('アソ' !~ /A/) { return 1 } else { return 0 } }
END
if (eval Char::GB18030::escape) {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# eval (omit) has eval $var
$_ = <<'END';
eval Char::GB18030::escape $var2
END
my $var2 = q{ if ('アソ' !~ /A/) { return 1 } else { return 0 } };
if (eval Char::GB18030::escape) {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# eval (omit) has eval (omit)
$_ = <<'END';
$_ = "if ('アソ' !~ /A/) { return 1 } else { return 0 }";
eval Char::GB18030::escape
END
if (eval Char::GB18030::escape) {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# eval (omit) has eval {...}
$_ = <<'END';
eval { if ('アソ' !~ /A/) { return 1 } else { return 0 } }
END
if (eval Char::GB18030::escape) {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# eval (omit) has "..."
$_ = <<'END';
if ('アソ' !~ /A/) { return "1" } else { return "0" }
END
if (eval Char::GB18030::escape) {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# eval (omit) has qq{...}
$_ = <<'END';
if ('アソ' !~ /A/) { return qq{1} } else { return qq{0} }
END
if (eval Char::GB18030::escape) {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# eval (omit) has '...'
$_ = <<'END';
if ('アソ' !~ /A/) { return '1' } else { return '0' }
END
if (eval Char::GB18030::escape) {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# eval (omit) has q{...}
$_ = <<'END';
if ('アソ' !~ /A/) { return q{1} } else { return q{0} }
END
if (eval Char::GB18030::escape) {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# eval (omit) has $var
$_ = <<'END';
if ('アソ' !~ /A/) { return $var1 } else { return $var0 }
END
my $var1 = 1;
my $var0 = 0;
if (eval Char::GB18030::escape) {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
