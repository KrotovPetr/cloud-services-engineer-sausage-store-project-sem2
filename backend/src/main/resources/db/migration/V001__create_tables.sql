CREATE TABLE product (
    id          BIGSERIAL PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    picture_url VARCHAR(1024),
    price       NUMERIC(10, 2)
);

CREATE TABLE orders (
    id           BIGSERIAL PRIMARY KEY,
    status       VARCHAR(50),
    date_created DATE
);

CREATE TABLE order_product (
    order_id   BIGINT  NOT NULL,
    product_id BIGINT  NOT NULL,
    quantity   INTEGER NOT NULL,
    PRIMARY KEY (order_id, product_id)
);
