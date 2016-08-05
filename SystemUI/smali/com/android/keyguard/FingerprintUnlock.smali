.class public Lcom/android/keyguard/FingerprintUnlock;
.super Ljava/lang/Object;
.source "FingerprintUnlock.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/keyguard/BiometricSensorUnlock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;,
        Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;
    }
.end annotation


# static fields
.field private static final ACTION_FINGERPRINT_PRE_UNLOCK:Ljava/lang/String; = "action_fingerprint_pre_unlock"

.field private static final TAG:Ljava/lang/String; = "FPCUnlock"

.field private static instance:Lcom/android/keyguard/FingerprintUnlock;


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final MSG_CANCEL:I

.field private final MSG_EXPOSE_FALLBACK:I

.field private final MSG_HIDE_VIEW:I

.field private final MSG_POKE_WAKELOCK:I

.field private final MSG_REPORT_FAILED_ATTEMPT:I

.field private final MSG_REPROT_FINGER_DOWN:I

.field private final MSG_SERVICE_CONNECTED:I

.field private final MSG_SERVICE_DISCONNECTED:I

.field private final MSG_SHOW_VIEW:I

.field private final MSG_UNLOCK:I

.field private final MSG_UNREGITER_SENSOR:I

.field private volatile attempt:I

.field private hasRegisterCallback:Z

.field isPocketMode:Z

.field private isPreUnlock:Z

.field isRegisterFlag:Z

.field private leftTime:J

.field mBeginTime:J

.field private mBoundToService:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field mEventListener:Landroid/hardware/SensorEventListener;

.field private final mFingerUnlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field private mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPM:Landroid/os/PowerManager;

.field mProximity:Landroid/hardware/Sensor;

.field mSensorManager:Landroid/hardware/SensorManager;

.field private mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

.field private mTimer:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;

.field private mTryAgainTime:J

.field private mVibrator:Landroid/os/Vibrator;

.field private mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private volatile timeout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/FingerprintUnlock;->instance:Lcom/android/keyguard/FingerprintUnlock;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mIsRunning:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mBoundToService:Z

    .line 71
    iput v2, p0, Lcom/android/keyguard/FingerprintUnlock;->MSG_SHOW_VIEW:I

    .line 72
    iput v3, p0, Lcom/android/keyguard/FingerprintUnlock;->MSG_HIDE_VIEW:I

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/FingerprintUnlock;->MSG_SERVICE_CONNECTED:I

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/FingerprintUnlock;->MSG_SERVICE_DISCONNECTED:I

    .line 75
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/FingerprintUnlock;->MSG_UNLOCK:I

    .line 76
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/FingerprintUnlock;->MSG_CANCEL:I

    .line 77
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/keyguard/FingerprintUnlock;->MSG_REPORT_FAILED_ATTEMPT:I

    .line 78
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/keyguard/FingerprintUnlock;->MSG_EXPOSE_FALLBACK:I

    .line 79
    iput v4, p0, Lcom/android/keyguard/FingerprintUnlock;->MSG_POKE_WAKELOCK:I

    .line 80
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/keyguard/FingerprintUnlock;->MSG_REPROT_FINGER_DOWN:I

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/keyguard/FingerprintUnlock;->MSG_UNREGITER_SENSOR:I

    .line 83
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/keyguard/FingerprintUnlock;->BACKUP_LOCK_TIMEOUT:I

    .line 86
    iput v2, p0, Lcom/android/keyguard/FingerprintUnlock;->attempt:I

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/FingerprintUnlock;->leftTime:J

    .line 93
    iput-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->hasRegisterCallback:Z

    .line 94
    iput-boolean v3, p0, Lcom/android/keyguard/FingerprintUnlock;->timeout:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->isPreUnlock:Z

    .line 99
    new-instance v0, Lcom/android/keyguard/FingerprintUnlock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/FingerprintUnlock$1;-><init>(Lcom/android/keyguard/FingerprintUnlock;)V

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mFingerUnlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 133
    new-instance v0, Lcom/android/keyguard/FingerprintUnlock$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/FingerprintUnlock$2;-><init>(Lcom/android/keyguard/FingerprintUnlock;)V

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mConnection:Landroid/content/ServiceConnection;

    .line 501
    iput-object v5, p0, Lcom/android/keyguard/FingerprintUnlock;->mSensorManager:Landroid/hardware/SensorManager;

    .line 502
    iput-object v5, p0, Lcom/android/keyguard/FingerprintUnlock;->mProximity:Landroid/hardware/Sensor;

    .line 503
    iput-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->isPocketMode:Z

    .line 504
    iput-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->isRegisterFlag:Z

    .line 507
    new-instance v0, Lcom/android/keyguard/FingerprintUnlock$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/FingerprintUnlock$3;-><init>(Lcom/android/keyguard/FingerprintUnlock;)V

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mEventListener:Landroid/hardware/SensorEventListener;

    .line 166
    const-string v0, "FPCUnlock"

    const-string v1, "FingerprintUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    .line 168
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mPM:Landroid/os/PowerManager;

    .line 171
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mVibrator:Landroid/os/Vibrator;

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mSensorManager:Landroid/hardware/SensorManager;

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mProximity:Landroid/hardware/Sensor;

    .line 176
    return-void
