-- CineSuper
-- Phase 2: Seed data

INSERT INTO genres (name)
VALUES
    ('Action'),
    ('Comedy'),
    ('Drama'),
    ('Thriller'),
    ('Romance');

INSERT INTO movies (
    title,
    release_year,
    language,
    duration_min,
    description,
    poster_url,
    genre_id
)
VALUES
(
    'Drishyam',
    2013,
    'Malayalam',
    160,
    'A family man tries to protect his family from a serious crime.',
    NULL,
    (SELECT id FROM genres WHERE name = 'Drama')
),
(
    'Premam',
    2015,
    'Malayalam',
    156,
    'A young man experiences love through different stages of his life.',
    NULL,
    (SELECT id FROM genres WHERE name = 'Romance')
),
(
    'Lucifer',
    2019,
    'Malayalam',
    174,
    'A mysterious man enters a political power struggle.',
    NULL,
    (SELECT id FROM genres WHERE name = 'Action')
),
(
    'Bangalore Days',
    2014,
    'Malayalam',
    171,
    'Three cousins experience friendship, love and life in Bangalore.',
    NULL,
    (SELECT id FROM genres WHERE name = 'Comedy')
),
(
    'Anjaam Pathiraa',
    2020,
    'Malayalam',
    144,
    'A criminal psychologist investigates a series of murders.',
    NULL,
    (SELECT id FROM genres WHERE name = 'Thriller')
);

INSERT INTO reviews (
    movie_id,
    reviewer_name,
    rating,
    comment
)
VALUES
(
    (SELECT id FROM movies WHERE title = 'Drishyam'),
    'Anjali',
    5,
    'Excellent movie with a very strong story.'
),
(
    (SELECT id FROM movies WHERE title = 'Premam'),
    'Rahul',
    5,
    'Beautiful and memorable movie.'
),
(
    (SELECT id FROM movies WHERE title = 'Lucifer'),
    'Arun',
    4,
    'Great action and performances.'
),
(
    (SELECT id FROM movies WHERE title = 'Bangalore Days'),
    'Meera',
    5,
    'Very entertaining and emotional.'
),
(
    (SELECT id FROM movies WHERE title = 'Anjaam Pathiraa'),
    'Vishnu',
    4,
    'A gripping thriller.'
);