//
//  main.m
//  demo3-obj-c
//
//  Created by SwordMac32 on 02/05/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //imutable dictonary:
        NSDictionary *dir = [[NSDictionary alloc]initWithObjectsAndKeys:
                             @"Yash",@"Goyal",
                             @"Naman",@"Tiwari",
                             @"Keerti",@"Pathrol", nil];
        NSLog(@"%@",dir);
        
        //mutable dictonary
        NSDictionary *dir1 = [[NSDictionary alloc]initWithObjectsAndKeys:
                             @"Yash",@"Goyal",
                             @"Naman",@"Tiwari",
                             @"Keerti",@"Pathrol", nil];
        NSLog(@"mutable dic:%@",dir1);
    }
    return 0;
}
