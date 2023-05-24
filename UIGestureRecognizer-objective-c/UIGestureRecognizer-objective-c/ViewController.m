//
//  ViewController.m
//  UIGestureRecognizer-objective-c
//
//  Created by SwordMac32 on 09/05/23.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize lbl,left,right,top,bottom;
- (void)viewDidLoad {
    [super viewDidLoad];
    left = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(helper:)];
    right = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(helper:)];
    top = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(helper:)];
    bottom = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(helper:)];
    
    left.direction= UISwipeGestureRecognizerDirectionLeft;
    right.direction= UISwipeGestureRecognizerDirectionRight;
    top.direction= UISwipeGestureRecognizerDirectionUp;
    bottom.direction= UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:left];
    [self.view addGestureRecognizer:right];
    [self.view addGestureRecognizer:top];
    [self.view addGestureRecognizer:bottom];
}
-(void)helper: (UISwipeGestureRecognizer *)sender{
    if(sender.direction == UISwipeGestureRecognizerDirectionLeft){
        lbl.text=@"LEFT";
    }
    if(sender.direction == UISwipeGestureRecognizerDirectionRight){
        lbl.text=@"RIGHT";
    }
    if(sender.direction == UISwipeGestureRecognizerDirectionUp){
        lbl.text=@"UP";
    }
    if(sender.direction == UISwipeGestureRecognizerDirectionDown){
        lbl.text=@"DOWN";
    }
}
@end
