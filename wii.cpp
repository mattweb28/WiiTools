#include "wii.hpp"

bool in_mem1( u32 value )
{
	if ( value < 0x80000000 )
		return false;
	if ( value > 0x81800000 )
		return false;
	return true;
}

bool in_mem2( u32 value )
{
	if ( value < 0x90000000 )
		return false;
	if ( value > 0x94000000 )
		return false;
	return true;
}
