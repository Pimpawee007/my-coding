#include <stdio.h>
#include <math.h>
#define PI 3.14159

main()
{
    printf("โปรแกรมคำนวณพื้นที่วงกลม\n*********************\nใส่ค่ารัศมี : ");
  float r, a;
  scanf("%f",&r);
  a = PI*pow(r,2);
  printf("จากสูตร PI x r x 2\nจะได้พื้นที่ของวงกลม : %.2f", a);
  printf("\n---------------------------");
}
