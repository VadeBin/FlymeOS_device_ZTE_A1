.class public Lcom/android/systemui/keyguard/KeyguardViewMediator;
.super Lcom/android/systemui/SystemUI;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardViewMediator$10;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    }
.end annotation


# static fields
.field private static final FLASH_LIGHT_COMPONENT:Landroid/content/ComponentName;

.field private static final USER_PRESENT_INTENT:Landroid/content/Intent;

.field private static mKeyguardDoneOnGoing:Z


# instance fields
# hxs modify begin
.field private mFP_flag:Z
# hxs modify end

.field private final DEMO_MODE_ACTION_CLEAR_LOCK:Ljava/lang/String;

.field private final DEMO_MODE_ENABLE:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAlipayClass:Ljava/lang/String;

.field private final mAlipayUrl:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBootComplete:Z

.field private mBootCompleted:Z

.field private mBootSendUserPresent:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

.field private mExternallyEnabled:Z

.field private mFindPhoneCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

.field private mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field mGestureCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;

.field private mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mHideAnimationRun:Z

.field private mHiding:Z

.field private mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

.field private mHolsterStatusbarPadding:I

.field private mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

.field private mInputRestricted:Z

.field private mInvalidDialog:Landroid/app/AlertDialog;

.field private mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field private mKeyguardDonePending:Z

.field private final mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

.field private final mKeyguardStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/IKeyguardStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLockIntent:Landroid/content/Intent;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedToReshowWhenReenabled:Z

.field private mOccluded:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mPlayVideoIntent:Landroid/app/PendingIntent;

.field private mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenOn:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowing:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStopVideoIntent:Landroid/app/PendingIntent;

.field private mSuppressNextLockSound:Z

.field private mSuppressNextLockSoundForHolster:Z

.field private mSwitchingUser:Z

.field private mSystemReady:Z

.field public mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mTrustedSoundId:I

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mWM:Landroid/view/IWindowManager;

.field private mWaitingUntilKeyguardVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    .line 338
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDoneOnGoing:Z

    .line 386
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.meizu.flashlight"

    const-string v2, "com.meizu.flashlight"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->FLASH_LIGHT_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 239
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 240
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSoundForHolster:Z

    .line 269
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 276
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 286
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 308
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 327
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 329
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 330
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 350
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootComplete:Z

    .line 351
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFindPhoneCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 389
    const-string v0, "alipays://platformapi/startapp?appId=20000056"

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlipayUrl:Ljava/lang/String;

    .line 390
    const-string v0, "com.eg.android.AlipayGphone/alipayCode"

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlipayClass:Ljava/lang/String;

    .line 398
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    .line 399
    const-string v0, "com.meizu.action.PASSWORD_HAVE_CLEARD"

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ACTION_CLEAR_LOCK:Ljava/lang/String;

    .line 410
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 642
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1384
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1456
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 1755
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    .line 2002
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/keyguard/KeyguardViewMediator$1;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;

    .line 2324
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestricted()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDoneOnGoing:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInvalidDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInvalidDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUpAndStartActivityAfterKeyguardExit()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playTrustedSound()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootComplete:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSwitchingUser:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldPlayVideo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSetOccluded(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleOnActivityDrawn()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleGesture(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->exitGuestMode()V

    return-void
.end method

.method static synthetic access$4702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSoundForHolster:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismissIntelligentHolsterView()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showIntelligentHolsterView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusbarPadding:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/meizu/keyguard/MzGestureHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/view/IWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWM:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/systemui/keyguard/KeyguardViewMediator;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleCustomGesture(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method private adjustStatusBarLocked()V
    .locals 3

    .prologue
    .line 1832
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_0

    .line 1833
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1836
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_2

    .line 1837
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Could not get status bar manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_1
    :goto_0
    return-void

    .line 1841
    :cond_2
    const/4 v0, 0x0

    .line 1842
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_3

    .line 1846
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 1847
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 1849
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1850
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 1858
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 1859
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private cancelDoKeyguardLaterLocked()V
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 984
    return-void
.end method

.method private checkIsVideo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2406
    const/4 v1, 0x0

    .line 2407
    .local v1, "isVideo":Z
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2408
    .local v0, "end":Ljava/lang/String;
    const-string v2, "mp4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "avi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mkv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "flv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2409
    :cond_0
    const/4 v1, 0x1

    .line 2413
    :goto_0
    return v1

    .line 2411
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissIntelligentHolsterView()V
    .locals 2

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    if-eqz v0, :cond_0

    .line 2252
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->hide()V

    .line 2253
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->setVisibility(I)V

    .line 2255
    :cond_0
    return-void
.end method

.method private doKeyguardLaterLocked()V
    .locals 18

    .prologue
    .line 941
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 944
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v11, "screen_off_timeout"

    const/16 v16, 0x7530

    move/from16 v0, v16

    invoke-static {v2, v11, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    int-to-long v4, v11

    .line 948
    .local v4, "displayTimeout":J
    const-string v11, "lock_screen_lock_after_timeout"

    const/16 v16, 0x1388

    move/from16 v0, v16

    invoke-static {v2, v11, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    int-to-long v6, v11

    .line 953
    .local v6, "lockAfterTimeout":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v11

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v8

    .line 957
    .local v8, "policyTimeout":J
    const-wide/16 v16, 0x0

    cmp-long v11, v8, v16

    if-lez v11, :cond_0

    .line 959
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 960
    sub-long v16, v8, v4

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 965
    .local v12, "timeout":J
    :goto_0
    const-wide/16 v16, 0x0

    cmp-long v11, v12, v16

    if-gtz v11, :cond_1

    .line 967
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 968
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 980
    :goto_1
    return-void

    .line 962
    .end local v12    # "timeout":J
    :cond_0
    move-wide v12, v6

    .restart local v12    # "timeout":J
    goto :goto_0

    .line 971
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    add-long v14, v16, v12

    .line 972
    .local v14, "when":J
    new-instance v3, Landroid/content/Intent;

    const-string v11, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 973
    .local v3, "intent":Landroid/content/Intent;
    const-string v11, "seq"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 974
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    const/high16 v17, 0x10000000

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v11, v0, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 976
    .local v10, "sender":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v11, v0, v14, v15, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x15

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1226
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->ignoreDoKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1230
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1246
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1248
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0

    .line 1253
    :cond_3
    const-string v6, "keyguard.no_require_sim"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_9

    move v3, v4

    .line 1254
    .local v3, "requireSim":Z
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    .line 1256
    .local v0, "absent":Z
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    .line 1258
    .local v1, "disabled":Z
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v0, :cond_4

    if-eqz v1, :cond_a

    :cond_4
    if-eqz v3, :cond_a

    :cond_5
    move v2, v4

    .line 1261
    .local v2, "lockedOrMissing":Z
    :goto_2
    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1262
    const/4 v2, 0x1

    .line 1264
    :cond_6
    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1270
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v2, :cond_0

    .line 1275
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->checkVoldPassword()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1278
    invoke-direct {p0, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1279
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    goto :goto_0

    .end local v0    # "absent":Z
    .end local v1    # "disabled":Z
    .end local v2    # "lockedOrMissing":Z
    .end local v3    # "requireSim":Z
    :cond_9
    move v3, v5

    .line 1253
    goto :goto_1

    .restart local v0    # "absent":Z
    .restart local v1    # "disabled":Z
    .restart local v3    # "requireSim":Z
    :cond_a
    move v2, v5

    .line 1258
    goto :goto_2

    .line 1284
    .restart local v2    # "lockedOrMissing":Z
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1285
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1286
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private exitGuestMode()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2186
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lossMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2209
    :cond_0
    :goto_0
    return-void

    .line 2188
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isGuestMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2189
    const/4 v2, -0x1

    .line 2190
    .local v2, "id":I
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 2192
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 2193
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 2194
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2195
    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    goto :goto_1

    .line 2199
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 2200
    const-string v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "guest mode, switchUser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 2203
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2205
    :catch_0
    move-exception v0

    .line 2206
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private expandNotifications()V
    .locals 1

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->openQsOrExpandNotificationPanel()V

    .line 2064
    return-void
.end method

.method private handleCustomGesture(IZ)V
    .locals 11
    .param p1, "gestureType"    # I
    .param p2, "done"    # Z

    .prologue
    const/4 v5, 0x0

    const/high16 v10, 0x4000000

    const/16 v9, 0x1a

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2068
    const/4 v0, 0x0

    .line 2069
    .local v0, "component":Landroid/content/ComponentName;
    sparse-switch p1, :sswitch_data_0

    .line 2100
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2101
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    const-string v6, "com.eg.android.AlipayGphone/alipayCode"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2102
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2103
    const-string v6, "alipays://platformapi/startapp?appId=20000056"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2108
    :goto_1
    if-eqz v0, :cond_5

    .line 2109
    const-string v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "component "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    sget-object v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->FLASH_LIGHT_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2112
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    if-eqz v6, :cond_3

    .line 2113
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/FlashlightController;->getFlashlightEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    :goto_2
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    .line 2117
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    if-nez v0, :cond_4

    move-object v3, v5

    :goto_4
    invoke-static {v4, p1, v3}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectGestures(Landroid/content/Context;ILjava/lang/String;)V

    .line 2176
    :cond_0
    :goto_5
    return-void

    .line 2071
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_0
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v6}, Lcom/meizu/keyguard/MzGestureHelper;->getSlideRightComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2072
    goto :goto_0

    .line 2074
    :sswitch_1
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v6}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawCComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2075
    goto :goto_0

    .line 2077
    :sswitch_2
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v6}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawEComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2078
    goto :goto_0

    .line 2080
    :sswitch_3
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v6}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawWComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2081
    goto :goto_0

    .line 2083
    :sswitch_4
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v6}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawMComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2084
    goto/16 :goto_0

    .line 2086
    :sswitch_5
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v6}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawOComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2087
    goto/16 :goto_0

    .line 2089
    :sswitch_6
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v6}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawSComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2090
    goto/16 :goto_0

    .line 2092
    :sswitch_7
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v6}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawZComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2093
    goto/16 :goto_0

    .line 2095
    :sswitch_8
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v6}, Lcom/meizu/keyguard/MzGestureHelper;->getDrawVComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2096
    goto/16 :goto_0

    .line 2105
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2106
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_2
    move v3, v4

    .line 2113
    goto :goto_2

    .line 2115
    :cond_3
    const-string v3, "KeyguardViewMediator"

    const-string v4, "flash light controller null ..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2117
    :cond_4
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 2122
    :cond_5
    if-nez p2, :cond_6

    .line 2123
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    if-nez v0, :cond_8

    :goto_6
    invoke-static {v6, p1, v5}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectGestures(Landroid/content/Context;ILjava/lang/String;)V

    .line 2126
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v5

    if-nez v5, :cond_c

    .line 2127
    if-eqz v0, :cond_0

    .line 2128
    const-string v5, "com.eg.android.AlipayGphone/alipayCode"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2129
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2131
    :cond_7
    if-nez p2, :cond_9

    .line 2132
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v4, p1}, Lcom/meizu/keyguard/MzGestureHelper;->setLaunchAppUnlocked(I)V

    .line 2133
    invoke-direct {p0, v3, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V

    goto/16 :goto_5

    .line 2123
    :cond_8
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 2135
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/keyguard/MzGestureHelper;->isPkgEncrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_b

    move v1, v3

    .line 2137
    .local v1, "fast":Z
    :goto_7
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.meizu.media.camera"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.meizu.media.camera.CameraLauncher"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2142
    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2145
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v4, v1}, Lcom/meizu/keyguard/MzGestureHelper;->launchFastActivityNoDismissKeyguard(Landroid/content/Context;Landroid/content/Intent;ZZ)V

    goto/16 :goto_5

    .end local v1    # "fast":Z
    :cond_b
    move v1, v4

    .line 2135
    goto :goto_7

    .line 2150
    :cond_c
    if-nez p2, :cond_f

    .line 2151
    if-eqz v0, :cond_d

    .line 2152
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.meizu.media.camera"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.meizu.media.camera.CameraLauncher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v5, "com.meizu.media.camera"

    invoke-static {v4, v5}, Lcom/meizu/keyguard/MzGestureHelper;->isPkgEncrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_e

    .line 2157
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2158
    const-string v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2159
    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2160
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3, v3}, Lcom/meizu/keyguard/MzGestureHelper;->launchFastActivityNoDismissKeyguard(Landroid/content/Context;Landroid/content/Intent;ZZ)V

    .line 2166
    :cond_d
    :goto_8
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2167
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1e

    invoke-virtual {v3, v9, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 2163
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v3, p1}, Lcom/meizu/keyguard/MzGestureHelper;->setLaunchAppUnlocked(I)V

    goto :goto_8

    .line 2169
    :cond_f
    if-eqz v0, :cond_10

    const-string v5, "com.eg.android.AlipayGphone/alipayCode"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 2170
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2172
    :cond_10
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v3, v4}, Lcom/meizu/keyguard/MzGestureHelper;->launchFastActivityNoDismissKeyguard(Landroid/content/Context;Landroid/content/Intent;ZZ)V

    goto/16 :goto_5

    .line 2069
    nop

    :sswitch_data_0
    .sparse-switch
        0xb1 -> :sswitch_0
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_1
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_4
        0xc4 -> :sswitch_5
        0xc5 -> :sswitch_6
        0xc7 -> :sswitch_8
        0xca -> :sswitch_7
    .end sparse-switch
