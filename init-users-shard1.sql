-- Шард 1 (Европа)
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    region VARCHAR(50) NOT NULL CHECK (region IN ('Europe')),
    created_at TIMESTAMP DEFAULT NOW()
);

-- Шард 2 (Азия)
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    region VARCHAR(50) NOT NULL CHECK (region IN ('Asia')),
    created_at TIMESTAMP DEFAULT NOW()
);

-- Шард 3 (Америка)
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    region VARCHAR(50) NOT NULL CHECK (region IN ('America')),
    created_at TIMESTAMP DEFAULT NOW()
);