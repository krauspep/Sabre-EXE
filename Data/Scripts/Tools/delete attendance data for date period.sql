SELECT a.ATTENDANCE_KEY, a.COMPANY_KEY, a.TERMINAL_KEY, a.TERMINAL_REC_NO, a.DEPARTMENT_KEY, a.ATTENDANCE_DATE, a.ATTENDANCE_TIME, a.EVENT_KEY, a.DEVICE_CONFIGURATION_KEY, a.CALCULATED, a.VERIFIED, a.ENROLL_ID, a.OPERATOR_KEY, a.ARCHIVE, a.DEVICE_TYPE_KEY, a.DEVICE_LOCATION_KEY, a.RECORD_STATUS, a.LAST_MODIFIED_BY, a.LAST_MODIFIED_ON, a.EMPLOYEE_KEY, a.RESIDENT_KEY, a.MEMBER_KEY, a.PUPIL_KEY, a.PUPIL_PARENT_KEY, a.ORIG_ATTENDANCE_TIME, a.CONSOLIDATED, a.LINK_ATTENDANCE_KEY, a.SHIFT_SENSE_SHIFT_KEY, a.SHIFT_SENSE_WORK_SCHEDULE_KEY, a.MANUAL_FIX, a.ATT_DONE, a.ACTIVE_RECORD, a.DELETED, a.BULK, a.INDIVIDUAL_KEY, a.ORIGINAL_RECORD_STATUS, a.CLOCKING_AMEND_CODE_KEY, a.WORK_CODE, a.IGNORETRIGGER, a.SECONDS
FROM ATTENDANCE a

Delete from Attendance 
where Attendance_date between '2018/03/19' and '2018/03/25'