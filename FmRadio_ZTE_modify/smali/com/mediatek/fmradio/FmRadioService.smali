.class public Lcom/mediatek/fmradio/FmRadioService;
.super Landroid/app/Service;
.source "FmRadioService.java"

# interfaces
.implements Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;,
        Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;,
        Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;,
        Lcom/mediatek/fmradio/FmRadioService$Record;,
        Lcom/mediatek/fmradio/FmRadioService$SdcardListener;,
        Lcom/mediatek/fmradio/FmRadioService$ServiceBinder;
    }
.end annotation


# static fields
.field public static final ACTION_FROMATVSERVICE_POWERUP:Ljava/lang/String; = "com.mediatek.app.mtv.POWER_ON"

.field public static final ACTION_TOATVSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.app.mtv.ACTION_REQUEST_SHUTDOWN"

.field public static final ACTION_TOFMSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

.field public static final ACTION_TOFMSERVICE_SAVEFAVOR:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SAVEFAVOR"

.field public static final ACTION_TOFMSERVICE_SEEKNEXT:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKNEXT"

.field public static final ACTION_TOFMSERVICE_SEEKPREV:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKPREV"

.field public static final ACTION_TOFMSERVICE_SHOWTOAST:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SHOWTOAST"

.field public static final ACTION_TOFMSERVICE_STARTSCAN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STARTSCAN"

.field public static final ACTION_TOFMSERVICE_STOPSCAN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STOPSCAN"

.field public static final ACTION_TOFMSERVICE_TUNESTATION:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_TUNESTATION"

.field public static final ACTION_TOFMTXSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

.field public static final ACTION_TOMUSICSERVICE_POWERDOWN:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final CURRENT_RX_ON:I = 0x0

.field private static final CURRENT_TX_ON:I = 0x1

.field private static final CURRENT_TX_SCAN:I = 0x2

.field private static final FM_FREQUENCY:Ljava/lang/String; = "frequency"

.field private static final FOR_PROPRIETARY:I = 0x1

.field private static final HEADSET_PLUG_IN:I = 0x1

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final OPTION:Ljava/lang/String; = "option"

.field private static final RDS_EVENT_AF:I = 0x80

.field private static final RDS_EVENT_LAST_RADIOTEXT:I = 0x40

.field private static final RDS_EVENT_PROGRAMNAME:I = 0x8

.field private static final RECODING_FILE_NAME:Ljava/lang/String; = "name"

.field private static final SECONDS_TO_WAIT_BEFORE_SHUT_FM_WHEN_HEADSET_PLUG_OUT:I = 0x3c

.field private static final SHORT_ANNTENNA_SUPPORT:Z

.field private static final SOUND_POWER_DOWN_MSG:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final TAG:Ljava/lang/String; = "FmRx/Service"

.field private static sActivityIsOnStop:Z

.field private static sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

.field private static sRecordingSdcard:Ljava/lang/String;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentStation:I

.field private mFmPlayer:Landroid/media/MediaPlayer;

.field mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

.field private mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

.field private mForcedUseForMedia:I

.field private mIsAFEnabled:Z

.field private mIsAudioFocusHeld:Z

.field private mIsDeviceOpen:Z

.field private mIsInRecordingMode:Z

.field private mIsMakePowerDown:Z

.field private mIsNativeScanning:Z

.field private mIsNativeSeeking:Z

.field private mIsPSRTEnabled:Z

.field private mIsPowerUp:Z

.field private mIsPowerUping:Z

.field private mIsRdsThreadExit:Z

.field private mIsScanning:Z

.field private mIsSeeking:Z

.field private mIsServiceInited:Z

.field private mIsSpeakerUsed:Z

.field private mIsStopScanCalled:Z

.field private mLRTextString:Ljava/lang/String;

.field private mModifiedRecordingName:Ljava/lang/String;

.field private mPSString:Ljava/lang/String;

.field private mPausedByTransientLossOfFocus:Z

.field private final mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mRdsThread:Ljava/lang/Thread;

.field private mRecordState:I

.field private mRecorderErrorType:I

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/fmradio/FmRadioService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteviews:Landroid/widget/RemoteViews;

.field private mSdcardListener:Landroid/content/BroadcastReceiver;

.field private mSdcardStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mStopRecordingLock:Ljava/lang/Object;

