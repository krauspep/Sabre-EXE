Select Calendar_Week_No,
From_Date,
To_Date
From Calendar_Week
Where '25.04.2011' Between From_Date and To_Date
And Company_Key = 1
And Calendar_Week_Year = '2011'
And Calendar_Type = 'W'
And Deleted = 0
And ACTIVE_RECORD = 1