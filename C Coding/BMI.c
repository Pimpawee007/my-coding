#include <stdio.h>
#include <math.h>

main()
{
    printf("โปรแกรมคำนวณค่า BMI\n*******************\n");
  float t, w, bmi;
  printf("น้ำหนัก (กิโลกรัม) : ");
  scanf("%f", &w);
  printf("ส่วนสูง (เซนติเมตร) : ");
  scanf("%f", &t);
  bmi=w/pow(t/100,2);
  if (bmi<18.5){
    printf("BMI ของคุณคือ %.2f\n", bmi);
    printf("อยู่ในเกณฑ์ผอมเกินไป");
  } else if (bmi<=22.9){
    printf("BMI ของคุณคือ %.2f\n", bmi);
    printf("อยู่ในเกณฑ์สมส่วน");
  } else if (bmi<=24.9){
    printf("BMI ของคุณคือ %.2f\n", bmi);
    printf("อยู่ในเกณฑ์อ้วน");
  }else{
    printf("-----------------------\n");
    printf("BMI ของคุณคือ %.2f\n", bmi);
    printf("อยู่ในเกณฑ์อ้วนมาก");
  }
}
