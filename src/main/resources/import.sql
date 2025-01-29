INSERT INTO tb_user (name, email, phone, password, birth_date) VALUES ('Maria Brown', 'maria@gmail.com', '988888888', '$2a$10$N7SkKCa3r17ga.i.dF9iy.BFUBL2n3b6Z1CWSZWi/qy7ABq/E6VpO', '2001-07-25');
INSERT INTO tb_user (name, email, phone, password, birth_date) VALUES ('Alex Green', 'alex@gmail.com', '977777777', '$2a$10$N7SkKCa3r17ga.i.dF9iy.BFUBL2n3b6Z1CWSZWi/qy7ABq/E6VpO', '1987-12-13');
INSERT INTO tb_user (name, email, phone, password, birth_date) VALUES ('Ana Blue', 'ana@gmail.com', '977777777', '$2a$10$N7SkKCa3r17ga.i.dF9iy.BFUBL2n3b6Z1CWSZWi/qy7ABq/E6VpO', '1987-12-13');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Curso de Java e POO', 'www.fsa.br/wp-content/uploads/bruxas.jpg', 'https://diariodonordeste.verdesmares.com.br/image');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2024-01-25T03:00:00Z', TIMESTAMP WITH TIME ZONE '2025-02-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2024-12-10T03:00:00Z', TIMESTAMP WITH TIME ZONE '2025-12-10T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_url, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'www.fsa.br/wp-content/uploads/bruxas.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_url, type, offer_id) VALUES ('Fórum', 'Tire suas dúvidas', 2, 'www.fsa.br/wp-content/uploads/bruxas.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_url, type, offer_id) VALUES ('Lives', 'Lives exclusivas para membros', 3, 'www.fsa.br/wp-content/uploads/bruxas.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_url, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo vamos estudar HTML', 1, 'www.fsa.br/wp-content/uploads/bruxas.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_url, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Tempo de estudar CSS', 2, 'www.fsa.br/wp-content/uploads/bruxas.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_url, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'JavaScript e Front-end', 3, 'www.fsa.br/wp-content/uploads/bruxas.jpg', 1, 2);
