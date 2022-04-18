/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#if defined(XPRJ_blink_1)
#include "blink_1.h"
#elif defined(XPRJ_blink_2)
#include "blink_2.h"
#elif defined(XPRJ_blink_3)
#include "blink_3.h"
#elif defined(XPRJ_blink_4)
#include "blink_4.h"
#else
#error Unknown configuration
#endif
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
#if defined(XPRJ_blink_1)
    blink_1_init();
#elif defined(XPRJ_blink_2)
    blink_2_init();
#elif defined(XPRJ_blink_3)
    blink_3_init();
#elif defined(XPRJ_blink_4)
    blink_4_init();
#else
#error Unknown configuration
#endif
    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
#if defined(XPRJ_blink_1)
        blink_1_step();
#elif defined(XPRJ_blink_2)
        blink_2_step();
#elif defined(XPRJ_blink_3)
        blink_3_step();
#elif defined(XPRJ_blink_4)
        blink_4_step();
#else
#error Unknown configuration
#endif
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

