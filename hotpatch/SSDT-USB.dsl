// Custom USB Port Injector for Lenovo AH512.
// Note: Remove HP16 if you want to disable Card Reader since it is not Supported.

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "AH512", "_USB", 0)
{
#endif
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            "HUB1", Package()
            {
                "port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "HP11", Package() // USB Port on the Left Side
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 1, 0, 0, 0 },
                        },
                        
                        "HP12", Package() // USB Port (Right side - Bottom)
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 2, 0, 0, 0 },
                        
                    },
                    
                    "HP13", Package() // USB Port (Right side - Bottom)
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 3, 0, 0, 0 },
                        
                    },


                        "HP14", Package() // USB Port (Right side - Bottom)
                    {
                        //"UsbConnector", 0,
                        "portType", 2,
                        "port", Buffer() { 4, 0, 0, 0 },
                        
                    },
                 },
            },
            "HUB2", Package()
            {
                "port-count", Buffer() { 6, 0, 0, 0 },
                "ports", Package()
                {
                    "HP21", Package() // USB Port (Right side - Bottom)
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HP22", Package() // USB Port (Right side - Top)
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HP23", Package() // Camera
                    {
                        //"UsbConnector", 0,
                        "portType", 2,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                },
            },
            "EH01", Package()
            {
                "port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "PR11", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                },
            },
            "EH02", Package()
            {
                "port-count", Buffer() { 6, 0, 0, 0 },
                "ports", Package()
                {
                    "PR21", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                },
            },
        })
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF