# FlyPlayer2.0Class
FlyPlayer2.0版



FlyPlayer2_0 文档

解码器使用FFmpeg框架

集成步骤


1.将 FlyPlayer2_0 文件夹 拖入你的工程

2.添加一个头文件引用 FlyPlayerHeader.h

3.添加3个框架 libz.tbd ，libbz2.tbd ， libiconv.tbd

4.Build Setting > Header search paths  修改 /FFmpeg-iOS/include目录为相对路径

以上4步做完编译无错误。否则重做。


使用示例

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





FlyPlayer2.0版
最后更新时间2016.2.16
1.增加了左右滑动屏幕调整进度
2.增加了强制横屏
3.由于体积原因解码器由VLC换为FFmpeg



