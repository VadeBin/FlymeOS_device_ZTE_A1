.class public final Lcom/android/bluetooth/avrcp/Avrcp;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/Avrcp$1;,
        Lcom/android/bluetooth/avrcp/Avrcp$Metadata;,
        Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;,
        Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;
    }
.end annotation


# static fields
.field private static final AVRCP_BASE_VOLUME_STEP:I = 0x1

.field private static final AVRCP_MAX_VOL:I = 0x7f

.field private static final AVRC_RSP_ACCEPT:I = 0x9

.field private static final AVRC_RSP_CHANGED:I = 0xd

.field private static final AVRC_RSP_IMPL_STBL:I = 0xc

.field private static final AVRC_RSP_INTERIM:I = 0xf

.field private static final AVRC_RSP_IN_TRANS:I = 0xb

.field private static final AVRC_RSP_NOT_IMPL:I = 0x8

.field private static final AVRC_RSP_REJ:I = 0xa

.field private static final BASE_SKIP_AMOUNT:I = 0x7d0

.field public static final BTRC_FEAT_ABSOLUTE_VOLUME:I = 0x2

.field public static final BTRC_FEAT_BROWSE:I = 0x4

.field public static final BTRC_FEAT_METADATA:I = 0x1

.field private static final BUTTON_TIMEOUT_TIME:I = 0x7d0

.field private static final CMD_TIMEOUT_DELAY:I = 0x7d0

.field private static final DEBUG:Z = true

.field static final EVT_APP_SETTINGS_CHANGED:I = 0x8

.field static final EVT_BATT_STATUS_CHANGED:I = 0x6

.field static final EVT_PLAY_POS_CHANGED:I = 0x5

.field static final EVT_PLAY_STATUS_CHANGED:I = 0x1

.field static final EVT_SYSTEM_STATUS_CHANGED:I = 0x7

.field static final EVT_TRACK_CHANGED:I = 0x2

.field static final EVT_TRACK_REACHED_END:I = 0x3

.field static final EVT_TRACK_REACHED_START:I = 0x4

.field private static final KEY_STATE_PRESS:I = 0x1

.field private static final KEY_STATE_RELEASE:I = 0x0

.field private static final MAX_ERROR_RETRY_TIMES:I = 0x3

.field private static final MAX_MULTIPLIER_VALUE:J = 0x80L

.field static final MEDIA_ATTR_ALBUM:I = 0x3

.field static final MEDIA_ATTR_ARTIST:I = 0x2

.field static final MEDIA_ATTR_GENRE:I = 0x6

.field static final MEDIA_ATTR_NUM_TRACKS:I = 0x5

.field static final MEDIA_ATTR_PLAYING_TIME:I = 0x7

.field static final MEDIA_ATTR_TITLE:I = 0x1

.field static final MEDIA_ATTR_TRACK_NUM:I = 0x4

.field private static final MESSAGE_ABS_VOL_TIMEOUT:I = 0x9

.field private static final MESSAGE_ADJUST_VOLUME:I = 0x7

.field private static final MESSAGE_CHANGE_PLAY_POS:I = 0xc

.field private static final MESSAGE_FAST_FORWARD:I = 0xa

.field private static final MESSAGE_GET_ELEM_ATTRS:I = 0x3

.field private static final MESSAGE_GET_PLAY_STATUS:I = 0x2

.field private static final MESSAGE_GET_RC_FEATURES:I = 0x1

.field private static final MESSAGE_PLAY_INTERVAL_TIMEOUT:I = 0x5

.field private static final MESSAGE_REGISTER_NOTIFICATION:I = 0x4

.field private static final MESSAGE_REWIND:I = 0xb

.field private static final MESSAGE_SET_A2DP_AUDIO_STATE:I = 0xd

.field private static final MESSAGE_SET_ABSOLUTE_VOLUME:I = 0x8

.field private static final MESSAGE_VOLUME_CHANGED:I = 0x6

.field private static final MSG_SET_GENERATION_ID:I = 0x68

.field private static final MSG_SET_METADATA:I = 0x65

.field private static final MSG_SET_TRANSPORT_CONTROLS:I = 0x66

.field private static final MSG_UPDATE_STATE:I = 0x64

.field static final NOTIFICATION_TYPE_CHANGED:I = 0x1

.field static final NOTIFICATION_TYPE_INTERIM:I = 0x0

.field static final PLAYSTATUS_ERROR:I = 0xff

.field static final PLAYSTATUS_FWD_SEEK:I = 0x3

