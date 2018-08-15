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
		-- gambar hasil pengujian

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
	
		-- Having
			/*
			HAVING SQL
			bisa pake where
			*/
		SELECT  count(id) 
			FROM employees 
					GROUP BY warga_negara
						HAVING count(id);

		-- Where
		SELECT id, name FROM employees where name  LIKE  'r%_%a';

		-- Group By
			SELECT id, name FROM employees GROUP BY id DESC;
