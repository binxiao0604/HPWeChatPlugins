#import <UIKit/UIKit.h>
%hook CMessageMgr

- (void)CheckMessageStatus:(id)arg1 Msg:(id)arg2 {
    NSLog(@"arg1:%@\narg1Class:%@",arg1,[arg1 class]);
    NSLog(@"arg2:%@\narg1Class:%@",arg2,[arg2 class]);
    //自动抢红包Hook逻辑
    %orig;
}

%end

%hook WCRedEnvelopesReceiveHomeView

- (void)OnOpenRedEnvelopes {
    %orig;
    NSLog(@"TEST");
}

%end
