PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE restaurant(
 restaurant_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
 restaurant_name VARCHAR(100), 
 owner_id VARCHAR(100), 
 latitude DECIMAL(16,14), 
 hardness DECIMAL(17,14), 
 restaurant_category VARCHAR(100), 
 signature_food VARCHAR(100)
 );
 
INSERT INTO restaurant (restaurant_name, restaurant_category, signature_food, owner_id, latitude, hardness) 
VALUES('계림', '한식', '닭볶음탕', 'NULL', 37.57017640061196, 126.99250108814104), 
       ('남원추어탕', '한식', '추어탕', 'NULL', 37.57017640060342, 126.99142157107046), 
       ('종로설렁탕', '한식', '설렁탕', 'NULL', 37.570332763474184, 126.98990211169911), 
       ('대륙', '중식', '짜장면', 'NULL', 37.570332763474184, 126.98990211169911), 
       ('라밥', '기타', '떡볶이', 'NULL', 37.57040759210365, 126.98978377874494), 
       ('호호식당', '일식', '우나기동', 'NULL', 37.57302650000156, 126.98637672253678), 
       ('경영카츠', '일식', '돈가스', 'NULL', 37.57302650000156, 126.98637672253678), 
       ('종로찌개마을', '한식', '대구탕', 'NULL', 37.57302650000156, 126.98637672253678), 
       ('익선디미방', '양식', '파스타', 'NULL', 37.57302650000156, 126.98637672253678), 
       ('바비레드', '양식', '파스타', 'NULL', 37.56974247984493, 126.98325637172556), 
       ('우육면관', '중식', '우육면', 'NULL', 37.569811825414696, 126.97962184605967), 
       ('청진옥', '한식', '해장국', 'NULL', 37.569811825414696, 126.97962184605967), 
       ('대련집', '한식', '칼국수', 'NULL', 37.56724864933518, 126.98482310270103), 
       ('숙달돼지', '한식', '삼겹살', 'NULL', 37.569406929735955, 126.97950025408056), 
       ('마이클바이해비치', '양식', '샌드위치', 'NULL', 37.56945223383371, 126.9827147432949), 
       ('안동장', '중식', '짬뽕', 'NULL', 37.56887233958961, 126.98600491924694), 
       ('덕수궁 리에제와플', '기타', '와플', 'NULL', 37.56549180389747, 126.97495739371175), 
       ('쯔루하시후게츠', '일식', '야끼소바', 'NULL', 37.56539303150556, 126.97786911537067), 
       ('촙촙', '기타', '쌀국수', 'NULL', 37.56612439755247, 126.98568693066336), 
       ('그레인바운더리', '기타', '쿠키', 'NULL', 37.56985114075487, 126.98194256860843);
 
CREATE TABLE restaurant_menu(
 restaurant_id INTEGER, 
 menu_id INTEGER, 
 FOREIGN KEY(restaurant_id) REFERENCES restaurant(restaurant_id), 
 FOREIGN KEY(menu_id) REFERENCES menu(menu_id)
    );
    
INSERT INTO restaurant_menu (restaurant_id, menu_id) 
 VALUES(1, 1), (1, 2), (1, 3), 
       (2, 5), (2, 4), (2, 6), (2, 7), 
       (3, 8), (3, 9), (3, 10), (3, 11), 
       (4, 12), (4, 13), (4, 14), (4, 3), 
       (5, 15), (5, 16), (5, 17), (5, 18), (5, 6), 
       (6, 19), (6, 18), (6, 6), 
       (7, 19), (7, 18), (7, 6), 
       (8, 20), (8, 21), (8, 22), (8, 23), 
       (9, 24), (9, 25), (9, 26), (9, 27), 
       (10, 24), (10, 25), (10, 26), (10, 3), 
       (11, 28), (11, 29), (11, 30), 
       (12, 9), (12, 31), (12, 32), 
       (13, 2), (13, 33), (13, 32), (13, 23), (13, 34), 
       (14, 35), (14, 36), (14, 37), 
       (15, 39), (15, 25), (15, 24), (15, 38), 
       (16, 13), (16, 12), (16, 3), 
       (17, 40), (17, 41), (17, 42), 
       (18, 43), (18, 44), 
       (19, 45), (19, 3), (19, 14), 
       (20, 47), (20, 46), (20, 41), (20, 42);
       

CREATE TABLE menu(
 menu_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
 food_name VARCHAR(100), 
 food_category VARCHAR(100)
 );
 
