	INSERT INTO employees 
		(id, name, no_telp, alamat, warga_negara,
			gaji, tgl_lahir, id_jobs, id_divisions, status) 
		VALUES
		    (,'Richard Stallman','','','', , , 2, 2, ''),
		    (,'Lynda Learn'),
		    (,'Shaila'),
		    (,'udin');

    -- tambah data
    INSERT INTO `employees`
     (`id`, `name`, `no_telp`, `alamat`, `warga_negara`, `gaji`, `tgl_lahir`, `id_jobs`, `id_divisions`, `status`)
      VALUES (NULL, 'Lynda Learn', '', '', '', '', '', '3', '2', 'AKTIF'),
      (NULL, 'Shaila', '', '', '', '', '', '4', '3', 'AKTIF'),
      (NULL, 'udin', '', '', '', '', '', '5', '3', 'AKTIF');

	INSERT INTO jobs (name)
		VALUES
			('Developer'),
			('Manager'),
			('UI Design'),
			('Marketing'),
			('Mentor');

	 ALTER TABLE employees 
	 	ADD CONSTRAINT fk_id_divisions_new
	 		 FOREIGN KEY (id_divisions)
	 		 	 REFERENCES divisions(id)
	 		 	  ON DELETE CASCADE ON UPDATE CASCADE;

	  ALTER TABLE employees 
	  	ADD CONSTRAINT fk_id_jobs_new
	  		 FOREIGN KEY (id_jobs)
	  		 	 REFERENCES jobs(id)
	  		 	  ON DELETE CASCADE ON UPDATE CASCADE;




	SELECT id,name FROM employees;

	SELECT id, name FROM employees WHERE name = 'cintia';

	SELECT id, name FROM employees WHERE name = 'cintia' OR name = 'Risma';

	SELECT id, name FROM employees where name BETWEEN 'Jaka' AND 'risma';

	SELECT id, name FROM employees where name  IN ('jaka', 'elma');

	SELECT id, name FROM employees where name  LIKE  'j%';

	SELECT id, name FROM employees where name  LIKE  '%a';

	SELECT id, name FROM employees where name  LIKE  'r%_%a';

	/*
		bisa pake where condition
	*/
	SELECT id, name FROM employees ORDER BY id DESC;

	SELECT id, name FROM employees GROUP BY id DESC;

	SELECT count(name) FROM employees;

	/*
		HAVING SQL
		bisa pake where
	*/
	SELECT  count(id)  , warga_negara
		FROM employees 
				GROUP BY warga_negara
					HAVING count(id);

	SELECT 10-2 AS pengurangan

	SELECT name FROM employees WHERE gaji  > 1000000;

	SELECT * FROM employees WHERE gaji > 1000000 AND warga_negara = 'indonesia';

	/*
		sql statment menggunakna logical operator comparation operator
	*/
	SELECT id, name, warga_negara,gaji FROM employees WHERE gaji BETWEEN 0 AND 1000000;


	SELECT CURRENT_TIMESTAMP;

	-- nomer 5
	 ALTER TABLE employees 
	 	ADD CONSTRAINT fk_id_divisions_new
	 		 FOREIGN KEY (id_divisions)
	 		 	 REFERENCES divisions(id)
	 		 	  ON DELETE CASCADE ON UPDATE CASCADE;

	  ALTER TABLE employees 
	  	ADD CONSTRAINT fk_id_jobs_new
	  		 FOREIGN KEY (id_jobs)
	  		 	 REFERENCES jobs(id)
	  		 	  ON DELETE CASCADE ON UPDATE CASCADE;

	-- nomer 6

	-- nomer 7
	SELECT employees.id , employees.name , divisions.name AS Division, jobs.name AS Jobs 
		FROM employees INNER JOIN divisions 
			ON employees.id_divisions = divisions.id 
			INNER JOIN jobs
				ON employees.id_jobs = jobs.id  WHERE jobs.name ='Developer'; 

	-- nomer 8
		SELECT employees.id , employees.name , divisions.name AS Division, 
		jobs.name AS Jobs, employees.atasan 
		FROM employees INNER JOIN divisions 
			ON employees.id_divisions = divisions.id 
			INNER JOIN jobs
				ON employees.id_jobs = jobs.id  ORDER BY employees.atasan ASC; 
	-- nomer 9
		SELECT employees.id , employees.name , divisions.name AS Division, 
		jobs.name AS Jobs, employees.atasan 
		FROM employees INNER JOIN divisions 
			ON employees.id_divisions = divisions.id 
			INNER JOIN jobs
				ON employees.id_jobs = jobs.id  ORDER BY employees.atasan DESC;

	-- nomer 10


	UPDATE employees
	SET 
		no_telp = '0839473',
		alamat =  'parkaan kijing',
		warga_negara = 'indonesia',
		tgl_lahir = '1995-07-25',
		status = 'AKTIF'
	WHERE id = 2;

	UPDATE employees
		SET 
			no_telp = '091275618',
			alamat =  'parkaan hiid',
			warga_negara = 'argentina',
			tgl_lahir = '1995-03-25',
			status = 'NON-AKTIF'
	WHERE id = 5;















	

	    