-- Movie.objects.all()
SELECT * FROM movies_movie;

-- Movie.objects.all().order_by('year')
SELECT * FROM movies_movie ORDER BY year;

-- Movie.objects.all().order_by('-year')
SELECT * FROM movies_movie ORDER BY year DESC;

-- User.objects.filter(age=31)
SELECT * FROM movies_user
WHERE age = 31;

-- User.objects.filter(age__lt = 20) 
-- lt는 < less than, gt는 > greater than, lte는 <=, gte는 >=
SELECT * FROM movies_user
WHERE age < 20;

-- User.objects.filter(age__gte = 20, age__lt = 30) 
SELECT * FROM movies_user
WHERE age >= 20 AND age < 30;

-- User.objects.filter(Q(age__lt = 30) | Q(age__gt = 40))) 
SELECT * FROM movies_user
WHERE age < 30 OR age > 40;

-- Movie.objects.aggregate(Max('year'))
SELECT title, max(year) FROM movies_movie;

-- User.objects.aggregate(Avg('age'))
SELECT avg(age) FROM movies_user;

-- Score.objects.filter(movie_id=1).aggregate(Max('value'), Avg('value'))
SELECT max(value), avg(value) FROM movies_movie
WHERE movie_id = 1;

-- 
SELECT count(*) FROM movies_score
WHERE movie_id = 1;

-- Movie.objects.filter(title__contains='the')
SELECT * FROM movies.movie
WHERE title LIKE '%the%';

-- Movie.objects.filter(title__startswith='the')
SELECT * FROM movies.movie
WHERE title LIKE 'the%';

-- Movie.objects.filter(title__endswith='the')
SELECT * FROM movies.movie
WHERE title LIKE '%the';

-- 정규표현식을 사용
SELECT * FROM movies.movie_id
WHERE title LIKE '%g__d%';

-- User.objects.values('country').distinct().count()
SELECT count(DISTINCT country) FROM movies_user;

-- User.objects.filter(age__range = [20, 30])
SELECT * FROM movies_user
WHERE age BETWEEN 20 AND 30;

-- Movie.objects.filter(year__in=[2000, 2005, 2010])
SELECT * FROM movies_movie
WHERE year IN(2000, 2005, 2010);

