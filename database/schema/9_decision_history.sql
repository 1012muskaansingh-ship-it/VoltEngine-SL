CREATE TABLE batteries (
    battery_id VARCHAR(50) PRIMARY KEY
);

CREATE TABLE optimization_runs (
    run_id BIGINT PRIMARY KEY
);

CREATE TABLE decision_historyCREATE TABLE decision_history (
    decision_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    
    battery_id VARCHAR(50) NOT NULL,
    run_id BIGINT,
    
    decision_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    previous_application_id INT,
    selected_application_id INT,
    
    decision_reason TEXT,
    trigger_type VARCHAR(50),
    
    previous_soh DECIMAL(5,2),
    current_soh DECIMAL(5,2),
    
    previous_max_power_kw DECIMAL(10,2),
    new_max_power_kw DECIMAL(10,2)
);