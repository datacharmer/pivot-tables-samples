#!/usr/bin/perl

use strict;
use warnings;
use DBIx::SQLCrosstab;    
use Getopt::Long;
use Data::Dumper;

my $port     = "5709";
my $host     = '127.0.0.1';
my $username = 'msandbox';
my $password = 'msandbox';
my $get_help = 0;
my $result = GetOptions (
    "port=i"        => \$port,    
    "host=s"        => \$host,      
    "user=s"        => \$username,
    "password=s"    => \$password,
    "h|help"        => \$get_help,
    );  

get_help() if $get_help;
get_help("no params file") unless @ARGV;

sub get_help
{
    my ($msg) = @_;
    print "## $msg\n " if $msg;
    print <<END_HELP;
Syntax: $0 [options] params_file
 --port     = N  (database port : default $port)
 --host     = N  (database host : default $host)
 --user     = S  (user name     : default $username)
 --password = S  (password      : default $password)
 --help | -h     (This help)

END_HELP

    exit;
}

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

my $dbh=DBI->connect("dbi:mysql:crosstab;host=$host;port=$port",
    $username, $password, {RaiseError=>1})
        or die "error in connection $DBI::errstr\n";

my $param_file = shift || 'test.pl';
my $params;
my $param_text = slurp($param_file);
eval "\$params=$param_text";
if ($@)
{
    die "Malformed parameters ($@)\n";
}
$params->{dbh} = $dbh;

my $xtab = DBIx::SQLCrosstab->new($params)
    or die "error in creation ($DBIx::SQLCrosstab::errstr)\n";
#print STDERR "#PARAMS\n";
#print STDERR Dumper $params;
my $query = $xtab->get_query("_")
    or die "error in query building $DBIx::SQLCrosstab::errstr\n";

if ($ENV{HTML})
{
    if ($ENV{DEBUG})
    {
        print "<!--\n";
        print Dumper $xtab;
        print "-->\n";
    }
    use DBIx::SQLCrosstab::Format;
    # use the query or let the module do the dirty job for you
    my $recs = $xtab->get_recs
        or die "error in execution $DBIx::SQLCrosstab::errstr\n";

    # print Dumper $recs;
    # do something with records, or use the child class 
    # DBIx::SQLCrosstab::Format to produce well 
    # formatted HTML or XML output
    
    #    print Dumper $params;
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
