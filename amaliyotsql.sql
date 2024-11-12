DROP TABLE IF EXISTS Categories;

CREATE TABLE IF NOT EXISTS Categories(
	category_id SERIAL PRIMARY KEY,
	category_name VARCHAR(150)
);

INSERT INTO Categories(category_name) VALUES
('taomlar'),
('ichimliklar'),
('shirinlilar');


UPDATE Categories SET category_name = 'sharbatlat' WHERE category_name = 'ichimliklar';

-----------------------------------------------------------



DROP TABLE IF EXISTS Products;

CREATE TABLE IF NOT EXISTS Products(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(150),
	description TEXT,
	price NUMERIC(7, 2),
	quantity CHAR(12),
	added DATE DEFAULT CURRENT_DATE,
	category_id integer references Categories(category_id)
)



INSERT INTO Products(product_name, description, price, quantity, category_id) VALUES
('osh', 'mazali qoy goshtida', 50000, 50, 1),
('cola', 'yangi tam', 10000, 150, 2),
('bisquit', 'mazasi juda shirin', 15000, 200, 3);

UPDATE Products SET product_name = 'shorva' WHERE product_name = 'osh';

-----------------------------------------------------------

DROP TABLE IF EXISTS Commentss;

CREATE TABLE IF NOT EXISTS Commentss(
	comment_id SERIAL PRIMARY KEY,
	comment_text TEXT,
	user_name VARCHAR(150),
	product_id integer references Products(product_id),
	created DATE DEFAULT CURRENT_DATE
);

INSERT INTO Commentss(comment_text, user_name, product_id) VALUES
('juda mazali ekan', 'Azamatjon', 1),
('yangi tam yoqdi', 'Habibullo', 2),
('juda shirin ekan', 'Doston', 3);

DELETE FROM Commentss WHERE comment_id = 1;



SELECT * FROM Categories;
SELECT * FROM Products;
SELECT * FROM commentss;