.field static final PLAYSTATUS_PAUSED:I = 0x2

.field static final PLAYSTATUS_PLAYING:I = 0x1

.field static final PLAYSTATUS_REV_SEEK:I = 0x4

.field static final PLAYSTATUS_STOPPED:I = 0x0

.field private static final SKIP_DOUBLE_INTERVAL:I = 0xbb8

.field private static final SKIP_PERIOD:I = 0x190

.field private static final TAG:Ljava/lang/String; = "Avrcp"

.field static final TRACK_ID_SIZE:I = 0x8


# instance fields
.field private mAbsVolRetryTimes:I

.field private mAbsoluteVolume:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioStreamMax:I

.field private mContext:Landroid/content/Context;

.field private mCurrentPlayState:I

.field private mCurrentPosMs:J

.field private mFeatures:I

.field private mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

.field private mLastDirection:I

.field private mLastSetVolume:I

.field private mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

.field private mNextPosMs:J

.field private mPlayPosChangedNT:I

.field private mPlayStartTimeMs:J

.field private mPlayStatusChangedNT:I

.field private mPlaybackIntervalMs:J

.field private mPrevPosMs:J

.field private mRemoteController:Landroid/media/RemoteController;

.field private mRemoteControllerCb:Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;

.field private mSkipAmount:I

.field private mSkipStartTime:J

.field private mSongLengthMs:J

.field private mTrackChangedNT:I

.field private mTrackNumber:J

.field private mTransportControlFlags:I

.field private mVolCmdInProgress:Z

