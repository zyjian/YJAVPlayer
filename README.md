# YJAVPlayer
这个AVPlayer的一个子类，实现了缓存功能，再有网络的情况下访问一个url,可变直接播放，并且实现缓存，缓存过的资源在没有网络的情况下，可以读出缓存过的资源。

1. 就是把之前的AVPlayer 换成YJZAVPlayer 即可，就可以实现边下边播的功能了
2. YJZAVPlayer 具有AVPlayer的所有属性与方法
###使用方法
```
 使用案例：如下
 就是把之前的AVPlayer 换成YJAVPlayer 即可，就可以实现边下边播的功能了
 
 #import "ViewController.h"
 #import <YJAVPlayer/YJZAVPlayer.h>
 
 @interface ViewController ()
 @property(nonatomic,strong)YJZAVPlayer *player;
 @end
 
 @implementation ViewController
 
 - (void)viewDidLoad {
 [super viewDidLoad];
 // Do any additional setup after loading the view, typically from a nib.
 }
 
 -(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
 self.player = [YJZAVPlayer sharePlayer];
 [self.player playWithUrlStr:@"http://sc1.111ttt.cn:8282/2018/1/03m/13/396131232171.m4a?tflag=1519095601&pin=6cd414115fdb9a950d827487b16b5f97#.mp3"];
 }

```


