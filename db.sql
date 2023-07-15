CREATE TABLE Service (
    Type VARCHAR(255) PRIMARY KEY,
    MaxTime TIME,
    Price DECIMAL(10,2)
);

CREATE TABLE PostalWorker (
    ID SERIAL PRIMARY KEY,
    RAL DECIMAL(10,2),
    Type VARCHAR(255) REFERENCES Service(Type),
    Name VARCHAR(255),
    Surname VARCHAR(255),
    Email VARCHAR(255)
);

CREATE TABLE Users (
    FiscalCode VARCHAR(255) PRIMARY KEY,
    Name VARCHAR(255),
    Surname VARCHAR(255),
    DateOfBirth DATE,
    Email VARCHAR(255),
    City VARCHAR(255),
    ZIP CHAR(5),
    Address VARCHAR(255)
);

CREATE TABLE Reservation (
    ReservationID SERIAL PRIMARY KEY,
    Date DATE,
    Time TIME,
    Type VARCHAR(255) REFERENCES Service(Type),
    FiscalCode VARCHAR(255) REFERENCES Users(FiscalCode)
);
