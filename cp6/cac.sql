-- Drop tables if they exist
DROP TABLE IF EXISTS PartnerMissionAudit;
DROP TABLE IF EXISTS ManagerMissionAudit;
DROP TABLE IF EXISTS MissionAudit;
DROP TABLE IF EXISTS Partner;
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS LegalForm;
DROP TABLE IF EXISTS Manager;
DROP TABLE IF EXISTS AuditPeriod;
DROP TABLE IF EXISTS TypeAudit;

-- Create tables
CREATE TABLE Partner (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE LegalForm (
    title VARCHAR(255) PRIMARY KEY,
    description VARCHAR(255)
);

CREATE TABLE Client (
    siret CHAR(14) PRIMARY KEY,
    companyName VARCHAR(255) NOT NULL,
    legalFormTitle VARCHAR(255) NOT NULL,
    FOREIGN KEY (legalFormTitle) REFERENCES LegalForm(title)
);

CREATE TABLE Manager (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE AuditPeriod (
    period_id INT AUTO_INCREMENT PRIMARY KEY,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL
);

CREATE TABLE TypeAudit (
    label VARCHAR(255) PRIMARY KEY,
    nomination VARCHAR(255)
);

CREATE TABLE MissionAudit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    auditDate DATE NOT NULL,
    fee DECIMAL(10, 2),
    typeAuditLabel VARCHAR(255) NOT NULL,
    period_id INT NOT NULL,
    siret CHAR(14) NOT NULL,
    FOREIGN KEY (typeAuditLabel) REFERENCES TypeAudit(label),
    FOREIGN KEY (period_id) REFERENCES AuditPeriod(period_id),
    FOREIGN KEY (siret) REFERENCES Client(siret)
);

CREATE TABLE PartnerMissionAudit (
    partner_id INT NOT NULL,
    audit_id INT NOT NULL,
    PRIMARY KEY (partner_id, audit_id),
    FOREIGN KEY (partner_id) REFERENCES Partner(employee_id),
    FOREIGN KEY (audit_id) REFERENCES MissionAudit(audit_id)
);

CREATE TABLE ManagerMissionAudit (
    manager_id INT NOT NULL,
    audit_id INT NOT NULL,
    PRIMARY KEY (manager_id, audit_id),
    FOREIGN KEY (manager_id) REFERENCES Manager(employee_id),
    FOREIGN KEY (audit_id) REFERENCES MissionAudit(audit_id)
);
