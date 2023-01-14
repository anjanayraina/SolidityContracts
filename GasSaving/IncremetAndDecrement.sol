// using ++i instead of i++ is better as this op code saves 5 gas off the transaction. This is because ++i has to have the value of i before 
// and after the increment. The same goes for decrement. In the end , avoid doing i+=1 as this will take even more gas than the two
// before 