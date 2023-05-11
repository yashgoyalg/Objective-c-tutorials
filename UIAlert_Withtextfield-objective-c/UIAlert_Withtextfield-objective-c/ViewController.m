//
//  ViewController.m
//  UIAlert_Withtextfield-objective-c
//
//  Created by SwordMac32 on 10/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}


- (IBAction)btnaction:(UIButton *)sender {
    
    
    UIAlertController *alertcontroller = [UIAlertController alertControllerWithTitle:@"Login Window" message:@"Pleasae Enter Name And Password" preferredStyle:UIAlertControllerStyleAlert];
    
    //first text field:
    
    [alertcontroller addTextFieldWithConfigurationHandler:^(UITextField *textfield){
        textfield.placeholder= @"User Name";
        textfield.textColor = [UIColor blueColor];
        textfield.borderStyle = UITextBorderStyleRoundedRect;
        textfield.clearButtonMode= UITextFieldViewModeWhileEditing;
    }
    ];
    
    
    //for secound textfield:
    [alertcontroller addTextFieldWithConfigurationHandler:^(UITextField *textfield){
        textfield.placeholder= @"User Password";
        textfield.secureTextEntry=YES;
        textfield.textColor = [UIColor blueColor];
        textfield.borderStyle = UITextBorderStyleRoundedRect;
        textfield.clearButtonMode= UITextFieldViewModeWhileEditing;
    }
    ];
    
    //add submit button
    [alertcontroller addAction:[UIAlertAction actionWithTitle:@"Submit" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        NSArray *textfields = alertcontroller.textFields;
        UITextField *name = textfields[0];
        UITextField *pass = textfields[1];
        NSLog(@"Usernaem: %@, UserPassword: %@",name.text,pass.text);
    }]];
    
    //alert view controller show
    
    [self presentViewController:alertcontroller animated:YES completion:nil];;
}
@end
