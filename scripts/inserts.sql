INSERT INTO laboratory (lab_id, laboratory_name, building, floor, phone_number) VALUES
(11906, 'One', 1, 1, 89556475221),
(11906, 'Two', 2, 1, 89198676168),
(11253, 'Three', 3, 2, 89141978669),
(11316, 'Four', 4, 2, 89505817410),
(11195, 'Five', 5, 3, 89198207654),
(11866, 'Six', 6, 3, 89054213106),
(11830, 'Seven', 7, 4, 89577653355),
(11648, 'Eight', 8, 4, 89131440141),
(11432, 'Nine', 9, 5, 89322074881),
(11929, 'Ten', 10, 5, 89166725109);

INSERT INTO research (lab_id, employee_id, virus_id, animal_id) VALUES
(11212, 22250, 33253, 44670),
(11906, 22369, 33740, 44755),
(11253, 22591, 33354, 44407),
(11316, 22840, 33421, 44824),
(11195, 22360, 33863, 44206),
(11866, 22731, 33704, 44950),
(11830, 22723, 33714, 44521),
(11648, 22865, 33444, 44623),
(11432, 22553, 33147, 44881),
(11929, 22325, 33671, 44481);

INSERT INTO virus (virus_id, name, where_find, when_discovered, when_bring, death_rate) VALUES
(33253, 'Influenza', 'US', '1988-02-25', '2012-06-13', 55),
(33740, 'HIV', 'China', '1984-06-13', '2005-06-13', 30),
(33354, 'Rotavirus', 'Russia', '1974-06-13', '2023-06-13', 28),
(33421, 'Hepatitis', 'Japan', '1962-06-13', '2015-06-13', 39),
(33863, 'Herpes', 'Germany', '1984-06-13', '2013-06-13', 5),
(33704, 'Norovirus', 'France', '1961-06-13', '2013-06-13', 20),
(33714, 'HPV', 'UK', '1977-06-13', '2014-06-13', 22),
(33444, 'Dengue', 'India', '1987-06-13', '2011-06-13', 31),
(33147, 'Rabies', 'Brazil', '1971-06-13', '2014-06-13', 35),
(33671, 'Zika', 'Africa', '1963-06-13', '2012-06-13', 16);

INSERT INTO animal (animal_id, name, zoo_id, age, gender) VALUES
(44670, 'pig', 55572, 5, 'f'),
(44755, 'rat', 55882, 5, 'm'),
(44407, 'bird', 55136, 5, 'f'),
(44824, 'mouse', 55423, 1, 'f'),
(44206, 'rabbit', 55268, 4, 'f'),
(44950, 'bird', 55262, 3, 'f'),
(44521, 'rabbit', 55479, 3, 'f'),
(44623, 'rat', 55894, 5, 'f'),
(44881, 'monkey', 55878, 1, 'f'),
(44481, 'rabbit', 55420, 5, 'f');

INSERT INTO task (task_id, deadline, text_of_task, additional_information) VALUES
(66458, '2990-06-13', '1', NULL),
(66323, '2991-06-13', '2', NULL),
(66142, '2992-06-13', '3', NULL),
(66713, '2993-06-13', '4', NULL),
(66889, '2994-06-13', '5', NULL),
(66234, '2995-06-13', '6', NULL),
(66833, '2996-06-13', '7', NULL),
(66464, '2997-06-13', '8', NULL),
(66793, '2998-06-13', '9', NULL),
(66195, '2999-06-13', '0', NULL);

INSERT INTO employee (employee_id, task_id) VALUES
(22250, 66458),
(22369, 66323),
(22591, 66142),
(22840, 66713),
(22360, 66889),
(22731, 66234),
(22723, 66833),
(22865, 66464),
(22553, 66793),
(22325, 66195);

INSERT INTO personal_information (employee_id, name, second_name, surname, email, phone_number) VALUES
(22250, 'Ivan', 'Ivanov', 'Ivanovich', 'testuser1@example.com', 89197299119),
(22369, 'Anastasia', 'Smirnova', 'Alexandrovna', 'john.doe@email.com', 89715642214),
(22591, 'Sergei', 'Petrov', 'Vladimirovich', 'jane_smith1234@example.com', 88727623170),
(22840, 'Maria', 'Kuznetsova', 'Petrovna', 'yourname@emailprovider.com', 89220356679),
(22360, 'Peter', 'Sokolov', 'Sergeevich', 'user45678@example.com', 88372978616),  
(22731, 'Ekaterina', 'Lebedeva', 'Nikolaevna', 'hello.world@email.com', 88054408485),
(22723, 'Alexei', 'Kozlov', 'Andreevich', 'contactus@example.com', 88018246265),  
(22865, 'Olga', 'Novikova', 'Dmitrievna', 'myemail@emailservice.com', 88487259732),
(22553, 'Yuri', 'Morozov', 'Yurievich', 'sampleemail@example.com', 88122161843),  
(22325, 'Galina', 'Volkova', 'Viktorovna', 'mytestemail123@example.com', 88778453948);

INSERT INTO zoo (zoo_id, name, city, country) VALUES
(55572, 'Central Zoo', 'Moscow', 'Russia'),
(55882, 'Singapore Zoo', 'Singapore', 'Singapore'),
(55136, 'San Diego Zoo', 'San Diego', 'USA'),
(55423, 'Berlin Zoo', 'Berlin', 'Germany'),
(55268, 'Bronx Zoo', 'Moscow', 'Russia'),
(55262, 'Taronga Zoo', 'Sydney', 'Australia'),
(55479, 'Prague Zoo', 'Prague', 'Czech Republic'),
(55894, 'Central Zoo', 'Moscow', 'Russia'),
(55878, 'Sentosa Island Tropical Zoo', 'Singapore', 'Singapore'),
(55420, 'Toronto Zoo', 'Toronto', 'Canada');
