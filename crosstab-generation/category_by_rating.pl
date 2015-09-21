$params = {
    'col_sub_total' => 1,
    'row_total' => 1,
    'row_sub_total' => 1,
    'col_total' => 1,
    'use_real_names' => 1,
    'op' => [ [ 'avg', 'length' ] ],
    # 'op' => [ [ 'avg', 'length' ] ],
    'from' =>    'sakila.film_list',
    'rows' => [
                {
                  'col'     => 'category'
                }
              ],
    'cols' => [
                {
                  'id'    => 'rating',
                  'from' => 'sakila.film_list'
                }
              ]
};
