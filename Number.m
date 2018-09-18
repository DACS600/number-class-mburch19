//Mia Burch
//September 12, 2018

#import "Number.h"

@implementation Number //impliments the .h file

-(id) init
{
  self = [super init];

  if(self){ //inside ifself is a default value if no number is given
    num = 0;
  }
  return self;
}

-(void) setNumber:(int)n
{
  num=n;
  NSLog(@"the value of the number is %i",num);
}

-(void) isEven{
  if(num % 2 == 0){
    NSLog(@"It is even");
  }
  else{
    NSLog(@"It is  odd");
  }
}

-(void) isPrime{
  bool prime = true;
  for(int x = num/2; x > 1; x--){
    if(num % x == 0){
      prime = false;
    }
    else{
      prime = true;
    }
  }
  if(prime == false){
      NSLog(@"%i is not a prime number", num);
  }
  else{
      NSLog(@"%i is a prime number", num);
  }
}


-(void) sumOfDigits{
  int total = 0;
  int n = num;
  int add;

  while(n != 0){
    add = n % 10;
    total += add;
    n /= 10;
  }
  NSLog(@"Total: %i", total);
}


-(void) numOfDigits{
  int e = 1;
  int length = 0;
  while(num > e){
    e = e * 10;
    length = length + 1;
  }
  NSLog(@"Length: %i", length);
}

-(void) largestDigit{
  int large = 0;
  int n = num;
  int t = 0;
  while(n != 0){
    t = num % 10;
    if(large < t){
      large = t;
    }
    n /= 10;
  }
  NSLog(@"The largest digit in %i is %i", num, large);
}

-(void) isPerfectSquare{
    int i = 1;
    bool k = true;
    int sr = 0;
    while(i < num){
      if(i * i == num){
        sr = i;
        k = true;
        i = num;
      }
      else{
        k = false;
      }
      i++;
    }
  if(k == true){
      NSLog(@"The square root of %i is %i", num, sr);
  }
  else{
    NSLog(@"The number is not a perfect square");
  }

}

-(void) nearestPerfectSquare{
  int dif = num/2;
  int fact = 0;
  for(int x = 0; x < num; x++){
    if(num - x*x < dif){
      if(dif > x*x){
        dif = dif - x*x;
      }
      else{
        dif = x*x - dif;
      }
    fact = x;
    }
  }
  NSLog(@"The nearest perfect square is: %i", fact);
}

@end
