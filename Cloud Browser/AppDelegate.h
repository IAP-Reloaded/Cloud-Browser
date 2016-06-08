//
//  AppDelegate.h
//  Cloud Browser
//
//  Created by Randi Kaminsky on 6/8/16.
//  Copyright © 2016 Usernamer. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (strong) IBOutlet WebView *webView;

@end

