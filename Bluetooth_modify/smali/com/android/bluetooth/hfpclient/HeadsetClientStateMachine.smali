.class final Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;
    }
.end annotation


# static fields
.field static final ACCEPT_CALL:I = 0xc

.field static final CONFIG_NREC:I = 0x36

.field static final CONNECT:I = 0x1

.field static final CONNECT_AUDIO:I = 0x3

.field private static final DBG:Z = false

.field static final DIAL_MEMORY:I = 0xb

.field static final DIAL_NUMBER:I = 0xa

.field static final DISCONNECT:I = 0x2

.field static final DISCONNECT_AUDIO:I = 0x4

.field static final ENTER_PRIVATE_MODE:I = 0x10

.field private static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field private static final EVENT_TYPE_BATTERY_LEVEL:I = 0x7

.field private static final EVENT_TYPE_CALL:I = 0x9

.field private static final EVENT_TYPE_CALLHELD:I = 0xb

.field private static final EVENT_TYPE_CALLSETUP:I = 0xa

.field private static final EVENT_TYPE_CALL_WAITING:I = 0xd

.field private static final EVENT_TYPE_CLIP:I = 0xc

.field private static final EVENT_TYPE_CMD_RESULT:I = 0x10

.field private static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field private static final EVENT_TYPE_CURRENT_CALLS:I = 0xe

.field private static final EVENT_TYPE_IN_BAND_RING:I = 0x13

.field private static final EVENT_TYPE_LAST_VOICE_TAG_NUMBER:I = 0x14

.field private static final EVENT_TYPE_NETWORK_SIGNAL:I = 0x6

.field private static final EVENT_TYPE_NETWORK_STATE:I = 0x4

.field private static final EVENT_TYPE_NONE:I = 0x0

.field private static final EVENT_TYPE_OPERATOR_NAME:I = 0x8

.field private static final EVENT_TYPE_RESP_AND_HOLD:I = 0x12

.field private static final EVENT_TYPE_RING_INDICATION:I = 0x15

.field private static final EVENT_TYPE_ROAMING_STATE:I = 0x5

.field private static final EVENT_TYPE_SUBSCRIBER_INFO:I = 0x11

.field private static final EVENT_TYPE_VOLUME_CHANGED:I = 0xf

.field private static final EVENT_TYPE_VR_STATE_CHANGED:I = 0x3

.field static final EXPLICIT_CALL_TRANSFER:I = 0x12

.field static final HOLD_CALL:I = 0xe

.field static final LAST_VTAG_NUMBER:I = 0x13

.field static final NO_ACTION:I = 0x0

.field static final QUERY_CURRENT_CALLS:I = 0x32

.field static final QUERY_OPERATOR_NAME:I = 0x33

.field static final REDIAL:I = 0x9

.field static final REJECT_CALL:I = 0xd

.field static final SEND_DTMF:I = 0x11

.field static final SET_MIC_VOLUME:I = 0x7

.field static final SET_SPEAKER_VOLUME:I = 0x8

.field private static final STACK_EVENT:I = 0x64

.field static final SUBSCRIBER_INFO:I = 0x34

.field private static final TAG:Ljava/lang/String; = "HeadsetClientStateMachine"

.field static final TERMINATE_CALL:I = 0xf

.field static final TERMINATE_SPECIFIC_CALL:I = 0x35

.field static final VOICE_RECOGNITION_START:I = 0x5

.field static final VOICE_RECOGNITION_STOP:I = 0x6


