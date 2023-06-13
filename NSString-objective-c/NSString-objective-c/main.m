//
//  main.m
//  NSString-objective-c
//
//  Created by SwordMac32 on 12/06/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *name= @"Yash";
        NSString *message= @"Welcome";
        NSString *combinedName = [NSString stringWithFormat:@"%@ : Hey, %@!!",message,name];
        NSLog(@"%@",combinedName);
        
        NSString *tipString= @"24";
        float tipFloat = [tipString floatValue];
        NSLog(@"%.4f",tipFloat);
    }
    return 0;
}
