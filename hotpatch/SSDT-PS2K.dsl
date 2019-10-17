// Lenovo Fujitsu-AH512 Keyboard Map

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "I320", "_ps2", 0)
{
#endif
     External (_SB_.PCI0.LPCB.EC__, DeviceObj)    // (from opcode)
     External (_SB_.PCI0.LPCB.PS2K, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.LPCB.EC)
    {
        Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x0405)
            Notify (PS2K, 0x0485)
        }

        Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (PS2K, 0x0406)
            Notify (PS2K, 0x0486)
        }
    }

#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
