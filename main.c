#include "xos.h"
#define __PN_XTXOS_INC__

int main(PN_VOID)
{
#ifdef __PN_XTXOS_INC__
	xos_set_clock_freq(XOS_EXT_CLOCK_FREQ);
	xos_start_system_timer(-1, 0); /*Dynamic*/
#endif

#ifdef __PN_XTXOS_INC__
	xos_start(0);
#endif
	while(1);
	return 0;
}

