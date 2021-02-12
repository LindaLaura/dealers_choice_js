TRUNCATE TABLE makers, models, cars;


INSERT INTO makers (name) VALUES ('Toyota');
INSERT INTO makers (name) VALUES ('Nissan');
INSERT INTO makers (name) VALUES ('Tesla');
INSERT INTO makers (name) VALUES ('BMW');


INSERT INTO models (name, makersId) VALUES ('Corolla', (SELECT id from makers where name='Toyota'));
INSERT INTO models (name, makersId) VALUES ('Camry', (SELECT id from makers where name='Toyota'));
INSERT INTO models (name, makersId) VALUES ('RAV4', (SELECT id from makers where name='Toyota'));
INSERT INTO models (name, makersId) VALUES ('Model Y', (SELECT id from makers where name='Tesla'));
INSERT INTO models (name, makersId) VALUES ('Model 3', (SELECT id from makers where name='Tesla'));
INSERT INTO models (name, makersId) VALUES ('Pathfinder', (SELECT id from makers where name='Nissan'));
INSERT INTO models (name, makersId) VALUES ('Rogue', (SELECT id from makers where name='Nissan'));
INSERT INTO models (name, makersId) VALUES ('Murano', (SELECT id from makers where name='Nissan'));
INSERT INTO models (name, makersId) VALUES ('Series', (SELECT id from makers where name='BMW'));
INSERT INTO models (name, makersId) VALUES ('M5', (SELECT id from makers where name='BMW'));
INSERT INTO models (name, makersId) VALUES ('X1', (SELECT id from makers where name='BMW'));


INSERT INTO cars (color, makerId, modelId) VALUES ('black', (SELECT id from makers where name='Toyota'), (SELECT id from models where name='Corolla'));
INSERT INTO cars (color, makerId, modelId) VALUES ('red', (SELECT id from makers where name='Toyota'), (SELECT id from models where name='Camry'));
INSERT INTO cars (color, makerId, modelId) VALUES ('magenta', (SELECT id from makers where name='Toyota'), (SELECT id from models where name='RAV4'));
INSERT INTO cars (color, makerId, modelId) VALUES ('grey', (SELECT id from makers where name='Nissan'), (SELECT id from models where name='Pathfinder'));
INSERT INTO cars (color, makerId, modelId) VALUES ('grey', (SELECT id from makers where name='Nissan'), (SELECT id from models where name='Rogue'));
INSERT INTO cars (color, makerId, modelId) VALUES ('pink', (SELECT id from makers where name='Nissan'), (SELECT id from models where name='Murano'));
INSERT INTO cars (color, makerId, modelId) VALUES ('white', (SELECT id from makers where name='Tesla'), (SELECT id from models where name='Model Y'));
INSERT INTO cars (color, makerId, modelId) VALUES ('blu', (SELECT id from makers where name='Tesla'), (SELECT id from models where name='Model 3'));
INSERT INTO cars (color, makerId, modelId) VALUES ('red', (SELECT id from makers where name='BMW'), (SELECT id from models where name='X1'));
INSERT INTO cars (color, makerId, modelId) VALUES ('grey', (SELECT id from makers where name='BMW'), (SELECT id from models where name='M5'));
INSERT INTO cars (color, makerId, modelId) VALUES ('brown', (SELECT id from makers where name='BMW'), (SELECT id from models where name='Series'));