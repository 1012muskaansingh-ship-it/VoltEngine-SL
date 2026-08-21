CREATE TABLE application_requirements (
    requirement_id INT AUTO_INCREMENT PRIMARY KEY,
    application_id INT NOT NULL,
    min_soh DECIMAL(5,2) CHECK (min_soh BETWEEN 0 AND 100),
    min_capacity_kwh DECIMAL(10,2) CHECK (min_capacity_kwh > 0),
    max_power_kw DECIMAL(10,2) CHECK (max_power_kw > 0),
    max_temperature_c DECIMAL(6,2),
    max_internal_resistance DECIMAL(10,6),
    required_cycle_life INT,
    priority_weight DECIMAL(5,2),
    
    FOREIGN KEY (application_id)
        REFERENCES applications(application_id)
);