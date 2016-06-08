//
//  AppDelegate.m
//  Cloud Browser
//
//  Created by Randi Kaminsky on 6/8/16.
//  Copyright © 2016 Usernamer. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSURL*url=[NSURL URLWithString:@"http://www.google.com"];
    NSURLRequest*request=[NSURLRequest requestWithURL:url];
    [[_webView mainFrame] loadRequest:request];

}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
