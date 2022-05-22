report Y_JL_DEMO_SQL_STATEMENTS.


"Global variable:
data: LT_SFLIGHT type standard table of SFLIGHT.



perform PLANETYPE.


form SELECT_COMMAND_ALL_FIELDS.

  "Instrução de select básico:
  select *
  from SFLIGHT
  into table LT_SFLIGHT.

  if SY-SUBRC is initial.
    write: 'ok'.
  endif.
endform .
*------------------------------------------------------------*
*                       Select statements                    *
*------------------------------------------------------------*
form SELECT_COMAND_SOME_FIELDS.

  "Instrução select com alguns campos:
  select MANDT CARRID CONNID
  from SFLIGHT
  into table LT_SFLIGHT.

  if SY-SUBRC is initial.
    write: 'ok'.
  endif.

endform.
*------------------------------------------------------------*
*                       Select statements                    *
*------------------------------------------------------------*

form SELECT_SINGLE.

  data: LS_SFLIGHT type SFLIGHT.

  select single CARRID CONNID PLANETYPE
  from  SFLIGHT
  into  LS_SFLIGHT.

  if SY-SUBRC is initial.
    write: 'ok'.
  endif.

endform.