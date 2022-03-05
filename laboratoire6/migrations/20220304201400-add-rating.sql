ALTER TABLE customers
ADD COLUMN rating integer CHECK (rating between 1 and 10);
