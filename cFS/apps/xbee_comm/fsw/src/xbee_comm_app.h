#ifndef _xbee_comm_app_h_
#define _xbee_comm_app_h_

#include "cfe.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

#define XBEE_DEVICE "/dev/serial0"
#define BAUD_RATE B9600

void Xbee_Comm_AppMain(void);

#endif /* _xbee_comm_app_h_ */