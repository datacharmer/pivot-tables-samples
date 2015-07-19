use DBIx::SQLCrosstab;

sub slurp
{
    my ($filename) = @_;
    open my $FH, '<', $filename
        or die "can't open $filename ($!)\n";
    my @rows = <$FH>;
    close $FH;
    return @rows if wantarray;
    return join(' ', @rows);
}

    my $dbh=DBI->connect("dbi:mysql:crosstab;host=127.0.0.1;port=5624",
        "msandbox","msandbox", {RaiseError=>1})
            or die "error in connection $DBI::errstr\n";

my $param_file = shift || 'test.pl';
my $param;
my $param_text = slurp($param_file);
eval "\$param=$param_text";
if ($@)
{
    die "Malformed parameters ($@)\n";
}
$params->{dbh} = $dbh;

my $xtab = DBIx::SQLCrosstab->new($params)
    or die "error in creation ($DBIx::SQLCrosstab::errstr)\n";

my $query = $xtab->get_query("_")
    or die "error in query building $DBIx::SQLCrosstab::errstr\n";

if ($ENV{HTML})
{
    if ($ENV{DEBUG})
    {
        use Data::Dumper;
        print "<!--\n";
        print Dumper $xtab;
        print "-->\n";
    }
    use DBIx::SQLCrosstab::Format;
    # use the query or let the module do the dirty job for you
    my $recs = $xtab->get_recs
        or die "error in execution $DBIx::SQLCrosstab::errstr\n";

    # do something with records, or use the child class 
    # DBIx::SQLCrosstab::Format to produce well 
    # formatted HTML or XML output
    #

    my $xtab = DBIx::SQLCrosstab::Format->new($params)
        or die "error in creation ($DBIx::SQLCrosstab::errstr)\n";
    if ($xtab->get_query and $xtab->get_recs) 
    { 
        if ($ENV{HTML} eq 'xml')
        {
            my $xml_data = $xtab->as_xml;
            print $xml_data;
        }
        else
        {
            print $xtab->as_html;
        }
    }
}
else
{
    print $query, "\n";
}
