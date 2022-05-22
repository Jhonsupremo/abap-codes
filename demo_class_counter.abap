
REPORT Y_JL_DEMO_CLASS_COUNTER.

*---Example of counter class in Object-oriented

*----------------------------------------------------------*
*                    Local Class Counter                   *
*----------------------------------------------------------*
CLASS lcl_counter DEFINITION.

  PUBLIC SECTION.
  METHODS: receive_value IMPORTING number type i,
           increment,
           output_counter EXPORTING result TYPE i.

  PRIVATE SECTION.
  DATA count TYPE i.

  ENDCLASS.

  CLASS LCL_COUNTER IMPLEMENTATION.

    METHOD RECEIVE_VALUE.
        count = number.
    ENDMETHOD.

    METHOD INCREMENT.
      count = ( count + 1 ).
     ENDMETHOD.

    METHOD OUTPUT_COUNTER.
      result =  count.
      ENDMETHOD.

    ENDCLASS.

*----------------------------------------------------------*
*                 Main program                             *
*----------------------------------------------------------*

START-OF-SELECTION.

DATA: lv_number TYPE i.
DATA(lo_counter) = new  LCL_COUNTER( ).

lo_counter->RECEIVE_VALUE( EXPORTING number = LV_NUMBER ).

DO 10 TIMES.
  lo_counter->INCREMENT( ).
ENDDO.

clear  LV_NUMBER.

lo_counter->OUTPUT_COUNTER( IMPORTING RESULT = lv_number ).

cl_demo_output=>DISPLAY( lv_number ).

*************************************************************************************

REPORT Y_JL_DEMO_CLASS_COUNTER.

*---Example of counter class in Object-oriented

*----------------------------------------------------------*
*                    Local Class Counter                   *
*----------------------------------------------------------*
CLASS lcl_counter DEFINITION.

  PUBLIC SECTION.
  METHODS: receive_value IMPORTING number type i,
           increment,
           output_counter EXPORTING result TYPE i.

  PRIVATE SECTION.
  DATA count TYPE i.

  ENDCLASS.

  CLASS LCL_COUNTER IMPLEMENTATION.

    METHOD RECEIVE_VALUE.
        count = number.
    ENDMETHOD.

    METHOD INCREMENT.
      count = ( count + 1 ).
     ENDMETHOD.

    METHOD OUTPUT_COUNTER.
      result =  count.
      ENDMETHOD.

    ENDCLASS.

*----------------------------------------------------------*
*                 Main program                             *
*----------------------------------------------------------*

START-OF-SELECTION.

DATA: lv_number TYPE i.
DATA(lo_counter) = new  LCL_COUNTER( ).

lo_counter->RECEIVE_VALUE( EXPORTING number = LV_NUMBER ).

DO 10 TIMES.
  lo_counter->INCREMENT( ).
ENDDO.

clear  LV_NUMBER.

lo_counter->OUTPUT_COUNTER( IMPORTING RESULT = lv_number ).

cl_demo_output=>DISPLAY( lv_number ).