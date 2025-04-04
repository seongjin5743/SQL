-- 1번 유저가 작성한 모든 점수(scores)

-- user = User.objects.get(id=1)
-- user.score_set.all()

-- Score.objects.filter(user_id)

SELECT * FROM movies_user
JOIN movies_score
ON movies_user.id = movies_score.user_id
WHERE movies_user.id = 1;

-- 100번 영화가 어떤 카테고리인지
-- movie = Movie.objects.get(id=100)
-- movie.categories.all()

SELECT * FROM movies_movie
JOIN movies_category_movies
ON movies_movie.id = movies_category_movies.movie_id
JOIN movies_category
ON movies_category_movies.category_id = movies_category.id
WHERE movies_movie.id = 100;

-- drama 카테고리에 속한 모든 영화
-- category = Category.objects.get(name='drama')
-- category.movies.all()

SELECT * FROM movies_category
JOIN movies_category_movies
ON movies_category.id = movies_category_movies.category_id
JOIN movies_movie
ON movies_category_movies.movie_id =  movies_movie.id
WHERE movies_category.name = 'drama';

-- country 별로 나누기
-- user = User.objects.values('country')
-- user.annotate(Count('id'))

SELECT country, COUNT(*) FROM movies_user
GROUP BY country;


-- country별로 평균 구하기
-- user = User.objects.values('country')
-- user.annotate(Avg('score__value'))

SELECT country, AVG(value) as 평균 FROM movies_user
JOIN movies_score
ON movies_user.id = movies_score.user_id
GROUP BY country;