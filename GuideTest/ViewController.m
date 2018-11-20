//
//  ViewController.m
//  GuideTest
//
//  Created by glb_gz on 2018/11/19.
//  Copyright © 2018年 glb_gz. All rights reserved.
//

#import "ViewController.h"

#define IS_GREEN_APP [[[NSBundle mainBundle] bundleIdentifier] containsString:@"com.glb.Green"]
#define SCREEN_WIDTH   [UIScreen mainScreen].bounds.size.width

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSBundle *bundle = [NSBundle mainBundle];
    //bundle identifier
    NSString *bundleIdentifier = [bundle bundleIdentifier];
    //display name
    NSString *displayName = [bundle objectForInfoDictionaryKey:@"CFBundleDisplayName"];
    //Version String
    NSString *versionStr = [bundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    //Version Build number
    NSString *buildNumber = [bundle objectForInfoDictionaryKey:@"CFBundleVersion"];
    //APP SERVER URL
    NSString *serverUrl = [bundle objectForInfoDictionaryKey:@"ServerURL"];
  
    _titleLb.text=[NSString stringWithFormat:@"%@",displayName];
    _showLb.text = [NSString stringWithFormat:@"bundle ID:%@,\nversionStr:%@,\nbuildNumber:%@,\nserverUrl:%@",bundleIdentifier,versionStr,buildNumber,serverUrl];
    
    NSLog(@"bundle ID:%@,\ndisplayName:%@,\nversionStr:%@,\nbuildNumber:%@,\nserverUrl:%@",bundleIdentifier,displayName,versionStr,buildNumber,serverUrl);
    
    NSLog(@"SCREEN_WIDTH:%lf",SCREEN_WIDTH);
    if(IS_GREEN_APP){
        NSLog(@"The APP is Green Guide APP");
    }else{
        NSLog(@"The APP is Cramer APP");
    }
    
}




@end
