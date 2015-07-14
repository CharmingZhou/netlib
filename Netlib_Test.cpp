#include <stdio.h>
#include "Netlib.h"


void http_callback(void* callback_data, uint8_t msg, uint32_t handle, void* pParam)
{
	
}

int main()
{
	printf("start....\n");
	signal(SIGPIPE, SIG_IGN);


	int ret = netlib_init();
	
	if( ret == NETLIB_ERROR)
		return ret;

	ret = netlib_listen("127.0.0.1", 1111,http_callback, NULL);
	printf("now enter the event loop....\n");
	netlib_eventloop();
	return 0;
}
