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
@property(nonatomic, copy) NSString *customUserAgent;
@property(nonatomic, readonly, copy) NSString *title;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSURL*url=[NSURL URLWithString:@"http://www.google.com"];
    NSURLRequest*request=[NSURLRequest requestWithURL:url];
    [[_webView mainFrame] loadRequest:request];
    _customUserAgent = @"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) Chrome/51.0.2704.79";
    _window.titlebarAppearsTransparent = true; // gives it "flat" look
    _window.backgroundColor = NSColor.windowBackgroundColor; // set the background color
}
- (IBAction)getTitleAndSet:(id)sender {
    _window.title = _title;
}
- (IBAction)setThemeDefault:(id)sender {
    _window.appearance = [NSAppearance appearanceNamed:NSAppearanceNameVibrantLight];
    _window.titlebarAppearsTransparent = true; // gives it "flat" look
    _window.backgroundColor = NSColor.windowBackgroundColor; // set the background color

}
- (IBAction)setThemeDark:(id)sender {
    _window.appearance = [NSAppearance appearanceNamed:NSAppearanceNameVibrantDark];
    _window.titlebarAppearsTransparent = true; // gives it "flat" look
    _window.backgroundColor = NSColor.windowBackgroundColor; // set the background color

}
- (IBAction)setThemeAqua:(id)sender {
    _window.appearance = [NSAppearance appearanceNamed:NSAppearanceNameAqua];
    _window.titlebarAppearsTransparent = true; // gives it "flat" look
    _window.backgroundColor = NSColor.windowBackgroundColor; // set the background color

}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
