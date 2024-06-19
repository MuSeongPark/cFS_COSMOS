#include "xbee_comm_app.h"

void Xbee_Comm_AppMain(void)
{
    CFE_ES_RegisterApp();

    //UART Configuration
    int uart_fd = open(XBEE_DEVICE, O_RDWR | O_NOCTTY | O_NDELAY);
    if (uart_fd == -1)
    {
        CFE_ES_WriteToSysLog("Xbee_Comm: Failed to open UART.\n");
        return;
    }

    struct termios options;
    tcgetattr(uart_fd, &options);
    options.c_cflag = BAUD_RATE | CS8 | CLOCAL | CREAD;
    options.c_iflag = IGNPAR;
    options.c_oflag = 0;
    options.c_lflag = 0;
    tcflush(uart_fd, TCIFLUSH);
    tcsetattr(uart_fd, TCSANOW, &options);

    //send the data
    char *message = "Hello from cFS!";
    int message_length = strlen(message);

    while (1)
    {
        int count = write(uart_fd, message, message_length);
        if (count < 0)
        {
            CFE_ES_WriteToSysLog("Xbee_Comm: Failed to write to UART.\n");
        }
        else
        {
            CFE_ES_WriteToSysLog("Xbee_Comm: Message Sent.\n");
        }
        sleep(5);
    }

    close(uart_fd);
    CFE_ES_ExitApp(CFE_ES_RunStatus_APP_EXIT);
    
}