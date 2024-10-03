#include <stdio.h>
#include <math.h>
#define PI 3.14159

main()
{
    printf("โปรแกรมคำนวณเส้นรอบวงกลม\n************************\nใส่ค่ารัศมี : ");
    float r, a;
    scanf("%f", &r);
    a=2*PI*r;
    printf("จากสูตร 2 x PI x r จะได้เส้นรอบวงกลม : %.2f", a);
    printf("\n------------------------------------------");
}
