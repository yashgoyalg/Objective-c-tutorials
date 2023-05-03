//
//  ViewController.m
//  UILabel-obj-c
//
//  Created by SwordMac32 on 03/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)btn:(UIButton *)sender {
    //for creating label
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(16, 385, 361, 50)];
    label.text= @"SSNTPL";
    
    //for center aligment
    label.textAlignment= NSTextAlignmentCenter;
    
    //for text color
    label.textColor =[UIColor whiteColor];
    
    //for printing number of lines
    label.numberOfLines = 2;
    
    //for highlighting text
    label.highlighted=YES;
    
    //to hide text
    label.hidden = NO;
    
    //for highlighted text color
    label.highlightedTextColor= [UIColor blueColor];
    
    //for font size
    label.font = [UIFont systemFontOfSize : 50.0];
    
    //for creating boarder and corners
    [label.layer setBorderWidth:1.0];
    [label.layer setBorderColor: [UIColor redColor].CGColor];
    [label.layer setCornerRadius:15.0];
    
    //auto resizeing label
    label.autoresizingMask= UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleRightMargin |
    UIViewAutoresizingFlexibleBottomMargin ;
    
    [self.view addSubview:label];
}

@end
