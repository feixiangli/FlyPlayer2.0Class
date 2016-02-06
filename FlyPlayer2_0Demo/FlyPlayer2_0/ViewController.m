//
//  ViewController.m
//  FlyPlayer2_0
//
//  Created by 李飞翔 on 16/2/6.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import "ViewController.h"
#import "FlyPlayerHeader.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 100, 30)];
    [button setTitle:@"点击播放" forState:UIControlStateNormal];
    button.backgroundColor=[UIColor grayColor];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    

}

-(void)click
{
    
    
    KxMovieViewController *vc = [KxMovieViewController movieViewControllerWithContentPath:@"http://www.qeebu.com/newe/Public/Attachment/99/52958fdb45565.mp4" parameters:nil];
    
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}


@end
