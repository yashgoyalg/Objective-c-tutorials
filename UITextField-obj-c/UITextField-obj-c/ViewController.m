//
//  ViewController.m
//  UITextField-obj-c
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
    UITextField *field = [[UITextField alloc]initWithFrame:CGRectMake(16, 409, 361, 34)];
    
    //for styling boarder
    field.borderStyle = UITextBorderStyleRoundedRect;
    
    //for background color
    field.backgroundColor = [UIColor grayColor];
    
    //for font color
    field.font= [UIFont fontWithName:@"optima" size:20.0];
    
    //for text aligment
    field.textAlignment = NSTextAlignmentCenter;
    
    //for securing input text
    field.secureTextEntry = YES;
    
    //for external keybpoard
    field.keyboardType= UIKeyboardTypeEmailAddress;
    field.placeholder = @"enter password";
    [self.view addSubview: field];
    
    
    //for creating label
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(15, 300, 361, 50)];
    label.text= @"Custome Text Field";
    
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
    label.font = [UIFont systemFontOfSize : 25.0];
    
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
