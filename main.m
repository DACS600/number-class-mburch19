//Mia Burch


#import <Foundation/Foundation.h>

#import "Number.h"


int main(int argc, const char * argv[]) { //main starts the whole program
  @autoreleasepool { //autoreleasepool

    NSLog(@"starting the main method"); //will help me debug and see if main is being hit

    Number *aNumber = [[Number alloc] init]; //creates aNumber

    [aNumber setNumber:24];
    [aNumber isEven];
    [aNumber isPerfectSquare];
    [aNumber sumOfDigits];
    [aNumber numOfDigits];
    [aNumber largestDigit];
    [aNumber nearestPerfectSquare];

  return 0;
  }
}
