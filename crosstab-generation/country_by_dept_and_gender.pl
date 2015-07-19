$params = {
    'col_sub_total' => 1,
    'row_total' => 1,
    'row_sub_total' => 1,
    'col_total' => 1,
    'remove_if_zero' => 1,
    'remove_if_null' => 1,
    'use_real_names' => 1,
    'op' => [ [ 'sum', 'salary' ] ],
    'from' =>    'countries '
               . 'INNER JOIN locations using (country_id) '
               . 'INNER JOIN person USING (loc_id) '
               #. 'INNER JOIN departments USING (dept_id)'
               ,
    'cols' => [
                {
                  'id'     => 'dept_id',
                  'from'   => 'departments inner join person using (dept_id)',
                  'value'  => 'department'
                },
                {
                  'from'   => 'person',
                  'id'     => 'gender'
                }
              ],
    'rows' => [
                {
                  'col'    => 'country',
                }
              ]
};