.end method

.method private handleGesture(I)V
    .locals 7
    .param p1, "gestureType"    # I

    .prologue
    const/16 v6, 0x1a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2005
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGesture gestureType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    sparse-switch p1, :sswitch_data_0

    .line 2055
    :goto_0
    return-void

    .line 2008
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUp()V

    .line 2009
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v4}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectGestures(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 2013
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2014
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    iput-boolean v5, v1, Lcom/meizu/keyguard/MzGestureHelper;->mUnlockAndWakeup:Z

    .line 2015
    invoke-direct {p0, v5, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V

    .line 2019
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v4}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectGestures(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 2017
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUp()V

    goto :goto_1

    .line 2023
    :sswitch_2
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->expandNotifications()V

    .line 2024
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2025
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2026
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v4}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectGestures(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 2031
    :sswitch_3
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/media/music/KeyguardMusicController;->isMusicPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2032
    const/4 v0, -0x1

    .line 2033
    .local v0, "keyCode":I
    const/16 v1, 0xb0

    if-ne p1, v1, :cond_3

    .line 2034
    const/16 v0, 0x58

    .line 2038
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/media/music/KeyguardMusicController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/media/music/KeyguardMusicController;->sendMediaButtonClick(I)V

    .line 2040
    .end local v0    # "keyCode":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v4}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectGestures(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 2035
    .restart local v0    # "keyCode":I
    :cond_3
    const/16 v1, 0xb1

    if-ne p1, v1, :cond_1

    .line 2036
    const/16 v0, 0x57

    goto :goto_2

    .line 2050
    .end local v0    # "keyCode":I
    :sswitch_4
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleCustomGesture(IZ)V

    goto :goto_0

    .line 2006
    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_0
        0xb0 -> :sswitch_3
        0xb1 -> :sswitch_3
        0xb2 -> :sswitch_1
        0xb3 -> :sswitch_2
        0xc0 -> :sswitch_4
        0xc1 -> :sswitch_4
        0xc2 -> :sswitch_4
        0xc3 -> :sswitch_4
        0xc4 -> :sswitch_4
        0xc5 -> :sswitch_4
        0xc7 -> :sswitch_4
        0xca -> :sswitch_4
    .end sparse-switch
.end method

.method private handleHide()V
    .locals 4

    .prologue
    .line 1779
    monitor-enter p0

    .line 1782
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 1783
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_1

    .line 1784
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-nez v0, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 1797
    :goto_0
    monitor-exit p0

    .line 1798
    return-void

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1797
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1793
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleKeyguardDone(ZZ)V
    .locals 6
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1591
    monitor-enter p0

    .line 1592
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 1593
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1595
    sput-boolean v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDoneOnGoing:Z

    .line 1597
    if-eqz p1, :cond_0

    .line 1598
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 1600
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    .line 1602
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v1, :cond_1

    .line 1604
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1609
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1611
    if-eqz p1, :cond_1

    .line 1614
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1615
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1616
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestricted()V

    .line 1621
    :cond_1
    if-eqz p2, :cond_2

    .line 1622
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1626
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1627
    return-void

    .line 1593
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1605
    :catch_0
    move-exception v0

    .line 1606
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call onKeyguardExitResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1624
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    goto :goto_1
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 1650
    monitor-enter p0

    .line 1652
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    .line 1654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1655
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1660
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1662
    :cond_0
    monitor-exit p0

    .line 1663
    return-void

    .line 1662
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .locals 1

    .prologue
    .line 1893
    monitor-enter p0

    .line 1895
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOff()V

    .line 1896
    monitor-exit p0

    .line 1897
    return-void

    .line 1896
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 1904
    monitor-enter p0

    .line 1906
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 1907
    monitor-exit p0

    .line 1908
    return-void

    .line 1907
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleOnActivityDrawn()V
    .locals 1

    .prologue
    .line 1802
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-eqz v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onActivityDrawn()V

    .line 1805
    :cond_0
    return-void
.end method

.method private handleReset()V
    .locals 1

    .prologue
    .line 1869
    monitor-enter p0

    .line 1871
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset()V

    .line 1872
    monitor-exit p0

    .line 1873
    return-void

    .line 1872
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSetOccluded(Z)V
    .locals 1
    .param p1, "isOccluded"    # Z

    .prologue
    .line 1173
    monitor-enter p0

    .line 1174
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eq v0, p1, :cond_0

    .line 1175
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 1176
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setOccluded(Z)V

    .line 1177
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1178
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1180
    :cond_0
    monitor-exit p0

    .line 1181
    return-void

    .line 1180
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1720
    monitor-enter p0

    .line 1722
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 1724
    monitor-exit p0

    .line 1753
    :goto_0
    return-void

    .line 1729
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1730
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 1731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 1732
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 1733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 1734
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1735
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1736
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1739
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1741
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootComplete:Z

    if-eqz v0, :cond_1

    .line 1745
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz v0, :cond_1

    .line 1746
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1750
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1751
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1752
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    goto :goto_0

    .line 1751
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

# hxs modify begin
.method private handleStartKeyguardExitAnimation(JJ)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    const/4 v2, 0x0

    const-string v3, "KeyguardViewMediator"

    const-string v4, "handleStartKeyguardExitAnimation() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-nez v3, :cond_2

    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleStartKeyguardExitAnimation() - returns, !mHiding = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-eqz v5, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "KeyguardViewMediator"

    const-string v4, "set mKeyguardDoneOnGoing = false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDoneOnGoing:Z

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFP_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardViewMediator"

    const-string v4, "StartKeyguardExit--Fingerprint = true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFP_flag:Z

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, "mPM":Landroid/os/PowerManager;
    const v2, 0x1000000a

    const-string v3, "TAG"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_1

    .end local v0    # "mPM":Landroid/os/PowerManager;
    .end local v1    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
# hxs modify end

.method private handleVerifyUnlock()V
    .locals 1

    .prologue
    .line 1880
    monitor-enter p0

    .line 1882
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1883
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->verifyUnlock()V

    .line 1884
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1885
    monitor-exit p0

    .line 1886
    return-void

    .line 1885
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 1365
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1366
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1367
    return-void
.end method

.method private ignoreDoKeyguardLocked()Z
    .locals 7

    .prologue
    .line 2439
    const/4 v2, 0x0

    .line 2440
    .local v2, "ignore":Z
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 2442
    .local v4, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v2

    .line 2464
    .end local v2    # "ignore":Z
    .local v3, "ignore":I
    :goto_0
    return v3

    .line 2450
    .end local v3    # "ignore":I
    .restart local v2    # "ignore":Z
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v5

    if-eqz v5, :cond_1

    .line 2451
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2452
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2454
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2455
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.incallui.InCallActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2458
    const/4 v2, 0x1

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_1
    :goto_1
    move v3, v2

    .line 2464
    .restart local v3    # "ignore":I
    goto :goto_0

    .line 2461
    .end local v3    # "ignore":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isGuestMode()Z
    .locals 2

    .prologue
    .line 863
    const/4 v0, 0x0

    .line 865
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 869
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    const/4 v1, 0x1

    .line 872
    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 866
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private lossMode()Z
    .locals 1

    .prologue
    .line 2212
    const/4 v0, 0x0

    return v0
.end method

.method private maybeSendUserPresentBroadcast()V
    .locals 1

    .prologue
    .line 1011
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1017
    :cond_0
    return-void
.end method

.method private notifyScreenOffLocked()V
    .locals 2

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1334
    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 3
    .param p1, "result"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 1343
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1344
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1345
    return-void
.end method

.method private playSound(I)V
    .locals 8
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x1

    .line 1682
    if-nez p1, :cond_1

    .line 1699
    :cond_0
    :goto_0
    return-void

    .line 1683
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1684
    .local v7, "cr":Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1686
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 1688
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1689
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 1690
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    .line 1694
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_0
.end method

.method private playSounds(Z)V
    .locals 2
    .param p1, "locked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1668
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_0

    .line 1669
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1679
    :goto_0
    return-void

    .line 1673
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSoundForHolster:Z

    if-eqz v0, :cond_1

    .line 1674
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSoundForHolster:Z

    goto :goto_0

    .line 1678
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_1
.end method

.method private playTrustedSound()V
    .locals 1

    .prologue
    .line 1702
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_0

    .line 1706
    :goto_0
    return-void

    .line 1705
    :cond_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    goto :goto_0
.end method

.method private playVideoLocked(J)V
    .locals 31
    .param p1, "delayMs"    # J

    .prologue
    .line 2339
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 2387
    :goto_0
    return-void

    .line 2341
    :cond_0
    const-string v23, "demoMode"

    const-string v28, "playVideoLocked"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 2343
    .local v15, "now":Ljava/util/Calendar;
    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v16

    .line 2344
    .local v16, "nowTime":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getHours()I

    move-result v10

    .line 2345
    .local v10, "hour":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getMinutes()I

    move-result v14

    .line 2346
    .local v14, "min":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getSeconds()I

    move-result v17

    .line 2348
    .local v17, "sec":I
    const-string v20, "0900"

    .line 2349
    .local v20, "start":Ljava/lang/String;
    const-string v6, "2200"

    .line 2350
    .local v6, "end":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v28, "meizu_shopdemo_tool_playtime"

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v28, 0x1

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    const/4 v11, 0x1

    .line 2352
    .local v11, "isOpenPlayTime":Z
    :goto_1
    if-eqz v11, :cond_5

    .line 2353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v28, "meizu_shopdemo_tool_playtime_start"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v28, "meizu_shopdemo_tool_playtime_end"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2361
    :goto_2
    const/16 v23, 0x0

    const/16 v28, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 2362
    .local v21, "startHour":I
    const/16 v23, 0x2

    const/16 v28, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 2363
    .local v22, "startMin":I
    const/16 v23, 0x0

    const/16 v28, 0x2

    move/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2364
    .local v7, "endHour":I
    const/16 v23, 0x2

    const/16 v28, 0x4

    move/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2365
    .local v8, "endMin":I
    const/4 v9, 0x0

    .line 2366
    .local v9, "endSec":I
    move/from16 v0, v21

    if-gt v10, v0, :cond_1

    move/from16 v0, v21

    if-ne v10, v0, :cond_6

    move/from16 v0, v22

    if-le v14, v0, :cond_6

    :cond_1
    if-lt v10, v7, :cond_2

    if-ne v10, v7, :cond_6

    if-ge v14, v8, :cond_6

    .line 2369
    :cond_2
    sub-int v23, v7, v10

    mul-int/lit8 v23, v23, 0x3c

    mul-int/lit8 v23, v23, 0x3c

    sub-int v28, v8, v14

    mul-int/lit8 v28, v28, 0x3c

    add-int v23, v23, v28

    sub-int v28, v9, v17

    add-int v23, v23, v28

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 2377
    .local v24, "stopDelayMs":J
    :goto_3
    const-string v23, "demoMode"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "stopDelayMs = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    add-long v18, v28, p1

    .line 2379
    .local v18, "playTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    add-long v26, v28, v24

    .line 2380
    .local v26, "stopTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoIntent:Landroid/app/PendingIntent;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStopVideoIntent:Landroid/app/PendingIntent;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2383
    cmp-long v23, v24, p1

    if-lez v23, :cond_3

    .line 2384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v23, v0

    const/16 v28, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoIntent:Landroid/app/PendingIntent;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move/from16 v1, v28

    move-wide/from16 v2, v18

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2386
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v23, v0

    const/16 v28, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStopVideoIntent:Landroid/app/PendingIntent;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move/from16 v1, v28

    move-wide/from16 v2, v26

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2350
    .end local v7    # "endHour":I
    .end local v8    # "endMin":I
    .end local v9    # "endSec":I
    .end local v11    # "isOpenPlayTime":Z
    .end local v18    # "playTime":J
    .end local v21    # "startHour":I
    .end local v22    # "startMin":I
    .end local v24    # "stopDelayMs":J
    .end local v26    # "stopTime":J
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 2358
    .restart local v11    # "isOpenPlayTime":Z
    :cond_5
    const-string v20, "0900"

    .line 2359
    const-string v6, "2200"

    goto/16 :goto_2

    .line 2372
    .restart local v7    # "endHour":I
    .restart local v8    # "endMin":I
    .restart local v9    # "endSec":I
    .restart local v21    # "startHour":I
    .restart local v22    # "startMin":I
    :cond_6
    if-lt v10, v7, :cond_7

    rsub-int/lit8 v23, v10, 0x17

    add-int v12, v23, v21

    .line 2373
    .local v12, "mHours":I
    :goto_4
    sub-int v13, v22, v14

    .line 2374
    .local v13, "mMins":I
    mul-int/lit8 v23, v12, 0x3c

    mul-int/lit8 v23, v23, 0x3c

    mul-int/lit8 v28, v13, 0x3c

    add-int v23, v23, v28

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 p1, v0

    .line 2375
    sub-int v23, v7, v21

    mul-int/lit8 v23, v23, 0x3c

    mul-int/lit8 v23, v23, 0x3c

    sub-int v28, v8, v22

    mul-int/lit8 v28, v28, 0x3c

    add-int v23, v23, v28

    sub-int v28, v9, v17

    add-int v23, v23, v28

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v24, v28, p1

    .restart local v24    # "stopDelayMs":J
    goto/16 :goto_3

    .line 2372
    .end local v12    # "mHours":I
    .end local v13    # "mMins":I
    .end local v24    # "stopDelayMs":J
    :cond_7
    sub-int v12, v21, v10

    goto :goto_4
.end method

.method private resetKeyguardDonePendingLocked()V
    .locals 2

    .prologue
    .line 1911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1912
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1913
    return-void
.end method

.method private resetStateLocked()V
    .locals 3

    .prologue
    .line 1312
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1313
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1314
    return-void
.end method

.method private sendUserPresentBroadcast()V
    .locals 8

    .prologue
    .line 1630
    monitor-enter p0

    .line 1631
    :try_start_0
    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    if-eqz v5, :cond_0

    .line 1632
    new-instance v0, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 1633
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1635
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 1636
    .local v4, "userHandles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1637
    .local v2, "ui":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1642
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userHandles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1640
    :cond_0
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    .line 1642
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1643
    return-void
.end method

.method private setShowingLocked(Z)V
    .locals 5
    .param p1, "showing"    # Z

    .prologue
    .line 1964
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eq p1, v3, :cond_1

    .line 1965
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1967
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1968
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1969
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v3, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1968
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1971
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catch_0
    move-exception v0

    .line 1972
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyguardViewMediator"

    const-string v4, "Failed to call onShowingStateChanged"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1974
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1975
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v3}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 1977
    :cond_1
    return-void
.end method

.method private setupLocked()V
    .locals 15

    .prologue
    const/high16 v14, 0x10000000

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 717
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 718
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWM:Landroid/view/IWindowManager;

    .line 719
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v9, "trust"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/trust/TrustManager;

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 721
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v9, "show keyguard"

    invoke-virtual {v6, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 722
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 724
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 725
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    iget-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz v6, :cond_0

    .line 730
    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_PLAYVIDEO"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 731
    const-string v6, "com.meizu.action.PASSWORD_HAVE_CLEARD"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 733
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 736
    new-instance v6, Lcom/android/keyguard/KeyguardDisplayManager;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/android/keyguard/KeyguardDisplayManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 738
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v9, "alarm"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 740
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 742
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 743
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 745
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFindPhoneCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;

    invoke-virtual {v6, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerFindPhoneCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneCallbacks;)V

    .line 746
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 748
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v6

    if-nez v6, :cond_b

    move v6, v7

    :goto_0
    invoke-direct {p0, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 749
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v6}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 751
    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v11, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 753
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 755
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 757
    new-instance v6, Landroid/media/SoundPool;

    invoke-direct {v6, v7, v7, v8}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 758
    const-string v6, "lock_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 759
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 760
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v6, v4, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 762
    :cond_1
    if-eqz v4, :cond_2

    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v6, :cond_3

    .line 763
    :cond_2
    const-string v6, "KeyguardViewMediator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to load lock sound from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_3
    const-string v6, "unlock_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 766
    if-eqz v4, :cond_4

    .line 767
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v6, v4, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 769
    :cond_4
    if-eqz v4, :cond_5

    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v6, :cond_6

    .line 770
    :cond_5
    const-string v6, "KeyguardViewMediator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to load unlock sound from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_6
    const-string v6, "trusted_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 773
    if-eqz v4, :cond_7

    .line 774
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v6, v4, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    .line 776
    :cond_7
    if-eqz v4, :cond_8

    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    if-nez v6, :cond_9

    .line 777
    :cond_8
    const-string v6, "KeyguardViewMediator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to load trusted sound from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x10e0005

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 782
    .local v2, "lockSoundDefaultAttenuation":I
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    int-to-float v6, v2

    const/high16 v9, 0x41a00000    # 20.0f

    div-float/2addr v6, v9

    float-to-double v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v6, v10

    iput v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 784
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v9, 0x10a002b

    invoke-static {v6, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    .line 790
    iget-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz v6, :cond_a

    .line 791
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v9, "playvideo screenoff"

    invoke-virtual {v6, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 792
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 793
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_PLAYVIDEO"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 794
    .local v3, "playIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v3, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoIntent:Landroid/app/PendingIntent;

    .line 795
    new-instance v6, Landroid/content/Intent;

    const-string v7, "mz.action.demo.keyguard.lock"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockIntent:Landroid/content/Intent;

    .line 796
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_STOPVIDEO"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 797
    .local v5, "stopIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v5, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStopVideoIntent:Landroid/app/PendingIntent;

    .line 799
    .end local v3    # "playIntent":Landroid/content/Intent;
    .end local v5    # "stopIntent":Landroid/content/Intent;
    :cond_a
    return-void

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "lockSoundDefaultAttenuation":I
    .end local v4    # "soundPath":Ljava/lang/String;
    :cond_b
    move v6, v8

    .line 748
    goto/16 :goto_0
.end method

.method private shouldPlayVideo()Z
    .locals 5

    .prologue
    .line 2390
    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard/STBYV"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2391
    .local v3, "rootDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_1

    .line 2392
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 2393
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 2394
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 2395
    aget-object v0, v1, v2

    .line 2396
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->checkIsVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2397
    const/4 v4, 0x1

    .line 2402
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :goto_1
    return v4

    .line 2394
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2402
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private shouldWaitForProvisioning()Z
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2469
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    sget v2, Lcom/flyme/internal/R$style;->Theme_Flyme_Light_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, #com.android.systemui:string@ok#t

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInvalidDialog:Landroid/app/AlertDialog;

    .line 2479
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInvalidDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 2480
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInvalidDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2481
    return-void
.end method

.method private showIntelligentHolsterView()V
    .locals 0

    .prologue
    .line 2258
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showHolster()V

    .line 2259
    return-void
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1354
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1355
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1356
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1357
    return-void
.end method

.method private updateActivityLockScreenState()V
    .locals 2

    .prologue
    .line 1710
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    :goto_1
    return-void

    .line 1710
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1711
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateInputRestricted()V
    .locals 1

    .prologue
    .line 1203
    monitor-enter p0

    .line 1204
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1205
    monitor-exit p0

    .line 1206
    return-void

    .line 1205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateInputRestrictedLocked()V
    .locals 6

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v2

    .line 1209
    .local v2, "inputRestricted":Z
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    if-eq v4, v2, :cond_0

    .line 1210
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    .line 1212
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1213
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1214
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v4, v2}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1216
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "KeyguardViewMediator"

    const-string v5, "Failed to call onDeviceProvisioned"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1220
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1323
    return-void
.end method

.method private wakeUpAndStartActivityAfterKeyguardExit()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x30

    const/16 v3, 0x1a

    .line 2417
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v1}, Lcom/meizu/keyguard/MzGestureHelper;->getLaunchGestureUnlocked()I

    move-result v0

    .line 2418
    .local v0, "gestureType":I
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    iget-boolean v1, v1, Lcom/meizu/keyguard/MzGestureHelper;->mUnlockAndWakeup:Z

    if-eqz v1, :cond_0

    .line 2419
    const-string v1, "KeyguardViewMediator"

    const-string v2, "start keyguard exit anination and wake up for slide up gesuter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2421
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2423
    :cond_0
    if-lez v0, :cond_2

    .line 2424
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2425
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2426
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2428
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    const-wide/16 v4, 0xf0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2436
    :cond_2
    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    .prologue
    .line 1980
    monitor-enter p0

    .line 1981
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1983
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V

    .line 1984
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V

    .line 1985
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1989
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1990
    return-void

    .line 1986
    :catch_0
    move-exception v0

    .line 1987
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onShowingStateChanged or onSimSecureStateChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1989
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1304
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0xd

    .line 1188
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1189
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1190
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1191
    return-void
.end method

.method public getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method public handleDismiss()V
    .locals 1

    .prologue
    .line 1297
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 1300
    :cond_0
    return-void
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 1199
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1149
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotOccluded()Z
    .locals 1

    .prologue
    .line 1156
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone(ZZ)V
    .locals 6
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1444
    const v3, 0x11170

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1445
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v5, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1446
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1447
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v3, v2

    .line 1445
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public onActivityDrawn()V
    .locals 2

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1947
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    .line 1918
    monitor-enter p0

    .line 1919
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    .line 1920
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    if-eqz v0, :cond_0

    .line 1921
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1923
    :cond_0
    monitor-exit p0

    .line 1924
    return-void

    .line 1923
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 1024
    monitor-enter p0

    .line 1025
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    .line 1028
    :cond_0
    monitor-exit p0

    .line 1029
    return-void

    .line 1028
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 1035
    monitor-enter p0

    .line 1036
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 1037
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1039
    :cond_0
    monitor-exit p0

    .line 1040
    return-void

    .line 1039
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScreenTurnedOff(I)V
    .locals 8
    .param p1, "why"    # I

    .prologue
    const/16 v6, 0x15

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 881
    monitor-enter p0

    .line 882
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 885
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 886
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 891
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_0
    move v1, v3

    .line 894
    .local v1, "lockImmediately":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 896
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    .line 899
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 903
    :goto_1
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 904
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v4, :cond_1

    .line 905
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 918
    :cond_1
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz v4, :cond_2

    .line 919
    const-string v4, "demoMode"

    const-string v5, "onScreenoff and playVideo and delay : 10000"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playVideoLocked(J)V

    .line 922
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 923
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurndOff(I)V

    .line 924
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    iput-boolean v2, v4, Lcom/meizu/keyguard/MzGestureHelper;->mUnlockAndWakeup:Z

    .line 925
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-virtual {v4, v2}, Lcom/meizu/keyguard/MzGestureHelper;->setLaunchAppUnlocked(I)V

    .line 927
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 928
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 929
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resetSmartLockFlag()V

    .line 930
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v2, :cond_3

    .line 931
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onBandHintFinish(Z)V

    .line 933
    :cond_3
    return-void

    .end local v1    # "lockImmediately":Z
    :cond_4
    move v1, v2

    .line 891
    goto :goto_0

    .line 900
    .restart local v1    # "lockImmediately":Z
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "KeyguardViewMediator"

    const-string v5, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 922
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lockImmediately":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 907
    .restart local v1    # "lockImmediately":Z
    :cond_5
    :try_start_4
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v4, :cond_6

    .line 908
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_2

    .line 909
    :cond_6
    const/4 v4, 0x3

    if-eq p1, v4, :cond_7

    const/4 v4, 0x2

    if-ne p1, v4, :cond_8

    if-nez v1, :cond_8

    .line 911
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    goto :goto_2

    .line 913
    :cond_8
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 990
    monitor-enter p0

    .line 991
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 992
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 994
    if-eqz p1, :cond_0

    .line 995
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 997
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOn()V

    .line 999
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 1003
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->DEMO_MODE_ENABLE:Z

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPlayVideoIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1006
    const-string v0, "demoMode"

    const-string v1, "onScreenoOn and remove playIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_1
    return-void

    .line 997
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    .line 830
    monitor-enter p0

    .line 832
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 833
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 844
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 852
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 853
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 857
    return-void

    .line 849
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    goto :goto_0

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 2
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "statusBarWindowManager"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p4, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 1929
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 1930
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    if-eqz v0, :cond_0

    .line 1931
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getHolsterStatusBarView()Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    .line 1932
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->addHolsterStatusBarView(Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;)V

    .line 1934
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1936
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 1382
    return-void
.end method

.method public setFlashlightController(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p1, "flashlightController"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 2181
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 2182
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 1048
    monitor-enter p0

    .line 1051
    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1052
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Not allow third part app to disable keyguard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    monitor-exit p0

    .line 1108
    :goto_0
    return-void

    .line 1056
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1058
    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_3

    .line 1059
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v1, :cond_1

    .line 1063
    monitor-exit p0

    goto :goto_0

    .line 1107
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1069
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1070
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1071
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 1107
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 1072
    :cond_3
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_2

    .line 1076
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1077
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1079
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 1082
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1086
    :goto_2
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1087
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_1

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1089
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1094
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1095
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1097
    :goto_3
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 1099
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1100
    :catch_1
    move-exception v0

    .line 1101
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public setOccluded(Z)V
    .locals 5
    .param p1, "isOccluded"    # Z

    .prologue
    const/16 v4, 0xc

    const/4 v2, 0x0

    .line 1164
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1165
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1166
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1167
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 1165
    goto :goto_0
.end method

.method public declared-synchronized showHolster()V
    .locals 10

    .prologue
    .line 2265
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    if-nez v1, :cond_0

    .line 2266
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 2268
    .local v9, "wm":Landroid/view/WindowManager;
    const v4, 0x4410900

    .line 2279
    .local v4, "flags":I
    const/4 v7, -0x1

    .line 2281
    .local v7, "stretch":I
    const/16 v8, 0x7f2

    .line 2282
    .local v8, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7f2

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2284
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2285
    const v1, #com.android.systemui:style@Animation.HolsterScreen#t

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2286
    const v1, 0x1ffffff

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    .line 2289
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2290
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2297
    const-string v1, "holster"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2301
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2302
    const-wide/16 v2, 0x1388

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2303
    new-instance v1, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    .line 2304
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v6, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2307
    .local v6, "lp1":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-interface {v9, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2308
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-interface {v9, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2311
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v6    # "lp1":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "stretch":I
    .end local v8    # "type":I
    .end local v9    # "wm":Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    if-nez v1, :cond_1

    .line 2312
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v1, :cond_1

    .line 2313
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getHolsterStatusBarView()Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    .line 2314
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;->setKeyguardIntelligentHolsterView(Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;)V

    .line 2315
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusBarView:Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->addHolsterStatusBarView(Lcom/android/systemui/keyguard/holster/HolsterStatusBarView;)V

    .line 2318
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->setVisibility(I)V

    .line 2319
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->show()V

    .line 2321
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterView:Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/holster/KeyguardIntelligentHolsterView;->setColor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2322
    monitor-exit p0

    return-void

    .line 2265
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public start()V
    .locals 4

    .prologue
    .line 803
    monitor-enter p0

    .line 804
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setupLocked()V

    .line 805
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    const-class v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 807
    const-string v2, "gesture_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IGestureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGestureManager;

    move-result-object v1

    .line 810
    .local v1, "gestureManager":Landroid/view/IGestureManager;
    if-eqz v1, :cond_0

    .line 811
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$GestureCallback;

    const-string v3, "KeyguardViewmediator"

    invoke-interface {v1, v2, v3}, Landroid/view/IGestureManager;->registeCallback(Landroid/view/IGestureCallback;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 819
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/keyguard/MzGestureHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/MzGestureHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGestureHelper:Lcom/meizu/keyguard/MzGestureHelper;

    .line 821
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #com.android.systemui:dimen@holster_mode_statusbar_padding#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHolsterStatusbarPadding:I

    .line 822
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mThemeChange:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

    invoke-virtual {v2, v3}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->registerThemeChange(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;)V

    .line 823
    return-void

    .line 805
    .end local v1    # "gestureManager":Landroid/view/IGestureManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 813
    .restart local v1    # "gestureManager":Landroid/view/IGestureManager;
    :cond_0
    :try_start_3
    const-string v2, "GestureManager"

    const-string v3, "can not get gesture service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "GestureManager"

    const-string v3, "IGestureManager threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 1940
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x12

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJLcom/android/systemui/keyguard/KeyguardViewMediator$1;)V

    invoke-virtual {v7, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1942
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1943
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 714
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 1114
    monitor-enter p0

    .line 1116
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1120
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1145
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1146
    return-void

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1145
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1124
    :cond_0
    :try_start_3
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v1, :cond_1

    .line 1128
    const-string v1, "KeyguardViewMediator"

    const-string v2, "verifyUnlock called when not externally disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1130
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1131
    :catch_1
    move-exception v0

    .line 1132
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1134
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_2

    .line 1137
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1138
    :catch_2
    move-exception v0

    .line 1139
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1142
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1143
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method

.method public wakeUp()V
    .locals 4

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 2059
    const-string v0, "KeyguardViewMediator"

    const-string v1, "wakeUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    return-void
.end method

# hxs modify begin
.method public isOccluded()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    return v0
.end method

.method public setFingerprintFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFP_flag:Z

    return-void
.end method
# hxs modify end
