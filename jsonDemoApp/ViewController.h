//
//  ViewController.h
//  jsonDemoApp
//
//  Created by TUSHAR BERI on 03/10/18.
//  Copyright © 2018 tired guardian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *txtname;
@property (strong, nonatomic) IBOutlet UITextField *txtmobile;
@property (strong, nonatomic) IBOutlet UITextField *txtdob;
@property (strong, nonatomic) IBOutlet UITextField *txtaddress;
- (IBAction)btnsave:(UIButton *)sender;






-(void)requestdata;


@end

