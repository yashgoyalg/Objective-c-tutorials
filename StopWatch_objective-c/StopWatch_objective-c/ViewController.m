//
//  ViewController.m
//  StopWatch_objective-c
//
//  Created by SwordMac32 on 08/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lblmin,lblsec,lblmili,lblmicro,strmin,strsec,strmili,strmicro,strhistory,tableview,arrdata;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    arrdata= [[NSMutableArray alloc]init];
    micro=0;
    mili=0;
    sec=0;
    min=0;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  arrdata.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell==nil){
        cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
    }
    NSString *strdata = [arrdata objectAtIndex:indexPath.row];
    UILabel *label1= (UILabel *)[cell viewWithTag:1];
    label1.text = strdata;
    return cell;
}

//helper mathord
-(void)helpermethod
{
    micro = micro+1;
    if(micro==1000){
        micro=0;
        mili=mili+1;
        if(mili==100){
            mili=0;
            sec=sec+1;
            if(sec == 60){
                sec=0;
                min= min+1;
                
            }
        }
    }
    
    if(micro<10){
        strmicro= [NSString stringWithFormat:@"%i",micro];
    }
    else{
        strmicro= [NSString stringWithFormat:@"%i",micro];
    }
    if(mili<10){
        strmili= [NSString stringWithFormat:@"%i",mili];
    }
    else{
        strmili= [NSString stringWithFormat:@"%i",mili];
    }
    if(sec<10){
        strsec= [NSString stringWithFormat:@"%i",sec];
    }
    else{
        strsec= [NSString stringWithFormat:@"%i",sec];
    }
    if(min<10){
        strmin= [NSString stringWithFormat:@"%i",min];
    }
    else{
        strmin= [NSString stringWithFormat:@"%i",min];
    }
    lblmicro.text=strmicro;
    lblmili.text=strmili;
    lblsec.text=strsec;
    lblmin.text=strmin;
        
}
    
    
- (IBAction)start:(id)sender
{
    timer=[NSTimer scheduledTimerWithTimeInterval:.0001 target:self selector:@selector(helpermethod) userInfo:nil repeats:YES];
}
    
- (IBAction)stop:(id)sender
{
    [timer invalidate];
}
    
- (IBAction)split:(id)sender
{
    strhistory=[NSString stringWithFormat:@"%@:%@:%@:%@", strmin, strsec, strmili, strmicro];
    [arrdata addObject:strhistory];
    [tableview reloadData];
}
    
- (IBAction)reset:(id)sender
{
    [timer invalidate];
    lblmili.text=@"00";
    lblsec.text=@"00";
    lblmin.text=@"00";
    lblmicro.text=@"00";
    [arrdata removeAllObjects];
    [tableview reloadData];
}
@end