INSERT INTO menu (food_name, food_category) 
 VALUES('닭볶음탕', '국/탕'), 
       ('칼국수', '면요리'), 
       ('볶음밥', '쌀/밥'), 
       ('매운탕', '국/탕'), 
       ('추어탕', '국/탕'), 
       ('튀김', '기타'), 
       ('전골', '국/탕'), 
       ('설렁탕', '국/탕'), 
       ('해장국', '국/탕'), 
       ('갈비탕', '국/탕'), 
       ('곰탕', '국/탕'), 
       ('짜장면', '면요리'), 
       ('짬뽕', '면요리'), 
       ('탕수육', '고기'), 
       ('김밥', '쌀/밥'), 
       ('떡볶이', '기타'), 
       ('돈까스', '고기'), 
       ('라면', '면요리'), 
       ('우동', '면요리'), 
       ('내장탕', '국/탕'), 
       ('대구탕', '국/탕'), 
       ('알탕', '국/탕'), 
       ('낚지볶음', '기타'), 
       ('샐러드', '채식'), 
       ('파스타', '면요리'), 
       ('스테이크', '고기'), 
       ('리조또', '쌀/밥'), 
       ('우육면', '면요리'), 
       ('만두', '기타'), 
       ('어향가지', '기타'), 
       ('수육', '고기'), 
       ('전', '기타'), 
       ('보쌈', '고기'), 
       ('육회', '고기'), 
       ('삼겹살', '고기'), 
       ('된장찌개', '국/탕'), 
       ('냉면', '면요리'), 
       ('햄버거', '기타'), 
       ('샌드위치', '기타'), 
       ('와플', '기타'), 
       ('커피', '기타'), 
       ('주스', '기타'), 
       ('야끼소바', '기타'), 
       ('오코노미야끼', '기타'), 
       ('쌀국수', '면요리'), 
       ('크럼블', '기타'), 
       ('쿠키', '기타'); 
 
CREATE TABLE user(
 user_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
 login_id VARCHAR(100) NOT NULL UNIQUE, 
 latitude_user DECIMAL(16,14), 
 hardness_user DECIMAL(17,14)
 );
 
INSERT INTO user (login_id, latitude_user, hardness_user) 
 VALUES('yyyyoooo', 37.57098723159448, 126.9918994976269), 
       ('user1', 37.57098723159448, 126.9918994976269), 
       ('user2', 37.57098723159448, 126.9918994976269), 
       ('user3', 37.57098723159448, 126.9918994976269), 
       ('user4', 37.57098723159448, 126.9918994976269), 
       ('user5', 37.57098723159448, 126.9918994976269), 
       ('user6', 37.57098723159448, 126.9918994976269), 
       ('user7', 37.57098723159448, 126.9918994976269);
 
CREATE TABLE user_rap(
 user_id INTEGER, 
 restaurant_id INTEGER, 
 eat_date DATE, 
 eat_time TIME, 
 grade DECIMAL(2,1), 
 FOREIGN KEY(user_id) REFERENCES user(user_id), 
 FOREIGN KEY(restaurant_id) REFERENCES restaurant(restaurant_id)
 );
 
INSERT INTO user_rap (user_id, restaurant_id, eat_date, eat_time, grade) 
 VALUES(1, 1, '2022-11-01', '12:30:00', 5.0), 
       (1, 2, '2022-10-02', '12:24:00', 4.0), 
       (1, 3, '2022-10-05', '12:10:00', 3.0), 
       (1, 4, '2022-10-08', '12:16:00', 2.0), 
       (1, 5, '2022-09-01', '12:18:00', 1.0), 
       (2, 1, '2022-09-07', '12:16:00', 4.6), 
       (2, 2, '2022-10-15', '12:46:00', 4.3), 
       (2, 3, '2022-10-20', '12:42:00', 2.4), 
       (2, 4, '2022-09-26', '12:50:00', 3.5), 
       (2, 5, '2022-09-11', '12:13:00', 3.6), 
       (2, 6, '2022-08-19', '12:16:00', 4.8), 
       (3, 7, '2022-07-16', '12:20:00', 2.4), 
       (3, 8, '2022-08-25', '12:16:00', 1.0), 
       (3, 9, '2022-09-24', '12:47:00', 3.2), 
       (3, 10, '2022-10-01', '12:42:00', 4.5), 
       (4, 6, '2022-09-04', '12:34:00', 4.3), 
       (4, 7, '2022-07-27', '12:25:00', 3.2), 
       (4, 8, '2022-09-07', '12:30:00', 5.0), 
       (4, 9, '2022-08-03', '12:26:00', 5.0), 
       (4, 10, '2022-08-08', '12:24:00', 3.3), 
       (5, 11, '2022-09-21', '12:10:00', 4.5), 
       (5, 12, '2022-07-07', '12:03:00', 4.6), 
       (5, 13, '2022-09-09', '12:08:00', 4.2), 
       (5, 14, '2022-10-10', '12:24:00', 4.7), 
       (5, 15, '2022-10-27', '12:26:00', 3.9), 
       (6, 11, '2022-07-24', '12:29:00', 2.0), 
       (6, 12, '2022-10-06', '12:13:00', 3.4), 
       (6, 13, '2022-08-25', '12:00:00', 4.6), 
       (6, 14, '2022-09-18', '12:42:00', 3.4), 
       (6, 15, '2022-07-16', '12:55:00', 3.7), 
       (7, 16, '2022-08-08', '12:54:00', 3.8), 
       (7, 17, '2022-09-04', '12:26:00', 3.3), 
       (7, 18, '2022-10-30', '12:21:00', 2.5), 
       (7, 19, '2022-08-09', '12:26:00', 2.9), 
       (7, 20, '2022-10-04', '12:44:00', 4.7), 
       (8, 16, '2022-11-01', '12:57:00', 3.8), 
       (8, 17, '2022-10-16', '12:33:00', 4.9), 
       (8, 18, '2022-08-21', '12:44:00', 3.8), 
       (8, 19, '2022-09-25', '12:55:00', 3.5), 
       (8, 20, '2022-07-24', '12:22:00', 4.5);
COMMIT;