# instance fields
.field private final EVENT_TYPE_NAMES:[Ljava/lang/String;

.field private alert:Landroid/net/Uri;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

.field private mAudioState:I

.field private mAudioWbs:Z

.field private mCalls:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation
.end field

.field private mCallsUpdate:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation
.end field

.field private mChldFeatures:I

.field private final mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

.field private final mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

.field private mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

.field private mInBandRingtone:I

.field private mIndicatorBatteryLevel:I

.field private mIndicatorCall:I

.field private mIndicatorCallHeld:I

.field private mIndicatorCallSetup:I

.field private mIndicatorNetworkSignal:I

.field private mIndicatorNetworkState:I

.field private mIndicatorNetworkType:I

.field private mNativeAvailable:Z

.field private mOperatorName:Ljava/lang/String;

.field private mPeerFeatures:I

.field private mPendingAction:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryCallsSupported:Z

.field private mQueuedActions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRingtone:Landroid/media/Ringtone;

.field private final mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

.field private mSubscriberInfo:Ljava/lang/String;

.field private mVgmFromStack:Z

.field private mVgsFromStack:Z

.field private mVoiceRecognitionActive:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 161
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->classInitNative()V

    .line 162
    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    .locals 8
    .param p1, "context"    # Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1217
    const-string v0, "HeadsetClientStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 129
    iput-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z

    .line 130
    iput-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z

    .line 131
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->alert:Landroid/net/Uri;

    .line 132
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    .line 154
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2629
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EVENT_TYPE_NONE"

    aput-object v1, v0, v3

    const-string v1, "EVENT_TYPE_CONNECTION_STATE_CHANGED"

    aput-object v1, v0, v5

    const-string v1, "EVENT_TYPE_AUDIO_STATE_CHANGED"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "EVENT_TYPE_VR_STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EVENT_TYPE_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EVENT_TYPE_ROAMING_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EVENT_TYPE_NETWORK_SIGNAL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EVENT_TYPE_BATTERY_LEVEL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EVENT_TYPE_OPERATOR_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EVENT_TYPE_CALL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EVENT_TYPE_CALLSETUP"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EVENT_TYPE_CALLHELD"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EVENT_TYPE_CLIP"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EVENT_TYPE_CALL_WAITING"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EVENT_TYPE_CURRENT_CALLS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "EVENT_TYPE_VOLUME_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "EVENT_TYPE_CMD_RESULT"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "EVENT_TYPE_SUBSCRIBER_INFO"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "EVENT_TYPE_RESP_AND_HOLD"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "EVENT_TYPE_IN_BAND_RING"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "EVENT_TYPE_LAST_VOICE_TAG_NUMBER"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "EVENT_TYPE_RING_INDICATION"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->EVENT_TYPE_NAMES:[Ljava/lang/String;

    .line 1218
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .line 1220
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1221
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    .line 1222
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    .line 1223
    iput-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    .line 1225
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->alert:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1227
    invoke-static {v7}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->alert:Landroid/net/Uri;

    .line 1228
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->alert:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1230
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->alert:Landroid/net/Uri;

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->alert:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->alert:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    .line 1235
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRingtone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :goto_0
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    .line 1240
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    .line 1241
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    .line 1242
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    .line 1245
    iput v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    .line 1246
    iput v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    .line 1247
    iput v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    .line 1249
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    .line 1250
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    .line 1252
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    .line 1253
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    .line 1255
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    .line 1256
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    .line 1258
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    .line 1259
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    .line 1260
    iput-boolean v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    .line 1262
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->initializeNative()V

    .line 1263
    iput-boolean v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeAvailable:Z

    .line 1265
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    .line 1266
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    .line 1267
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    .line 1268
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    .line 1270
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1271
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1272
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1273
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1275
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1276
    return-void

    .line 1237
    :cond_1
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "alert is NULL no ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private acceptCall(IZ)V
    .locals 8
    .param p1, "flag"    # I
    .param p2, "retry"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 914
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acceptCall: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 918
    .local v1, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-nez v1, :cond_1

    .line 919
    new-array v2, v7, [I

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 922
    if-nez v1, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 975
    :pswitch_1
    if-ne p1, v6, :cond_6

    .line 976
    const/4 v0, 0x2

    .line 998
    .local v0, "action":I
    :cond_2
    :goto_1
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 999
    const/16 v2, 0xc

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    goto :goto_0

    .line 929
    .end local v0    # "action":I
    :pswitch_2
    if-nez p1, :cond_0

    .line 942
    const/4 v0, 0x7

    .line 944
    .restart local v0    # "action":I
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ne v2, v6, :cond_2

    if-eqz p2, :cond_2

    .line 945
    const/4 v0, 0x1

    goto :goto_1

    .line 949
    .end local v0    # "action":I
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v2

    if-nez v2, :cond_4

    .line 951
    if-nez p1, :cond_0

    .line 957
    if-eqz p2, :cond_3

    .line 958
    const/4 v0, 0x7

    .restart local v0    # "action":I
    goto :goto_1

    .line 960
    .end local v0    # "action":I
    :cond_3
    const/4 v0, 0x2

    .line 962
    .restart local v0    # "action":I
    goto :goto_1

    .line 966
    .end local v0    # "action":I
    :cond_4
    if-ne p1, v6, :cond_5

    .line 967
    const/4 v0, 0x2

    .restart local v0    # "action":I
    goto :goto_1

    .line 968
    .end local v0    # "action":I
    :cond_5
    if-ne p1, v7, :cond_0

    .line 969
    const/4 v0, 0x1

    .restart local v0    # "action":I
    goto :goto_1

    .line 977
    .end local v0    # "action":I
    :cond_6
    if-ne p1, v7, :cond_7

    .line 978
    const/4 v0, 0x1

    .restart local v0    # "action":I
    goto :goto_1

    .line 979
    .end local v0    # "action":I
    :cond_7
    new-array v2, v6, [I

    aput v5, v2, v5

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 980
    const/4 v0, 0x3

    .restart local v0    # "action":I
    goto :goto_1

    .line 982
    .end local v0    # "action":I
    :cond_8
    const/4 v0, 0x2

    .line 984
    .restart local v0    # "action":I
    goto :goto_1

    .line 986
    .end local v0    # "action":I
    :pswitch_4
    if-nez p1, :cond_0

    .line 989
    const/16 v0, 0xa

    .line 990
    .restart local v0    # "action":I
    goto :goto_1

    .line 1001
    :cond_9
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: Couldn\'t accept a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 916
    :array_0
    .array-data 4
        0x4
        0x5
    .end array-data

    .line 919
    :array_1
    .array-data 4
        0x6
        0x1
    .end array-data

    .line 927
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Queue;)Ljava/util/Queue;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Ljava/util/Queue;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Ljava/util/Hashtable;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Ljava/util/Hashtable;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    return p1
.end method

.method static synthetic access$2402(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->connectNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->disconnectNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IIILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendATCmdNative(IIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->connectAudioNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->disconnectAudioNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->startVoiceRecognitionNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->stopVoiceRecognitionNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setVolumeNative(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dialNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dialMemoryNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->acceptCall(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    return v0
.end method

.method static synthetic access$6000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->rejectCall()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    return p1
.end method

.method static synthetic access$6100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->holdCall()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->terminateCall(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->enterPrivateMode(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->explicitCallTransfer()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # B

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendDtmfNative(B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->retrieveSubscriberInfoNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->requestLastVoiceTagNumberNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsStart()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCurrentOperatorNameNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallIndicator(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    return p1
.end method

.method static synthetic access$7100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallSetupIndicator(I)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallHeldIndicator(I)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateRespAndHold(I)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateClip(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCallWaiting(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IILjava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsUpdate(IILjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsDone()V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Landroid/util/Pair;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[I)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # [I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    return p1
.end method

.method static synthetic access$8100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothHeadsetClientCall;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadsetClientCall;
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    return v0
.end method

.method static synthetic access$8302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    return p1
.end method

.method static synthetic access$8400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    return p1
.end method

.method static synthetic access$9100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->EVENT_TYPE_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method private addCall(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 210
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToCalls state:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " number:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    :cond_0
    move v5, v1

    .line 216
    .local v5, "outgoing":Z
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 217
    .local v6, "id":Ljava/lang/Integer;
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    .end local v5    # "outgoing":Z
    .end local v6    # "id":Ljava/lang/Integer;
    :cond_1
    move v5, v4

    .line 212
    goto :goto_0

    .line 221
    .restart local v5    # "outgoing":Z
    .restart local v6    # "id":Ljava/lang/Integer;
    :cond_2
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(IILjava/lang/String;ZZ)V

    .line 223
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    .line 226
    return-void
.end method

.method private addCallWaiting(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x5

    .line 796
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCallWaiting number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 799
    invoke-direct {p0, v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    .line 801
    :cond_0
    return-void
.end method

.method private addQueuedAction(I)V
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    .line 199
    return-void
.end method

.method private addQueuedAction(II)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "data"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method private addQueuedAction(ILjava/lang/Object;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method private broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    .line 2284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2285
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2286
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2288
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 2289
    const-string v1, "android.bluetooth.headsetclient.extra.AUDIO_WBS"

    iget-boolean v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2292
    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2293
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2294
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2299
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v1, p1, v6, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 2308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2309
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2310
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2311
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2314
    if-ne p2, v5, :cond_9

    .line 2315
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_0

    .line 2317
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2319
    :cond_0
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2321
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2323
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_2

    .line 2325
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2327
    :cond_2
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v7, :cond_3

    .line 2329
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2331
    :cond_3
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_4

    .line 2333
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2337
    :cond_4
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 2339
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2341
    :cond_5
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_6

    .line 2343
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2345
    :cond_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_7

    .line 2347
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2349
    :cond_7
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v7, :cond_8

    .line 2351
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2353
    :cond_8
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_9

    .line 2355
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2359
    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2360
    return-void
.end method

.method private callsInState(I)I
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, "i":I
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 273
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_1
    return v1
.end method

.method private changeCallsState(II)V
    .locals 5
    .param p1, "old_state"    # I
    .param p2, "new_state"    # I

    .prologue
    .line 248
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeStateFromCalls old:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 251
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 252
    invoke-direct {p0, v0, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_0

    .line 255
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_1
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private clearPendingAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    .line 195
    return-void
.end method

.method private native connectAudioNative([B)Z
.end method

.method private native connectNative([B)Z
.end method

.method private native dialMemoryNative(I)Z
.end method

.method private native dialNative(Ljava/lang/String;)Z
.end method

.method private native disconnectAudioNative([B)Z
.end method

.method private native disconnectNative([B)Z
.end method

.method private enterPrivateMode(I)V
    .locals 4
    .param p1, "idx"    # I

    .prologue
    .line 1129
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterPrivateMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 1133
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-nez v0, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1141
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    const/4 v1, 0x6

    invoke-direct {p0, v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1146
    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 1148
    :cond_2
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: Couldn\'t enter private  id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private explicitCallTransfer()V
    .locals 2

    .prologue
    .line 1153
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "explicitCallTransfer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1160
    :cond_0
    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1161
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V

    goto :goto_0

    .line 1163
    :cond_1
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t transfer call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2601
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private varargs getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 9
    .param p1, "states"    # [I

    .prologue
    .line 258
    const-string v6, "HeadsetClientStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFromCallsWithStates states:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 260
    .local v1, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v5, v0, v3

    .line 261
    .local v5, "s":I
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 267
    .end local v0    # "arr$":[I
    .end local v1    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":I
    :goto_1
    return-object v1

    .line 260
    .restart local v0    # "arr$":[I
    .restart local v1    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "s":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "arr$":[I
    .end local v1    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getCurrentDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2589
    const-string v0, "<unknown>"

    .line 2590
    .local v0, "defaultName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_1

    .line 2597
    .end local v0    # "defaultName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 2593
    .restart local v0    # "defaultName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2594
    .local v1, "deviceName":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 2597
    goto :goto_0
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .param p1, "address"    # [B

    .prologue
    .line 2429
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private native handleCallActionNative(II)Z
.end method

.method private holdCall()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1051
    const-string v2, "HeadsetClientStateMachine"

    const-string v3, "holdCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    new-array v2, v5, [I

    const/4 v3, 0x4

    aput v3, v2, v4

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 1054
    .local v1, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v1, :cond_1

    .line 1055
    const/16 v0, 0x9

    .line 1065
    .local v0, "action":I
    :goto_0
    invoke-direct {p0, v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1066
    const/16 v2, 0xe

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    .line 1070
    .end local v0    # "action":I
    :cond_0
    :goto_1
    return-void

    .line 1057
    :cond_1
    new-array v2, v5, [I

    aput v4, v2, v4

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 1058
    if-eqz v1, :cond_0

    .line 1062
    const/4 v0, 0x2

    .restart local v0    # "action":I
    goto :goto_0

    .line 1068
    :cond_2
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: Couldn\'t hold a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private native initializeNative()V
.end method

.method private loopQueryCalls()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 897
    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v3

    if-le v3, v1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return v1

    .line 904
    :cond_1
    new-array v3, v1, [I

    const/4 v4, 0x4

    aput v4, v3, v2

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 905
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    .line 908
    goto :goto_0
.end method

.method static make(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .locals 3
    .param p0, "context"    # Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .prologue
    .line 1279
    const-string v1, "HeadsetClientStateMachine"

    const-string v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    .line 1281
    .local v0, "hfcsm":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->start()V

    .line 1282
    return-object v0
.end method

.method private onAudioStateChanged(I[B)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    .line 2443
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2444
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2445
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 2446
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2448
    return-void
.end method

.method private onBatteryLevel(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 2479
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2480
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2481
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2483
    return-void
.end method

.method private onCall(I)V
    .locals 4
    .param p1, "call"    # I

    .prologue
    .line 2493
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2494
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2495
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2497
    return-void
.end method

.method private onCallHeld(I)V
    .locals 4
    .param p1, "callheld"    # I

    .prologue
    .line 2507
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2508
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2509
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2511
    return-void
.end method

.method private onCallSetup(I)V
    .locals 4
    .param p1, "callsetup"    # I

    .prologue
    .line 2500
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2501
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2502
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2504
    return-void
.end method

.method private onCallWaiting(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2528
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2529
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2530
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2532
    return-void
.end method

.method private onClip(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2521
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2522
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2523
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2525
    return-void
.end method

.method private onCmdResult(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "cme"    # I

    .prologue
    .line 2554
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2555
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2556
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    .line 2557
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2559
    return-void
.end method

.method private onConnectionStateChanged(III[B)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "peer_feat"    # I
    .param p3, "chld_feat"    # I
    .param p4, "address"    # [B

    .prologue
    .line 2433
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2434
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2435
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    .line 2436
    iput p3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt3:I

    .line 2437
    invoke-direct {p0, p4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 2438
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2440
    return-void
.end method

.method private onCurrentCalls(IIIILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "dir"    # I
    .param p3, "state"    # I
    .param p4, "mparty"    # I
    .param p5, "number"    # Ljava/lang/String;

    .prologue
    .line 2535
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2536
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2537
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    .line 2538
    iput p3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt3:I

    .line 2539
    iput p4, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt4:I

    .line 2540
    iput-object p5, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2541
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2543
    return-void
.end method

.method private onCurrentOperator(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2486
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2487
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2488
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2490
    return-void
.end method

.method private onInBandRing(I)V
    .locals 4
    .param p1, "in_band"    # I

    .prologue
    .line 2570
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2571
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2572
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2574
    return-void
.end method

.method private onLastVoiceTagNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2577
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2578
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2579
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2581
    return-void
.end method

.method private onNetworkRoaming(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2465
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2466
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2467
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2469
    return-void
.end method

.method private onNetworkSignal(I)V
    .locals 4
    .param p1, "signal"    # I

    .prologue
    .line 2472
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2473
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2474
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2476
    return-void
.end method

.method private onNetworkState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2458
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2459
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2460
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2462
    return-void
.end method

.method private onRespAndHold(I)V
    .locals 4
    .param p1, "resp_and_hold"    # I

    .prologue
    .line 2514
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2515
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2516
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2518
    return-void
.end method

.method private onRingIndication()V
    .locals 4

    .prologue
    .line 2583
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2584
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2586
    return-void
.end method

.method private onSubscriberInfo(Ljava/lang/String;I)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 2562
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2563
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2564
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2565
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2567
    return-void
.end method

.method private onVolumeChange(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "volume"    # I

    .prologue
    .line 2546
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2547
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2548
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    .line 2549
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2551
    return-void
.end method

.method private onVrStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2451
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$1;)V

    .line 2452
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    .line 2453
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2455
    return-void
.end method

.method private queryCallsDone()V
    .locals 6

    .prologue
    .line 832
    const-string v3, "HeadsetClientStateMachine"

    const-string v4, "queryCallsDone"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 837
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHeadsetClientCall;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 838
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 840
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 844
    const-string v4, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallsDone call removed id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 847
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    const/4 v3, 0x7

    invoke-direct {p0, v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_0

    .line 851
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 852
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 853
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 855
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 857
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 858
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setNumber(Ljava/lang/String;)V

    .line 861
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 865
    const-string v4, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallsDone call changed id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto/16 :goto_1

    .line 868
    :cond_4
    const-string v4, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallsDone new call id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto/16 :goto_1

    .line 873
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    iput-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    .line 874
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    .line 876
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->loopQueryCalls()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 877
    const-string v3, "HeadsetClientStateMachine"

    const-string v4, "queryCallsDone ambigious calls, starting call query loop"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const/16 v3, 0x32

    const-wide/16 v4, 0x5f3

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessageDelayed(IJ)V

    .line 880
    :cond_6
    return-void
.end method

.method private queryCallsStart()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 805
    const-string v2, "HeadsetClientStateMachine"

    const-string v3, "queryCallsStart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-boolean v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    if-nez v2, :cond_0

    .line 828
    :goto_0
    return v0

    .line 812
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    .line 815
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    move v0, v1

    .line 816
    goto :goto_0

    .line 819
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCurrentCallsNative()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 820
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    .line 821
    const/16 v2, 0x32

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    move v0, v1

    .line 822
    goto :goto_0

    .line 825
    :cond_2
    const-string v1, "HeadsetClientStateMachine"

    const-string v2, "updateCallsStart queryCurrentCallsNative failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    .line 827
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method private queryCallsUpdate(IILjava/lang/String;ZZ)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "state"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "multiParty"    # Z
    .param p5, "outgoing"    # Z

    .prologue
    .line 884
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCallsUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 893
    :goto_0
    return-void

    .line 891
    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(IILjava/lang/String;ZZ)V

    invoke-virtual {v6, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private native queryCurrentCallsNative()Z
.end method

.method private native queryCurrentOperatorNameNative()Z
.end method

.method private rejectCall()V
    .locals 5

    .prologue
    .line 1008
    const-string v2, "HeadsetClientStateMachine"

    const-string v3, "rejectCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1010
    const-string v2, "HeadsetClientStateMachine"

    const-string v3, "stopping ring after call reject"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    .line 1014
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 1019
    .local v1, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-nez v1, :cond_1

    .line 1046
    :goto_0
    return-void

    .line 1023
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1029
    :pswitch_1
    const/4 v0, 0x0

    .line 1041
    .local v0, "action":I
    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1042
    const/16 v2, 0xd

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    goto :goto_0

    .line 1025
    .end local v0    # "action":I
    :pswitch_2
    const/16 v0, 0x8

    .line 1026
    .restart local v0    # "action":I
    goto :goto_1

    .line 1032
    .end local v0    # "action":I
    :pswitch_3
    const/16 v0, 0xb

    .line 1033
    .restart local v0    # "action":I
    goto :goto_1

    .line 1044
    :cond_2
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: Couldn\'t reject a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1014
    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x1
    .end array-data

    .line 1023
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private varargs removeCalls([I)V
    .locals 9
    .param p1, "states"    # [I

    .prologue
    .line 229
    const-string v6, "HeadsetClientStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeFromCalls states:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 234
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHeadsetClientCall;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 235
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 237
    .local v1, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_0

    aget v5, v0, v2

    .line 238
    .local v5, "s":I
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 239
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 240
    const/4 v6, 0x7

    invoke-direct {p0, v1, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_0

    .line 237
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 245
    .end local v0    # "arr$":[I
    .end local v1    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":I
    :cond_2
    return-void
.end method

.method private native requestLastVoiceTagNumberNative()Z
.end method

.method private native retrieveSubscriberInfoNative()Z
.end method

.method private native sendATCmdNative(IIILjava/lang/String;)Z
.end method

.method private sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V
    .locals 3
    .param p1, "c"    # Landroid/bluetooth/BluetoothHeadsetClientCall;

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.headsetclient.extra.CALL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 321
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method private native sendDtmfNative(B)Z
.end method

.method private setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V
    .locals 2
    .param p1, "c"    # Landroid/bluetooth/BluetoothHeadsetClientCall;
    .param p2, "state"    # I

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 309
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "abandonAudioFocus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    .line 314
    :cond_1
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setState(I)V

    .line 315
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_0
.end method

.method private native setVolumeNative(II)Z
.end method

.method private native startVoiceRecognitionNative()Z
.end method

.method private native stopVoiceRecognitionNative()Z
.end method

.method private terminateCall(I)V
    .locals 7
    .param p1, "idx"    # I

    .prologue
    const/16 v6, 0xf

    const/4 v5, 0x0

    .line 1073
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "terminateCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    if-nez p1, :cond_4

    .line 1076
    const/16 v0, 0x8

    .line 1078
    .local v0, "action":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 1081
    .local v1, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v1, :cond_0

    .line 1082
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1083
    invoke-direct {p0, v6, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    .line 1089
    :cond_0
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 1090
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1091
    invoke-direct {p0, v6, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    .line 1126
    .end local v0    # "action":I
    :cond_1
    :goto_1
    return-void

    .line 1085
    .restart local v0    # "action":I
    :cond_2
    const-string v2, "HeadsetClientStateMachine"

    const-string v3, "ERROR: Couldn\'t terminate outgoing call"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1093
    :cond_3
    const-string v2, "HeadsetClientStateMachine"

    const-string v3, "ERROR: Couldn\'t terminate active calls"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1098
    .end local v0    # "action":I
    .end local v1    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 1100
    .restart local v1    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v1, :cond_1

    .line 1104
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1106
    :pswitch_1
    const/4 v0, 0x5

    .line 1116
    .restart local v0    # "action":I
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1117
    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 1118
    const/16 v2, 0x35

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    goto :goto_1

    .line 1110
    .end local v0    # "action":I
    :pswitch_2
    const/16 v0, 0x8

    .line 1111
    .restart local v0    # "action":I
    goto :goto_2

    .line 1120
    :cond_5
    invoke-direct {p0, v6, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    goto :goto_1

    .line 1123
    :cond_6
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: Couldn\'t terminate a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1078
    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 1104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updateCallHeldIndicator(I)V
    .locals 11
    .param p1, "callheld"    # I

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 581
    const-string v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallHeld "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0, v8, v8, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->waitForIndicators(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 731
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v3, :cond_1

    .line 588
    const/16 v3, 0x32

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 592
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 728
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallsMultiParty()V

    .line 730
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    goto :goto_0

    .line 594
    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 627
    const-string v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected callheld=0 while in action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 596
    :sswitch_0
    new-array v3, v6, [I

    aput v6, v3, v7

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 597
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_1

    .line 600
    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_1
    goto :goto_1

    .line 602
    :pswitch_2
    new-array v3, v6, [I

    aput v7, v3, v7

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 603
    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    .line 605
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_1

    .line 608
    :pswitch_3
    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    .line 610
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_1

    .line 617
    :sswitch_2
    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    if-ne v3, v6, :cond_3

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-ne v3, v9, :cond_3

    .line 619
    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    goto :goto_1

    .line 624
    :cond_3
    new-array v3, v6, [I

    aput v6, v3, v7

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    goto :goto_1

    .line 632
    :pswitch_4
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 686
    const-string v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected callheld=0 while in action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 634
    :sswitch_3
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v9, :cond_2

    .line 636
    new-array v3, v6, [I

    aput v10, v3, v7

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 638
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v0, :cond_5

    .line 639
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    .line 641
    invoke-direct {p0, v0, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    .line 655
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 643
    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 644
    .local v1, "cc":Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-nez v3, :cond_7

    .line 646
    invoke-direct {p0, v1, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_2

    .line 648
    :cond_7
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 650
    invoke-direct {p0, v1, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_2

    .line 659
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v1    # "cc":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v2    # "i$":Ljava/util/Iterator;
    :sswitch_4
    new-array v3, v6, [I

    aput v10, v3, v7

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 661
    .restart local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v0, :cond_8

    .line 662
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    .line 664
    invoke-direct {p0, v0, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto/16 :goto_1

    .line 669
    :cond_8
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 670
    .restart local v1    # "cc":Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-nez v3, :cond_a

    .line 671
    invoke-direct {p0, v1, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_3

    .line 672
    :cond_a
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-ne v3, v6, :cond_9

    .line 673
    invoke-direct {p0, v1, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_3

    .line 678
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v1    # "cc":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v2    # "i$":Ljava/util/Iterator;
    :sswitch_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 679
    .restart local v1    # "cc":Landroid/bluetooth/BluetoothHeadsetClientCall;
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    if-eq v1, v3, :cond_b

    .line 680
    invoke-direct {p0, v1, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_4

    .line 683
    .end local v1    # "cc":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_c
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 691
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    .line 720
    const-string v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected callheld=0 while in action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 695
    :sswitch_6
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    goto/16 :goto_1

    .line 699
    :sswitch_7
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_1

    .line 701
    :pswitch_7
    new-array v3, v6, [I

    aput v7, v3, v7

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 702
    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    .line 704
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 707
    :pswitch_8
    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    .line 709
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 717
    :sswitch_8
    new-array v3, v6, [I

    aput v7, v3, v7

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    goto/16 :goto_1

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 594
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch

    .line 600
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 632
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0xc -> :sswitch_3
        0x10 -> :sswitch_5
    .end sparse-switch

    .line 691
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_8
        0x9 -> :sswitch_6
        0xa -> :sswitch_6
        0xb -> :sswitch_6
        0xd -> :sswitch_7
        0xf -> :sswitch_8
    .end sparse-switch

    .line 699
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private updateCallIndicator(I)V
    .locals 8
    .param p1, "call"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 392
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallIndicator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-direct {p0, p1, v4, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->waitForIndicators(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v1, :cond_1

    .line 399
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 403
    :cond_1
    const/4 v0, 0x0

    .line 405
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    packed-switch p1, :pswitch_data_0

    .line 445
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    goto :goto_0

    .line 407
    :pswitch_0
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    goto :goto_1

    .line 413
    :pswitch_1
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    if-ne v1, v6, :cond_3

    .line 416
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-eqz v1, :cond_2

    .line 417
    new-array v1, v6, [I

    const/4 v2, 0x5

    aput v2, v1, v5

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_2

    .line 419
    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    .line 420
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 430
    :cond_3
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-eqz v1, :cond_4

    .line 431
    new-array v1, v7, [I

    fill-array-data v1, :array_1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_4

    .line 435
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    .line 439
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallsMultiParty()V

    goto :goto_1

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 407
    :array_0
    .array-data 4
        0x0
        0x1
        0x6
    .end array-data

    .line 431
    :array_1
    .array-data 4
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private updateCallSetupIndicator(I)V
    .locals 9
    .param p1, "callsetup"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 449
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallSetupIndicator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const-string v1, "HeadsetClientStateMachine"

    const-string v2, "stopping ring after no response"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 456
    :cond_0
    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->waitForIndicators(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v1, :cond_2

    .line 461
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 465
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 575
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallsMultiParty()V

    .line 577
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    goto :goto_0

    .line 467
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 527
    :pswitch_1
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected callsetup=0 while in action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 469
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    .line 496
    :pswitch_3
    const-string v1, "HeadsetClientStateMachine"

    const-string v2, "Unexpected callsetup=0 while in action ACCEPT_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 471
    :pswitch_4
    new-array v1, v6, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 473
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_1

    .line 476
    :pswitch_5
    new-array v1, v5, [I

    aput v4, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 477
    const/4 v1, 0x5

    invoke-direct {p0, v1, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    .line 479
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_1

    .line 484
    :pswitch_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-ne v1, v5, :cond_3

    .line 486
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_1

    .line 490
    :pswitch_7
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-nez v1, :cond_3

    .line 492
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_1

    .line 501
    :pswitch_8
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 511
    const-string v1, "HeadsetClientStateMachine"

    const-string v2, "Unexpected callsetup=0 while in action REJECT_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 503
    :sswitch_0
    new-array v1, v5, [I

    aput v8, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 504
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 507
    :sswitch_1
    new-array v1, v5, [I

    const/4 v2, 0x5

    aput v2, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 508
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 520
    :pswitch_9
    new-array v1, v8, [I

    fill-array-data v1, :array_1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    .line 524
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 533
    :pswitch_a
    new-array v1, v5, [I

    aput v6, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 535
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-nez v0, :cond_5

    .line 536
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 537
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v7, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    .line 546
    :goto_2
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_1

    .line 550
    :pswitch_b
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 540
    :cond_4
    const-string v1, ""

    invoke-direct {p0, v7, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_2

    .line 543
    :cond_5
    invoke-direct {p0, v0, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_2

    .line 557
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :pswitch_c
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 558
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 561
    :cond_6
    const-string v1, ""

    invoke-direct {p0, v6, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 565
    :pswitch_d
    new-array v1, v5, [I

    const/4 v2, 0x5

    aput v2, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    if-nez v1, :cond_3

    .line 568
    const-string v1, ""

    invoke-direct {p0, v8, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_a
    .end packed-switch

    .line 467
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_9
    .end packed-switch

    .line 469
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 471
    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch

    .line 520
    :array_1
    .array-data 4
        0x4
        0x2
        0x5
        0x3
    .end array-data

    .line 546
    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private updateCallsMultiParty()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 282
    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v4

    if-le v4, v2, :cond_1

    .line 284
    .local v2, "multi":Z
    :goto_0
    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 285
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v4

    if-nez v4, :cond_2

    .line 286
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v4

    if-eq v4, v2, :cond_0

    .line 290
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setMultiParty(Z)V

    .line 291
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_1

    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "multi":Z
    :cond_1
    move v2, v3

    .line 282
    goto :goto_0

    .line 293
    .restart local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "multi":Z
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setMultiParty(Z)V

    .line 295
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_1

    .line 299
    .end local v0    # "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_3
    return-void
.end method

.method private updateClip(Ljava/lang/String;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 775
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateClip number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    new-array v2, v7, [I

    aput v5, v2, v6

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 779
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-nez v0, :cond_1

    .line 782
    new-array v2, v7, [I

    const/4 v3, 0x5

    aput v3, v2, v6

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 783
    .local v1, "cw":Landroid/bluetooth/BluetoothHeadsetClientCall;
    if-eqz v1, :cond_0

    .line 784
    invoke-direct {p0, v1, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    .line 793
    .end local v1    # "cw":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :goto_0
    return-void

    .line 787
    .restart local v1    # "cw":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_0
    invoke-direct {p0, v5, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_0

    .line 790
    .end local v1    # "cw":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_1
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setNumber(Ljava/lang/String;)V

    .line 791
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_0
.end method

.method private updateRespAndHold(I)V
    .locals 7
    .param p1, "resp_and_hold"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 734
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatRespAndHold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v1, :cond_1

    .line 737
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    const/4 v0, 0x0

    .line 743
    .local v0, "c":Landroid/bluetooth/BluetoothHeadsetClientCall;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 746
    :pswitch_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 748
    if-eqz v0, :cond_2

    .line 749
    invoke-direct {p0, v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_0

    .line 752
    :cond_2
    const-string v1, ""

    invoke-direct {p0, v4, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_0

    .line 756
    :pswitch_1
    new-array v1, v6, [I

    aput v4, v1, v5

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 757
    if-eqz v0, :cond_3

    .line 758
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    .line 760
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 763
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    .line 767
    :pswitch_2
    new-array v1, v6, [I

    aput v4, v1, v5

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    goto :goto_0

    .line 743
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 746
    :array_0
    .array-data 4
        0x4
        0x0
    .end array-data
.end method

.method private waitForIndicators(III)Z
    .locals 4
    .param p1, "call"    # I
    .param p2, "callsetup"    # I
    .param p3, "callheld"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 326
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-eq v2, v3, :cond_0

    .line 388
    :goto_0
    return v0

    .line 331
    :cond_0
    if-eq p1, v3, :cond_3

    .line 332
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    .line 340
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-ne v2, v3, :cond_5

    :cond_2
    move v0, v1

    .line 342
    goto :goto_0

    .line 333
    :cond_3
    if-eq p2, v3, :cond_4

    .line 334
    iput p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    goto :goto_1

    .line 335
    :cond_4
    if-eq p3, v3, :cond_1

    .line 336
    iput p3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    goto :goto_1

    .line 346
    :cond_5
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsStart()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    .line 348
    iget-boolean v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v2, :cond_6

    move v0, v1

    .line 349
    goto :goto_0

    .line 354
    :cond_6
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    packed-switch v2, :pswitch_data_0

    .line 369
    :goto_2
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    packed-switch v2, :pswitch_data_1

    .line 378
    :goto_3
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    packed-switch v0, :pswitch_data_2

    :goto_4
    move v0, v1

    .line 388
    goto :goto_0

    .line 356
    :pswitch_0
    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_2

    .line 359
    :pswitch_1
    const/4 v2, 0x2

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_2

    .line 362
    :pswitch_2
    const/4 v2, 0x3

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_2

    .line 371
    :pswitch_3
    const-string v2, ""

    invoke-direct {p0, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_3

    .line 381
    :pswitch_4
    const-string v0, ""

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_4

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 369
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    .line 378
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 1290
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 1291
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->cleanupNative()V

    .line 1292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeAvailable:Z

    .line 1294
    :cond_0
    return-void
.end method

.method public doQuit()V
    .locals 0

    .prologue
    .line 1286
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->quitNow()V

    .line 1287
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAudioOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAudioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAudioWbs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIndicatorNetworkState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIndicatorNetworkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIndicatorNetworkSignal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIndicatorBatteryLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIndicatorCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIndicatorCallSetup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIndicatorCallHeld: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVgsFromStack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVgmFromStack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRingtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOperatorName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSubscriberInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVoiceRecognitionActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInBandRingtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 183
    const-string v2, "mCalls:"

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 185
    .local v0, "call":Landroid/bluetooth/BluetoothHeadsetClientCall;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    .end local v0    # "call":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_0
    const-string v2, "mCallsUpdate:"

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 189
    .restart local v0    # "call":Landroid/bluetooth/BluetoothHeadsetClientCall;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 191
    .end local v0    # "call":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_1
    return-void
.end method

.method declared-synchronized getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2409
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 2410
    :cond_0
    const/4 v0, 0x0

    .line 2412
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2420
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 2421
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2422
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2424
    :cond_0
    monitor-exit p0

    .line 2425
    return-object v0

    .line 2424
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 2262
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 2280
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 2266
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2270
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 2271
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    if-ne v0, v2, :cond_2

    .line 2272
    const/4 v1, 0x1

    goto :goto_0

    .line 2275
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    if-ne v0, v2, :cond_4

    .line 2276
    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 2279
    :cond_4
    const-string v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad currentState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2262
    .end local v0    # "currentState":Lcom/android/internal/util/IState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCurrentAgEvents()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 2727
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2728
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2729
    const-string v1, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2730
    const-string v1, "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2731
    const-string v1, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2732
    const-string v1, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    const-string v1, "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2734
    const-string v1, "android.bluetooth.headsetclient.extra.IN_BAND_RING"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2735
    const-string v1, "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    return-object v0
.end method

.method public getCurrentAgFeatures()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    .line 1169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1170
    .local v0, "b":Landroid/os/Bundle;
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    .line 1172
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1174
    :cond_0
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1176
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1178
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 1180
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1182
    :cond_2
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v4, :cond_3

    .line 1184
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1186
    :cond_3
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_4

    .line 1188
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1192
    :cond_4
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 1194
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1196
    :cond_5
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_6

    .line 1198
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1200
    :cond_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1202
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1204
    :cond_7
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v4, :cond_8

    .line 1206
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1208
    :cond_8
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_9

    .line 1210
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1213
    :cond_9
    return-object v0
.end method

.method public getCurrentCalls()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2723
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 11
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2368
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2369
    .local v4, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 2371
    .local v1, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 2372
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 2373
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    .line 2374
    .local v5, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v10, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {v5, v10}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2377
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 2378
    .local v2, "connectionState":I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget v9, v0, v7

    .line 2379
    .local v9, "state":I
    if-ne v2, v9, :cond_1

    .line 2380
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2378
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2384
    .end local v0    # "arr$":[I
    .end local v2    # "connectionState":I
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "featureUuids":[Landroid/os/ParcelUuid;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "state":I
    :cond_2
    monitor-exit p0

    .line 2385
    return-object v4

    .line 2384
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method isAudioOn()Z
    .locals 2

    .prologue
    .line 2405
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 2

    .prologue
    .line 2363
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 2364
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2389
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 2390
    .local v0, "priority":I
    const/4 v1, 0x0

    .line 2396
    .local v1, "ret":Z
    if-gtz v0, :cond_0

    const/4 v2, -0x1

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 2399
    :cond_0
    const/4 v1, 0x1

    .line 2401
    :cond_1
    return v1
.end method