.field private final mVolumeStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 146
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->classInitNative()V

    .line 147
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    .line 151
    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    .line 152
    iput v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStatusChangedNT:I

    .line 153
    iput v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackChangedNT:I

    .line 154
    iput-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackNumber:J

    .line 155
    iput-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    .line 156
    iput-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    .line 157
    iput-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    .line 158
    iput-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlaybackIntervalMs:J

    .line 159
    iput v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I

    .line 160
    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mFeatures:I

    .line 161
    iput v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsoluteVolume:I

    .line 162
    iput v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastSetVolume:I

    .line 163
    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastDirection:I

    .line 164
    iput-boolean v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdInProgress:Z

    .line 165
    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I

    .line 167
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    .line 169
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->initNative()V

    .line 171
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    .line 173
    const/16 v0, 0x7f

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolumeStep:I

    .line 174
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/avrcp/Avrcp;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayPauseState(IJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/avrcp/Avrcp;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayStatusRspNative(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/avrcp/Avrcp;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->getAttributeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/avrcp/Avrcp;B[I[Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # B
    .param p2, "x2"    # [I
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->getElementAttrRspNative(B[I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/avrcp/Avrcp;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->processRegisterNotification(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/avrcp/Avrcp;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayPosNative(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdInProgress:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdInProgress:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I

    return p1
.end method

.method static synthetic access$1712(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsoluteVolume:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsoluteVolume:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/avrcp/Avrcp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->notifyVolumeChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/media/RemoteController$MetadataEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolumeStep:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/avrcp/Avrcp;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->setVolumeNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2202(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastDirection:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastSetVolume:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastSetVolume:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTransportControlFlags:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/RemoteController;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I

    return p1
.end method

.method static synthetic access$2702(Lcom/android/bluetooth/avrcp/Avrcp;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipStartTime:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getSkipMultiplier()I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/bluetooth/avrcp/Avrcp;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # J

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->changePositionBy(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/avrcp/Avrcp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->updateTransportControls(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/bluetooth/avrcp/Avrcp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->updateA2dpAudioState(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mFeatures:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/avrcp/Avrcp;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/avrcp/Avrcp;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/avrcp/Avrcp;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method private changePositionBy(J)V
    .locals 9
    .param p1, "amount"    # J

    .prologue
    .line 667
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J

    move-result-wide v0

    .line 668
    .local v0, "currentPosMs":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 671
    :goto_0
    return-void

    .line 669
    :cond_0
    const-wide/16 v4, 0x0

    add-long v6, v0, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 670
    .local v2, "newPosMs":J
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v4, v2, v3}, Landroid/media/RemoteController;->seekTo(J)Z

    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private convertPlayStateToPlayStatus(I)I
    .locals 1
    .param p1, "playState"    # I

    .prologue
    .line 732
    const/16 v0, 0xff

    .line 733
    .local v0, "playStatus":I
    packed-switch p1, :pswitch_data_0

    .line 763
    :goto_0
    return v0

    .line 736
    :pswitch_0
    const/4 v0, 0x1

    .line 737
    goto :goto_0

    .line 741
    :pswitch_1
    const/4 v0, 0x0

    .line 742
    goto :goto_0

    .line 745
    :pswitch_2
    const/4 v0, 0x2

    .line 746
    goto :goto_0

    .line 750
    :pswitch_3
    const/4 v0, 0x3

    .line 751
    goto :goto_0

    .line 755
    :pswitch_4
    const/4 v0, 0x4

    .line 756
    goto :goto_0

    .line 759
    :pswitch_5
    const/16 v0, 0xff

    goto :goto_0

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private convertToAudioStreamVolume(I)I
    .locals 4
    .param p1, "volume"    # I

    .prologue
    .line 825
    int-to-double v0, p1

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x405fc00000000000L    # 127.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private convertToAvrcpVolume(I)I
    .locals 4
    .param p1, "volume"    # I

    .prologue
    .line 829
    int-to-double v0, p1

    const-wide v2, 0x405fc00000000000L    # 127.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private fastForward(I)V
    .locals 4
    .param p1, "keyState"    # I

    .prologue
    .line 657
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 658
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 659
    return-void
.end method

.method private getAttributeString(I)Ljava/lang/String;
    .locals 6
    .param p1, "attrId"    # I

    .prologue
    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, "attrStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 724
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v0, :cond_1

    .line 725
    new-instance v0, Ljava/lang/String;

    .end local v0    # "attrStr":Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 727
    .restart local v0    # "attrStr":Ljava/lang/String;
    :cond_1
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAttributeString:attrId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " str="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-object v0

    .line 706
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->access$3200(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v0

    .line 707
    goto :goto_0

    .line 710
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->access$3100(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v0

    .line 711
    goto :goto_0

    .line 714
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->access$3300(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v0

    .line 715
    goto :goto_0

    .line 718
    :pswitch_4
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 719
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 704
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getElementAttr(B[I)V
    .locals 6
    .param p1, "numAttr"    # B
    .param p2, "attrs"    # [I

    .prologue
    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v0, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 603
    aget v3, p2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 606
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 607
    return-void
.end method

.method private native getElementAttrRspNative(B[I[Ljava/lang/String;)Z
.end method

.method private getPlayPosition()J
    .locals 6

    .prologue
    .line 689
    const-wide/16 v0, -0x1

    .line 690
    .local v0, "songPosition":J
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    const-wide v4, -0x7fe688e67fe67d00L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 691
    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 692
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    add-long v0, v2, v4

    .line 698
    :cond_0
    :goto_0
    const-string v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return-wide v0

    .line 695
    :cond_1
    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    goto :goto_0
.end method

.method private getPlayStatus()V
    .locals 3

    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 596
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 597
    return-void
.end method

.method private native getPlayStatusRspNative(III)Z
.end method

.method private getRcFeatures([BI)V
    .locals 5
    .param p1, "address"    # [B
    .param p2, "features"    # I

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 591
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 592
    return-void
.end method

.method private getSkipMultiplier()I
    .locals 10

    .prologue
    .line 674
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 675
    .local v0, "currentTime":J
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipStartTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0xbb8

    div-long/2addr v6, v8

    long-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v2, v4

    .line 676
    .local v2, "multi":J
    const-wide/16 v4, 0x80

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    return v4
.end method

.method private handlePassthroughCmd(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "keyState"    # I

    .prologue
    .line 646
    packed-switch p1, :pswitch_data_0

    .line 654
    :goto_0
    return-void

    .line 648
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->rewind(I)V

    goto :goto_0

    .line 651
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->fastForward(I)V

    goto :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private native initNative()V
.end method

.method private isPlayingState(I)Z
    .locals 1
    .param p1, "playState"    # I

    .prologue
    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, "isPlaying":Z
    sparse-switch p1, :sswitch_data_0

    .line 774
    const/4 v0, 0x0

    .line 777
    :goto_0
    return v0

    .line 771
    :sswitch_0
    const/4 v0, 0x1

    .line 772
    goto :goto_0

    .line 768
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static make(Landroid/content/Context;)Lcom/android/bluetooth/avrcp/Avrcp;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const-string v1, "Avrcp"

    const-string v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcp/Avrcp;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, "ar":Lcom/android/bluetooth/avrcp/Avrcp;
    invoke-direct {v0}, Lcom/android/bluetooth/avrcp/Avrcp;->start()V

    .line 191
    return-object v0
.end method

.method private notifyVolumeChanged(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 818
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertToAudioStreamVolume(I)I

    move-result p1

    .line 819
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/16 v2, 0x41

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 821
    return-void
.end method

.method private processRegisterNotification(II)V
    .locals 8
    .param p1, "eventId"    # I
    .param p2, "param"    # I

    .prologue
    const/4 v1, 0x0

    .line 615
    packed-switch p1, :pswitch_data_0

    .line 643
    :goto_0
    :pswitch_0
    return-void

    .line 617
    :pswitch_1
    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStatusChangedNT:I

    .line 618
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStatusChangedNT:I

    iget v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayStatusNative(II)Z

    goto :goto_0

    .line 623
    :pswitch_2
    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackChangedNT:I

    .line 624
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->sendTrackChangedRsp()V

    goto :goto_0

    .line 628
    :pswitch_3
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J

    move-result-wide v2

    .line 629
    .local v2, "songPosition":J
    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I

    .line 630
    int-to-long v4, p2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlaybackIntervalMs:J

    .line 631
    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    const-wide v6, -0x7fe688e67fe67d00L

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 632
    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlaybackIntervalMs:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNextPosMs:J

    .line 633
    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlaybackIntervalMs:J

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPrevPosMs:J

    .line 634
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 636
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlaybackIntervalMs:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 639
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I

    long-to-int v4, v2

    invoke-direct {p0, v1, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayPosNative(II)Z

    goto :goto_0

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private registerNotification(II)V
    .locals 3
    .param p1, "eventId"    # I
    .param p2, "param"    # I

    .prologue
    .line 610
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 611
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 612
    return-void
.end method

.method private native registerNotificationRspPlayPosNative(II)Z
.end method

.method private native registerNotificationRspPlayStatusNative(II)Z
.end method

.method private native registerNotificationRspTrackChangeNative(I[B)Z
.end method

.method private rewind(I)V
    .locals 4
    .param p1, "keyState"    # I

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 663
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 664
    return-void
.end method

.method private native sendPassThroughCommandNative(II)Z
.end method

.method private sendTrackChangedRsp()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 680
    new-array v1, v5, [B

    .line 682
    .local v1, "track":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 683
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackNumber:J

    mul-int/lit8 v4, v0, 0x8

    rsub-int/lit8 v4, v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    :cond_0
    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackChangedNT:I

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspTrackChangeNative(I[B)Z

    .line 686
    return-void
.end method

.method private native setVolumeNative(I)Z
.end method

.method private start()V
    .locals 5

    .prologue
    .line 177
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BluetoothAvrcpHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 179
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 180
    .local v0, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/Avrcp$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    .line 181
    new-instance v2, Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteControllerCb:Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;

    .line 182
    new-instance v2, Landroid/media/RemoteController;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteControllerCb:Lcom/android/bluetooth/avrcp/Avrcp$RemoteControllerWeak;

    invoke-direct {v2, v3, v4}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    .line 183
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    .line 184
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/RemoteController;->setSynchronizationMode(I)Z

    .line 185
    return-void
.end method

.method private updateA2dpAudioState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 477
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 478
    .local v0, "isPlaying":Z
    :goto_0
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    invoke-direct {p0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->isPlayingState(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 480
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 486
    :cond_0
    :goto_1
    return-void

    .line 477
    .end local v0    # "isPlaying":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 482
    .restart local v0    # "isPlaying":Z
    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x3

    :goto_2
    const-wide/16 v2, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayPauseState(IJ)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    goto :goto_2
.end method

.method private updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 7
    .param p1, "data"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 556
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "oldMetadata":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->access$3102(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 558
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v3}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->access$3202(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 559
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {p1, v6, v3}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->access$3302(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 560
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 561
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackNumber:J

    .line 562
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackChangedNT:I

    if-nez v1, :cond_0

    .line 563
    iput v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackChangedNT:I

    .line 564
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->sendTrackChangedRsp()V

    .line 567
    :cond_0
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    const-wide v4, -0x7fe688e67fe67d00L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 568
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    .line 569
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 570
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    .line 574
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I

    if-nez v1, :cond_2

    .line 575
    iput v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I

    .line 576
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayPosNative(II)Z

    .line 578
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 581
    :cond_2
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMetadata="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/16 v1, 0x9

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/media/RemoteController$MetadataEditor;->getLong(IJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    .line 585
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void
.end method

.method private updatePlayPauseState(IJ)V
    .locals 12
    .param p1, "state"    # I
    .param p2, "currentPosMs"    # J

    .prologue
    .line 489
    const-string v5, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePlayPauseState, old="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    const-wide v10, -0x7fe688e67fe67d00L

    cmp-long v5, v8, v10

    if-eqz v5, :cond_8

    const/4 v4, 0x1

    .line 493
    .local v4, "oldPosValid":Z
    :goto_0
    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    invoke-direct {p0, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v3

    .line 494
    .local v3, "oldPlayStatus":I
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v1

    .line 496
    .local v1, "newPlayStatus":I
    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_0

    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    if-eq v5, p1, :cond_0

    if-eqz v4, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    .line 501
    :cond_0
    const-wide/16 v8, -0x1

    cmp-long v5, p2, v8

    if-eqz v5, :cond_1

    .line 502
    iput-wide p2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    .line 504
    :cond_1
    const/4 v5, 0x3

    if-ne p1, v5, :cond_3

    const-wide/16 v8, -0x1

    cmp-long v5, p2, v8

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    const/4 v8, 0x3

    if-eq v5, v8, :cond_3

    .line 507
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    .line 509
    :cond_3
    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    .line 511
    iget-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    const-wide v10, -0x7fe688e67fe67d00L

    cmp-long v5, v8, v10

    if-eqz v5, :cond_9

    const/4 v2, 0x1

    .line 513
    .local v2, "newPosValid":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J

    move-result-wide v6

    .line 514
    .local v6, "playPosition":J
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 516
    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I

    if-nez v5, :cond_5

    if-ne v3, v1, :cond_4

    if-ne v4, v2, :cond_4

    if-eqz v2, :cond_5

    iget-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNextPosMs:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    iget-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPrevPosMs:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_5

    .line 519
    :cond_4
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I

    .line 520
    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I

    long-to-int v8, v6

    invoke-direct {p0, v5, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayPosNative(II)Z

    .line 522
    :cond_5
    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I

    if-nez v5, :cond_6

    if-eqz v2, :cond_6

    const/4 v5, 0x3

    if-ne p1, v5, :cond_6

    .line 524
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 525
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    iget-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNextPosMs:J

    sub-long/2addr v8, v6

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 528
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6
    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStatusChangedNT:I

    if-nez v5, :cond_7

    if-eq v3, v1, :cond_7

    .line 529
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStatusChangedNT:I

    .line 530
    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStatusChangedNT:I

    invoke-direct {p0, v5, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayStatusNative(II)Z

    .line 532
    :cond_7
    return-void

    .line 491
    .end local v1    # "newPlayStatus":I
    .end local v2    # "newPosValid":Z
    .end local v3    # "oldPlayStatus":I
    .end local v4    # "oldPosValid":Z
    .end local v6    # "playPosition":J
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 511
    .restart local v1    # "newPlayStatus":I
    .restart local v3    # "oldPlayStatus":I
    .restart local v4    # "oldPosValid":Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateTransportControls(I)V
    .locals 0
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 535
    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTransportControlFlags:I

    .line 536
    return-void
.end method

.method private volumeChangeCallback(II)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "ctype"    # I

    .prologue
    .line 813
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 814
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 815
    return-void
.end method


# virtual methods
.method public adjustVolume(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 793
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 794
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 795
    return-void
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->cleanupNative()V

    .line 205
    return-void
.end method

.method public doQuit()V
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 197
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    .line 201
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 841
    const-string v0, "AVRCP:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMetadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTransportControlFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTransportControlFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentPlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlayStatusChangedNT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStatusChangedNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrackChangedNT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackChangedNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrackNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTrackNumber:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentPosMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlayStartTimeMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSongLengthMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlaybackIntervalMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlaybackIntervalMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlayPosChangedNT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayPosChangedNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextPosMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNextPosMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrevPosMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPrevPosMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSkipStartTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFeatures: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mFeatures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAbsoluteVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsoluteVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSetVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastSetVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastDirection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVolumeStep: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolumeStep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioStreamMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVolCmdInProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAbsVolRetryTimes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSkipAmount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method public isAbsoluteVolumeSupported()Z
    .locals 1

    .prologue
    .line 785
    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setA2dpAudioState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 836
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 837
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 838
    return-void
.end method

.method public setAbsoluteVolume(I)V
    .locals 5
    .param p1, "volume"    # I

    .prologue
    const/4 v4, 0x0

    .line 798
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertToAvrcpVolume(I)I

    move-result v0

    .line 799
    .local v0, "avrcpVolume":I
    const/16 v2, 0x7f

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 800
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 801
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 802
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 803
    return-void
.end method
