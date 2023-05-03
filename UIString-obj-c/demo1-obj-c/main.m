//
//  main.m
//  demo1-obj-c
//
//  Created by SwordMac32 on 02/05/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // imutable string
        NSString *getting= @"Hello I'm Yash!";
        NSLog(@"Who are you?: %@\n",getting);
        
        //mutable string
        NSMutableString *getting2 = [[NSMutableString alloc]initWithString : @"Hello Yash G! "];
        NSLog(@"Welocome!: %@",getting2);
        
        //appening string
        [getting2 appendString:@"Working"];
        NSLog(@"%@",getting2);
        
        //inserting element
        [getting2 insertString:@"Jai" atIndex:6];
        NSLog(@"%@",getting2);
        
        //replace character in the range
        [getting2 replaceCharactersInRange:NSMakeRange(6, 8) withString:@"SSNTPL "];
        NSLog(@"%@",getting2);
        
        //deleteing char in range
        [getting2 deleteCharactersInRange:NSMakeRange(6, 8)];
        NSLog(@"%@",getting2);
        
    }
    return 0;
}
