//
//  ViewController.m
//  GuideTest
//
//  Created by glb_gz on 2018/11/19.
//  Copyright © 2018年 glb_gz. All rights reserved.
//

#import "ViewController.h"

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
    
}




@end
