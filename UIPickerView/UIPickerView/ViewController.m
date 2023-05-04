//
//  ViewController.m
//  UIPickerView
//
//  Created by SwordMac32 on 04/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize arr,arr1,txt1,txt2;
- (void)viewDidLoad {
    [super viewDidLoad];
    arr = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3", @"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12", nil];
    arr1 = [[NSMutableArray alloc]initWithObjects:@"AM",@"PM", nil];
    
    // Do any additional setup after loading the view.
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    //return arr.count;
    if(component==0){
        return arr.count;
    }
    if(component==1){
        return arr1.count;
    }
    else{
        return component;
    }
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if(component==0){
         self.txt1.text = [arr objectAtIndex:row];
    }
    if(component ==1){
         self.txt2.text = [arr1 objectAtIndex:row];
    }
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    //return [arr objectAtIndex:row];
    if(component==0){
        return [arr objectAtIndex:row] ;
    }
    if(component==1){
        return [arr1 objectAtIndex:row];
    }
    else{
        return 0;
    }
}

@end
