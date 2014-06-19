#include "s3e.h"
#include "IwDebug.h"

// Main entry point for the application
int main()
{
    //Initialise graphics system(s)
    

    // Loop forever, until the user or the OS performs some action to quit the app
    while (!s3eDeviceCheckQuitRequest())
    {
        //Update the input systems
        s3eKeyboardUpdate();
        s3ePointerUpdate();

/***********************************HELLO WORLD EXAMPLE*****************************************/
        s3eSurfaceClear(0, 0, 255);
 
        // Print a line of debug text to the screen at top left (0,0)
        // Starting the text with the ` (backtick) char followed by 'x' and a hex value
        // determines the colour of the text.
        s3eDebugPrint(120, 150, "`xffffffHello, World!", 0);
 
        // Flip the surface buffer to screen
        s3eSurfaceShow();
/***********************************************************************************************/
        
        // Your rendering/app code goes here.


        // Sleep for 0ms to allow the OS to process events etc.
        s3eDeviceYield(0);
    }

    //Terminate modules being used
    
    // Return
    return 0;
}
