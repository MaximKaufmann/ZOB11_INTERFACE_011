*****           Implementation of object type ZOB11_011            *****
INCLUDE <OBJECT>.
BEGIN_DATA OBJECT. " Do not change.. DATA is generated
* only private members may be inserted into structure private
DATA:
" begin of private,
"   to declare private attributes remove comments and
"   insert private attributes here ...
" end of private,
      KEY LIKE SWOTOBJID-OBJKEY.
END_DATA OBJECT. " Do not change.. DATA is generated

BEGIN_METHOD NEW011 CHANGING CONTAINER.
DATA:
      ID TYPE ZBAPI_OB11_AIRLINE_011-CARRID,
      RETURN LIKE BAPIRET2,
      ITEMTAB LIKE ZBAPI_OB11_AIRLINE_011 OCCURS 0.
  SWC_GET_ELEMENT CONTAINER 'Id' ID.
  SWC_GET_TABLE CONTAINER 'Itemtab' ITEMTAB.
  CALL FUNCTION 'NEW_USER_011'
    EXPORTING
      ID = ID
    IMPORTING
      RETURN = RETURN
    TABLES
      ITEMTAB = ITEMTAB
    EXCEPTIONS
      OTHERS = 01.
  CASE SY-SUBRC.
    WHEN 0.            " OK
    WHEN OTHERS.       " to be implemented
  ENDCASE.
  SWC_SET_ELEMENT CONTAINER 'Return' RETURN.
  SWC_SET_TABLE CONTAINER 'Itemtab' ITEMTAB.
END_METHOD.
