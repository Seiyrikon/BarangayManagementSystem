DROP USER IF EXISTS 'bmsuser'@'localhost';
CREATE USER 'bmsuser'@'localhost' IDENTIFIED BY 'bmspassword';

DROP DATABASE IF EXISTS bmsdb;
CREATE DATABASE bmsdb;

GRANT ALL PRIVILEGES ON bmsdb.* TO 'bmsuser'@'localhost';
FLUSH PRIVILEGES;

USE bmsdb;

CREATE TABLE Role (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    description VARCHAR(255) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE BarangayPosition (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    description VARCHAR(255) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE Category (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE Association (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    description VARCHAR(255) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE AssociationPosition (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE Prefix (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE Suffix (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE Gender (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE CivilStatus (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE Religion (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE Birthdate (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    date DATE NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE Birthplace (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    barangay VARCHAR(50) NULL,
    city VARCHAR(50) NULL,
    province VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE Deathdate (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    date DATE NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE RelationshipType (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE DocumentType (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    description VARCHAR(255) NULL,
    price VARCHAR(6) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE DocumentStatus (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE AnnouncementType (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE AnnouncementStatus (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE ReportType (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE ReportStatus (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE FeedbackType (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE FeedbackStatus (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE VaccinationType (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE VaccinationStatus (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE MedicalAidType (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE MedicalAidStatus (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE MedicalMissionType (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE MedicalMissionStatus (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE PaymentType (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE PaymentStatus (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL
);

CREATE TABLE Resident(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    resident_unique_id VARCHAR(15) UNIQUE NOT NULL,
    role_id BIGINT NULL,
    barangay_position_id BIGINT NULL,
    prefix_id BIGINT NULL,
    suffix_id BIGINT NULL,
    gender_id BIGINT NULL,
    civil_status_id BIGINT NULL,
    religion_id BIGINT NULL,
    birthdate_id BIGINT NULL,
    birthplace_id BIGINT NULL,
    death_id BIGINT NULL,
    other_gender VARCHAR(50) NULL,
    first_name VARCHAR(50) NULL,
    middle_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (role_id) REFERENCES Role(id),
    FOREIGN KEY (barangay_position_id) REFERENCES BarangayPosition(id),
    FOREIGN KEY (prefix_id) REFERENCES Prefix(id),
    FOREIGN KEY (suffix_id) REFERENCES Suffix(id),
    FOREIGN KEY (gender_id) REFERENCES Gender(id),
    FOREIGN KEY (civil_status_id) REFERENCES CivilStatus(id),
    FOREIGN KEY (religion_id) REFERENCES Religion(id),
    FOREIGN KEY (birthdate_id) REFERENCES Birthdate(id),
    FOREIGN KEY (birthplace_id) REFERENCES Birthplace(id),
    FOREIGN KEY (death_id) REFERENCES Deathdate(id)
);

CREATE TABLE Address(
	id BIGINT AUTO_INCREMENT,
    resident_unique_id VARCHAR(15) NOT NULL,
    house_number VARCHAR(50) NULL,
    street VARCHAR(50) NULL,
    barangay VARCHAR(50) NULL,
    city VARCHAR(50) NULL,
    province VARCHAR(50) NULL,
    zip_code VARCHAR(50) NULL,
    is_main_address VARCHAR(1) DEFAULT '0',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    PRIMARY KEY (id, resident_unique_id),
    FOREIGN KEY (resident_unique_id) REFERENCES Resident(resident_unique_id) ON DELETE CASCADE
);

CREATE TABLE ResidentPhone (
    resident_unique_id VARCHAR(15) PRIMARY KEY NOT NULL,
    phone_number VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (resident_unique_id) REFERENCES Resident(resident_unique_id) ON DELETE CASCADE
);

CREATE TABLE Account (
    resident_unique_id VARCHAR(15) PRIMARY KEY NOT NULL UNIQUE,
    email VARCHAR(50) NULL UNIQUE,
    password VARCHAR(255) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (resident_unique_id) REFERENCES Resident(resident_unique_id) ON DELETE CASCADE
);

CREATE TABLE BarangayOfficialTermDate (
    resident_unique_id VARCHAR(15) NOT NULL,
    barangay_position_id BIGINT NOT NULL,
    start_date DATE,
    end_date DATE,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    PRIMARY KEY (resident_unique_id, barangay_position_id),
    FOREIGN KEY (resident_unique_id) REFERENCES Resident(resident_unique_id) ON DELETE CASCADE,
    FOREIGN KEY (barangay_position_id) REFERENCES BarangayPosition(id)
);

CREATE TABLE ResidentCategory (
    resident_unique_id VARCHAR(15) NOT NULL,
    category_id BIGINT NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    PRIMARY KEY (resident_unique_id, category_id),
    FOREIGN KEY (resident_unique_id) REFERENCES Resident(resident_unique_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES Category(id)
);

CREATE TABLE ResidentAssociation (
    resident_unique_id VARCHAR(15) NOT NULL,
    association_id BIGINT NOT NULL,
    association_position_id BIGINT NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    PRIMARY KEY (resident_unique_id, association_id, association_position_id),
    FOREIGN KEY (resident_unique_id) REFERENCES Resident(resident_unique_id) ON DELETE CASCADE,
    FOREIGN KEY (association_id) REFERENCES Association(id),
    FOREIGN KEY (association_position_id) REFERENCES AssociationPosition(id)
);

CREATE TABLE Relationship (
    origin_resident_unique_id VARCHAR(15) NOT NULL,
    relationship_type_id BIGINT NOT NULL,
    to_resident_unique_id VARCHAR(15) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    PRIMARY KEY (origin_resident_unique_id, relationship_type_id, to_resident_unique_id),
    FOREIGN KEY (origin_resident_unique_id) REFERENCES Resident(resident_unique_id) ON DELETE CASCADE,
    FOREIGN KEY (relationship_type_id) REFERENCES RelationshipType(id),
    FOREIGN KEY (to_resident_unique_id) REFERENCES Resident(resident_unique_id)
);

CREATE TABLE Document (
    id BIGINT NOT NULL,
    resident_unique_id VARCHAR(15) NOT NULL,
    document_type_id BIGINT NOT NULL,
    document_status_id BIGINT NOT NULL,
    payment_type_id BIGINT NOT NULL,
    payment_status_id BIGINT NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    PRIMARY KEY (id, resident_unique_id, document_type_id, document_status_id, payment_type_id, payment_status_id),
    FOREIGN KEY (resident_unique_id) REFERENCES Resident(resident_unique_id),
    FOREIGN KEY (document_type_id) REFERENCES DocumentType(id),
    FOREIGN KEY (document_status_id) REFERENCES DocumentStatus(id),
    FOREIGN KEY (payment_type_id) REFERENCES PaymentType(id),
    FOREIGN KEY (payment_status_id) REFERENCES PaymentStatus(id)
);

CREATE TABLE Announcement (
    id BIGINT NOT NULL,
    announcee_resident_unique_id VARCHAR(15) NOT NULL,
    announcement_type_id BIGINT NOT NULL,
    announcement_status_id BIGINT NOT NULL,
    name VARCHAR(50) NULL,
    description VARCHAR(255) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    PRIMARY KEY (id, announcee_resident_unique_id, announcement_type_id, announcement_status_id),
    FOREIGN KEY (announcee_resident_unique_id) REFERENCES Resident(resident_unique_id) ON DELETE CASCADE,
    FOREIGN KEY (announcement_type_id) REFERENCES AnnouncementType(id),
    FOREIGN KEY (announcement_status_id) REFERENCES AnnouncementStatus(id)
);

CREATE TABLE Meeting (
    announcement_id BIGINT PRIMARY KEY NOT NULL,
    start_date_time DATETIME,
    end_date_time DATETIME,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (announcement_id) REFERENCES Announcement(id) ON DELETE CASCADE
);

CREATE TABLE MeetingOrganizer (
    announcement_id BIGINT PRIMARY KEY NOT NULL,
    organizer_resident_unique_id VARCHAR(15) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (announcement_id) REFERENCES Announcement(id) ON DELETE CASCADE,
    FOREIGN KEY (organizer_resident_unique_id) REFERENCES Resident(resident_unique_id)
);

CREATE TABLE MeetingMember (
    announcement_id BIGINT PRIMARY KEY NOT NULL,
    member_resident_unique_id VARCHAR(15) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (announcement_id) REFERENCES Announcement(id) ON DELETE CASCADE,
    FOREIGN KEY (member_resident_unique_id) REFERENCES Resident(resident_unique_id)
);

CREATE TABLE MeetingAssociation (
    announcement_id BIGINT PRIMARY KEY NOT NULL,
    association_id BIGINT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (announcement_id) REFERENCES Announcement(id) ON DELETE CASCADE,
    FOREIGN KEY (association_id) REFERENCES Association(id)
);

CREATE TABLE Event (
    announcement_id BIGINT PRIMARY KEY NOT NULL,
    start_date_time DATETIME,
    end_date_time DATETIME,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (announcement_id) REFERENCES Announcement(id) ON DELETE CASCADE
);

CREATE TABLE EventOrganizer (
    announcement_id BIGINT PRIMARY KEY NOT NULL,
    organizer_resident_unique_id VARCHAR(15) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (announcement_id) REFERENCES Announcement(id) ON DELETE CASCADE,
    FOREIGN KEY (organizer_resident_unique_id) REFERENCES Resident(resident_unique_id)
);

CREATE TABLE EventMember (
    announcement_id BIGINT PRIMARY KEY NOT NULL,
    member_resident_unique_id VARCHAR(15) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (announcement_id) REFERENCES Announcement(id) ON DELETE CASCADE,
    FOREIGN KEY (member_resident_unique_id) REFERENCES Resident(resident_unique_id)
);

CREATE TABLE EventAssociation (
    announcement_id BIGINT PRIMARY KEY NOT NULL,
    association_id BIGINT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (announcement_id) REFERENCES Announcement(id) ON DELETE CASCADE,
    FOREIGN KEY (association_id) REFERENCES Association(id)
);

CREATE TABLE Report (
    id BIGINT NOT NULL,
    reportee_resident_unique_id VARCHAR(15) NOT NULL,
    report_type_id BIGINT NOT NULL,
    report_status_id BIGINT NOT NULL,
    reported_resident_unique_id VARCHAR(15) NULL,
    name VARCHAR(50) NULL,
    description VARCHAR(255) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    PRIMARY KEY (id, reportee_resident_unique_id, report_type_id, report_status_id),
    FOREIGN KEY (reportee_resident_unique_id) REFERENCES Resident(resident_unique_id) ON DELETE CASCADE,
    FOREIGN KEY (report_type_id) REFERENCES ReportType(id),
    FOREIGN KEY (report_status_id) REFERENCES ReportStatus(id),
    FOREIGN KEY (reported_resident_unique_id) REFERENCES Resident(resident_unique_id)
);

CREATE TABLE ReportImage (
    report_id BIGINT PRIMARY KEY NOT NULL,
    image BLOB NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (report_id) REFERENCES Report(id) ON DELETE CASCADE
);

CREATE TABLE ReportVideo (
    report_id BIGINT PRIMARY KEY NOT NULL,
    video BLOB NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (report_id) REFERENCES Report(id) ON DELETE CASCADE
);

CREATE TABLE Feedback (
    sender_resident_unique_id VARCHAR(15) NULL,
    feedback_type_id BIGINT NOT NULL,
    feedback_status_id BIGINT NOT NULL,
    name VARCHAR(50) NULL,
    description VARCHAR(255) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    PRIMARY KEY (feedback_type_id, feedback_status_id),
    FOREIGN KEY (sender_resident_unique_id) REFERENCES Resident(resident_unique_id),
    FOREIGN KEY (feedback_type_id) REFERENCES FeedbackType(id),
    FOREIGN KEY (feedback_status_id) REFERENCES FeedbackStatus(id)
);

CREATE TABLE Vaccination (
    receiver_resident_unique_id VARCHAR(15) NOT NULL,
    vaccination_type_id BIGINT NOT NULL,
    vaccination_status_id BIGINT NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    PRIMARY KEY (receiver_resident_unique_id, vaccination_type_id, vaccination_status_id),
    FOREIGN KEY (receiver_resident_unique_id) REFERENCES Resident(resident_unique_id),
    FOREIGN KEY (vaccination_type_id) REFERENCES VaccinationType(id),
    FOREIGN KEY (vaccination_status_id) REFERENCES VaccinationStatus(id)
);

CREATE TABLE MedicalAid (
    receiver_resident_unique_id VARCHAR(15) NOT NULL,
    mdeical_aid_type_id BIGINT NOT NULL,
    mdeical_aid_status_id BIGINT NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    PRIMARY KEY (receiver_resident_unique_id, mdeical_aid_type_id, mdeical_aid_status_id),
    FOREIGN KEY (receiver_resident_unique_id) REFERENCES Resident(resident_unique_id),
    FOREIGN KEY (mdeical_aid_type_id) REFERENCES MedicalAidType(id),
    FOREIGN KEY (mdeical_aid_status_id) REFERENCES MedicalAidStatus(id)
);

CREATE TABLE MedicalMission (
    postee_resident_unique_id VARCHAR(15) NOT NULL,
    mdeical_mission_type_id BIGINT NOT NULL,
    mdeical_mission_status_id BIGINT NOT NULL,
    start_date_time DATETIME NULL,
    end_date_time DATETIME NULL,
    name VARCHAR(50) NULL,
    description VARCHAR(255) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,
    PRIMARY KEY (postee_resident_unique_id, mdeical_mission_type_id, mdeical_mission_status_id),
    FOREIGN KEY (postee_resident_unique_id) REFERENCES Resident(resident_unique_id),
    FOREIGN KEY (mdeical_mission_type_id) REFERENCES MedicalMissionType(id),
    FOREIGN KEY (mdeical_mission_status_id) REFERENCES MedicalMissionStatus(id)
);

