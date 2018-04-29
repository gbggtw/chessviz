#include "board_print.h"
#include "board.h"

int main()
{
    char a[9][9];
    makeboard (a);
    printboard (a);
    moveboard (a);
    return 0;
}
