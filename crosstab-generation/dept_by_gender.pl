$params = {
    'col_sub_total' => 1,
    'row_total' => 1,
    'row_sub_total' => 1,
    'col_total' => 1,
    'remove_if_zero' => 1,
    'use_real_names' => 1,
    'op' => [ [ 'count', 'name' ] ],
    'from' =>    'all_personnel',
    'rows' => [
                {
                  'col'     => 'department'
                }
              ],
    'cols' => [
                {
                  'id'    => 'gender',
                  'from' => 'all_personnel'
                }
              ]
};
