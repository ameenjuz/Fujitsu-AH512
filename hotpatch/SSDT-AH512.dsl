// for testing including all SSDTs with NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "AH512", "_AH512", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "SSDT-XOSI.dsl"
    #include "SSDT-PS2K.dsl"
    #include "SSDT-GPRW.dsl"
    #include "SSDT-USB.dsl"
  
}
//EOF
