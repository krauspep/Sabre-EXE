Select  WORK_SCHEDULE_KEY,
        TIME_START,
        TIME_END,
        ABSENT_DATA_KEY,
        ATTENDANCE_DATE_END
From Work_Schedule
Where Employee_Key = 3
And Attendance_Date_Start ='27.04.2011'
And Active_Record = 1
And Deleted = 0