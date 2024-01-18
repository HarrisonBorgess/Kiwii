-- SUBJECTS
    INSERT INTO Subject (id, name) VALUES 
    ('POO', 'Programação Orientada a Objetos'),
    ('GDC', 'Gestão do Conhecimento'),
    ('LPA', 'Lógica de Programação e Algoritmos'),
    ('BD', 'Banco de Dados'),
    ('IA', 'Inteligência Artificial');

-- STUDENTS
    INSERT INTO Rm (id, name) VALUES 
    ('10005001', 'Administrador'),
    ('10001', 'Professora'),
    ('10002', 'Professor'),
    ('10003', 'Professor'),
    ('10004', 'Professor'),
    ('10005', 'Professora'),
    ('20240005', 'Aluno'),
    ('20210001', 'Oseias Lopes'),
    ('20210002', 'Iago Roque'),
    ('20210003', 'Harrison Borges'),
    ('20210004', 'Marcos Carvalho');

-- Associando Rm com Subject na tabela de associação
    INSERT INTO rm_subject (rm_id, subject_id) VALUES 
    ('10005001','GDC'),-- Administrador
    ('10005001','POO'),
    ('10005001','LPA'),
    ('10005001','BD'),
    ('10005001','IA'),

    ('10001', 'POO'), -- Professora de POO 
    ('10002', 'GDC'), -- Professor de gestão
    ('10003', 'LPA'), -- Professor de LPA
    ('10004', 'BD'), -- Professor de BD
    ('10005', 'IA'), -- Professora de IA

    ('20240005', 'GDC') -- Aluno 
    ('20240005', 'POO'),
    ('20240005', 'LPA'),
    ('20240005', 'BD'),
    ('20240005', 'IA'),
    ('20210001', 'GDC'), -- Oseias
    ('20210001', 'LPA'),
    ('20210001', 'BD'),
    ('20210001', 'IA'),
    ('20210001', 'POO'),
    ('20210002', 'GDC'), -- Iago
    ('20210002', 'LPA'),
    ('20210002', 'BD'),
    ('20210002', 'IA'),
    ('20210002', 'POO'),
    ('20210003', 'GDC'), -- Harrison
    ('20210003', 'LPA'),
    ('20210003', 'BD'),
    ('20210003', 'IA'),
    ('20210003', 'POO'),
    ('20210004', 'GDC'), -- Marcos
    ('20210004', 'LPA'),
    ('20210004', 'BD'),
    ('20210004', 'IA'),
    ('20210004', 'POO');

-- LINKS
    INSERT INTO link (url, rm_id, subject_id) VALUES
    ('https://www.alura.com.br/artigos/poo-programacao-orientada-a-objetos', '20210003', 'POO'), -- POO
    ('https://www.devmedia.com.br/entendendo-e-aplicando-heranca-em-java/24544', '20210002', 'POO'),
    ('https://www.devmedia.com.br/conceitos-e-exemplos-polimorfismo-programacao-orientada-a-objetos/18701', '20210001', 'POO'),
    ('https://www.gupy.io/blog/gestao-do-conhecimento', '20210001', 'GDC'), -- GDC
    ('https://www.computer.org/', '20210004', 'GDC'),
    ('https://drive.google.com/file/d/1masvpC5VlXzSpUPnBLjD0YOVkz7QMXE4/view?usp=drive_link', '20210002', 'LPA'), -- LPA
    ('https://www.alura.com.br/artigos/algoritmos-e-logica-de-programacao', '20210003', 'LPA'),
    ('https://www.youtube.com/watch?v=8mei6uVttho', '20210001', 'LPA'),
    ('https://www.coursera.org/learn/algorithms-part1', '20210004', 'LPA'),
    ('https://www.postgresql.org/', '20210003', 'BD'), -- BD
    ('https://www.w3schools.com/sql/', '20210001', 'BD'),
    ('https://drive.google.com/file/d/1P-Dv8Q7mHU2Nx5-S_-qrBpaWoN35a0oc/view?usp=sharing', '20210002', 'BD'),
    ('https://docs.oracle.com/en/database/', '20210003', 'BD'),
    ('https://learn.mongodb.com/', '20210004', 'BD'),
    ('https://www.python.org/', '20210003', 'IA'), -- IA
    ('https://openai.com/', '20210001', 'IA'),
    ('https://drive.google.com/file/d/1-xY-cJYGky4UJOPBbQlW76aalIIdcVT1/view?usp=sharing', '20210002', 'IA'),
    ('https://www.tensorflow.org/?hl=pt-br/', '20210004', 'IA'),
    ('https://colab.research.google.com/', '20210003', 'IA');
