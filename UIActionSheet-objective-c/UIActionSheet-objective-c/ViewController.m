//
//  ViewController.m
//  UIActionSheet-objective-c
//
//  Created by SwordMac32 on 09/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize img;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)//Photo Alpha index=0
    {
        if (img.alpha==1.0f)
        {
            img.alpha=0.5f;
        }
        else if (img.alpha==0.5f)
        {
            img.alpha=1.0f;
        }
    }
    if (buttonIndex == 1) {    //Hide Photo Index=1
        if (img.hidden==NO)
        {
            img.hidden=YES;
        }
        else if (img.hidden==YES)
        {
            img.hidden=NO;
        }
    }
}
- (IBAction)action:(id)sender
{
    
    UIActionSheet *action=[[UIActionSheet alloc]initWithTitle:@"Photo " delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Photo Alpha",@"Hide Photo", nil];
    [action showInView:self.view];
}
@end
