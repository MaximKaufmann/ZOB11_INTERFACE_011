FUNCTION ZOB11_GET_AIRLINE_IDS_011.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"----------------------------------------------------------------------
TABLES: SCARR.
DATA: lt_itab TYPE TABLE OF SCARR.

SELECT CARRID
 FROM SCARR INTO TABLE lt_itab.

cl_demo_output=>display_data(  lt_itab ).


ENDFUNCTION.
