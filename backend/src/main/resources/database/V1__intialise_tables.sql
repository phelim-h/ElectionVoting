USE elections;

CREATE TABLE Election
(
	ElectionID  INTEGER PRIMARY KEY,
    CloseDate   DATE,
    Type        VARCHAR(32)
);

CREATE TABLE Candidate
(
	CandidateID     INTEGER PRIMARY KEY,
    ElectionID      INTEGER,
    CandidateName   VARCHAR(32),
    Description     VARCHAR(128),
    FOREIGN KEY (ElectionID) REFERENCES Election
);

CREATE TABLE Vote
(
	VoteID          Integer PRIMARY KEY,
    CandidateID     INTEGER,
    FOREIGN KEY (CandidateID) REFERENCES Candidate
);