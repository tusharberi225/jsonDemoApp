//
//  ViewController.m
//  jsonDemoApp
//
//  Created by TUSHAR BERI on 03/10/18.
//  Copyright © 2018 tired guardian. All rights reserved.
//

#import "ViewController.h"
#import "webservices.h"
@interface ViewController ()
{
    NSString *mainstr;
}
@end

@implementation ViewController
@synthesize txtname,txtdob,txtmobile,txtaddress;
- (void)viewDidLoad {
    [super viewDidLoad];
    //[self requestdata];
}

- (IBAction)btnsave:(UIButton *)sender
{
    [self requestdata];
}

-(void)requestdata
{
    mainstr = [NSString stringWithFormat:@"https://smart-sauda.herokuapp.com/"];
    NSString * dbstr = [NSString stringWithFormat:@"Name=%@&Mobile=%@&DOB=%@&Address=%@",txtname.text,txtmobile.text,txtdob.text,txtaddress.text];
    [webservices executequery:mainstr strpremeter:dbstr withblock:^(NSData * dbdata, NSError *error) {
        NSLog(@"Data: %@", dbdata);
        if (dbdata!=nil)
        {
            NSDictionary *maindic = [NSJSONSerialization JSONObjectWithData:dbdata options:NSJSONReadingAllowFragments error:nil];
            NSLog(@"Response Data: %@", maindic);
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
