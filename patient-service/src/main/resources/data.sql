-- Ensure the 'patient' table exists
CREATE TABLE IF NOT EXISTS patient
(
    id              UUID PRIMARY KEY,
    name            VARCHAR(255)        NOT NULL,
    email           VARCHAR(255) UNIQUE NOT NULL,
    address         VARCHAR(255)        NOT NULL,
    date_of_birth   DATE                NOT NULL,
    registered_date DATE                NOT NULL
);

-- Insert well-known UUIDs for specific patients (Indian names, emails, addresses)

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174000',
       'Rahul Sharma',
       'rahul.sharma@example.in',
       '12 MG Road, Andheri East, Mumbai, Maharashtra',
       '1985-06-15',
       '2024-01-10'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174000');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174001',
       'Priya Singh',
       'priya.singh@example.in',
       '45 Bapu Nagar, Jaipur, Rajasthan',
       '1990-09-23',
       '2023-12-01'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174001');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174002',
       'Ayesha Khan',
       'ayesha.khan@example.in',
       '7 Old Palasia, Indore, Madhya Pradesh',
       '1978-03-12',
       '2022-06-20'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174002');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174003',
       'Vikram Patel',
       'vikram.patel@example.in',
       '89 Haji Ali, Worli, Mumbai, Maharashtra',
       '1982-11-30',
       '2023-05-14'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174003');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174004',
       'Neha Reddy',
       'neha.reddy@example.in',
       '21 Koramangala 6th Block, Bengaluru, Karnataka',
       '1995-02-05',
       '2024-03-01'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174004');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174005',
       'Sohail Ahmed',
       'sohail.ahmed@example.in',
       '56 Park Street, Kolkata, West Bengal',
       '1988-07-25',
       '2024-02-15'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174005');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174006',
       'Anjali Menon',
       'anjali.menon@example.in',
       '102 Marine Drive, Ernakulam, Kochi, Kerala',
       '1992-04-18',
       '2023-08-25'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174006');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174007',
       'Ramesh Iyer',
       'ramesh.iyer@example.in',
       '14 T. Nagar, Chennai, Tamil Nadu',
       '1975-01-11',
       '2022-10-10'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174007');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174008',
       'Lakshmi Nair',
       'lakshmi.nair@example.in',
       '8 Salt Lake Sector V, Kolkata, West Bengal',
       '1989-09-02',
       '2024-04-20'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174008');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174009',
       'Amit Desai',
       'amit.desai@example.in',
       '77 SG Highway, Prahlad Nagar, Ahmedabad, Gujarat',
       '1993-11-15',
       '2023-06-30'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174009');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174010',
       'Kavita Joshi',
       'kavita.joshi@example.in',
       '33 FC Road, Shaniwar Peth, Pune, Maharashtra',
       '1980-08-09',
       '2023-01-22'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174010');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174011',
       'Rahul Kumar',
       'rahul.kumar@example.in',
       '5 Boring Road, Patna, Bihar',
       '1984-05-03',
       '2024-05-12'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174011');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174012',
       'Sonia Sethi',
       'sonia.sethi@example.in',
       '200 Sector 17, Chandigarh',
       '1991-12-25',
       '2022-11-11'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174012');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174013',
       'Manish Gupta',
       'manish.gupta@example.in',
       '18 Bapuji Nagar, Lucknow, Uttar Pradesh',
       '1976-06-08',
       '2023-09-19'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174013');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174014',
       'Isha Verma',
       'isha.verma@example.in',
       '9 Civil Lines, Nagpur, Maharashtra',
       '1987-10-17',
       '2024-03-29'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174014');
