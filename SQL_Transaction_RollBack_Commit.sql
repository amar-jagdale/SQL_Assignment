/****** ---- Transaction ----- *****/

BEGIN TRAN
INSERT INTO EMPLOYEEE(EMP_ID,FIRST_NAME, LAST_NAME,EMP_SALARY,ADDRESS) VALUES(9,'SUDARSHAN','OZA',60000,'DUBAI');
IF(@@ERROR <> 0)
BEGIN
PRINT 'Record not inserted in to Employees and rolled Backed'
print @@iDENTITY

			ROLLBACK TRAN
END
	ELSE

    BEGIN
	PRINT 'RECORD INSERTED SUCCESSFULLY COMMITED'
	PRINT @@IDENTITY
	PRINT @@ERROR

	INSERT INTO EMPLOYEEE(FIRST_NAME, LAST_NAME,EMP_SALARY,ADDRESS) VALUES('SWAYAM','JAGDALE',45000,'DAHISAR');
		PRINT @@ROWCOUNT

	IF (@@ERROR<>0)
					BEGIN 
						PRINT @@ERROR
						ROLLBACK TRAN
					END

				ELSE
				BEGIN 
						PRINT 'TRANSACTION SUCCESSFUL'
						COMMIT TRAN
PRINT @@IDENTITY
PRINT @@ERROR
			END
	END


SELECT * FROM EMPLOYEEE