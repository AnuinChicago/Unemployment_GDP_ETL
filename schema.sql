-- Create Two Tables
CREATE TABLE unemployment (
    "year" INT PRIMARY KEY,
    january INT,
    february INT,
	march INT,
	april INT,
	may INT,
	june INT,
	july INT,
	august INT,
	september INT,
	october INT,
	november INT,
	december INT
);
CREATE TABLE gdp (
  "year" INT PRIMARY KEY,
  level_current INT,
  change_current INT
);