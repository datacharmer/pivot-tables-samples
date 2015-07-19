# pivot-tables-samples
Collection of samples for the creation of pivot tables in SQL
These example use a Perl module names DBIx::SQLCrosstab.

How to use these examples:

1. You need to install [DBIx::SQLCrosstab](http://search.cpan.org/~gmax/DBIx-SQLCrosstab-1.17/).
2. Install one of the sample databases available in the directory sample-databases
3. cd crosstab-generation
4. Change the connection parameters inside processor.pl (currentlky uses a sandbox on 127.0.0.1 with port 5624).
5. run processor.pl with one of the plugins in the same directory. For example, if you have installed crosstab-innodb.sql, you can run
   processor.pl country_by_dept_and_gender.pl

Alternatively, you can run a big example using SQLite.

    sqlite crosstab.sqlite < sample-databases/crosstab-sql92.sql
    perl sqlcrosstab_example.pl

This command will create several examples of crosstabs, in various formats, some of them ready to display in a browser.

