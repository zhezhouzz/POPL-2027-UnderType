# TeX Live 2025's latexminted is incompatible with Python 3.14.
# Apply the same Python selection as the Makefile to direct latexmk builds.
for my $python_bin (
    '/opt/homebrew/opt/python@3.12/libexec/bin',
    '/usr/local/opt/python@3.12/libexec/bin'
) {
    if (-d $python_bin) {
        $ENV{'PATH'} = "$python_bin:$ENV{'PATH'}";
        last;
    }
}
