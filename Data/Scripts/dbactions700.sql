ALTER TABLE EMPLOYEE_ATTENDANCE_DATA ADD LINE_TYPE VARCHAR(3) COMPUTED BY (
 Case When ((TIME_IN <> '--:--') AND (TIME_OUT <> '--:--') AND (MINUTES_PUBLIC_HOLIDAY = 0 OR MINUTES_PUBLIC_HOLIDAY IS NULL)) THEN 
  'NTH'
 ELSE
   Case When ((TIME_IN <> '--:--') AND (TIME_OUT <> '--:--') AND (MINUTES_PUBLIC_HOLIDAY > 0)) THEN 
    'PPH'
   ELSE
     Case When ((TIME_IN = '--:--') AND (TIME_OUT = '--:--') AND (MINUTES_PUBLIC_HOLIDAY = 0 OR MINUTES_PUBLIC_HOLIDAY IS NULL) AND (LEAVE_TYPE_KEY = -1 OR LEAVE_TYPE_KEY = 0) AND MINUTES_TARGET > 0) THEN 
      'ABS'
     ELSE
       Case When ((TIME_IN = '--:--') AND (TIME_OUT = '--:--') AND (LEAVE_TYPE_KEY > 0)) THEN 
        'LVE'
       ELSE 
         Case When ((TIME_IN <> '--:--') AND (TIME_OUT = '--:--')) THEN 
          'MOU'
         ELSE
           Case When ((TIME_IN = '--:--') AND (TIME_OUT <> '--:--')) THEN 
            'MIN'
           ELSE 
             Case When ((TIME_IN = '--:--') AND (TIME_OUT = '--:--') AND (MINUTES_TARGET > 0)) THEN 
              'MIO'
             ELSE
               Case When ((TIME_IN = '--:--') AND (TIME_OUT = '--:--') AND (MINUTES_TARGET = 0)) THEN 
                'USH'
               ELSE
                 Case When ((TIME_IN <> '--:--') AND (TIME_OUT <> '--:--') AND ((MINUTES_WORKED = 0) AND (MINUTES_TARGET > 0))) THEN 
                  'ZRO'
                 ELSE 
                  'EXP' 
                 END
               END
             END
           END
         END
       END
     END
   END
 END);