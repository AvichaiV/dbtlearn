select
    *
from
    {{ ref('fct_reviews')}} as rev
inner join
    {{ ref('dim_listings_cleansed')}} as lc
using
    (listing_id)
where
    rev.review_date <= lc.created_at
