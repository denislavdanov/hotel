USE hotel
DELIMITER $$

CREATE TRIGGER before_insert_data
BEFORE INSERT
ON reservations FOR EACH ROW
BEGIN
    
   IF new.start_date > new.end_date
      THEN SIGNAL SQLSTATE'45000'SET message_text='the end date cannot be before start';
    END IF; 

END $$

DELIMITER ;