#include <stdio.h>
#include <time.h>

const char s[] = "abcdef";
const char t[] = "dbhsakjlfhbnl;ojiohubkjnlmjhuibjkn";

int main() {
    int i = time( NULL ) % 4;
    if ( i < 2 ) {
        printf( "%s", s );
    }
    else {
        printf( "%s", t );
    }
}