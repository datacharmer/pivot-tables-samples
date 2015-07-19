$params = {
    'col_sub_total' => 1,
    'row_total' => 1,
    'row_sub_total' => 1,
    'col_total' => 1,
    'remove_if_zero' => 1,
    'use_real_names' => 1,
    'op' => [ [ 'count', 'emp_no' ] ],
    'from' =>    'employees.dept_emp inner join employees.departments using (dept_no) inner join employees.employees using (emp_no) ',
    'rows' => [
                {
                  'col'     => 'dept_name'
                }
              ],
    'cols' => [
                {
                  'id'    => 'gender',
                  'from' => 'employees.employees'
                }
              ]
};
