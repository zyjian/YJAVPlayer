//
//  YJPlayer.m
//  YJPlayerDemo
//
//  Created by zhu on 2018/4/20.
//  Copyright © 2018年 cn.jy. All rights reserved.
//

#import "YJAVPlayer.h"
#import "AVPlayerItem+MCCacheSupport.h"

@implementation YJAVPlayer

static YJAVPlayer* _instance = nil;

+(instancetype)sharePlayer {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [self new];
    });
    return _instance;
}

-(void)playWithUrlStr:(NSString *)strUrl; {
    NSURL *url = [NSURL URLWithString:strUrl];
    AVPlayerItem *playerItem = [AVPlayerItem mc_playerItemWithRemoteURL:url error:nil];
    [_instance replaceCurrentItemWithPlayerItem:playerItem];
    [_instance play];
}

@end
