INSERT into TOPIC (id, name, description) values ('T001', 'HISTORY', 'Offers courses related to History');

INSERT into COURSE (id, name, description, topic_id) values ('HIST_10N', 'Thinking About War', 'This course examines classic approaches to war as an intellectual problem, looking at how a matter of such great physical violence and passions can be subjected to understanding and used in philosophy, political theory, and art', 'T001' );
INSERT into COURSE (id, name, description, topic_id) values ('HIST_90', 'Early Chinese Thought', 'This course examines the emergence of critical thought in early China and a brief study of the social and political changes that made this emergence.', 'T001' );
INSERT into COURSE (id, name, description, topic_id) values ('HIST_197', 'Southeast Asia: From Antiquity to the Modern Era', 'The history of S.E. Asia, comprising Indonesia, the Philippines, Malaysia, Singapore, Thailand, Vietnam, Burma, Cambodia, and Laos, from antiquity to the present.', 'T001');

INSERT into TOPIC (id, name, description) values ('T002', 'CHEMISTRY', 'Offers courses related to Chemistry');

INSERT into COURSE (id, name, description, topic_id) values ('CHEM_190', 'Advanced Undergraduate Research', 'Limited to undergraduates who have completed Chem 121. A three-hour lab section provides hands on experience with modern chemical methods for preparative and analytical chemistry.', 'T002' );
INSERT into COURSE (id, name, description, topic_id) values ('CHEM_121', 'Understanding the Natural and Unnatural World through Chemistry', 'transformative power of molecular science on the modern world and how foundational knowledge of chemistry enables profound discoveries in biological, pharmaceutical, agrochemical, engineering, energy, and materials science research.', 'T002' );
INSERT into COURSE (id, name, description, topic_id) values ('CHEM_123', 'Organic Polyfunctional Compounds', 'Analysis of molecular symmetry and spectroscopy, aromaticity, aromatic reactivity, heterocyclic chemistry, chemistry of peptides and DNA.', 'T002' );
INSERT into COURSE (id, name, description, topic_id) values ('CHEM_255', 'Single-Crystal X-ray Diffraction', 'Practical X-ray crystallography for small molecule compounds, which will emphasize crystal growth, measurement strategies, structure solution and refinement, and report generation.', 'T002' );

INSERT into TOPIC (id, name, description) values ('T003', 'COMPUTER SCIENCE', 'Offers courses related to Computer Science');

INSERT into COURSE (id, name, description, topic_id) values ('CS_344', 'Topics in Computer Networks', 'Students work in teams of two to build a fully functioning Internet router, gaining hands-on experience building the hardware and software of a high-performance network system.', 'T003' );
INSERT into COURSE (id, name, description, topic_id) values ('CS_347', 'Human-Computer Interaction: Foundations and Frontiers', 'This course equips students with the major animating theories of human-computer interaction, and connects those theories to modern innovations in research.', 'T003' );
INSERT into COURSE (id, name, description, topic_id) values ('CS_251', 'Cryptocurrencies and blockchain technologies', 'The course will cover the technical aspects of cryptocurrencies, blockchain technologies, and distributed consensus. Students will learn how these systems work and how to engineer secure software.', 'T003' );

INSERT into USERS (username, password, enabled) values ('JohnWatson', '$2a$10$RnA8KzhUgU6Q/4bvWkH7ReydRh00gGcbYy3xyLUAZPKL.0GIIyVwu', true);
INSERT into USERS (username, password, enabled) values ('IreneAdler', '$2a$10$WRzyOmdCztGkKiLZmK4lzehUYyMjkLOEUFrqjPlZXkj2g9I5/B6oS', true);
INSERT into USERS (username, password, enabled) values ('SherlockHolmes', '$2a$10$05ljNf/SFBGJhESRQBv9dO6f.eIYeWFal.rPj2bfWNJGw0Yrz917O', true);
INSERT into USERS (username, password, enabled) values ('MycroftHolmes', '$2a$10$h6tKUnUYEeWQPJYwea/1GOhZMRrmM4Qg31f4G9yyasvp57EDslswG', true);

INSERT into AUTHORITIES (username, authority) values ('JohnWatson', 'ROLE_USER');
INSERT into AUTHORITIES (username, authority) values ('IreneAdler', 'ROLE_USER');
INSERT into AUTHORITIES (username, authority) values ('SherlockHolmes', 'ROLE_ADMIN');
INSERT into AUTHORITIES (username, authority) values ('MycroftHolmes', 'ROLE_ADMIN');