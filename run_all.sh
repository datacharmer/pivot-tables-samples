#!/bin/bash
# Runs all examples and produces .SQL and .HTML files
queries=(
ap_country_by_dept_and_gender    country_by_dept          dept_by_gender           gender_by_dept           schemas_by_engine
category_by_rating           country_by_dept_and_gender       empl_dept_by_gender          
category_by_year         country_by_gender            gender_by_country )

for Q in ${queries[*]}
do
    echo $Q
    unset  HTML
    perl ./crosstab-generation/processor.pl ./crosstab-generation/$Q.pl > examples/$Q.sql

    export HTML=1
    perl ./crosstab-generation/processor.pl ./crosstab-generation/$Q.pl > examples/$Q.html
    unset  HTML
done