.end method

.method static synthetic access$0(Lcom/android/keyguard/FingerprintUnlock;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/keyguard/FingerprintUnlock;Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    return-void
.end method

.method static synthetic access$2(Lcom/android/keyguard/FingerprintUnlock;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintUnlock;->diedCleanUp()V

    return-void
.end method

.method static synthetic access$3(Lcom/android/keyguard/FingerprintUnlock;)Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/keyguard/FingerprintUnlock;J)V
    .locals 1

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/android/keyguard/FingerprintUnlock;->leftTime:J

    return-void
.end method

.method static synthetic access$5(Lcom/android/keyguard/FingerprintUnlock;)J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/android/keyguard/FingerprintUnlock;->leftTime:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/android/keyguard/FingerprintUnlock;Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/keyguard/FingerprintUnlock;->timeout:Z

    return-void
.end method

.method static synthetic access$7(Lcom/android/keyguard/FingerprintUnlock;I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/android/keyguard/FingerprintUnlock;->attempt:I

    return-void
.end method

.method static synthetic access$8(Lcom/android/keyguard/FingerprintUnlock;Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock;->mTimer:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;

    return-void
.end method

.method private diedCleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    const-string v0, "FPCUnlock"

    const-string v1, "handleServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iput-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mBoundToService:Z

    .line 236
    iput-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mIsRunning:Z

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    .line 238
    iput-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->hasRegisterCallback:Z

    .line 239
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintUnlock;->endTimer()V

    .line 240
    return-void
.end method

.method private endTimer()V
    .locals 2

    .prologue
    .line 731
    const-string v0, "FPCUnlock"

    const-string v1, "endTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mTimer:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mTimer:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;

    invoke-virtual {v0}, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;->cancel()V

    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/FingerprintUnlock;->timeout:Z

    .line 735
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/FingerprintUnlock;->attempt:I

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mTimer:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;

    .line 738
    :cond_0
    return-void
.end method

.method private excuteViverate()V
    .locals 4

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 744
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/FingerprintUnlock;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    sget-object v0, Lcom/android/keyguard/FingerprintUnlock;->instance:Lcom/android/keyguard/FingerprintUnlock;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/android/keyguard/FingerprintUnlock;

    invoke-direct {v0, p0}, Lcom/android/keyguard/FingerprintUnlock;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/FingerprintUnlock;->instance:Lcom/android/keyguard/FingerprintUnlock;

    .line 182
    :cond_0
    sget-object v0, Lcom/android/keyguard/FingerprintUnlock;->instance:Lcom/android/keyguard/FingerprintUnlock;

    return-object v0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    return-void

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 560
    const-string v5, "FPCUnlock"

    const-string v6, "showToast"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 562
    .local v4, "wmParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    .line 563
    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 562
    check-cast v2, Landroid/view/WindowManager;

    .line 564
    .local v2, "mWindowManager":Landroid/view/WindowManager;
    const/16 v5, 0x7da

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 566
    const/4 v5, 0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 567
    sget v5, Lcom/android/keyguard/R$anim;->blink:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 570
    const/16 v5, 0x8

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 571
    const/16 v5, 0x11

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 572
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 573
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 574
    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 575
    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 576
    iget-object v5, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 578
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/android/keyguard/R$layout;->redefine_toast:I

    const/4 v6, 0x0

    .line 577
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 579
    .local v1, "mFloatLayout":Landroid/widget/LinearLayout;
    sget v5, Lcom/android/keyguard/R$id;->toast_tv:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 580
    .local v3, "toastTv":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    invoke-interface {v2, v1, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 584
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 582
    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->measure(II)V

    .line 585
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/keyguard/FingerprintUnlock$4;

    invoke-direct {v6, p0, v1, v2}, Lcom/android/keyguard/FingerprintUnlock$4;-><init>(Lcom/android/keyguard/FingerprintUnlock;Landroid/widget/LinearLayout;Landroid/view/WindowManager;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 601
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 602
    return-void
.end method

.method private tryAgain()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 604
    const-string v0, "FPCUnlock"

    const-string v1, "tryAgain"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v0, "FPCUnlock"

    const-string v1, "the timeout is %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/keyguard/FingerprintUnlock;->timeout:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-boolean v0, p0, Lcom/android/keyguard/FingerprintUnlock;->timeout:Z

    if-eqz v0, :cond_1

    .line 607
    iput-boolean v4, p0, Lcom/android/keyguard/FingerprintUnlock;->timeout:Z

    .line 608
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/keyguard/FingerprintUnlock;->leftTime:J

    .line 609
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mTimer:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;-><init>(Lcom/android/keyguard/FingerprintUnlock;JJ)V

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mTimer:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mTimer:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;

    invoke-virtual {v0}, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;->start()Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;

    .line 614
    :cond_1
    return-void
.end method

.method private wakePhone()V
    .locals 4

    .prologue
    .line 554
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock;->mPM:Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock;->mPM:Landroid/os/PowerManager;

    const v2, 0x1000000a

    const-string v3, "TAG"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 556
    .local v0, "mWakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 558
    .end local v0    # "mWakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 287
    :goto_0
    :pswitch_0
    const-string v0, "FPCUnlock"

    const-string v1, "Unhandled message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x0

    .line 290
    :goto_1
    return v0

    .line 263
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock;->handleServiceConnected()V

    .line 290
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 266
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock;->handleServiceDisconnected()V

    goto :goto_2

    .line 269
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/FingerprintUnlock;->handleUnlock(I)V

    goto :goto_2

    .line 273
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock;->handleReportFailedAttempt()V

    goto :goto_2

    .line 277
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/FingerprintUnlock;->handlePokeWakelock(I)V

    goto :goto_2

    .line 281
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock;->handleUnRegisterSensor()V

    goto :goto_2

    .line 285
    :pswitch_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/FingerprintUnlock;->handlePreUnlock(I)V

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method handlePokeWakelock(I)V
    .locals 1
    .param p1, "millis"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->userActivity()V

    .line 544
    return-void
.end method

.method handlePreUnlock(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 294
    const-string v1, "FPCUnlock"

    const-string v2, "handlePreUnlock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintUnlock;->excuteViverate()V

    .line 297
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 298
    .local v0, "currentUserId":I
    if-ne p1, v0, :cond_0

    .line 299
    const-string v1, "FPCUnlock"

    const-string v2, "handlePreUnlock  userId==currentUserId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v1, v3}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->dismiss(Z)Z

    .line 301
    invoke-virtual {p0, v3}, Lcom/android/keyguard/FingerprintUnlock;->handleUnregisterCallback(Z)V

    .line 302
    iput-boolean v3, p0, Lcom/android/keyguard/FingerprintUnlock;->isPreUnlock:Z

    .line 308
    :goto_0
    return-void

    .line 304
    :cond_0
    const-string v1, "FPCUnlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring preunlock for authenticated user ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 305
    const-string v3, ") because the current user is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleReconnected()V
    .locals 2

    .prologue
    .line 361
    const-string v0, "FPCUnlock"

    const-string v1, "handleServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/FingerprintUnlock;->handleUnregisterCallback(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock;->handleRegisterCallback()V

    .line 364
    return-void
.end method

.method public declared-synchronized handleRegisterCallback()V
    .locals 4

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    const-string v1, "FPCUnlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleRegisterCallback mService="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/keyguard/FingerprintUnlock;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hasRegisterCallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/FingerprintUnlock;->hasRegisterCallback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    iget-boolean v1, p0, Lcom/android/keyguard/FingerprintUnlock;->hasRegisterCallback:Z

    if-nez v1, :cond_0

    .line 316
    const-string v1, "FPCUnlock"

    const-string v2, "FingerUnlock--registerCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    iget-object v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mFingerUnlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    invoke-interface {v1, v2}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;->registerCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/FingerprintUnlock;->hasRegisterCallback:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 322
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock;->start()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 326
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/FingerprintUnlock;->hasRegisterCallback:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 312
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method handleReportFailedAttempt()V
    .locals 7

    .prologue
    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 449
    iget-boolean v0, p0, Lcom/android/keyguard/FingerprintUnlock;->isPreUnlock:Z

    if-eqz v0, :cond_0

    .line 450
    iput-boolean v6, p0, Lcom/android/keyguard/FingerprintUnlock;->isPreUnlock:Z

    .line 451
    invoke-virtual {p0, v4}, Lcom/android/keyguard/FingerprintUnlock;->handleUnregisterCallback(Z)V

    .line 499
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 455
    const-string v0, "FPCUnlock"

    const-string v1, "handleReportFailedAttempt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock;->isFingerprintLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    const-string v0, "FPCUnlock"

    const-string v1, "fingerprint is lock, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    const-string v0, "FPCUnlock"

    const-string v1, "Failed--isOccluded--- true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mPM:Landroid/os/PowerManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 466
    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock;->isOtherAppForeground()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    const-string v0, "FPCUnlock"

    const-string v1, "Other App Foreground --- return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :cond_3
    iget v0, p0, Lcom/android/keyguard/FingerprintUnlock;->attempt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/FingerprintUnlock;->attempt:I

    .line 472
    const-string v0, "FPCUnlock"

    const-string v1, "the attempt is %d"

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/keyguard/FingerprintUnlock;->attempt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget v0, p0, Lcom/android/keyguard/FingerprintUnlock;->attempt:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_4

    .line 474
    const-string v0, "FPCUnlock"

    const-string v1, "removeStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    #invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->removeStatusBar()V

    .line 476
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    #sget v1, Lcom/android/keyguard/R$string;->fingureprint_input_error:I

    #invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #move-result-object v0

    #invoke-direct {p0, v0}, Lcom/android/keyguard/FingerprintUnlock;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :cond_4
    iget v0, p0, Lcom/android/keyguard/FingerprintUnlock;->attempt:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_5

    .line 478
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintUnlock;->tryAgain()V

    .line 479
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    #sget v1, Lcom/android/keyguard/R$string;->fingureprint_try_again:I

    #new-array v2, v4, [Ljava/lang/Object;

    #iget-wide v4, p0, Lcom/android/keyguard/FingerprintUnlock;->leftTime:J

    #invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #move-result-object v3

    #aput-object v3, v2, v6

    #invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #move-result-object v0

    #invoke-direct {p0, v0}, Lcom/android/keyguard/FingerprintUnlock;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 482
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    #sget v1, Lcom/android/keyguard/R$string;->fingureprint_input_error:I

    #invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #move-result-object v0

    #invoke-direct {p0, v0}, Lcom/android/keyguard/FingerprintUnlock;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 486
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mProximity:Landroid/hardware/Sensor;

    if-nez v0, :cond_7

    .line 487
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintUnlock;->excuteViverate()V

    goto/16 :goto_0

    .line 489
    :cond_7
    iget-boolean v0, p0, Lcom/android/keyguard/FingerprintUnlock;->isRegisterFlag:Z

    if-nez v0, :cond_8

    .line 490
    const-string v0, "FPCUnlock"

    const-string v1, "registerListener ---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock;->mEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mProximity:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 492
    iput-boolean v4, p0, Lcom/android/keyguard/FingerprintUnlock;->isRegisterFlag:Z

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mBeginTime:J

    .line 495
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method handleServiceConnected()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock;->handleRegisterCallback()V

    .line 349
    :cond_0
    return-void
.end method

.method handleServiceDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 352
    const-string v0, "FPCUnlock"

    const-string v1, "handleServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    .line 354
    iput-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mBoundToService:Z

    .line 355
    iput-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mIsRunning:Z

    .line 356
    iput-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->hasRegisterCallback:Z

    .line 357
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintUnlock;->endTimer()V

    .line 358
    return-void
.end method

.method handleUnRegisterSensor()V
    .locals 3

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/android/keyguard/FingerprintUnlock;->isRegisterFlag:Z

    if-nez v0, :cond_1

    .line 528
    const-string v0, "FPCUnlock"

    const-string v1, "already unRegister, just return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    const-string v0, "FPCUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UnRegisterSensor ===isPocketMode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->isPocketMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock;->mEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mProximity:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/FingerprintUnlock;->isRegisterFlag:Z

    .line 534
    iget-boolean v0, p0, Lcom/android/keyguard/FingerprintUnlock;->isPocketMode:Z

    if-nez v0, :cond_0

    .line 537
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintUnlock;->excuteViverate()V

    goto :goto_0
.end method

.method handleUnlock(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 366
    const-string v2, "FPCUnlock"

    const-string v3, "handleUnlock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock;->isFingerprintLock()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    const-string v2, "FPCUnlock"

    const-string v3, "fingerprint is lock, return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->isPreUnlock:Z

    if-eqz v2, :cond_1

    .line 373
    iput-boolean v8, p0, Lcom/android/keyguard/FingerprintUnlock;->isPreUnlock:Z

    .line 374
    invoke-virtual {p0, v5}, Lcom/android/keyguard/FingerprintUnlock;->handleUnregisterCallback(Z)V

    goto :goto_0

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v2}, Lcom/android/keyguard/ViewMediatorCallback;->isOccluded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    const-string v2, "FPCUnlock"

    const-string v3, "Unlock--isOccluded--- true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 383
    .local v0, "currentUserId":I
    iget v2, p0, Lcom/android/keyguard/FingerprintUnlock;->attempt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/FingerprintUnlock;->attempt:I

    .line 384
    const-string v2, "FPCUnlock"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "attempt="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/keyguard/FingerprintUnlock;->attempt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-ne p1, v0, :cond_5

    .line 386
    iget v2, p0, Lcom/android/keyguard/FingerprintUnlock;->attempt:I

    const/4 v3, 0x6

    if-le v2, v3, :cond_3

    .line 388
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintUnlock;->tryAgain()V

    .line 389
    iget-object v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    #sget v3, Lcom/android/keyguard/R$string;->fingureprint_try_again:I

    #new-array v4, v5, [Ljava/lang/Object;

    #iget-wide v6, p0, Lcom/android/keyguard/FingerprintUnlock;->leftTime:J

    #invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #move-result-object v5

    #aput-object v5, v4, v8

    #invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #move-result-object v2

    #invoke-direct {p0, v2}, Lcom/android/keyguard/FingerprintUnlock;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_3
    iput v8, p0, Lcom/android/keyguard/FingerprintUnlock;->attempt:I

    .line 396
    iget-object v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->dismiss(Z)Z

    move-result v1

    .line 397
    .local v1, "result":Z
    if-nez v1, :cond_4

    .line 398
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintUnlock;->excuteViverate()V

    .line 399
    const-string v2, "FPCUnlock"

    const-string v3, "unlock fail, reconnected fingure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    #sget v3, Lcom/android/keyguard/R$string;->fingureprint_not_work:I

    #invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #move-result-object v2

    #invoke-direct {p0, v2}, Lcom/android/keyguard/FingerprintUnlock;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v2, v5}, Lcom/android/keyguard/ViewMediatorCallback;->setFingerprintFlag(Z)V

    .line 407
    invoke-virtual {p0, v5}, Lcom/android/keyguard/FingerprintUnlock;->handleUnregisterCallback(Z)V

    goto/16 :goto_0

    .line 411
    .end local v1    # "result":Z
    :cond_5
    const-string v2, "FPCUnlock"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring unlock for authenticated user ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 412
    const-string v4, ") because the current user is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public declared-synchronized handleUnregisterCallback(Z)V
    .locals 4
    .param p1, "timer"    # Z

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    const-string v1, "FPCUnlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleUnregisterCallback mService="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/keyguard/FingerprintUnlock;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hasRegisterCallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/FingerprintUnlock;->hasRegisterCallback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/FingerprintUnlock;->hasRegisterCallback:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/FingerprintUnlock;->isPreUnlock:Z

    if-nez v1, :cond_0

    .line 333
    const-string v1, "FPCUnlock"

    const-string v2, "FingerUnlock--unregisterCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock;->mService:Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;

    iget-object v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mFingerUnlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    invoke-interface {v1, v2}, Lcom/android/fingerprints/keyguard/IFingerprintUnlockInterface;->unregisterCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V

    .line 335
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/FingerprintUnlock;->hasRegisterCallback:Z

    .line 336
    if-eqz p1, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintUnlock;->endTimer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 330
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 0
    .param p1, "biometricUnlockView"    # Landroid/view/View;

    .prologue
    .line 203
    return-void
.end method

.method public isFingerprintLock()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    iget-object v3, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 212
    const-string v4, "lock_fringerprint_flag"

    .line 211
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 213
    .local v0, "lock":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method isOtherAppForeground()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 419
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/FingerprintUnlock;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v4}, Lcom/android/keyguard/ViewMediatorCallback;->isOccluded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 420
    const-string v4, "FPCUnlock"

    const-string v6, "isOtherAppForeground --- keyguard is foreground = "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 445
    :goto_0
    return v4

    .line 424
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 425
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 426
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    .line 427
    goto :goto_0

    .line 430
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "topPackageName":Ljava/lang/String;
    if-nez v3, :cond_2

    move v4, v5

    .line 432
    goto :goto_0

    .line 435
    :cond_2
    const-string v4, "FPCUnlock"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isOtherAppForeground --- topPackageName = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v4, "com.zte.camera"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 437
    const-string v4, "com.android.dialer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v4, v6

    .line 438
    goto :goto_0

    .line 440
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "topPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "FPCUnlock"

    const-string v6, "isOtherAppForeground -Exception - "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 442
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v3    # "topPackageName":Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 445
    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mIsRunning:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    :goto_0
    return v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V
    .locals 0
    .param p1, "keyguardSecurityCallback"    # Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .line 187
    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 0
    .param p1, "viewMediatorCallback"    # Lcom/android/keyguard/ViewMediatorCallback;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 192
    return-void
.end method

.method public start()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 218
    const-string v3, "FPCUnlock"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "start"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/keyguard/FingerprintUnlock;->mBoundToService:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-boolean v3, p0, Lcom/android/keyguard/FingerprintUnlock;->mBoundToService:Z

    if-nez v3, :cond_0

    .line 220
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v1, "mIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.zte.fingerprints"

    const-string v4, "com.zte.fingerprint.main.FingerprintUnlockService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .local v0, "mComponentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 223
    iget-object v3, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    .line 224
    iget-object v4, p0, Lcom/android/keyguard/FingerprintUnlock;->mConnection:Landroid/content/ServiceConnection;

    .line 223
    invoke-virtual {v3, v1, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/FingerprintUnlock;->mBoundToService:Z

    .line 226
    iget-boolean v3, p0, Lcom/android/keyguard/FingerprintUnlock;->mBoundToService:Z

    if-nez v3, :cond_0

    .line 227
    const/4 v2, 0x0

    .line 231
    .end local v0    # "mComponentName":Landroid/content/ComponentName;
    .end local v1    # "mIntent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 230
    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mIsRunning:Z

    goto :goto_0
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public stopAndShowBackup()V
    .locals 0

    .prologue
    .line 550
    return-void
.end method
