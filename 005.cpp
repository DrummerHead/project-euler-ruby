#include <iostream>
using namespace std;

// 2520 is the smallest number that can be divided by each of the
// numbers from 1 to 10 without any remainder.
//
// What is the smallest positive number that is evenly divisible
// by all of the numbers from 1 to 20?

int main(){
  bool gotSolution = false;
  unsigned maxDivisor = 20;
  unsigned solutionDividedByMaxDivisor = 0;

  while(gotSolution == false){
    unsigned testSolution = ++solutionDividedByMaxDivisor * maxDivisor;

    unsigned divisor = maxDivisor - 1;

    while(divisor >= 2){
      if(testSolution % divisor == 0){
        divisor--;
      }
      else {
        break;
      }
    }

    if(divisor == 1){
      gotSolution = true;
      cout << testSolution << endl;
    }
  }

  return 0;
}

// Hello world!
