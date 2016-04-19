//
//  ViewController.m
//  learning
//
//  Created by admin on 4/18/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    //Add a button:
    UIButton *firstButton = [UIButton  buttonWithType:UIButtonTypeRoundedRect];
    firstButton.frame = CGRectMake(100, 100, 100, 44);
   // firstButton.backgroundColor = [UIColor redColor];
    [firstButton setTitle:@"Click me !" forState:UIControlStateNormal];
    [self.view addSubview:firstButton];
    [firstButton addTarget:self
                 action:@selector(buttonPressed:)
                 forControlEvents:UIControlEventTouchUpInside];
    
    
    //set a lable
    UILabel *firstLabel = [[UILabel alloc]initWithFrame:CGRectMake(50,30,200,44)];
    firstLabel.backgroundColor = [UIColor greenColor];
    firstLabel.text= @"Hello, welcome to my app!";
    [self.view addSubview:firstLabel];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"Button pressed, sender : %@" , sender);
    self.view.alpha = ((double)arc4random() / 0x100000000);
    [sender removeFromSuperview];
}

@end
