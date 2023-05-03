//
//  main.m
//  demo2-obj-c
//
//  Created by SwordMac32 on 02/05/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //imutable array
        NSArray *array = [[NSArray alloc]initWithObjects:@"Hello", @"Hi",nil];
        NSLog(@"%@",array);
        
        //mutable array
        NSMutableArray *mutablearray = [[NSMutableArray alloc]initWithObjects:@"Yash", nil];
        NSLog(@"mutable array: %@\n",mutablearray);
        
        //adding objects in array
        [mutablearray addObject:@"Naman"];
        [mutablearray addObject:@"SSNTPL"];
        [mutablearray addObject:@"Tech"];
        [mutablearray addObject:@"TCS"];
        [mutablearray addObject:@"Nagarro"];

        NSLog(@"mutable array after adding some more elements : %@\n",mutablearray);
        
        //inserting element at index
        [mutablearray insertObject:@"amazon" atIndex:1];
        NSLog(@"after inserting elements at index 1: %@\n",mutablearray);
        
        //remove objects at index
        [mutablearray removeObjectAtIndex:0];
        NSLog(@"after removing elements at index 0: %@\n",mutablearray);
        
        //removing last element/orbject
        [mutablearray removeLastObject];
        NSLog(@"after removing last element : %@\n",mutablearray);
        
        //replacing object from particular index:
        [mutablearray replaceObjectAtIndex:0 withObject:@"Google"];
        NSLog(@"after replacing elements at index 0: %@\n",mutablearray);
   
        //removing all objects
        [mutablearray removeAllObjects];
        NSLog(@"after removing all elements : %@\n",mutablearray);
    }
    return 0;
}
