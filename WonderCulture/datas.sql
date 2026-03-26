IF NOT EXISTS CREATE TABLE 'continents'(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
)

IF NOT EXISTS CREATE TABLE 'countries'(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    continent_id INTEGER,
    FOREIGN KEY (continent_id) REFERENCES continents(id)
)

IF NOT EXISTS CREATE TABLE 'cities'(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    country_id INTEGER,
    FOREIGN KEY (country_id) REFERENCES countries(id)
)

IF NOT EXISTS CREATE TABLE 'books'(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    author_id INTEGER,
    isbn TEXT NOT NULL,
    publication_year TEXT NOT NULL,
    genre TEXT NOT NULL,
    city_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES authors(id)
    FOREIGN KEY (city_id) REFERENCES cities(id)
)

IF NOT EXISTS CREATE TABLE 'authors'(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    surname TEXT NOT NULL,
    birth_year INTEGER NOT NULL
)

IF NOT EXISTS CREATE TABLE 'songs'(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    author_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES authors(id)
)

IF NOT EXISTS CREATE TABLE 'films'(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    publication_year TEXT NOT NULL,
    genre TEXT NOT NULL,
    duration TEXT NOT NULL
)

IF NOT EXISTS CREATE TABLE 'TVseries'(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    seasons INTEGER NOT NULL,
    episodes_per_season INTEGER NOT NULL
)

IF NOT EXISTS CREATE TABLE 'users'(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    surname TEXT NOT NULL,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
    birth_date TEXT NOT NULL
)