.field private mValueHeadSetPlug:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmShortAntennaSupport()Z

    move-result v0

    .line 130
    sput-boolean v0, Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z

    .line 164
    sput-object v1, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    .line 237
    sput-object v1, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    .line 239
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/fmradio/FmRadioService;->sActivityIsOnStop:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 148
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    .line 149
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    .line 150
    iput v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecordState:I

    .line 151
    iput v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecorderErrorType:I

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    .line 158
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mModifiedRecordingName:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    .line 162
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsInRecordingMode:Z

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    .line 172
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPSRTEnabled:Z

    .line 174
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAFEnabled:Z

    .line 176
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRdsThread:Ljava/lang/Thread;

    .line 178
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsRdsThreadExit:Z

    .line 182
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeScanning:Z

    .line 184
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z

    .line 186
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    .line 188
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSeeking:Z

    .line 190
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsStopScanCalled:Z

    .line 192
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    .line 194
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    .line 196
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    .line 198
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    .line 200
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsServiceInited:Z

    .line 203
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsMakePowerDown:Z

    .line 206
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    .line 207
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 208
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mActivityManager:Landroid/app/ActivityManager;

    .line 209
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    .line 210
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 212
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    .line 214
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mPausedByTransientLossOfFocus:Z

    .line 215
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    .line 217
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I

    .line 219
    new-instance v0, Lcom/mediatek/fmradio/FmRadioService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioService$ServiceBinder;-><init>(Lcom/mediatek/fmradio/FmRadioService;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mBinder:Landroid/os/IBinder;

    .line 221
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    .line 235
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mStopRecordingLock:Ljava/lang/Object;

    .line 240
    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 2173
    new-instance v0, Lcom/mediatek/fmradio/FmRadioService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioService$1;-><init>(Lcom/mediatek/fmradio/FmRadioService;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2261
    new-instance v0, Lcom/mediatek/fmradio/FmRadioService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioService$2;-><init>(Lcom/mediatek/fmradio/FmRadioService;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 86
    return-void
.end method

.method static synthetic access$0(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mediatek/fmradio/FmRadioService;Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$10(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    return-object v0
.end method

.method static synthetic access$11(Lcom/mediatek/fmradio/FmRadioService;I)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I

    return-void
.end method

.method static synthetic access$12(Lcom/mediatek/fmradio/FmRadioService;)I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I

    return v0
.end method

.method static synthetic access$13()Z
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z

    return v0
.end method

.method static synthetic access$14(Lcom/mediatek/fmradio/FmRadioService;I)I
    .locals 1

    .prologue
    .line 1290
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->switchAntenna(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lcom/mediatek/fmradio/FmRadioService;I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mForcedUseForMedia:I

    return-void
.end method

.method static synthetic access$16(Lcom/mediatek/fmradio/FmRadioService;Z)V
    .locals 0

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    return-void
.end method

.method static synthetic access$17(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2450
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$18(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->powerUpAutoIfNeed()V

    return-void
.end method

.method static synthetic access$19(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsServiceInited:Z

    return v0
.end method

.method static synthetic access$2(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$20(Lcom/mediatek/fmradio/FmRadioService;)I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$21(Lcom/mediatek/fmradio/FmRadioService;I)V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->handleBtConnectState(I)V

    return-void
.end method

.method static synthetic access$22(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    return v0
.end method

.method static synthetic access$23(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z

    return v0
.end method

.method static synthetic access$24(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    return v0
.end method

.method static synthetic access$25(Lcom/mediatek/fmradio/FmRadioService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 2028
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->updateSdcardStateMap(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$26(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2851
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->handlePowerUp(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$27(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 2835
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->handlePowerDown()V

    return-void
.end method

.method static synthetic access$28(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->powerDown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$29(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->closeDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    return v0
.end method

.method static synthetic access$30()Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    return-object v0
.end method

.method static synthetic access$31(Lcom/mediatek/fmradio/FmRadioService;)I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecordState:I

    return v0
.end method

.method static synthetic access$32(Lcom/mediatek/fmradio/FmRadioService;F)Z
    .locals 1

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->tuneStation(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$33(Lcom/mediatek/fmradio/FmRadioService;Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSeeking:Z

    return-void
.end method

.method static synthetic access$34(Lcom/mediatek/fmradio/FmRadioService;FZ)F
    .locals 1

    .prologue
    .line 969
    invoke-direct {p0, p1, p2}, Lcom/mediatek/fmradio/FmRadioService;->seekStation(FZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$35(Lcom/mediatek/fmradio/FmRadioService;Z)V
    .locals 0

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z

    return-void
.end method

.method static synthetic access$36(Lcom/mediatek/fmradio/FmRadioService;F)Z
    .locals 1

    .prologue
    .line 661
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->powerUpFm(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$37(Lcom/mediatek/fmradio/FmRadioService;)[I
    .locals 1

    .prologue
    .line 995
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->startScan()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$38(Lcom/mediatek/fmradio/FmRadioService;[I)[I
    .locals 1

    .prologue
    .line 2516
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->insertSearchedStation([I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$39(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    return v0
.end method

.method static synthetic access$4(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    return v0
.end method

.method static synthetic access$40(Lcom/mediatek/fmradio/FmRadioService;I)V
    .locals 0

    .prologue
    .line 2331
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->updateAudioFocus(I)V

    return-void
.end method

.method static synthetic access$41(Lcom/mediatek/fmradio/FmRadioService;Z)I
    .locals 1

    .prologue
    .line 1094
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$42(Lcom/mediatek/fmradio/FmRadioService;)I
    .locals 1

    .prologue
    .line 1141
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->activeAF()I

    move-result v0

    return v0
.end method

.method static synthetic access$43(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 1309
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->startRecording()V

    return-void
.end method

.method static synthetic access$44(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 1362
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$45(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 1385
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->startPlayback()Z

    move-result v0

    return v0
.end method

.method static synthetic access$46(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 1417
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopPlayback()V

    return-void
.end method

.method static synthetic access$47(Lcom/mediatek/fmradio/FmRadioService;Z)V
    .locals 0

    .prologue
    .line 1489
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->setRecordingMode(Z)V

    return-void
.end method

.method static synthetic access$48(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1445
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->saveRecording(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$49(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 3119
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->startShuttingDown()V

    return-void
.end method

.method static synthetic access$5(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$50(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsRdsThreadExit:Z

    return v0
.end method

.method static synthetic access$51(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1833
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->setPS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$52(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1852
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->setLRText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$53(Lcom/mediatek/fmradio/FmRadioService;)Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSeeking:Z

    return v0
.end method

.method static synthetic access$6(Lcom/mediatek/fmradio/FmRadioService;Z)I
    .locals 1

    .prologue
    .line 1172
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 1669
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->exitFm()V

    return-void
.end method

.method static synthetic access$8(Lcom/mediatek/fmradio/FmRadioService;I)V
    .locals 0

    .prologue
    .line 2155
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->stopFmFocusLoss(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/mediatek/fmradio/FmRadioService;I)V
    .locals 0

    .prologue
    .line 2314
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->updateAudioFocusAync(I)V

    return-void
.end method

.method private activeAF()I
    .locals 4

    .prologue
    .line 1142
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 1143
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/4 v0, -0x1

    .line 1149
    :goto_0
    return v0

    .line 1147
    :cond_0
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->activeAf()S

    move-result v0

    .line 1148
    .local v0, "frequency":I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FmRadioService.activeAF: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeToEarphoneMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 501
    invoke-virtual {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 503
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 504
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    .line 505
    const v2, 0x101000

    .line 504
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    const-string v1, "key_is_speaker_mode"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 508
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 509
    return-void
.end method

.method private checkAfterPlayback()V
    .locals 2

    .prologue
    .line 2129
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->isHeadSetIn()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z

    if-eqz v0, :cond_2

    .line 2131
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "checkAfterPlayback:eaphone is in,need resume fm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_1

    .line 2133
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->resumeFmAudio()V

    .line 2134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 2144
    :goto_0
    return-void

    .line 2136
    :cond_1
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->powerUpAsync(F)V

    goto :goto_0

    .line 2140
    :cond_2
    const-string v0, "FmRx/Service"

    .line 2141
    const-string v1, "checkAfterPlayback:earphone is out, need show plug in earphone tips"

    .line 2140
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->switchAntennaAsync(I)V

    goto :goto_0
.end method

.method private closeDevice()Z
    .locals 4

    .prologue
    .line 618
    const-string v1, "FmRx/Service"

    const-string v2, ">>> FmRadioService.closeDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "isDeviceClose":Z
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    if-eqz v1, :cond_0

    .line 621
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->closeDev()Z

    move-result v0

    .line 622
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    .line 624
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.closeDevice: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 628
    return v0

    .line 622
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private enableFmAudio(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1873
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.enableFmAudio: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_1

    .line 1875
    :cond_0
    const-string v1, "FmRx/Service"

    const-string v2, "mFMPlayer is null in Service.enableFmAudio"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :goto_0
    return-void

    .line 1880
    :cond_1
    if-nez p1, :cond_4

    .line 1881
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1882
    const-string v1, "FmRx/Service"

    const-string v2, "warning: FM audio is already disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1896
    :catch_0
    move-exception v0

    .line 1897
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "FmRx/Service"

    const-string v2, "Exception: Cannot call MediaPlayer isPlaying."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1901
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 1902
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmSuspendSupport()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1903
    const-string v1, "FmRx/Service"

    const-string v2, "support FM suspend"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->startWithoutWakelock()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1914
    :goto_1
    const-string v1, "FmRx/Service"

    const-string v2, "Start FM audio."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    const-string v1, "FmRx/Service"

    const-string v2, "<<< FmRadioService.enableFmAudio"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1886
    :cond_3
    :try_start_2
    const-string v1, "FmRx/Service"

    const-string v2, "call MediaPlayer.stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 1888
    const-string v1, "FmRx/Service"

    const-string v2, "stop FM audio."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1892
    :cond_4
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1893
    const-string v1, "FmRx/Service"

    const-string v2, "warning: FM audio is already enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1906
    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1908
    :catch_1
    move-exception v0

    .line 1909
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "FmRx/Service"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1910
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1911
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "FmRx/Service"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private exitFm()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 1670
    const-string v1, "FmRx/Service"

    const-string v2, "service.exitFm start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    .line 1673
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v1, :cond_1

    .line 1674
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mStopRecordingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1675
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRecorder;->getState()I

    move-result v0

    .line 1676
    .local v0, "fmState":I
    const/4 v1, 0x7

    if-ne v1, v0, :cond_4

    .line 1677
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRecorder;->stopPlayback()V

    .line 1678
    const-string v1, "FmRx/Service"

    const-string v3, "Stop playback FMRecorder."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/mediatek/fmradio/FmRecorder;->addCurrentRecordingToDb(Landroid/content/Context;)V

    .line 1674
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1696
    .end local v0    # "fmState":I
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeScanning:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    if-eqz v1, :cond_3

    .line 1697
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopScan()Z

    .line 1700
    :cond_3
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1701
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v1, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1702
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v1, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1703
    const-string v1, "FmRx/Service"

    const-string v2, "service.exitFm end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    return-void

    .line 1679
    .restart local v0    # "fmState":I
    :cond_4
    const/4 v1, 0x6

    if-ne v1, v0, :cond_0

    .line 1680
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v1, p0}, Lcom/mediatek/fmradio/FmRecorder;->stopRecording(Landroid/content/Context;)V

    .line 1681
    const-string v1, "FmRx/Service"

    const-string v3, "stop Recording."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1674
    .end local v0    # "fmState":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getRecordingSdcard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2931
    sget-object v0, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    return-object v0
.end method

.method private getRemoteViews()Landroid/widget/RemoteViews;
    .locals 9

    .prologue
    const v8, 0x7f0600a2

    const v7, 0x7f0600a3

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1938
    const-string v2, "FmRx/Service"

    const-string v3, "FmRadioService.getRemoteViews"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    if-nez v2, :cond_0

    .line 1940
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030044

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 1942
    :cond_0
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    const v3, 0x7f060011

    .line 1943
    const v4, 0x7f0201de

    .line 1942
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1944
    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v2, :cond_1

    .line 1945
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 1946
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v4}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1945
    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1953
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKPREV"

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1954
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1956
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    const v3, 0x7f0600a6

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1959
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKNEXT"

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1960
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1962
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    const v3, 0x7f0600a4

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1965
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1966
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1968
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    const v3, 0x7f0600a5

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1971
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SAVEFAVOR"

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1972
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1974
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v7, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1977
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v2, v3}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1978
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 1979
    const v3, 0x7f0201e7

    .line 1978
    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1984
    :goto_1
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    return-object v2

    .line 1948
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    const-string v3, ""

    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 1981
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRemoteviews:Landroid/widget/RemoteViews;

    .line 1982
    const v3, 0x7f0201e6

    .line 1981
    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private handleBtConnectState(I)V
    .locals 2
    .param p1, "connectState"    # I

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 481
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 494
    :pswitch_0
    const-string v0, "FmRx/Service"

    const-string v1, "invalid fm over bt connect state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 485
    :pswitch_1
    const-string v0, "FmRx/Service"

    const-string v1, "handleBtConnectState bt connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->changeToEarphoneMode()V

    goto :goto_0

    .line 490
    :pswitch_2
    const-string v0, "FmRx/Service"

    const-string v1, "handleBtConnectState bt disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->changeToEarphoneMode()V

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handlePowerDown()V
    .locals 4

    .prologue
    .line 2837
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->powerDown()Z

    move-result v1

    .line 2838
    .local v1, "isPowerdown":Z
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 2839
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "callback_flag"

    .line 2840
    const/16 v3, 0xa

    .line 2839
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2841
    const-string v2, "key_is_power_down"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2842
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2843
    return-void
.end method

.method private handlePowerUp(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x29

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 2852
    const/4 v1, 0x0

    .line 2853
    .local v1, "isPowerup":Z
    const/4 v2, 0x1

    .line 2854
    .local v2, "isSwitch":Z
    const-string v3, "FmRx/Service"

    const-string v4, "service handler power up start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    const-string v3, "frequency"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2857
    .local v0, "curFrequency":F
    sget-boolean v3, Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->isAntennaAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2858
    const-string v3, "FmRx/Service"

    const-string v4, "call back to activity, earphone is not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    iput-boolean v6, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    .line 2860
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2861
    invoke-virtual {v3, v8}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2862
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2864
    const-wide/32 v4, 0xea60

    .line 2862
    invoke-virtual {v3, v8, v4, v5}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2866
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 2867
    .restart local p1    # "bundle":Landroid/os/Bundle;
    const-string v3, "callback_flag"

    .line 2868
    const/4 v4, 0x4

    .line 2867
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2869
    const-string v3, "key_is_switch_anntenna"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2870
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2885
    :goto_0
    return-void

    .line 2874
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->powerUpFm(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2875
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->startPlayFm(F)Z

    move-result v1

    .line 2876
    iput-boolean v6, p0, Lcom/mediatek/fmradio/FmRadioService;->mPausedByTransientLossOfFocus:Z

    .line 2878
    :cond_1
    iput-boolean v6, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    .line 2879
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 2880
    .restart local p1    # "bundle":Landroid/os/Bundle;
    const-string v3, "callback_flag"

    .line 2881
    const/16 v4, 0x9

    .line 2880
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2882
    const-string v3, "key_is_power_up"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2883
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2884
    const-string v3, "FmRx/Service"

    const-string v4, "service handler power up end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initFmPlayer()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1587
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    .line 1588
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmSuspendSupport()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1589
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1592
    :cond_0
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mPlayerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1594
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    const-string v4, "THIRDPARTY://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1610
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1611
    :goto_0
    return v1

    .line 1595
    :catch_0
    move-exception v0

    .line 1597
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setDataSource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1598
    goto :goto_0

    .line 1599
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1601
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setDataSource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1602
    goto :goto_0

    .line 1603
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1604
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setDataSource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1605
    goto :goto_0

    .line 1606
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 1607
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setDataSource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1608
    goto :goto_0
.end method

.method private insertSearchedStation([I)[I
    .locals 10
    .param p1, "channels"    # [I

    .prologue
    .line 2517
    const-string v7, "FmRx/Service"

    .line 2518
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "insertSearchedStation.firstValidChannel:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2519
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2518
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2517
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    iget v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    .line 2521
    .local v3, "firstValidChannel":I
    const/4 v0, 0x0

    .line 2522
    .local v0, "channelNum":I
    if-eqz p1, :cond_0

    .line 2523
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 2524
    array-length v6, p1

    .line 2526
    .local v6, "size":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2527
    .local v5, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v1, ""

    .line 2528
    .local v1, "defaultStationName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v6, :cond_1

    .line 2551
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2552
    const-string v8, "com.mediatek.fmradio.FmRadioContentProvider"

    .line 2551
    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2559
    .end local v1    # "defaultStationName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6    # "size":I
    :cond_0
    :goto_1
    const-string v7, "FmRx/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "insertSearchedStation.firstValidChannel:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2560
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",channelNum:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2559
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v8, 0x1

    aput v0, v7, v8

    return-object v7

    .line 2529
    .restart local v1    # "defaultStationName":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v6    # "size":I
    :cond_1
    aget v7, p1, v4

    invoke-static {v7}, Lcom/mediatek/fmradio/FmRadioUtils;->isValidStation(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2530
    if-nez v0, :cond_2

    .line 2531
    aget v3, p1, v4

    .line 2535
    :cond_2
    iget-object v7, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    aget v8, p1, v4

    invoke-static {v7, v8}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2537
    sget-object v7, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 2538
    const-string v8, "COLUMN_STATION_NAME"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 2540
    const-string v8, "COLUMN_STATION_FREQ"

    .line 2541
    aget v9, p1, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2540
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 2542
    const-string v8, "COLUMN_STATION_TYPE"

    .line 2543
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2542
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 2544
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    .line 2536
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2546
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 2528
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2553
    :catch_0
    move-exception v2

    .line 2554
    .local v2, "e":Landroid/os/RemoteException;
    const-string v7, "FmRx/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception when applyBatch searched stations "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2555
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2556
    .local v2, "e":Landroid/content/OperationApplicationException;
    const-string v7, "FmRx/Service"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception when applyBatch searched stations "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private isHeadSetIn()Z
    .locals 1

    .prologue
    .line 2152
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSdcardReady(Ljava/lang/String;)Z
    .locals 3
    .param p1, "sdcardPath"    # Ljava/lang/String;

    .prologue
    .line 1339
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> isSdcardReady: sdcardPath is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1340
    const-string v2, ", mSdcardStateMap is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1339
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1344
    const-string v0, "FmRx/Service"

    const-string v1, "<<< isSdcardReady: return false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/4 v0, 0x0

    .line 1349
    :goto_0
    return v0

    .line 1348
    :cond_0
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<<< isSdcardReady: mSdcardStateMap:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSpeakerPhoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 595
    iget v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mForcedUseForMedia:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyActivityStateChanged(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2451
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2452
    const-string v3, "FmRx/Service"

    .line 2453
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notifyActivityStatusChanged:clients = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2452
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2455
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2456
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/fmradio/FmRadioService$Record;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2454
    monitor-exit v4

    .line 2470
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/fmradio/FmRadioService$Record;>;"
    :cond_0
    :goto_1
    return-void

    .line 2457
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/fmradio/FmRadioService$Record;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/fmradio/FmRadioService$Record;

    .line 2459
    .local v2, "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    iget-object v1, v2, Lcom/mediatek/fmradio/FmRadioService$Record;->mCallback:Lcom/mediatek/fmradio/FmRadioListener;

    .line 2461
    .local v1, "listener":Lcom/mediatek/fmradio/FmRadioListener;
    if-nez v1, :cond_2

    .line 2462
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2463
    monitor-exit v4

    goto :goto_1

    .line 2454
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/fmradio/FmRadioService$Record;>;"
    .end local v1    # "listener":Lcom/mediatek/fmradio/FmRadioListener;
    .end local v2    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2466
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/fmradio/FmRadioService$Record;>;"
    .restart local v1    # "listener":Lcom/mediatek/fmradio/FmRadioListener;
    .restart local v2    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :cond_2
    :try_start_1
    invoke-interface {v1, p1}, Lcom/mediatek/fmradio/FmRadioListener;->onCallBack(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private openDevice()Z
    .locals 3

    .prologue
    .line 604
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FmRadioService.openDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    if-nez v0, :cond_0

    .line 606
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->openDev()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    .line 608
    :cond_0
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<<< FmRadioService.openDevice: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    return v0
.end method

.method private powerDown()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 799
    const-string v4, "FmRx/Service"

    const-string v5, ">>> FmRadioService.powerDown"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v4, :cond_0

    .line 801
    const-string v3, "FmRx/Service"

    const-string v4, "Error: device is already power down."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :goto_0
    return v2

    .line 805
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 806
    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    .line 807
    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->enableFmAudio(Z)V

    .line 811
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioNative;->getFmStatus(I)Z

    move-result v0

    .line 812
    .local v0, "isRxOn":Z
    const/4 v1, 0x0

    .line 813
    .local v1, "powerDownSuccess":Z
    if-eqz v0, :cond_3

    .line 814
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioNative;->powerDown(I)Z

    move-result v1

    .line 819
    :goto_1
    if-nez v1, :cond_4

    .line 820
    const-string v4, "FmRx/Service"

    const-string v5, "Error: powerdown failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsMakePowerDown:Z

    .line 824
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->isRdsSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 825
    const-string v2, "FmRx/Service"

    const-string v4, "RDS is supported. Stop the RDS thread."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopRdsThread()V

    .line 828
    :cond_1
    iput-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    .line 829
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 830
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 831
    const-string v2, "FmRx/Service"

    const-string v4, "release wake lock"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->removeNotification()V

    .line 835
    const-string v2, "FmRx/Service"

    const-string v4, "powerdown failed.release some resource."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 836
    goto :goto_0

    .line 816
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 839
    :cond_4
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsMakePowerDown:Z

    .line 841
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->isRdsSupported()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 842
    const-string v4, "FmRx/Service"

    const-string v5, "RDS is supported. Stop the RDS thread."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopRdsThread()V

    .line 845
    :cond_5
    iput-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    .line 847
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 848
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 849
    const-string v3, "FmRx/Service"

    const-string v4, "release wake lock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->removeNotification()V

    .line 854
    const-string v3, "FmRx/Service"

    const-string v4, "<<< FmRadioService.powerDown: true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private powerUpAutoIfNeed()V
    .locals 3

    .prologue
    .line 460
    iget v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I

    if-nez v1, :cond_0

    .line 461
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/mediatek/fmradio/FmRadioService;->sActivityIsOnStop:Z

    if-eqz v1, :cond_0

    .line 462
    const-string v1, "FmRx/Service"

    const-string v2, "Power up for start app then quick click power/home"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 465
    .local v0, "iCurrentStation":I
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->powerUpAsync(F)V

    .line 468
    .end local v0    # "iCurrentStation":I
    :cond_0
    return-void
.end method

.method private powerUpFm(F)Z
    .locals 5
    .param p1, "frequency"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 662
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">>> FmRadioService.powerUp: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v2, :cond_0

    .line 664
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.powerUp: already power up:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 665
    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 664
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :goto_0
    return v0

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->requestAudioFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 671
    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsMakePowerDown:Z

    .line 672
    const-string v0, "FmRx/Service"

    const-string v2, "FM can\'t get audio focus when power up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->sendBroadcastToStopOtherAPP()V

    move v0, v1

    .line 674
    goto :goto_0

    .line 679
    :cond_1
    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    if-nez v2, :cond_2

    .line 680
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->openDevice()Z

    .line 683
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->waitIfTxSearching()V

    .line 684
    const-string v2, "FmRx/Service"

    const-string v3, "set CURRENT_RX_ON true, CURRENT_TX_ON false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {v1, v0}, Lcom/mediatek/fmradio/FmRadioNative;->setFmStatus(IZ)Z

    .line 686
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FmRadioNative;->setFmStatus(IZ)Z

    .line 687
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->sendBroadcastToStopOtherAPP()V

    .line 689
    const-string v2, "FmRx/Service"

    const-string v3, "service native power up start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioNative;->powerUp(F)Z

    move-result v2

    if-nez v2, :cond_3

    .line 691
    const-string v0, "FmRx/Service"

    const-string v2, "Error: powerup failed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 692
    goto :goto_0

    .line 694
    :cond_3
    const-string v2, "FmRx/Service"

    const-string v3, "service native power up end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    .line 697
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 700
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsMakePowerDown:Z

    .line 701
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<<< FmRadioService.powerUp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    goto :goto_0
.end method

.method public static registerExitListener(Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    .prologue
    .line 2954
    sput-object p0, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    .line 2955
    return-void
.end method

.method private registerFmBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1615
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1616
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1617
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1618
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1619
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1620
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1621
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1622
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1623
    const-string v1, "com.mediatek.app.mtv.POWER_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1624
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STARTSCAN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1625
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STOPSCAN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1626
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_TUNESTATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1627
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKPREV"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1628
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKNEXT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1629
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SAVEFAVOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1630
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SHOWTOAST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1631
    const-string v1, "com.mediatek.FMRadio.FmRadioWidget.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1632
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1633
    new-instance v1, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;-><init>(Lcom/mediatek/fmradio/FmRadioService;Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;)V

    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    .line 1634
    const-string v1, "FmRx/Service"

    const-string v2, "Register broadcast receiver."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/fmradio/FmRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1636
    return-void
.end method

.method private registerSdcardReceiver()V
    .locals 3

    .prologue
    .line 2009
    const-string v1, "FmRx/Service"

    const-string v2, "registerSdcardReceiver >>> "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 2011
    new-instance v1, Lcom/mediatek/fmradio/FmRadioService$SdcardListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/fmradio/FmRadioService$SdcardListener;-><init>(Lcom/mediatek/fmradio/FmRadioService;Lcom/mediatek/fmradio/FmRadioService$SdcardListener;)V

    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    .line 2013
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2014
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2015
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2016
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2017
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2018
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/fmradio/FmRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2019
    const-string v1, "FmRx/Service"

    const-string v2, "registerSdcardReceiver <<< "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    return-void
.end method

.method private remove(I)V
    .locals 4
    .param p1, "hashCode"    # I

    .prologue
    .line 2489
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2490
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2491
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/fmradio/FmRadioService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2489
    monitor-exit v3

    .line 2498
    return-void

    .line 2492
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/fmradio/FmRadioService$Record;

    .line 2493
    .local v1, "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    iget v2, v1, Lcom/mediatek/fmradio/FmRadioService$Record;->mHashCode:I

    if-ne v2, p1, :cond_0

    .line 2494
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2489
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/fmradio/FmRadioService$Record;>;"
    .end local v1    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeNotification()V
    .locals 2

    .prologue
    .line 1991
    const-string v0, "FmRx/Service"

    const-string v1, "FmRadioService.removeNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->stopForeground(Z)V

    .line 1993
    return-void
.end method

.method private resumeFmAudio()V
    .locals 2

    .prologue
    .line 1250
    const-string v0, "FmRx/Service"

    const-string v1, "FmRadioService.resumeFmAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 1255
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->enableFmAudio(Z)V

    .line 1257
    :cond_0
    return-void
.end method

.method private saveRecording(Ljava/lang/String;)V
    .locals 2
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 1446
    const-string v0, "FmRx/Service"

    const-string v1, ">>> saveRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_1

    .line 1448
    if-eqz p1, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/fmradio/FmRecorder;->saveRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 1450
    const-string v0, "FmRx/Service"

    const-string v1, "<<< saveRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :goto_0
    return-void

    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->discardRecording()V

    .line 1455
    :cond_1
    const-string v0, "FmRx/Service"

    const-string v1, "<<< saveRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private seekStation(FZ)F
    .locals 5
    .param p1, "frequency"    # F
    .param p2, "isUp"    # Z

    .prologue
    const/4 v4, 0x0

    .line 970
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.seek: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 972
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/high16 v0, -0x40800000    # -1.0f

    .line 984
    :goto_0
    return v0

    .line 976
    :cond_0
    invoke-direct {p0, v4}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    .line 977
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    .line 978
    invoke-static {p1, p2}, Lcom/mediatek/fmradio/FmRadioNative;->seek(FZ)F

    move-result v0

    .line 979
    .local v0, "fRet":F
    iput-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    .line 982
    iput-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsStopScanCalled:Z

    .line 983
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.seek: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendBroadcastToStopOtherAPP()V
    .locals 4

    .prologue
    .line 767
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.pause"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 768
    .local v2, "intentToMusic":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/mediatek/fmradio/FmRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 769
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.mediatek.app.mtv.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local v0, "intentToAtv":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 771
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .local v1, "intentToFMTx":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 773
    return-void
.end method

.method public static setActivityIsOnStop(Z)V
    .locals 0
    .param p0, "stop"    # Z

    .prologue
    .line 2996
    sput-boolean p0, Lcom/mediatek/fmradio/FmRadioService;->sActivityIsOnStop:Z

    .line 2997
    return-void
.end method

.method private setLRText(Ljava/lang/String;)V
    .locals 4
    .param p1, "lrtText"    # Ljava/lang/String;

    .prologue
    .line 1853
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FmRadioService.setLRText: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1854
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1853
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1856
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    .line 1857
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1858
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    .line 1859
    const v2, 0x100100

    .line 1858
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1860
    const-string v1, "key_ps_info"

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    const-string v1, "key_rt_info"

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 1864
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private setMute(Z)I
    .locals 4
    .param p1, "mute"    # Z

    .prologue
    .line 1173
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 1174
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const/4 v0, -0x1

    .line 1180
    :goto_0
    return v0

    .line 1177
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.setMute: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioNative;->setMute(Z)I

    move-result v0

    .line 1179
    .local v0, "iRet":I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.setMute: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPS(Ljava/lang/String;)V
    .locals 4
    .param p1, "ps"    # Ljava/lang/String;

    .prologue
    .line 1834
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FmRadioService.setPS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1836
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    .line 1837
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1838
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    .line 1839
    const v2, 0x100011

    .line 1838
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1840
    const-string v1, "key_ps_info"

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    const-string v1, "key_rt_info"

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 1844
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private setRds(Z)I
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1095
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 1096
    const/4 v0, -0x1

    .line 1106
    :goto_0
    return v0

    .line 1098
    :cond_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.setRDS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const/4 v0, -0x1

    .line 1100
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->isRdsSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1101
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioNative;->setRds(Z)I

    move-result v0

    .line 1103
    :cond_1
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->setPS(Ljava/lang/String;)V

    .line 1104
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->setLRText(Ljava/lang/String;)V

    .line 1105
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.setRDS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRecordingMode(Z)V
    .locals 3
    .param p1, "isRecording"    # Z

    .prologue
    .line 1490
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> setRecordingMode: isRecording="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsInRecordingMode:Z

    .line 1492
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_2

    .line 1493
    if-nez p1, :cond_1

    .line 1494
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0, p0}, Lcom/mediatek/fmradio/FmRecorder;->stopRecording(Landroid/content/Context;)V

    .line 1496
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->stopPlayback()V

    .line 1498
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->resumeFmAudio()V

    .line 1499
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 1500
    const-string v0, "FmRx/Service"

    const-string v1, "<<< setRecordingMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :goto_0
    return-void

    .line 1504
    :cond_1
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->resetRecorder()V

    .line 1506
    :cond_2
    const-string v0, "FmRx/Service"

    const-string v1, "<<< setRecordingMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1922
    const-string v3, "FmRx/Service"

    const-string v4, "FmRadioService.showNotification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1924
    .local v1, "notificationIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1925
    const-class v4, Lcom/mediatek/fmradio/FmRadioActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1924
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1926
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 1927
    .local v2, "views":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1928
    .local v0, "notification":Landroid/app/Notification;
    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1929
    const/4 v3, 0x2

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 1930
    const v3, 0x7f0201ed

    iput v3, v0, Landroid/app/Notification;->icon:I

    .line 1932
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1931
    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1933
    const-string v3, "FmRx/Service"

    const-string v4, "Add notification to the title bar."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/mediatek/fmradio/FmRadioService;->startForeground(ILandroid/app/Notification;)V

    .line 1935
    return-void
.end method

.method private startPlayFm(F)Z
    .locals 5
    .param p1, "frequency"    # F

    .prologue
    const/4 v4, 0x1

    .line 726
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.initDevice: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioUtils;->computeStation(F)I

    move-result v1

    iput v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    .line 729
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/mediatek/fmradio/FmRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 731
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->showNotification()V

    .line 732
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioWidget;->getInstance()Lcom/mediatek/fmradio/FmRadioWidget;

    move-result-object v0

    .line 733
    .local v0, "widget":Lcom/mediatek/fmradio/FmRadioWidget;
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/fmradio/FmRadioWidget;->updateWidget(Landroid/content/Context;I)V

    .line 736
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->isRdsSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    const-string v1, "FmRx/Service"

    const-string v2, "RDS is supported. Start the RDS thread."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->startRdsThread()V

    .line 741
    :cond_0
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmSuspendSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 742
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 743
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 744
    const-string v1, "FmRx/Service"

    const-string v2, "acquire wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->isSpeakerPhoneOn()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 749
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 751
    :cond_2
    iget v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecordState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    .line 752
    invoke-direct {p0, v4}, Lcom/mediatek/fmradio/FmRadioService;->enableFmAudio(Z)V

    .line 755
    :cond_3
    invoke-direct {p0, v4}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    .line 756
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 758
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.initDevice: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    return v1
.end method

.method private startPlayback()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1386
    const-string v2, "FmRx/Service"

    const-string v3, ">>> startPlayback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->requestAudioFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1388
    const-string v1, "FmRx/Service"

    const-string v2, "can\'t get audio focus when play recording file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :goto_0
    return v0

    .line 1392
    :cond_0
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-nez v2, :cond_1

    .line 1393
    const-string v1, "FmRx/Service"

    const-string v2, "FMRecorder is null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1398
    :cond_1
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "AudioFmPreStop=1"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1399
    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 1400
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->enableFmAudio(Z)V

    .line 1402
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->startPlayback()V

    .line 1403
    const-string v0, "FmRx/Service"

    const-string v2, "<<< startPlayback"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1404
    goto :goto_0
.end method

.method private startRdsThread()V
    .locals 2

    .prologue
    .line 1728
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FmRadioService.startRdSThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsRdsThreadExit:Z

    .line 1730
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRdsThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1812
    :goto_0
    return-void

    .line 1733
    :cond_0
    new-instance v0, Lcom/mediatek/fmradio/FmRadioService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioService$3;-><init>(Lcom/mediatek/fmradio/FmRadioService;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRdsThread:Ljava/lang/Thread;

    .line 1809
    const-string v0, "FmRx/Service"

    const-string v1, "Start RDS Thread."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRdsThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1811
    const-string v0, "FmRx/Service"

    const-string v1, "<<< FmRadioService.startRdSThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1310
    const-string v0, "FmRx/Service"

    const-string v1, ">>> startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 1312
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "native is not power up: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->onRecorderError(I)V

    .line 1336
    :goto_0
    return-void

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioUtils;->getDefaultStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    .line 1317
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "default sd card file path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    sget-object v0, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1319
    :cond_1
    const-string v0, "FmRx/Service"

    const-string v1, "startRecording: may be no sdcard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-virtual {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->onRecorderError(I)V

    goto :goto_0

    .line 1324
    :cond_2
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-nez v0, :cond_3

    .line 1325
    new-instance v0, Lcom/mediatek/fmradio/FmRecorder;

    invoke-direct {v0}, Lcom/mediatek/fmradio/FmRecorder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    .line 1326
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0, p0}, Lcom/mediatek/fmradio/FmRecorder;->registerRecorderStateListener(Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;)V

    .line 1329
    :cond_3
    sget-object v0, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->isSdcardReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1330
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRecorder;->startRecording(Landroid/content/Context;)V

    .line 1335
    :goto_1
    const-string v0, "FmRx/Service"

    const-string v1, "<<< startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1332
    :cond_4
    const-string v0, "FmRx/Service"

    const-string v1, "Cannot record because sdcard is not ready!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-virtual {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->onRecorderError(I)V

    goto :goto_1
.end method

.method private startScan()[I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 996
    const-string v4, "FmRx/Service"

    const-string v5, ">>> FmRadioService.startScan"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/4 v1, 0x0

    .line 999
    .local v1, "iChannels":[I
    invoke-direct {p0, v7}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    .line 1000
    invoke-direct {p0, v8}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 1001
    const/4 v2, 0x0

    .line 1002
    .local v2, "shortChannels":[S
    iget-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsStopScanCalled:Z

    if-nez v4, :cond_0

    .line 1003
    iput-boolean v8, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeScanning:Z

    .line 1004
    const-string v4, "FmRx/Service"

    const-string v5, "startScan native method:start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->autoScan()[S

    move-result-object v2

    .line 1006
    const-string v4, "FmRx/Service"

    .line 1007
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startScan native method:end "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1008
    invoke-static {v2}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1007
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1006
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iput-boolean v7, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeScanning:Z

    .line 1012
    :cond_0
    invoke-direct {p0, v8}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    .line 1013
    iget-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsStopScanCalled:Z

    if-eqz v4, :cond_1

    .line 1017
    new-array v2, v8, [S

    .end local v2    # "shortChannels":[S
    const/16 v4, -0x64

    aput-short v4, v2, v7

    .line 1018
    .restart local v2    # "shortChannels":[S
    iput-boolean v7, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsStopScanCalled:Z

    .line 1021
    :cond_1
    if-eqz v2, :cond_2

    .line 1022
    array-length v3, v2

    .line 1023
    .local v3, "size":I
    new-array v1, v3, [I

    .line 1024
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_3

    .line 1028
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_2
    const-string v4, "FmRx/Service"

    .line 1029
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<<< FmRadioService.startScan: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1028
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return-object v1

    .line 1025
    .restart local v0    # "i":I
    .restart local v3    # "size":I
    :cond_3
    aget-short v4, v2, v0

    aput v4, v1, v0

    .line 1024
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private startShuttingDown()V
    .locals 2

    .prologue
    .line 3120
    const-string v0, "FmRx/Service"

    const-string v1, "CountingDown | plug out earphone --timeup,shutdown FM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3122
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->exitFm()V

    .line 3123
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopSelf()V

    .line 3124
    return-void
.end method

.method private stopFmFocusLoss(I)V
    .locals 2
    .param p1, "focusState"    # I

    .prologue
    .line 2156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    .line 2157
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeScanning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    if-eqz v0, :cond_1

    .line 2160
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopScan()Z

    .line 2161
    const-string v0, "FmRx/Service"

    const-string v1, "need to stop FM, so stop scan channel."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->updateAudioFocusAync(I)V

    .line 2166
    const-string v0, "FmRx/Service"

    const-string v1, "need to stop FM, so powerdown FM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    return-void
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    .line 1418
    const-string v0, "FmRx/Service"

    const-string v1, ">>> stopPlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->stopPlayback()V

    .line 1421
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->checkAfterPlayback()V

    .line 1423
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "<<< stopPlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    return-void
.end method

.method private stopRdsThread()V
    .locals 2

    .prologue
    .line 1818
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FmRadioService.stopRdSThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRdsThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsRdsThreadExit:Z

    .line 1822
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mRdsThread:Ljava/lang/Thread;

    .line 1824
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "<<< FmRadioService.stopRdSThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    return-void
.end method

.method private stopRecording()Z
    .locals 3

    .prologue
    .line 1363
    const-string v0, "FmRx/Service"

    const-string v1, ">>> stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-nez v0, :cond_0

    .line 1365
    const-string v0, "FmRx/Service"

    const-string v1, "stopRecording called without a valid recorder!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const/4 v0, 0x0

    .line 1372
    :goto_0
    return v0

    .line 1368
    :cond_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mStopRecordingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1369
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0, p0}, Lcom/mediatek/fmradio/FmRecorder;->stopRecording(Landroid/content/Context;)V

    .line 1370
    const-string v0, "FmRx/Service"

    const-string v2, "<<< stopRecording"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    monitor-exit v1

    .line 1372
    const/4 v0, 0x1

    goto :goto_0

    .line 1368
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private switchAntenna(I)I
    .locals 4
    .param p1, "antenna"    # I

    .prologue
    .line 1291
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.switchAntenna:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioNative;->switchAntenna(I)I

    move-result v0

    .line 1294
    .local v0, "ret":I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.switchAntenna: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    return v0
.end method

.method private tuneStation(F)Z
    .locals 8
    .param p1, "frequency"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 909
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ">>> FmRadioService.tune: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v4, :cond_1

    .line 911
    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    .line 912
    const-string v4, "FmRx/Service"

    const-string v5, "FmRadioService.native tune start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioNative;->tune(F)Z

    move-result v0

    .line 914
    .local v0, "bRet":Z
    const-string v4, "FmRx/Service"

    const-string v5, "FmRadioService.native tune end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    if-eqz v0, :cond_0

    .line 916
    invoke-direct {p0, v7}, Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I

    .line 917
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioUtils;->computeStation(F)I

    move-result v4

    iput v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    .line 918
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v4, v5}, Lcom/mediatek/fmradio/FmRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 919
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->updateNotification()V

    .line 920
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioWidget;->getInstance()Lcom/mediatek/fmradio/FmRadioWidget;

    move-result-object v2

    .line 921
    .local v2, "widget":Lcom/mediatek/fmradio/FmRadioWidget;
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-virtual {v2, v4, v5}, Lcom/mediatek/fmradio/FmRadioWidget;->updateWidget(Landroid/content/Context;I)V

    .line 923
    .end local v2    # "widget":Lcom/mediatek/fmradio/FmRadioWidget;
    :cond_0
    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 924
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<<< FmRadioService.tune: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    .end local v0    # "bRet":Z
    :goto_0
    return v0

    .line 929
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->isAntennaAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z

    if-nez v4, :cond_2

    .line 930
    const-string v4, "FmRx/Service"

    const-string v5, "earphone is not insert and short antenna not support"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 931
    goto :goto_0

    .line 935
    :cond_2
    const-string v4, "FmRx/Service"

    const-string v5, "FM is not powered up"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iput-boolean v7, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    .line 937
    const/4 v1, 0x0

    .line 939
    .local v1, "tune":Z
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->powerUpFm(F)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 940
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService;->startPlayFm(F)Z

    move-result v1

    .line 942
    :cond_3
    iput-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    .line 943
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<<< FmRadioService.tune: mIsPowerup:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 944
    goto :goto_0
.end method

.method public static unregisterExitListener(Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    .prologue
    .line 2964
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    .line 2965
    return-void
.end method

.method private unregisterFmBroadcastReceiver()V
    .locals 2

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1640
    const-string v0, "FmRx/Service"

    const-string v1, "Unregister broadcast receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    .line 1644
    :cond_0
    return-void
.end method

.method private unregisterSdcardListener()V
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2026
    :cond_0
    return-void
.end method

.method private updateAudioFocus(I)V
    .locals 10
    .param p1, "focusState"    # I

    .prologue
    const/16 v9, 0x17

    const/16 v8, 0x16

    const/4 v7, 0x6

    const/4 v6, 0x1

    .line 2332
    const-string v3, "FmRx/Service"

    const-string v4, "FmRadioService.updateAudioFocus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    packed-switch p1, :pswitch_data_0

    .line 2407
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2335
    :pswitch_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mPausedByTransientLossOfFocus:Z

    .line 2340
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v3, :cond_1

    .line 2341
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRecorder;->getState()I

    move-result v2

    .line 2342
    .local v2, "fmState":I
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "stopFMFocusLoss.recorder state="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    if-ne v2, v7, :cond_1

    .line 2345
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2346
    invoke-virtual {v3, v8}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2347
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2348
    invoke-virtual {v3, v9}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2349
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopRecording()Z

    .line 2352
    .end local v2    # "fmState":I
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->handlePowerDown()V

    goto :goto_0

    .line 2356
    :pswitch_2
    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v3, :cond_2

    .line 2357
    iput-boolean v6, p0, Lcom/mediatek/fmradio/FmRadioService;->mPausedByTransientLossOfFocus:Z

    .line 2359
    :cond_2
    const-string v3, "FmRx/Service"

    .line 2360
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AUDIOFOCUS_LOSS_TRANSIENT: mPausedByTransientLossOfFocus:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2361
    iget-boolean v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2360
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2359
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v3, :cond_4

    .line 2367
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRecorder;->getState()I

    move-result v2

    .line 2368
    .restart local v2    # "fmState":I
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "stopFMFocusLoss.recorder state="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    if-ne v2, v7, :cond_3

    .line 2370
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2371
    invoke-virtual {v3, v8}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2372
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2373
    invoke-virtual {v3, v9}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2374
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopRecording()Z

    .line 2376
    :cond_3
    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 2377
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2378
    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2379
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2380
    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2381
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopPlayback()V

    .line 2384
    .end local v2    # "fmState":I
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->handlePowerDown()V

    goto/16 :goto_0

    .line 2388
    :pswitch_3
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AUDIOFOCUS_GAIN: mPausedByTransientLossOfFocus:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2389
    iget-boolean v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2388
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mPausedByTransientLossOfFocus:Z

    if-eqz v3, :cond_0

    .line 2391
    iput-boolean v6, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    .line 2392
    const/4 v1, 0x1

    .line 2393
    .local v1, "bundleSize":I
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2394
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2395
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2396
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 2397
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 2398
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "frequency"

    .line 2399
    iget v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v4}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v4

    .line 2398
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2400
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->handlePowerUp(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2333
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized updateAudioFocusAync(I)V
    .locals 6
    .param p1, "focusState"    # I

    .prologue
    .line 2315
    monitor-enter p0

    :try_start_0
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateAudioFocusAync: focusState = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    const/4 v1, 0x1

    .line 2317
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2318
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "key_audiofocus_changed"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2319
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 2320
    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2321
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2322
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2323
    monitor-exit p0

    return-void

    .line 2315
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleSize":I
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private updateNotification()V
    .locals 2

    .prologue
    .line 1999
    const-string v0, "FmRx/Service"

    const-string v1, "FmRadioService.updateNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 2001
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->showNotification()V

    .line 2003
    :cond_0
    return-void
.end method

.method private updateSdcardStateMap(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 2029
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2030
    .local v0, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2031
    .local v2, "sdcardPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2032
    .local v1, "mountPointUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 2033
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2034
    if-eqz v2, :cond_0

    .line 2035
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2036
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateSdcardStateMap: ENJECT "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    :cond_0
    :goto_0
    return-void

    .line 2038
    :cond_1
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2039
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateSdcardStateMap: UNMOUNTED "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2041
    :cond_2
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2042
    const-string v3, "FmRx/Service"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateSdcardStateMap: MOUNTED "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mSdcardStateMap:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private waitIfTxSearching()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 707
    const-string v2, "FmRx/Service"

    .line 708
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">>> waitIfTxSearching "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioNative;->getFmStatus(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 708
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 707
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 712
    .local v0, "start":J
    :goto_0
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioNative;->getFmStatus(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 722
    :goto_1
    const-string v2, "FmRx/Service"

    const-string v3, "<<< waitIfTxSearching"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-void

    .line 713
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 714
    const-string v2, "FmRx/Service"

    const-string v3, "waitIfTxSearching timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 718
    :cond_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 719
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    .line 2256
    return-void
.end method

.method public activeAFAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 1135
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1136
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1137
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1138
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1139
    return-void
.end method

.method public emcmd([S)[S
    .locals 4
    .param p1, "val"    # [S

    .prologue
    .line 3059
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>FMRadioService.emcmd: val="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    const/4 v0, 0x0

    .line 3061
    .local v0, "shortCmds":[S
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioNative;->emcmd([S)[S

    move-result-object v0

    .line 3062
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<FMRadioService.emcmd:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    return-object v0
.end method

.method public getCapArray()I
    .locals 2

    .prologue
    .line 3077
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readCapArray"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 3079
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    const/4 v0, -0x1

    .line 3082
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->readCapArray()S

    move-result v0

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 3

    .prologue
    .line 1232
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.getFrequency: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    return v0
.end method

.method public getHardwareVersion()[I
    .locals 1

    .prologue
    .line 3070
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->getHardwareVersion()[I

    move-result-object v0

    return-object v0
.end method

.method public getLRText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1125
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.getLRText: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mLRTextString:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedRecordingName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2974
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRecordingNameInDialog:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mModifiedRecordingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mModifiedRecordingName:Ljava/lang/String;

    return-object v0
.end method

.method public getPS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1115
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.getPS: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mPSString:Ljava/lang/String;

    return-object v0
.end method

.method public getRdsBler()I
    .locals 2

    .prologue
    .line 3101
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readRdsBler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 3103
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    const/4 v0, -0x1

    .line 3106
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->readRdsBler()S

    move-result v0

    goto :goto_0
.end method

.method public getRecordTime()J
    .locals 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->recordTime()J

    move-result-wide v0

    .line 1468
    :goto_0
    return-wide v0

    .line 1467
    :cond_0
    const-string v0, "FmRx/Service"

    const-string v1, "FMRecorder is null !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRecorderState()I
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->getState()I

    move-result v0

    .line 1527
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRecordingMode()Z
    .locals 1

    .prologue
    .line 1515
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsInRecordingMode:Z

    return v0
.end method

.method public getRecordingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v0

    .line 1539
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordingNameWithPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    .line 1549
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRecorder;->getRecordingNameWithPath()Ljava/lang/String;

    move-result-object v0

    .line 1551
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRssi()I
    .locals 2

    .prologue
    .line 3089
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.readRssi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v0, :cond_0

    .line 3091
    const-string v0, "FmRx/Service"

    const-string v1, "FM is not powered up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    const/4 v0, -0x1

    .line 3094
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->readRssi()I

    move-result v0

    goto :goto_0
.end method

.method public getStereoMono()Z
    .locals 2

    .prologue
    .line 3017
    const-string v0, "FmRx/Service"

    const-string v1, "FMRadioService.getStereoMono"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->stereoMono()Z

    move-result v0

    return v0
.end method

.method public initService(I)V
    .locals 3
    .param p1, "iCurrentStation"    # I

    .prologue
    .line 1211
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.initService: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsServiceInited:Z

    .line 1213
    iput p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    .line 1214
    return-void
.end method

.method public isActivityForeground()Z
    .locals 7

    .prologue
    .line 2891
    const/4 v3, 0x1

    .line 2892
    .local v3, "isForeground":Z
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2893
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 2894
    .local v1, "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2909
    :goto_0
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isActivityForeground return "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    return v3

    .line 2894
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2895
    .local v0, "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2896
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 2897
    .local v2, "importance":I
    const-string v4, "FmRx/Service"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isActivityForeground importance:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    const/16 v4, 0x64

    if-eq v2, v4, :cond_2

    .line 2899
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_3

    .line 2900
    :cond_2
    const-string v4, "FmRx/Service"

    const-string v5, "isActivityForeground is foreground"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    const/4 v3, 0x1

    .line 2902
    goto :goto_0

    .line 2903
    :cond_3
    const-string v4, "FmRx/Service"

    const-string v5, "isActivityForeground is background"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    const/4 v3, 0x0

    .line 2906
    goto :goto_0
.end method

.method public isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public isBtConnected()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 517
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 518
    .local v1, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "FmRx/Service"

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isBtConnected headset:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v5

    .line 520
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 522
    const-string v5, ", a2dp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 524
    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v5

    .line 523
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 519
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 518
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    .line 527
    .local v0, "a2dpState":I
    if-eq v6, v0, :cond_0

    if-eq v2, v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method public isDeviceOpen()Z
    .locals 3

    .prologue
    .line 637
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.isDeviceOpen: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsDeviceOpen:Z

    return v0
.end method

.method public isInCountDownMode()Z
    .locals 4

    .prologue
    .line 3133
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 3134
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->hasMessages(I)Z

    move-result v0

    .line 3135
    .local v0, "mIsInCountDownMode":Z
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FmRadioService.isInCountDownMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    return v0
.end method

.method public isInLockTaskMode()Z
    .locals 3

    .prologue
    .line 2921
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isInLockTaskMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    return v0
.end method

.method public isMakePowerDown()Z
    .locals 3

    .prologue
    .line 885
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.mIsMakePowerDown: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsMakePowerDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsMakePowerDown:Z

    return v0
.end method

.method public isModeNormal()Z
    .locals 4

    .prologue
    .line 3005
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 3006
    .local v0, "mode":I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isInCall mode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPowerUp()Z
    .locals 3

    .prologue
    .line 864
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.isPowerUp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    return v0
.end method

.method public isPowerUping()Z
    .locals 3

    .prologue
    .line 875
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.isPowerUping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    return v0
.end method

.method public isRdsSupported()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1189
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->isRdsSupport()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1190
    .local v0, "isRdsSupported":Z
    :goto_0
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FmRadioService.isRdsSupported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    return v0

    .line 1189
    .end local v0    # "isRdsSupported":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordingCardUnmount(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2510
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2511
    .local v0, "unmountSDCard":Ljava/lang/String;
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unmount sd card file path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2513
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 1039
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 1073
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    return v0
.end method

.method public isServiceInited()Z
    .locals 3

    .prologue
    .line 1222
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.isServiceInit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsServiceInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsServiceInited:Z

    return v0
.end method

.method public isSpeakerUsed()Z
    .locals 3

    .prologue
    .line 1200
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.isSpeakerUsed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 244
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioService.onBind: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1708
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1710
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 1711
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->showNotification()V

    .line 1713
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 1556
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1557
    const-string v2, "FmRx/Service"

    const-string v3, ">>> FmRadioService.onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "short antenna support:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    .line 1560
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/mediatek/fmradio/FmRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1561
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/mediatek/fmradio/FmRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1562
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/mediatek/fmradio/FmRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1563
    .local v1, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    .line 1564
    const-string v3, "FmRx/Service"

    .line 1563
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1565
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1566
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioUtils;->getDefaultStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/fmradio/FmRadioService;->sRecordingSdcard:Ljava/lang/String;

    .line 1568
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->initFmPlayer()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1569
    const-string v2, "FmRx/Service"

    const-string v3, "init FMPlayer failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :goto_0
    return-void

    .line 1573
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->registerFmBroadcastReceiver()V

    .line 1574
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->registerSdcardReceiver()V

    .line 1576
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "FmRadioServiceThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1577
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1578
    new-instance v2, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;-><init>(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1580
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->openDevice()Z

    .line 1582
    iget-boolean v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    invoke-virtual {p0, v2}, Lcom/mediatek/fmradio/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 1583
    const-string v2, "FmRx/Service"

    const-string v3, "<<< FmRadioService.onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1648
    const-string v0, "FmRx/Service"

    const-string v1, ">>> FmRadioService.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "AudioFmPreStop=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1650
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I

    .line 1652
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->isRdsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1653
    const-string v0, "FmRx/Service"

    const-string v1, "RDS is supported. Stop the RDS thread."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->stopRdsThread()V

    .line 1656
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->unregisterFmBroadcastReceiver()V

    .line 1657
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->unregisterSdcardListener()V

    .line 1658
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->abandonAudioFocus()V

    .line 1659
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->exitFm()V

    .line 1660
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    if-eqz v0, :cond_1

    .line 1661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmRecorder:Lcom/mediatek/fmradio/FmRecorder;

    .line 1663
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1664
    return-void
.end method

.method public onPlayRecordFileComplete()V
    .locals 2

    .prologue
    .line 2101
    const-string v0, "FmRx/Service"

    const-string v1, "service.onPlayRecordFileComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->checkAfterPlayback()V

    .line 2103
    return-void
.end method

.method public onRecorderError(I)V
    .locals 5
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x4

    .line 2077
    const-string v1, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRecorderError: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    const/16 v1, 0x64

    if-ne v1, p1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecorderErrorType:I

    .line 2083
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2084
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    .line 2085
    const v3, 0x100110

    .line 2084
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2086
    const-string v1, "key_recording_error_type"

    .line 2087
    iget v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecorderErrorType:I

    .line 2086
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2088
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2091
    if-ne v2, p1, :cond_0

    .line 2092
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->resumeFmAudio()V

    .line 2094
    :cond_0
    return-void

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    move v1, p1

    .line 2081
    goto :goto_0
.end method

.method public onRecorderStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2057
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onRecorderStateChanged: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    iput p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecordState:I

    .line 2059
    const/4 v1, 0x6

    iget v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecordState:I

    if-eq v1, v2, :cond_0

    .line 2060
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsInRecordingMode:Z

    .line 2062
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 2063
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callback_flag"

    .line 2064
    const v2, 0x100101

    .line 2063
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2065
    const-string v1, "key_is_recording_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2066
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 2067
    return-void
.end method

.method public onShowToast(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 2111
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "service.onShowToast "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mBroadcastReceiver:Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 2113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SHOWTOAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2114
    .local v0, "intentToShowToast":Landroid/content/Intent;
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2115
    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2121
    .end local v0    # "intentToShowToast":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2117
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2119
    const/4 v2, 0x0

    .line 2117
    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2119
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1717
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.onStartCommand intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1718
    const-string v3, " startId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1717
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 1720
    .local v0, "ret":I
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.onStartCommand: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    const/4 v1, 0x2

    return v1
.end method

.method public powerDownAsync()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 782
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 783
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 784
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 785
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 786
    invoke-virtual {v0, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 787
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 788
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 789
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 790
    invoke-virtual {v0, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 791
    return-void
.end method

.method public powerUpAsync(F)V
    .locals 7
    .param p1, "frequency"    # F

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x1

    .line 647
    iput-boolean v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z

    .line 648
    const/4 v1, 0x1

    .line 649
    .local v1, "bundleSize":I
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 650
    invoke-virtual {v3, v6}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 651
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 652
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 653
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 654
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 655
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 656
    invoke-virtual {v3, v6}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 657
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 658
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 659
    return-void
.end method

.method public registerFmRadioListener(Lcom/mediatek/fmradio/FmRadioListener;)V
    .locals 7
    .param p1, "callback"    # Lcom/mediatek/fmradio/FmRadioListener;

    .prologue
    .line 2425
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2428
    const/4 v3, 0x0

    .line 2429
    .local v3, "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2430
    .local v0, "hashCode":I
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2431
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    move-object v4, v3

    .end local v3    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    .local v4, "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :goto_0
    if-lt v1, v2, :cond_0

    .line 2437
    :try_start_1
    new-instance v3, Lcom/mediatek/fmradio/FmRadioService$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/mediatek/fmradio/FmRadioService$Record;-><init>(Lcom/mediatek/fmradio/FmRadioService$Record;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2438
    .end local v4    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    .restart local v3    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :try_start_2
    iput v0, v3, Lcom/mediatek/fmradio/FmRadioService$Record;->mHashCode:I

    .line 2439
    iput-object p1, v3, Lcom/mediatek/fmradio/FmRadioService$Record;->mCallback:Lcom/mediatek/fmradio/FmRadioListener;

    .line 2440
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2425
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2442
    :goto_1
    return-void

    .line 2432
    .end local v3    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    .restart local v4    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/fmradio/FmRadioService$Record;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2433
    .end local v4    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    .restart local v3    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    :try_start_4
    iget v5, v3, Lcom/mediatek/fmradio/FmRadioService$Record;->mHashCode:I

    if-ne v0, v5, :cond_1

    .line 2434
    monitor-exit v6

    goto :goto_1

    .line 2425
    .end local v0    # "hashCode":I
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 2431
    .restart local v0    # "hashCode":I
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    .end local v3    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    .restart local v4    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    goto :goto_0

    .line 2425
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    .restart local v3    # "record":Lcom/mediatek/fmradio/FmRadioService$Record;
    goto :goto_2
.end method

.method public requestAudioFocus()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 2237
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    if-eqz v1, :cond_0

    .line 2247
    :goto_0
    return v2

    .line 2241
    :cond_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 2242
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    .line 2241
    invoke-virtual {v1, v3, v4, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 2244
    .local v0, "audioFocus":I
    if-ne v2, v0, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    .line 2246
    const-string v1, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestAudioFocus, mIsAudioFocusHeld: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2244
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public saveRecordingAsync(Ljava/lang/String;)V
    .locals 5
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x1a

    .line 1434
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1435
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1436
    const/4 v1, 0x1

    .line 1437
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1438
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "name"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1440
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1441
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1442
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1443
    return-void
.end method

.method public seekStationAsync(FZ)V
    .locals 5
    .param p1, "frequency"    # F
    .param p2, "isUp"    # Z

    .prologue
    const/16 v4, 0x10

    .line 958
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 959
    const/4 v1, 0x2

    .line 960
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 961
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 962
    const-string v3, "option"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 963
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 964
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 965
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 966
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 967
    return-void
.end method

.method public setEmth(II)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 3044
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FMRadioService.setEmth: index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3045
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3044
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    invoke-static {p1, p2}, Lcom/mediatek/fmradio/FmRadioNative;->emsetth(II)Z

    move-result v0

    .line 3047
    .local v0, "isOk":Z
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FMRadioService.setEmth: isOk="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    return v0
.end method

.method public setFrequency(I)V
    .locals 0
    .param p1, "station"    # I

    .prologue
    .line 1243
    iput p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    .line 1244
    return-void
.end method

.method public setModifiedRecordingName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2985
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setRecordingNameInDialog:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mModifiedRecordingName:Ljava/lang/String;

    .line 2987
    return-void
.end method

.method public setMuteAsync(Z)V
    .locals 5
    .param p1, "mute"    # Z

    .prologue
    const/4 v4, 0x7

    .line 1161
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1162
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1163
    const/4 v1, 0x1

    .line 1164
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1165
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1166
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1167
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1168
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1169
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1170
    return-void
.end method

.method public setRdsAsync(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x5

    .line 1083
    const/4 v1, 0x1

    .line 1084
    .local v1, "bundleSize":I
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1085
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1086
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1087
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1088
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1089
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1090
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1091
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1092
    return-void
.end method

.method public setRecordingModeAsync(Z)V
    .locals 5
    .param p1, "isRecording"    # Z

    .prologue
    const/16 v4, 0x15

    .line 1478
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1479
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1480
    const/4 v1, 0x1

    .line 1481
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1482
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "option"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1483
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1484
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1485
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1486
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1487
    return-void
.end method

.method public setSpeakerPhoneOn(Z)V
    .locals 4
    .param p1, "isSpeaker"    # Z

    .prologue
    const/4 v1, 0x1

    .line 586
    const-string v0, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> FmRadioService.useSpeaker: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mForcedUseForMedia:I

    .line 589
    iget v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mForcedUseForMedia:I

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 590
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z

    .line 591
    const-string v0, "FmRx/Service"

    const-string v1, "<<< FmRadioService.useSpeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void

    .line 588
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStereoMono(Z)Z
    .locals 3
    .param p1, "isMono"    # Z

    .prologue
    .line 3029
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FMRadioService.setStereoMono: isMono="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioNative;->setStereoMono(Z)Z

    move-result v0

    return v0
.end method

.method public startCountingDownAsync(J)V
    .locals 5
    .param p1, "seconds"    # J

    .prologue
    const/16 v4, 0x28

    .line 3112
    const-string v0, "FmRx/Service"

    const-string v1, "startCountingDownAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 3114
    invoke-virtual {v0, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 3115
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 3116
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    .line 3115
    invoke-virtual {v0, v4, v2, v3}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3117
    return-void
.end method

.method public startPlaybackAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 1379
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1380
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1381
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1382
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1383
    return-void
.end method

.method public startRecordingAsync()V
    .locals 3

    .prologue
    const/16 v2, 0x16

    .line 1302
    const-string v0, "FmRx/Service"

    const-string v1, "startRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1304
    invoke-virtual {v0, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1305
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1306
    invoke-virtual {v0, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1307
    return-void
.end method

.method public startScanAsync()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 991
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 992
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 993
    return-void
.end method

.method public stopCountingDownAsync()V
    .locals 2

    .prologue
    .line 3127
    const-string v0, "FmRx/Service"

    const-string v1, "stopCountingDownAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 3129
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 3130
    return-void
.end method

.method public stopPlaybackAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x19

    .line 1411
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1412
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1413
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1414
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1415
    return-void
.end method

.method public stopRecordingAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x17

    .line 1356
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1357
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1358
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1359
    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessage(I)Z

    .line 1360
    return-void
.end method

.method public stopScan()Z
    .locals 4

    .prologue
    .line 1048
    const-string v1, "FmRx/Service"

    const-string v2, ">>> FmRadioService.stopScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    if-nez v1, :cond_0

    .line 1050
    const-string v1, "FmRx/Service"

    const-string v2, "FM is not powered up"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const/4 v0, 0x0

    .line 1064
    :goto_0
    return v0

    .line 1054
    :cond_0
    const/4 v0, 0x0

    .line 1055
    .local v0, "bRet":Z
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1056
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1057
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeScanning:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z

    if-eqz v1, :cond_2

    .line 1058
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsStopScanCalled:Z

    .line 1059
    const-string v1, "FmRx/Service"

    const-string v2, "native stop scan:start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->stopScan()Z

    move-result v0

    .line 1061
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "native stop scan:end --"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_2
    const-string v1, "FmRx/Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< FmRadioService.stopScan: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchAntennaAsync(I)V
    .locals 5
    .param p1, "antenna"    # I

    .prologue
    const/4 v4, 0x4

    .line 1271
    const/4 v1, 0x1

    .line 1272
    .local v1, "bundleSize":I
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 1274
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1275
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "switch_anntenna_value"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1276
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 1277
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1278
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1279
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1280
    return-void
.end method

.method public tuneStationAsync(F)V
    .locals 5
    .param p1, "frequency"    # F

    .prologue
    const/16 v4, 0xf

    .line 898
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 899
    const/4 v1, 0x1

    .line 900
    .local v1, "bundleSize":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 901
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "frequency"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 902
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    .line 903
    invoke-virtual {v3, v4}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 904
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 905
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 906
    return-void
.end method

.method public unregisterFmRadioListener(Lcom/mediatek/fmradio/FmRadioListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/fmradio/FmRadioListener;

    .prologue
    .line 2479
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->remove(I)V

    .line 2480
    return-void
.end method

.method public updateFavoriteStation(I)V
    .locals 10
    .param p1, "favorStation"    # I

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 3140
    const-string v2, "FmRx/Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateFavoriteStation, favorStation = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3144
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v5}, Lcom/mediatek/fmradio/FmRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 3146
    .local v1, "stationName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v6, p1}, Lcom/mediatek/fmradio/FmRadioStation;->updateStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    .line 3148
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->updateNotification()V

    .line 3149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 3150
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "callback_flag"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3152
    const-string v2, "key_is_tune"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3153
    const-string v2, "key_tune_to_station"

    .line 3154
    iget v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v3

    .line 3153
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3155
    const-string v2, "key_is_power_up"

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3156
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 3157
    sget-object v2, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    if-eqz v2, :cond_0

    .line 3158
    sget-object v2, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    invoke-interface {v2}, Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;->onTuneFinished()V

    .line 3194
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "stationName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3162
    :cond_1
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/mediatek/fmradio/FmRadioStation;->getStationCount(Landroid/content/Context;I)I

    move-result v2

    .line 3163
    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 3164
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3165
    const v3, 0x7f090062

    invoke-virtual {p0, v3}, Lcom/mediatek/fmradio/FmRadioService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3166
    const/4 v4, 0x0

    .line 3164
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 3166
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3168
    :cond_2
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v6}, Lcom/mediatek/fmradio/FmRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 3170
    .restart local v1    # "stationName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v6}, Lcom/mediatek/fmradio/FmRadioStation;->isStationExist(Landroid/content/Context;II)Z

    move-result v2

    .line 3171
    if-eqz v2, :cond_3

    .line 3172
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v5, p1}, Lcom/mediatek/fmradio/FmRadioStation;->updateStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    .line 3180
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioService;->updateNotification()V

    .line 3181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 3182
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "callback_flag"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3184
    const-string v2, "key_is_tune"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3185
    const-string v2, "key_tune_to_station"

    .line 3186
    iget v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I

    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v3

    .line 3185
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3187
    const-string v2, "key_is_power_up"

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3188
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V

    .line 3189
    sget-object v2, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    if-eqz v2, :cond_0

    .line 3190
    sget-object v2, Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    invoke-interface {v2}, Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;->onTuneFinished()V

    goto :goto_0

    .line 3176
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p1, v5}, Lcom/mediatek/fmradio/FmRadioStation;->insertStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_1
.end method
