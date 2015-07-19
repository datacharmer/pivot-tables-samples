
$params = {
    'col_sub_total' => 1,
    'row_total' => 1,
    'row_sub_total' => 1,
    'col_total' => 1,
    'remove_if_zero' => 1,
    'use_real_names' => 1,
    'op' => [ [ 'count', 'table_name' ] ],
    'from' =>    'information_schema.tables ',
    'rows' => [
                {
                  'col'     => 'table_schema'
                }
              ],
    'cols' => [
                {
                  'id'    => 'engine',
                  'from' => 'information_schema.tables'
                }
              ]
};
