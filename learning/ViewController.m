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
    [firstButton setTitle:@"Make 50%" forState:UIControlStateNormal];
    [self.view addSubview:firstButton];
    [firstButton addTarget:self
                 action:@selector(buttonPressed:)
                 forControlEvents:UIControlEventTouchUpInside];
    
    //add second button
    UIButton *secondButton = [UIButton  buttonWithType:UIButtonTypeRoundedRect];
    secondButton.frame = CGRectMake(100,500, 100, 44);
    // firstButton.backgroundColor = [UIColor redColor];
    [secondButton setTitle:@"Make 100%" forState:UIControlStateNormal];
    [self.view addSubview:secondButton];
    [secondButton addTarget:self
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
    
    if([sender.titleLabel.text isEqualToString:@"Make 50%"]){
        self.view.alpha= .5;
        
    }else{
        self.view.alpha=1;
    }
    //self.view.alpha = ((double)arc4random() / 0x100000000);
  //  [sender removeFromSuperview];//remove current view
}

@end
