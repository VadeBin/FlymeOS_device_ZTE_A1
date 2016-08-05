.class final Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;,
        Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;,
        Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;,
        Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;,
        Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;,
        Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;
    }
.end annotation


# static fields
.field static final AUDIO_STATE_REMOTE_SUSPEND:I = 0x0

.field static final AUDIO_STATE_STARTED:I = 0x2

.field static final AUDIO_STATE_STOPPED:I = 0x1

.field static final CONNECT:I = 0x1

.field static final CONNECTION_STATE_CONNECTED:I = 0x2

.field static final CONNECTION_STATE_CONNECTING:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field static final CONNECTION_STATE_DISCONNECTING:I = 0x3

.field private static final CONNECT_TIMEOUT:I = 0xc9

.field private static final DBG:Z = true

.field static final DISCONNECT:I = 0x2

.field private static final EVENT_TYPE_AUDIO_CONFIG_CHANGED:I = 0x3

.field private static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field private static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field private static final EVENT_TYPE_NONE:I = 0x0

.field private static final MSG_CONNECTION_STATE_CHANGED:I = 0x0

.field private static final STACK_EVENT:I = 0x65


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAudioConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/bluetooth/BluetoothAudioConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

.field private mContext:Landroid/content/Context;

.field private mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

.field private mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;

.field private mPending:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

.field private mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

.field private mTargetDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 119
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->classInitNative()V

    .line 120
    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpSinkService;Landroid/content/Context;)V
    .locals 4
    .param p1, "svc"    # Lcom/android/bluetooth/a2dp/A2dpSinkService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 123
    const-string v1, "A2dpSinkStateMachine"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 111
    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 112
    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 113
    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    .line 124
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    .line 125
    iput-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    .line 126
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 128
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->initNative()V

    .line 130
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    .line 131
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    .line 132
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    .line 134
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 135
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 136
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 138
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 140
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 141
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "BluetoothA2dpSinkService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 143
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;

    .line 145
    const-string v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioManager:Landroid/media/AudioManager;

    .line 146
    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->connectA2dpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothAudioConfig;
    .param p2, "x2"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->processAudioConfigEvent(Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->disconnectA2dpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->onConnectionStateChanged(I[B)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dp/A2dpSinkService;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpSinkService;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method private broadcastAudioConfig(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAudioConfig;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "audioConfig"    # Landroid/bluetooth/BluetoothAudioConfig;

    .prologue
    .line 712
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp-sink.profile.action.AUDIO_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 714
    const-string v1, "android.bluetooth.a2dp-sink.profile.extra.AUDIO_CONFIG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 716
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP Audio Config : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method private broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "prevState"    # I

    .prologue
    .line 701
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp-sink.profile.action.PLAYING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 702
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 703
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 704
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP Playing state : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    .line 688
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, p2, v2}, Landroid/media/AudioManager;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I

    move-result v0

    .line 691
    .local v0, "delay":I
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 692
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p3, p2, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$IntentBroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 698
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native connectA2dpNative([B)Z
.end method

.method private native disconnectA2dpNative([B)Z
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 722
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .param p1, "address"    # [B

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private native initNative()V
.end method

.method static make(Lcom/android/bluetooth/a2dp/A2dpSinkService;Landroid/content/Context;)Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    .locals 3
    .param p0, "svc"    # Lcom/android/bluetooth/a2dp/A2dpSinkService;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const-string v1, "A2dpSinkStateMachine"

    const-string v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkService;Landroid/content/Context;)V

    .line 151
    .local v0, "a2dpSm":Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->start()V

    .line 152
    return-object v0
.end method

.method private onAudioConfigChanged([BII)V
    .locals 4
    .param p1, "address"    # [B
    .param p2, "sampleRate"    # I
    .param p3, "channelCount"    # I

    .prologue
    .line 740
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;ILcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;)V

    .line 741
    .local v1, "event":Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    const/16 v0, 0x10

    .line 743
    .local v0, "channelConfig":I
    :goto_0
    new-instance v2, Landroid/bluetooth/BluetoothAudioConfig;

    const/4 v3, 0x2

    invoke-direct {v2, p2, v0, v3}, Landroid/bluetooth/BluetoothAudioConfig;-><init>(III)V

    iput-object v2, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    .line 745
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iput-object v2, v1, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 746
    const/16 v2, 0x65

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 747
    return-void

    .line 741
    .end local v0    # "channelConfig":I
    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method private onAudioStateChanged(I[B)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    .line 733
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;ILcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;)V

    .line 734
    .local v0, "event":Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->valueInt:I

    .line 735
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 736
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 737
    return-void
.end method

.method private onConnectionStateChanged(I[B)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    .line 726
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;ILcom/android/bluetooth/a2dp/A2dpSinkStateMachine$1;)V

    .line 727
    .local v0, "event":Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->valueInt:I

    .line 728
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 729
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 730
    return-void
.end method

.method private processAudioConfigEvent(Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "audioConfig"    # Landroid/bluetooth/BluetoothAudioConfig;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->broadcastAudioConfig(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAudioConfig;)V

    .line 604
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->cleanupNative()V

    .line 161
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 162
    return-void
.end method

.method public doQuit()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->quitNow()V

    .line 157
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTargetDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIncomingDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateMachine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAudioConfig;

    return-object v0
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 3
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
    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 645
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    if-ne v1, v2, :cond_0

    .line 646
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_0
    monitor-exit p0

    .line 649
    return-object v0

    .line 648
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 607
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Disconnected;

    if-ne v3, v4, :cond_0

    .line 633
    :goto_0
    return v1

    .line 611
    :cond_0
    monitor-enter p0

    .line 612
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 613
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Pending;

    if-ne v0, v3, :cond_4

    .line 614
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 615
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 617
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 618
    const/4 v1, 0x3

    monitor-exit p0

    goto :goto_0

    .line 635
    .end local v0    # "currentState":Lcom/android/internal/util/IState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 620
    .restart local v0    # "currentState":Lcom/android/internal/util/IState;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 621
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 623
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 626
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine$Connected;

    if-ne v0, v2, :cond_6

    .line 627
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 628
    const/4 v1, 0x2

    monitor-exit p0

    goto :goto_0

    .line 630
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 632
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad currentState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    .line 633
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 8
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
    .line 665
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v3, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v7, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 669
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 670
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 671
    .local v4, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v7, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {v4, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 674
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 675
    .local v1, "connectionState":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_0

    .line 676
    aget v7, p1, v5

    if-ne v1, v7, :cond_1

    .line 677
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 681
    .end local v1    # "connectionState":I
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "featureUuids":[Landroid/os/ParcelUuid;
    .end local v5    # "i":I
    :cond_2
    monitor-exit p0

    return-object v3

    .line 665
    .end local v0    # "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 653
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 654
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    const/4 v1, 0x1

    .line 656
    .local v1, "ret":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_1

    .line 659
    :cond_0
    const/4 v1, 0x0

    .line 661
    :cond_1
    return v1
.end method
