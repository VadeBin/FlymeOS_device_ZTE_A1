.class final Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;,
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;,
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;,
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;,
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;,
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
    }
.end annotation


# static fields
.field static final CALL_STATE_CHANGED:I = 0x9

.field private static final CLCC_RSP_TIMEOUT:I = 0x68

.field private static final CLCC_RSP_TIMEOUT_VALUE:I = 0x1388

.field static final CONNECT:I = 0x1

.field static final CONNECT_AUDIO:I = 0x3

.field private static final CONNECT_TIMEOUT:I = 0xc9

.field static final CONTACTS_ID_COLUMN_INDEX:I = 0x0

.field static final CONTACTS_NAME_COLUMN_INDEX:I = 0x1

.field private static final DBG:Z = true

.field static final DEVICE_STATE_CHANGED:I = 0xb

.field private static final DIALING_OUT_TIMEOUT:I = 0x66

.field private static final DIALING_OUT_TIMEOUT_VALUE:I = 0x2710

.field static final DISABLE_WBS:I = 0x11

.field static final DISCONNECT:I = 0x2

.field static final DISCONNECT_AUDIO:I = 0x4

.field static final ENABLE_WBS:I = 0x10

.field private static final EVENT_TYPE_ANSWER_CALL:I = 0x4

.field private static final EVENT_TYPE_AT_CHLD:I = 0xa

.field private static final EVENT_TYPE_AT_CIND:I = 0xc

.field private static final EVENT_TYPE_AT_CLCC:I = 0xe

.field private static final EVENT_TYPE_AT_COPS:I = 0xd

.field private static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field private static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field private static final EVENT_TYPE_DIAL_CALL:I = 0x7

.field private static final EVENT_TYPE_HANGUP_CALL:I = 0x5

.field private static final EVENT_TYPE_KEY_PRESSED:I = 0x10

.field private static final EVENT_TYPE_NOICE_REDUCTION:I = 0x9

.field private static final EVENT_TYPE_NONE:I = 0x0

.field private static final EVENT_TYPE_SEND_DTMF:I = 0x8

.field private static final EVENT_TYPE_SUBSCRIBER_NUMBER_REQUEST:I = 0xb

.field private static final EVENT_TYPE_UNKNOWN_AT:I = 0xf

.field private static final EVENT_TYPE_VOLUME_CHANGED:I = 0x6

.field private static final EVENT_TYPE_VR_STATE_CHANGED:I = 0x3

.field private static final EVENT_TYPE_WBS:I = 0x11

.field private static final HEADSET_NAME:Ljava/lang/String; = "bt_headset_name"

.field private static final HEADSET_NREC:Ljava/lang/String; = "bt_headset_nrec"

.field private static final HEADSET_UUIDS:[Landroid/os/ParcelUuid;

.field private static final HEADSET_WBS:Ljava/lang/String; = "bt_wbs"

.field static final INTENT_BATTERY_CHANGED:I = 0xa

.field static final INTENT_SCO_VOLUME_CHANGED:I = 0x7

.field private static final NBS_CODEC:I = 0x1

.field private static final SCHEME_TEL:Ljava/lang/String; = "tel"

.field static final SEND_CCLC_RESPONSE:I = 0xc

.field static final SEND_VENDOR_SPECIFIC_RESULT_CODE:I = 0xd

.field static final SET_MIC_VOLUME:I = 0x8

.field private static final STACK_EVENT:I = 0x65

.field private static final START_VR_TIMEOUT:I = 0x67

.field private static final START_VR_TIMEOUT_VALUE:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "HeadsetStateMachine"

.field private static final VENDOR_SPECIFIC_AT_COMMAND_COMPANY_ID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final VIRTUAL_CALL_START:I = 0xe

.field static final VIRTUAL_CALL_STOP:I = 0xf

.field static final VOICE_RECOGNITION_START:I = 0x5

.field static final VOICE_RECOGNITION_STOP:I = 0x6

.field private static final WBS_CODEC:I = 0x2

.field private static sRefCount:I

.field private static sVoiceCommandIntent:Landroid/content/Intent;


# instance fields
.field private mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

.field private mAudioState:I

.field private mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

.field private mConnectedDevicesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDialingOut:Z

.field private mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

.field private mHeadsetAudioParam:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsetBrsf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

.field private mMultiHFPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;

.field private mNativeAvailable:Z

.field private mPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;

.field private mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

.field private mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

.field private mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

.field private mPowerManager:Landroid/os/PowerManager;

.field mPrevState:Lcom/android/internal/util/IState;

.field private mService:Lcom/android/bluetooth/hfp/HeadsetService;

.field private mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTargetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mVirtualCallStarted:Z

.field private mVoiceRecognitionStarted:Z

.field private mWaitingForVoiceRecognition:Z

.field private max_hf_connections:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    sput v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sRefCount:I

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->HEADSET_UUIDS:[Landroid/os/ParcelUuid;

    .line 214
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->classInitNative()V

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->VENDOR_SPECIFIC_AT_COMMAND_COMPANY_ID:Ljava/util/Map;

    .line 217
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->VENDOR_SPECIFIC_AT_COMMAND_COMPANY_ID:Ljava/util/Map;

    const-string v1, "+XEVENT"

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->VENDOR_SPECIFIC_AT_COMMAND_COMPANY_ID:Ljava/util/Map;

    const-string v1, "+ANDROID"

    const/16 v2, 0xe0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 7
    .param p1, "context"    # Lcom/android/bluetooth/hfp/HeadsetService;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 222
    const-string v2, "HeadsetStateMachine"

    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 131
    iput v6, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->max_hf_connections:I

    .line 139
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetAudioParam:Ljava/util/HashMap;

    .line 142
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetBrsf:Ljava/util/HashMap;

    .line 159
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVirtualCallStarted:Z

    .line 160
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z

    .line 161
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z

    .line 164
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDialingOut:Z

    .line 203
    iput-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 204
    iput-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 205
    iput-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 206
    iput-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;

    .line 207
    iput-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    .line 2096
    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnection:Landroid/content/ServiceConnection;

    .line 223
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 224
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z

    .line 225
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z

    .line 227
    const-string v2, "power"

    invoke-virtual {p1, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPowerManager:Landroid/os/PowerManager;

    .line 228
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "HeadsetStateMachine:VoiceRecognition"

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 230
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 232
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDialingOut:Z

    .line 233
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;

    .line 234
    new-instance v2, Lcom/android/bluetooth/hfp/AtPhonebook;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-direct {v2, v3, p0}, Lcom/android/bluetooth/hfp/AtPhonebook;-><init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    .line 235
    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-direct {v2, p1, p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;-><init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .line 236
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I

    .line 237
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 240
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v2, v4}, Lcom/android/bluetooth/hfp/HeadsetService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    :cond_0
    const-string v2, "HeadsetStateMachine"

    const-string v3, "Could not bind to Bluetooth Headset Phone Service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_1
    const-string v2, "bt.max.hfpclient.connections"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "max_hfp_clients":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->max_hf_connections:I

    .line 247
    :cond_2
    const-string v2, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "max_hf_connections = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->max_hf_connections:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->max_hf_connections:I

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->initializeNative(I)V

    .line 249
    iput-boolean v6, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeAvailable:Z

    .line 251
    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    invoke-direct {v2, p0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    .line 252
    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;

    invoke-direct {v2, p0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;

    .line 253
    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    invoke-direct {v2, p0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    .line 254
    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    invoke-direct {v2, p0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    .line 256
    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;

    invoke-direct {v2, p0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiHFPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;

    .line 258
    sget-object v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sVoiceCommandIntent:Landroid/content/Intent;

    if-nez v2, :cond_3

    .line 259
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sVoiceCommandIntent:Landroid/content/Intent;

    .line 260
    sget-object v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 264
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 265
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 266
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 268
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiHFPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 270
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 273
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPrevState:Lcom/android/internal/util/IState;

    .line 275
    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z

    return v0
.end method

.method static synthetic access$10000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectAudioNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;II[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->setVolumeNative(II[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$12100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->connectHfpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processIntentBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/bluetooth/hfp/HeadsetCallState;
    .param p2, "x2"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processCallState(Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectHfpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->configAudioParameters(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->onConnectionStateChanged(I[B)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDeviceForMessage(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetAudioParam:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetBrsf:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processWBSEvent(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiHFPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/IBluetoothHeadsetPhone;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/IBluetoothHeadsetPhone;)Landroid/bluetooth/IBluetoothHeadsetPhone;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothHeadsetPhone;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->max_hf_connections:I

    return v0
.end method

.method static synthetic access$5800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->connectAudioNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processLocalVrEvent(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processDeviceStateChanged(Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/bluetooth/hfp/HeadsetClccResponse;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSendClccResponse(Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/AtPhonebook;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;IIIIZLjava/lang/String;I[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # I
    .param p8, "x8"    # [B

    .prologue
    .line 85
    invoke-direct/range {p0 .. p8}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->clccResponseNative(IIIIZLjava/lang/String;I[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSendVendorSpecificResultCode(Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDialingOut:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDialingOut:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[BI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->configureWBSNative([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processVrEvent(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAnswerCall(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processHangupCall(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;IILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processVolumeEvent(IILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processDialCall(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSendDtmf(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processNoiceReductionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtChld(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSubscriberNumberRequest(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCind(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCops(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtClcc(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processUnknownAt(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processKeyPressed(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->setAudioParameters(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isVirtualCallInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method private broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    .line 2414
    const/16 v1, 0xc

    if-ne p3, v1, :cond_0

    .line 2417
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->terminateScoUsingVirtualVoiceCall()Z

    .line 2419
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2420
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2421
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2422
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2423
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

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

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2426
    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    .line 2394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

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

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2395
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 2397
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->terminateScoUsingVirtualVoiceCall()Z

    .line 2403
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 2405
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2406
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2407
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2408
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2409
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2411
    return-void
.end method

.method private broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "companyId"    # I
    .param p3, "commandType"    # I
    .param p4, "arguments"    # [Ljava/lang/Object;
    .param p5, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastVendorSpecificEventIntent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2439
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2440
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2443
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2444
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.bluetooth.headset.intent.category.companyid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2449
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2451
    return-void
.end method

.method private native cindResponseNative(IIIIIII[B)Z
.end method

.method private static native classInitNative()V
.end method

.method private native clccResponseNative(IIIIZLjava/lang/String;I[B)Z
.end method

.method private native cleanupNative()V
.end method

.method private configAudioParameters(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2457
    .local v0, "AudioParamConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "NREC"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2458
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetAudioParam:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2459
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt_headset_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bt_headset_nrec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2461
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configAudioParameters for device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " are: nrec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NREC"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    return-void
.end method

.method private native configureWBSNative([BI)Z
.end method

.method private native connectAudioNative([B)Z
.end method

.method private native connectHfpNative([B)Z
.end method

.method private native copsResponseNative(Ljava/lang/String;[B)Z
.end method

.method private native disconnectAudioNative([B)Z
.end method

.method private native disconnectHfpNative([B)Z
.end method

.method private declared-synchronized expectVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2327
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z

    .line 2328
    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2329
    .local v0, "m":Landroid/os/Message;
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getMatchingDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2330
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2332
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2333
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2335
    :cond_0
    monitor-exit p0

    return-void

    .line 2327
    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static findChar(CLjava/lang/String;I)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    const/16 v3, 0x22

    .line 2996
    move v1, p2

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2997
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2998
    .local v0, "c":C
    if-ne v0, v3, :cond_0

    .line 2999
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 3000
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3001
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 3007
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 3003
    .restart local v0    # "c":C
    :cond_0
    if-ne v0, p0, :cond_1

    move v2, v1

    .line 3004
    goto :goto_1

    .line 2996
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3007
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method private static generateArgs(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 3016
    const/4 v2, 0x0

    .line 3018
    .local v2, "i":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3019
    .local v4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v2, v5, :cond_0

    .line 3020
    const/16 v5, 0x2c

    invoke-static {v5, p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->findChar(CLjava/lang/String;I)I

    move-result v3

    .line 3022
    .local v3, "j":I
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3024
    .local v0, "arg":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3029
    :goto_1
    add-int/lit8 v2, v3, 0x1

    .line 3030
    goto :goto_0

    .line 3025
    :catch_0
    move-exception v1

    .line 3026
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3031
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "j":I
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private getAtCommandType(Ljava/lang/String;)I
    .locals 4
    .param p1, "atCommand"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x5

    .line 2508
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    .line 2509
    .local v1, "commandType":I
    const/4 v0, 0x0

    .line 2510
    .local v0, "atString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2511
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 2513
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2514
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2515
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    .line 2523
    :cond_0
    :goto_0
    return v1

    .line 2516
    :cond_1
    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2517
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    goto :goto_0

    .line 2518
    :cond_2
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2519
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    goto :goto_0

    .line 2521
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 3399
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getCurrentDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 3385
    const-string v0, "<unknown>"

    .line 3387
    .local v0, "defaultName":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 3395
    .end local v0    # "defaultName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 3391
    .restart local v0    # "defaultName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3392
    .local v1, "deviceName":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 3395
    goto :goto_0
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .param p1, "address"    # [B

    .prologue
    .line 3403
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceForMessage(I)Landroid/bluetooth/BluetoothDevice;
    .locals 5
    .param p1, "what"    # I

    .prologue
    const/4 v2, 0x0

    .line 2360
    const/16 v3, 0xc9

    if-ne p1, v3, :cond_0

    .line 2361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceForMessage: returning mTargetDevice for what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2362
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2377
    :goto_0
    return-object v0

    .line 2364
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceForMessage: No connected device. what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    move-object v0, v2

    .line 2366
    goto :goto_0

    .line 2368
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2370
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceForMessage: returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2376
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceForMessage: No matching device for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Returning null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    move-object v0, v2

    .line 2377
    goto :goto_0
.end method

.method private getMatchingDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2382
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 2384
    .local v1, "matchingDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2389
    .end local v1    # "matchingDevice":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhoneNumberByIndex(IZ)Ljava/lang/String;
    .locals 13
    .param p1, "index"    # I
    .param p2, "orderByName"    # Z

    .prologue
    .line 3145
    iget-object v7, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 3146
    .local v7, "context":Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneNumberByIndex("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3147
    const/4 v3, 0x1

    if-ge p1, v3, :cond_0

    .line 3148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneNumberByIndex : Invalid index value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3149
    const/4 v12, 0x0

    .line 3191
    :goto_0
    return-object v12

    .line 3152
    :cond_0
    const/4 v12, 0x0

    .line 3153
    .local v12, "phoneNumber":Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 3154
    .local v1, "myUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 3155
    .local v6, "contactCursor":Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 3156
    .local v8, "contactId":J
    const/4 v11, -0x1

    .line 3157
    .local v11, "numberColIndex":I
    if-eqz p2, :cond_3

    const-string v5, "display_name"

    .line 3158
    .local v5, "order":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    .line 3163
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3165
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3168
    if-eqz v6, :cond_1

    .line 3169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contactCursor.getCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3172
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gt p1, v3, :cond_2

    .line 3173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contactCursor.getCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3174
    add-int/lit8 v3, p1, -0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3175
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query startPointId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3177
    invoke-direct {p0, v8, v9}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->querySuperPrimaryPhone(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 3182
    :cond_2
    if-eqz v6, :cond_4

    .line 3183
    const-string v3, "close contactCursor"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3190
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneNumberByIndex return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v12, :cond_7

    move-object v3, v12

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3157
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v5    # "order":Ljava/lang/String;
    :cond_3
    const-string v5, "_id"

    goto/16 :goto_1

    .line 3186
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v5    # "order":Ljava/lang/String;
    :cond_4
    const-string v3, "[ERR] contactCursor is null"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3179
    :catch_0
    move-exception v10

    .line 3180
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "[ERR] query Phone number failed"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3182
    if-eqz v6, :cond_5

    .line 3183
    const-string v3, "close contactCursor"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 3186
    :cond_5
    const-string v3, "[ERR] contactCursor is null"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3182
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_6

    .line 3183
    const-string v4, "close contactCursor"

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3186
    :goto_4
    throw v3

    :cond_6
    const-string v4, "[ERR] contactCursor is null"

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 3190
    :cond_7
    const-string v3, "null"

    goto :goto_3
.end method

.method private native initializeNative(I)V
.end method

.method private isInCall()Z
    .locals 2

    .prologue
    .line 3407
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getNumActiveCall()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getNumHeldCall()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCallState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVirtualCallInProgress()Z
    .locals 2

    .prologue
    .line 2528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVirtualCallInProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVirtualCallStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2529
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVirtualCallStarted:Z

    return v0
.end method

.method static make(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .locals 3
    .param p0, "context"    # Lcom/android/bluetooth/hfp/HeadsetService;

    .prologue
    .line 278
    const-string v1, "HeadsetStateMachine"

    const-string v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    .line 280
    .local v0, "hssm":Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->start()V

    .line 281
    return-object v0
.end method

.method private native notifyDeviceStatusNative(IIII)Z
.end method

.method private onAnswerCall([B)V
    .locals 3
    .param p1, "address"    # [B

    .prologue
    .line 3257
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3258
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3259
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3260
    return-void
.end method

.method private onAtChld(I[B)V
    .locals 3
    .param p1, "chld"    # I
    .param p2, "address"    # [B

    .prologue
    .line 3305
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3306
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    .line 3307
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3308
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3309
    return-void
.end method

.method private onAtCind([B)V
    .locals 3
    .param p1, "address"    # [B

    .prologue
    .line 3318
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3319
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3320
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3321
    return-void
.end method

.method private onAtClcc([B)V
    .locals 3
    .param p1, "address"    # [B

    .prologue
    .line 3330
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3331
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3332
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3333
    return-void
.end method

.method private onAtCnum([B)V
    .locals 3
    .param p1, "address"    # [B

    .prologue
    .line 3312
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3313
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3314
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3315
    return-void
.end method

.method private onAtCops([B)V
    .locals 3
    .param p1, "address"    # [B

    .prologue
    .line 3324
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3325
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3326
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3327
    return-void
.end method

.method private onAudioStateChanged(I[B)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    .line 3243
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3244
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    .line 3245
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3246
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3247
    return-void
.end method

.method private onConnectionStateChanged(I[B)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    .line 3236
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3237
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    .line 3238
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3239
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3240
    return-void
.end method

.method private onDialCall(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "address"    # [B

    .prologue
    .line 3277
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3278
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    iput-object p1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 3279
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3280
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3281
    return-void
.end method

.method private onHangupCall([B)V
    .locals 3
    .param p1, "address"    # [B

    .prologue
    .line 3263
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3264
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3265
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3266
    return-void
.end method

.method private onKeyPressed([B)V
    .locals 3
    .param p1, "address"    # [B

    .prologue
    .line 3343
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3344
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3345
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3346
    return-void
.end method

.method private onNoiceReductionEnable(Z[B)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "address"    # [B

    .prologue
    .line 3291
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3292
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    .line 3293
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3294
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3295
    return-void

    .line 3292
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onSendDtmf(I[B)V
    .locals 3
    .param p1, "dtmf"    # I
    .param p2, "address"    # [B

    .prologue
    .line 3284
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3285
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    .line 3286
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3287
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3288
    return-void
.end method

.method private onUnknownAt(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "atString"    # Ljava/lang/String;
    .param p2, "address"    # [B

    .prologue
    .line 3336
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3337
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    iput-object p1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 3338
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3339
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3340
    return-void
.end method

.method private onVolumeChanged(II[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "volume"    # I
    .param p3, "address"    # [B

    .prologue
    .line 3269
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3270
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    .line 3271
    iput p2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt2:I

    .line 3272
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3273
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3274
    return-void
.end method

.method private onVrStateChanged(I[B)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    .line 3250
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3251
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    .line 3252
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3253
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3254
    return-void
.end method

.method private onWBS(I[B)V
    .locals 3
    .param p1, "codec"    # I
    .param p2, "address"    # [B

    .prologue
    .line 3298
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    .line 3299
    .local v0, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    .line 3300
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 3301
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3302
    return-void
.end method

.method private parseUnknownAt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "atString"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x22

    .line 2484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2485
    .local v0, "atCommand":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 2487
    .local v4, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 2488
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2489
    .local v1, "c":C
    if-ne v1, v6, :cond_3

    .line 2490
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 2491
    .local v3, "j":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 2492
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2493
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2502
    .end local v1    # "c":C
    .end local v3    # "j":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2503
    return-object v4

    .line 2496
    .restart local v1    # "c":C
    .restart local v3    # "j":I
    :cond_1
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2497
    move v2, v3

    .line 2487
    .end local v3    # "j":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2498
    :cond_3
    const/16 v5, 0x20

    if-eq v1, v5, :cond_2

    .line 2499
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private native phoneStateChangeNative(IIILjava/lang/String;I)Z
.end method

.method private processAnswerCall(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2580
    if-nez p1, :cond_0

    .line 2581
    const-string v1, "HeadsetStateMachine"

    const-string v2, "processAnswerCall device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    :goto_0
    return-void

    .line 2585
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v1, :cond_1

    .line 2587
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadsetPhone;->answerCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2588
    :catch_0
    move-exception v0

    .line 2589
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2592
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "HeadsetStateMachine"

    const-string v2, "Handsfree phone proxy null for answering call"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processAtChld(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "chld"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 2805
    if-nez p2, :cond_0

    .line 2806
    const-string v1, "HeadsetStateMachine"

    const-string v2, "processAtChld device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    :goto_0
    return-void

    .line 2810
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v1, :cond_2

    .line 2812
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetPhone;->processChld(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2813
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2819
    :catch_0
    move-exception v0

    .line 2820
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {p0, v4, v4, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0

    .line 2816
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2825
    :cond_2
    const-string v1, "HeadsetStateMachine"

    const-string v2, "Handsfree phone proxy null for At+Chld"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {p0, v4, v4, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0
.end method

.method private processAtCind(Landroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2864
    if-nez p1, :cond_0

    .line 2865
    const-string v0, "HeadsetStateMachine"

    const-string v1, "processAtCind device is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    :goto_0
    return-void

    .line 2872
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isVirtualCallInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2873
    const/4 v2, 0x1

    .line 2874
    .local v2, "call":I
    const/4 v3, 0x0

    .line 2881
    .local v3, "call_setup":I
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getService()I

    move-result v1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCallState()I

    move-result v4

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getSignal()I

    move-result v5

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getRoam()I

    move-result v6

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getBatteryCharge()I

    move-result v7

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->cindResponseNative(IIIIIII[B)Z

    goto :goto_0

    .line 2877
    .end local v2    # "call":I
    .end local v3    # "call_setup":I
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getNumActiveCall()I

    move-result v2

    .line 2878
    .restart local v2    # "call":I
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getNumHeldCall()I

    move-result v3

    .restart local v3    # "call_setup":I
    goto :goto_1
.end method

.method private processAtClcc(Landroid/bluetooth/BluetoothDevice;)V
    .locals 22
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2914
    if-nez p1, :cond_0

    .line 2915
    const-string v2, "HeadsetStateMachine"

    const-string v3, "processAtClcc device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    :goto_0
    return-void

    .line 2919
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v2, :cond_3

    .line 2921
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isVirtualCallInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2922
    const-string v8, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2923
    .local v8, "phoneNumber":Ljava/lang/String;
    const/16 v9, 0x81

    .line 2925
    .local v9, "type":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothHeadsetPhone;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v8

    .line 2926
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 2932
    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v10

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->clccResponseNative(IIIIZLjava/lang/String;I[B)Z

    .line 2934
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, ""

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v18

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->clccResponseNative(IIIIZLjava/lang/String;I[B)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2948
    .end local v8    # "phoneNumber":Ljava/lang/String;
    .end local v9    # "type":I
    :catch_0
    move-exception v19

    .line 2949
    .local v19, "e":Landroid/os/RemoteException;
    const-string v2, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, ""

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v18

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->clccResponseNative(IIIIZLjava/lang/String;I[B)Z

    goto :goto_0

    .line 2927
    .end local v19    # "e":Landroid/os/RemoteException;
    .restart local v8    # "phoneNumber":Ljava/lang/String;
    .restart local v9    # "type":I
    :catch_1
    move-exception v20

    .line 2928
    .local v20, "ee":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "HeadsetStateMachine"

    const-string v3, "Unable to retrieve phone numberusing IBluetoothHeadsetPhone proxy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    const-string v8, ""

    goto :goto_1

    .line 2936
    .end local v8    # "phoneNumber":Ljava/lang/String;
    .end local v9    # "type":I
    .end local v20    # "ee":Landroid/os/RemoteException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothHeadsetPhone;->listCurrentCalls()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2937
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, ""

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v18

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->clccResponseNative(IIIIZLjava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 2942
    :cond_2
    const-string v2, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting CLCC response timeout for device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    const/16 v2, 0x68

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 2945
    .local v21, "m":Landroid/os/Message;
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getMatchingDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2946
    const-wide/16 v2, 0x1388

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 2953
    .end local v21    # "m":Landroid/os/Message;
    :cond_3
    const-string v2, "HeadsetStateMachine"

    const-string v3, "Handsfree phone proxy null for At+CLCC"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, ""

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v18

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->clccResponseNative(IIIIZLjava/lang/String;I[B)Z

    goto/16 :goto_0
.end method

.method private processAtCops(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2888
    if-nez p1, :cond_0

    .line 2889
    const-string v2, "HeadsetStateMachine"

    const-string v3, "processAtCops device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    :goto_0
    return-void

    .line 2893
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v2, :cond_2

    .line 2895
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothHeadsetPhone;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2896
    .local v1, "operatorName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2897
    const-string v1, ""

    .line 2900
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cops: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2902
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->copsResponseNative(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2903
    .end local v1    # "operatorName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2904
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    const-string v2, ""

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->copsResponseNative(Ljava/lang/String;[B)Z

    goto :goto_0

    .line 2908
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v2, "HeadsetStateMachine"

    const-string v3, "Handsfree phone proxy null for At+COPS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    const-string v2, ""

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->copsResponseNative(Ljava/lang/String;[B)Z

    goto :goto_0
.end method

.method private processAtCpbr(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "atString"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 2981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAtCpbr - atString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2982
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    if-eqz v0, :cond_0

    .line 2983
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hfp/AtPhonebook;->handleCpbrCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    .line 2989
    :goto_0
    return-void

    .line 2986
    :cond_0
    const-string v0, "HeadsetStateMachine"

    const-string v1, "Phonebook handle null for At+CPBR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-virtual {p0, v2, v2, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0
.end method

.method private processAtCpbs(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "atString"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 2970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAtCpbs - atString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2971
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    if-eqz v0, :cond_0

    .line 2972
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hfp/AtPhonebook;->handleCpbsCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    .line 2978
    :goto_0
    return-void

    .line 2975
    :cond_0
    const-string v0, "HeadsetStateMachine"

    const-string v1, "Phonebook handle null for At+CPBS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-virtual {p0, v2, v2, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0
.end method

.method private processAtCscs(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "atString"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 2959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAtCscs - atString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2960
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    if-eqz v0, :cond_0

    .line 2961
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hfp/AtPhonebook;->handleCscsCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    .line 2967
    :goto_0
    return-void

    .line 2964
    :cond_0
    const-string v0, "HeadsetStateMachine"

    const-string v1, "Phonebook handle null for At+CSCS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-virtual {p0, v2, v2, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0
.end method

.method private processCallState(Lcom/android/bluetooth/hfp/HeadsetCallState;)V
    .locals 1
    .param p1, "callState"    # Lcom/android/bluetooth/hfp/HeadsetCallState;

    .prologue
    .line 2727
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processCallState(Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V

    .line 2728
    return-void
.end method

.method private processCallState(Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V
    .locals 7
    .param p1, "callState"    # Lcom/android/bluetooth/hfp/HeadsetCallState;
    .param p2, "isVirtualCall"    # Z

    .prologue
    const/16 v3, 0x66

    const/4 v2, 0x0

    .line 2732
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    iget v1, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumActive:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setNumActiveCall(I)V

    .line 2733
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    iget v1, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumHeld:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setNumHeldCall(I)V

    .line 2734
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    iget v1, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setCallState(I)V

    .line 2735
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDialingOut:Z

    if-eqz v0, :cond_2

    .line 2736
    iget v0, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2738
    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDeviceForMessage(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 2739
    .local v6, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v6, :cond_1

    .line 2777
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 2742
    .restart local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    .line 2744
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    .line 2752
    iput-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDialingOut:Z

    .line 2761
    .end local v6    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isInCall()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 2763
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2765
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumActive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNumHeld: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumHeld:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCallState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2768
    if-nez p2, :cond_4

    .line 2771
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->terminateScoUsingVirtualVoiceCall()Z

    .line 2773
    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    if-eq v0, v1, :cond_0

    .line 2774
    iget v1, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumActive:I

    iget v2, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumHeld:I

    iget v3, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    iget-object v4, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumber:Ljava/lang/String;

    iget v5, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->phoneStateChangeNative(IIILjava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method private processDeviceStateChanged(Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V
    .locals 4
    .param p1, "deviceState"    # Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    .prologue
    .line 3360
    iget v0, p1, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mService:I

    iget v1, p1, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mRoam:I

    iget v2, p1, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mSignal:I

    iget v3, p1, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mBatteryCharge:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->notifyDeviceStatusNative(IIII)Z

    .line 3362
    return-void
.end method

.method private processDialCall(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 10
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2619
    if-nez p2, :cond_0

    .line 2620
    const-string v5, "HeadsetStateMachine"

    const-string v6, "processDialCall device is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    :goto_0
    return-void

    .line 2624
    :cond_0
    const/4 v1, 0x0

    .line 2625
    .local v1, "dialNumber":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 2626
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->getLastDialledNumber()Ljava/lang/String;

    move-result-object v1

    .line 2627
    if-nez v1, :cond_6

    .line 2628
    const-string v5, "processDialCall, last dial number null"

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2629
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {p0, v8, v8, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0

    .line 2633
    :cond_2
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_4

    .line 2636
    const-string v5, ">9999"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2637
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {p0, v8, v8, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0

    .line 2644
    :cond_3
    const-string v5, "processDialCall, memory dial is supported by MTK"

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2647
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2648
    .local v0, "args":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ATD memory dial : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2651
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getPhoneNumberByIndex(IZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2657
    :goto_1
    if-nez v1, :cond_6

    .line 2659
    const-string v5, "processDialCall, memory dial number null"

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2661
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {p0, v8, v8, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0

    .line 2652
    :catch_0
    move-exception v2

    .line 2653
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v5, "HeadsetStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ERR] wrong memory index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2667
    .end local v0    # "args":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_5

    .line 2668
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2671
    :cond_5
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2674
    :cond_6
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->terminateScoUsingVirtualVoiceCall()Z

    .line 2676
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    const/4 v7, 0x0

    invoke-static {v6, v1, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2678
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2679
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v5, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->startActivity(Landroid/content/Intent;)V

    .line 2681
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "broadcast for outgoing call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2686
    iput-boolean v9, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDialingOut:Z

    .line 2687
    const/16 v5, 0x66

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2688
    .local v4, "m":Landroid/os/Message;
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getMatchingDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2689
    const-wide/16 v6, 0x2710

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0
.end method

.method private processHangupCall(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2597
    if-nez p1, :cond_0

    .line 2598
    const-string v1, "HeadsetStateMachine"

    const-string v2, "processHangupCall device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    :goto_0
    return-void

    .line 2603
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isVirtualCallInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2604
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->terminateScoUsingVirtualVoiceCall()Z

    goto :goto_0

    .line 2606
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v1, :cond_2

    .line 2608
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadsetPhone;->hangupCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2609
    :catch_0
    move-exception v0

    .line 2610
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2613
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v1, "HeadsetStateMachine"

    const-string v2, "Handsfree phone proxy null for hanging up call"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processIntentBatteryChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 3349
    const-string v2, "level"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3350
    .local v0, "batteryLevel":I
    const-string v2, "scale"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3351
    .local v1, "scale":I
    if-eq v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    if-nez v1, :cond_1

    .line 3352
    :cond_0
    const-string v2, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad Battery Changed intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    :goto_0
    return-void

    .line 3355
    :cond_1
    mul-int/lit8 v2, v0, 0x5

    div-int v0, v2, v1

    .line 3356
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setBatteryCharge(I)V

    goto :goto_0
.end method

.method private processKeyPressed(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 3091
    if-nez p1, :cond_0

    .line 3092
    const-string v3, "HeadsetStateMachine"

    const-string v4, "processKeyPressed device is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    :goto_0
    return-void

    .line 3096
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCallState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3097
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v3, :cond_1

    .line 3099
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothHeadsetPhone;->answerCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3100
    :catch_0
    move-exception v1

    .line 3101
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HeadsetStateMachine"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3104
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v3, "HeadsetStateMachine"

    const-string v4, "Handsfree phone proxy null for answering call"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3106
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getNumActiveCall()I

    move-result v3

    if-lez v3, :cond_5

    .line 3107
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isAudioOn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3109
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->connectAudioNative([B)Z

    goto :goto_0

    .line 3113
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v3, :cond_4

    .line 3115
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothHeadsetPhone;->hangupCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3116
    :catch_1
    move-exception v1

    .line 3117
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "HeadsetStateMachine"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3120
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v3, "HeadsetStateMachine"

    const-string v4, "Handsfree phone proxy null for hangup call"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3124
    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/AtPhonebook;->getLastDialledNumber()Ljava/lang/String;

    move-result-object v0

    .line 3125
    .local v0, "dialNumber":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 3126
    const-string v3, "processKeyPressed, last dial number null"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3130
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3132
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3133
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->startActivity(Landroid/content/Intent;)V

    .line 3135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast for outgoing call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processLocalVrEvent(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/16 v6, 0x67

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2257
    const/4 v0, 0x0

    .line 2258
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-ne p1, v4, :cond_6

    .line 2260
    const/4 v1, 0x1

    .line 2261
    .local v1, "needAudio":Z
    iget-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2263
    :cond_0
    const-string v2, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voice recognition started when call is active. isInCall:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isInCall()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mVoiceRecognitionStarted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    .end local v1    # "needAudio":Z
    :cond_1
    :goto_0
    return-void

    .line 2267
    .restart local v1    # "needAudio":Z
    :cond_2
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z

    .line 2269
    iget-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z

    if-eqz v2, :cond_5

    .line 2271
    invoke-direct {p0, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDeviceForMessage(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2272
    if-eqz v0, :cond_1

    .line 2275
    const-string v2, "HeadsetStateMachine"

    const-string v3, "Voice recognition started successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    iput-boolean v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z

    .line 2277
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {p0, v4, v5, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    .line 2279
    invoke-virtual {p0, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    .line 2289
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isAudioOn()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2291
    const-string v2, "HeadsetStateMachine"

    const-string v3, "Initiating audio connection for Voice Recognition"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "A2dpSuspended=true"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2301
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->connectAudioNative([B)Z

    .line 2304
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2305
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 2283
    :cond_5
    const-string v2, "HeadsetStateMachine"

    const-string v3, "Voice recognition started locally"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->startVoiceRecognitionNative([B)Z

    move-result v1

    .line 2285
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_3

    .line 2286
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_1

    .line 2310
    .end local v1    # "needAudio":Z
    :cond_6
    const-string v2, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voice Recognition stopped. mVoiceRecognitionStarted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWaitingForVoiceRecognition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    iget-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z

    if-eqz v2, :cond_1

    .line 2314
    :cond_7
    iput-boolean v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z

    .line 2315
    iput-boolean v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z

    .line 2317
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->stopVoiceRecognitionNative([B)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isInCall()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    .line 2319
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectAudioNative([B)Z

    .line 2320
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "A2dpSuspended=false"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processNoiceReductionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "enable"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 2782
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetAudioParam:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2783
    .local v0, "AudioParamNrec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-ne p1, v2, :cond_0

    .line 2784
    const-string v1, "NREC"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2787
    :goto_0
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NREC value for device :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NREC"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    return-void

    .line 2786
    :cond_0
    const-string v1, "NREC"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private processSendClccResponse(Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V
    .locals 10
    .param p1, "clcc"    # Lcom/android/bluetooth/hfp/HeadsetClccResponse;

    .prologue
    const/16 v1, 0x68

    .line 3365
    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDeviceForMessage(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 3366
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v9, :cond_0

    .line 3374
    :goto_0
    return-void

    .line 3369
    :cond_0
    iget v0, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mIndex:I

    if-nez v0, :cond_1

    .line 3370
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    .line 3372
    :cond_1
    iget v1, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mIndex:I

    iget v2, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mDirection:I

    iget v3, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mStatus:I

    iget v4, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mMode:I

    iget-boolean v5, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mMpty:Z

    iget-object v6, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mNumber:Ljava/lang/String;

    iget v7, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mType:I

    invoke-direct {p0, v9}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->clccResponseNative(IIIIZLjava/lang/String;I[B)Z

    goto :goto_0
.end method

.method private processSendDtmf(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "dtmf"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2710
    if-nez p2, :cond_0

    .line 2711
    const-string v1, "HeadsetStateMachine"

    const-string v2, "processSendDtmf device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    :goto_0
    return-void

    .line 2715
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v1, :cond_1

    .line 2717
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetPhone;->sendDtmf(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2718
    :catch_0
    move-exception v0

    .line 2719
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2722
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "HeadsetStateMachine"

    const-string v2, "Handsfree phone proxy null for sending DTMF"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processSendVendorSpecificResultCode(Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;)V
    .locals 3
    .param p1, "resultCode"    # Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;

    .prologue
    .line 3377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3378
    .local v0, "stringToSend":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mArg:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mArg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3381
    :cond_0
    iget-object v1, p1, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;[B)Z

    .line 3382
    return-void
.end method

.method private processSubscriberNumberRequest(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    .line 2832
    if-nez p1, :cond_0

    .line 2833
    const-string v2, "HeadsetStateMachine"

    const-string v3, "processSubscriberNumberRequest device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    :goto_0
    return-void

    .line 2837
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v2, :cond_2

    .line 2839
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothHeadsetPhone;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v1

    .line 2840
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CNUM: ,\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",,4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;[B)Z

    .line 2844
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2851
    .end local v1    # "number":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2852
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {p0, v5, v5, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0

    .line 2847
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "number":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v2, "HeadsetStateMachine"

    const-string v3, "getSubscriberNumber returns null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2857
    .end local v1    # "number":Ljava/lang/String;
    :cond_2
    const-string v2, "HeadsetStateMachine"

    const-string v3, "Handsfree phone proxy null for At+CNUM"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processUnknownAt(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "atString"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 3071
    if-nez p2, :cond_1

    .line 3072
    const-string v2, "HeadsetStateMachine"

    const-string v3, "processUnknownAt device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    :cond_0
    :goto_0
    return-void

    .line 3077
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processUnknownAt - atString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3078
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->parseUnknownAt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3079
    .local v0, "atCommand":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getAtCommandType(Ljava/lang/String;)I

    move-result v1

    .line 3080
    .local v1, "commandType":I
    const-string v2, "+CSCS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3081
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCscs(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 3082
    :cond_2
    const-string v2, "+CPBS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3083
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCpbs(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 3084
    :cond_3
    const-string v2, "+CPBR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3085
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCpbr(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 3086
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processVendorSpecificAt(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3087
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {p0, v5, v5, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0
.end method

.method private processVendorSpecificAt(Ljava/lang/String;)Z
    .locals 11
    .param p1, "atString"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processVendorSpecificAt - atString = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3041
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 3042
    .local v8, "indexOfEqual":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_0

    .line 3043
    const-string v0, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processVendorSpecificAt: command type error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 3067
    :goto_0
    return v0

    .line 3047
    :cond_0
    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3048
    .local v1, "command":Ljava/lang/String;
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->VENDOR_SPECIFIC_AT_COMMAND_COMPANY_ID:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 3049
    .local v7, "companyId":Ljava/lang/Integer;
    if-nez v7, :cond_1

    .line 3050
    const-string v0, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processVendorSpecificAt: unsupported command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 3051
    goto :goto_0

    .line 3054
    :cond_1
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 3055
    .local v6, "arg":Ljava/lang/String;
    const-string v0, "?"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3056
    const-string v0, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processVendorSpecificAt: command type error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 3057
    goto :goto_0

    .line 3060
    :cond_2
    invoke-static {v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->generateArgs(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    .line 3061
    .local v4, "args":[Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V

    .line 3066
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-virtual {p0, v10, v9, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    move v0, v10

    .line 3067
    goto :goto_0
.end method

.method private processVolumeEvent(IILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "volumeType"    # I
    .param p2, "volume"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x1

    .line 2693
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2694
    const-string v1, "HeadsetStateMachine"

    const-string v2, "ignore processVolumeEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    :goto_0
    return-void

    .line 2698
    :cond_0
    if-nez p1, :cond_2

    .line 2699
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setSpeakerVolume(I)V

    .line 2700
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    if-ne v1, v2, :cond_1

    .line 2701
    .local v0, "flag":I
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 2700
    .end local v0    # "flag":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2702
    :cond_2
    if-ne p1, v0, :cond_3

    .line 2703
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setMicVolume(I)V

    goto :goto_0

    .line 2705
    :cond_3
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad voluem type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processVrEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2213
    if-nez p2, :cond_1

    .line 2214
    const-string v1, "HeadsetStateMachine"

    const-string v2, "processVrEvent device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_0
    :goto_0
    return-void

    .line 2217
    :cond_1
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processVrEvent: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mVoiceRecognitionStarted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWaitingforVoiceRecognition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isInCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isInCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    if-ne p1, v5, :cond_2

    .line 2221
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isVirtualCallInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2225
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    sget-object v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2231
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->expectVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 2226
    :catch_0
    move-exception v0

    .line 2227
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {p0, v4, v4, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0

    .line 2233
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    if-nez p1, :cond_5

    .line 2234
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z

    if-eqz v1, :cond_4

    .line 2236
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {p0, v5, v4, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    .line 2238
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z

    .line 2239
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z

    .line 2240
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 2241
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectAudioNative([B)Z

    .line 2242
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "A2dpSuspended=false"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2247
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {p0, v4, v4, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto/16 :goto_0

    .line 2251
    :cond_5
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad Voice Recognition state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private processWBSEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "enable"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2793
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2794
    const-string v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioManager.setParameters bt_wbs=on for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "bt_wbs=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2802
    :goto_0
    return-void

    .line 2798
    :cond_0
    const-string v0, "HeadsetStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioManager.setParameters bt_wbs=off for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "bt_wbs=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private querySuperPrimaryPhone(J)Ljava/lang/String;
    .locals 11
    .param p1, "contactId"    # J

    .prologue
    .line 3195
    iget-object v8, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 3196
    .local v8, "context":Landroid/content/Context;
    const/4 v7, 0x0

    .line 3197
    .local v7, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 3198
    .local v9, "phone":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySuperPrimaryPhone : id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3201
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 3202
    .local v6, "baseUri":Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3203
    .local v1, "dataUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseUri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataUri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3206
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const-string v3, "mimetype=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "vnd.android.cursor.item/phone_v2"

    aput-object v10, v4, v5

    const-string v5, "is_super_primary DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3211
    if-eqz v7, :cond_0

    .line 3212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c.getCount() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3213
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3215
    const-string v0, "get first column"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3216
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3222
    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    .line 3223
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3224
    const-string v0, "close cursor c"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3230
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySuperPrimaryPhone : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v9, :cond_4

    move-object v0, v9

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3231
    return-object v9

    .line 3218
    :cond_1
    :try_start_1
    const-string v0, "moveToFirst failed"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3222
    .end local v1    # "dataUri":Landroid/net/Uri;
    .end local v6    # "baseUri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 3223
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3224
    const-string v2, "close cursor c"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3226
    :goto_3
    throw v0

    .restart local v1    # "dataUri":Landroid/net/Uri;
    .restart local v6    # "baseUri":Landroid/net/Uri;
    :cond_2
    const-string v0, "cursor c is null"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "dataUri":Landroid/net/Uri;
    .end local v6    # "baseUri":Landroid/net/Uri;
    :cond_3
    const-string v2, "cursor c is null"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 3230
    .restart local v1    # "dataUri":Landroid/net/Uri;
    .restart local v6    # "baseUri":Landroid/net/Uri;
    :cond_4
    const-string v0, "null"

    goto :goto_2
.end method

.method private setAudioParameters(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2469
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetAudioParam:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2470
    .local v0, "AudioParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "NREC"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2472
    .local v1, "mNrec":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2473
    const-string v2, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set NREC: 1 for device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "bt_headset_nrec=on"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2479
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_headset_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2480
    return-void

    .line 2476
    :cond_0
    const-string v2, "HeadsetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set NREC: 0 for device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "bt_headset_nrec=off"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native setVolumeNative(II[B)Z
.end method

.method private native startVoiceRecognitionNative([B)Z
.end method

.method private native stopVoiceRecognitionNative([B)Z
.end method


# virtual methods
.method native atResponseCodeNative(II[B)Z
.end method

.method native atResponseStringNative(Ljava/lang/String;[B)Z
.end method

.method public cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 290
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v1, :cond_0

    .line 291
    const-string v1, "HeadsetStateMachine"

    const-string v2, "Unbinding service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 294
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 295
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v1, v4}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->listenForPhoneState(Z)V

    .line 303
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->cleanup()V

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->cleanup()V

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetAudioParam:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 309
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetAudioParam:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 311
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetBrsf:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    .line 312
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetBrsf:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 314
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 315
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 317
    :cond_5
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeAvailable:Z

    if-eqz v1, :cond_6

    .line 318
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->cleanupNative()V

    .line 319
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeAvailable:Z

    .line 321
    :cond_6
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "re":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "HeadsetStateMachine"

    const-string v3, "Error unbinding from IBluetoothHeadsetPhone"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 299
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public doQuit()V
    .locals 0

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->quitNow()V

    .line 287
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTargetDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIncomingDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActiveScoDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mActiveScoDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMultiDisconnectDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVirtualCallStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVirtualCallStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVoiceRecognitionStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWaitingForVoiceRecognition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateMachine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2203
    monitor-enter p0

    .line 2204
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2205
    const/16 v0, 0xa

    monitor-exit p0

    .line 2208
    :goto_0
    return v0

    .line 2207
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2208
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I

    goto :goto_0

    .line 2207
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getBluetoothPhoneProxy()Landroid/bluetooth/IBluetoothHeadsetPhone;
    .locals 1

    .prologue
    .line 3413
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

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
    .line 2163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2164
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 2165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2166
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2167
    :cond_0
    monitor-exit p0

    .line 2169
    return-object v0

    .line 2167
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2111
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    if-ne v5, v6, :cond_0

    .line 2112
    const-string v2, "HeadsetStateMachine"

    const-string v3, "currentState is Disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :goto_0
    return v1

    .line 2116
    :cond_0
    monitor-enter p0

    .line 2117
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 2118
    .local v0, "currentState":Lcom/android/internal/util/IState;
    const-string v5, "HeadsetStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;

    if-ne v0, v5, :cond_4

    .line 2120
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2121
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 2123
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2124
    monitor-exit p0

    move v1, v3

    goto :goto_0

    .line 2126
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2127
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 2129
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 2159
    .end local v0    # "currentState":Lcom/android/internal/util/IState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2132
    .restart local v0    # "currentState":Lcom/android/internal/util/IState;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiHFPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$MultiHFPending;

    if-ne v0, v5, :cond_9

    .line 2133
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2134
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 2136
    :cond_5
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2137
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 2139
    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2140
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMultiDisconnectDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2143
    monitor-exit p0

    move v1, v4

    goto/16 :goto_0

    .line 2145
    :cond_7
    monitor-exit p0

    move v1, v3

    goto/16 :goto_0

    .line 2147
    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    .line 2150
    :cond_9
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    if-eq v0, v2, :cond_a

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    if-ne v0, v2, :cond_c

    .line 2151
    :cond_a
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectedDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2152
    monitor-exit p0

    move v1, v4

    goto/16 :goto_0

    .line 2154
    :cond_b
    monitor-exit p0

    goto/16 :goto_0

    .line 2156
    :cond_c
    const-string v2, "HeadsetStateMachine"

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

    .line 2157
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
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
    .line 2338
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2339
    .local v3, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v7, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 2341
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 2342
    :try_start_0
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

    .line 2343
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 2344
    .local v4, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v7, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->HEADSET_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v4, v7}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2347
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 2348
    .local v1, "connectionState":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_0

    .line 2349
    aget v7, p1, v5

    if-ne v1, v7, :cond_1

    .line 2350
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2348
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2354
    .end local v1    # "connectionState":I
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "featureUuids":[Landroid/os/ParcelUuid;
    .end local v5    # "i":I
    :cond_2
    monitor-exit p0

    .line 2355
    return-object v3

    .line 2354
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public handleAccessPermissionResult(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3451
    const-string v3, "handleAccessPermissionResult"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 3452
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 3453
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    if-eqz v3, :cond_6

    .line 3454
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/AtPhonebook;->getCheckingAccessPermission()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3493
    :cond_0
    :goto_0
    return-void

    .line 3457
    :cond_1
    const/4 v1, 0x0

    .line 3458
    .local v1, "atCommandResult":I
    const/4 v0, 0x0

    .line 3463
    .local v0, "atCommandErrorCode":I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3464
    const-string v3, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 3467
    const-string v3, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3468
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 3470
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/hfp/AtPhonebook;->processCpbrCommand(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 3478
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfp/AtPhonebook;->setCpbrIndex(I)V

    .line 3479
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v3, v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->setCheckingAccessPermission(Z)V

    .line 3481
    if-ltz v1, :cond_5

    .line 3482
    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0

    .line 3472
    :cond_4
    const-string v3, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3473
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_1

    .line 3484
    :cond_5
    const-string v3, "handleAccessPermissionResult - RESULT_NONE"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3487
    .end local v0    # "atCommandErrorCode":I
    .end local v1    # "atCommandResult":I
    :cond_6
    const-string v3, "HeadsetStateMachine"

    const-string v4, "Phonebook handle null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    if-eqz v2, :cond_0

    .line 3489
    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {p0, v5, v5, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    goto :goto_0
.end method

.method declared-synchronized initiateScoUsingVirtualVoiceCall()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 2541
    monitor-enter p0

    :try_start_0
    const-string v1, "initiateScoUsingVirtualVoiceCall: Received"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2543
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z

    if-eqz v1, :cond_1

    .line 2544
    :cond_0
    const-string v1, "HeadsetStateMachine"

    const-string v2, "initiateScoUsingVirtualVoiceCall: Call in progress."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2558
    :goto_0
    monitor-exit p0

    return v0

    .line 2549
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetCallState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/hfp/HeadsetCallState;-><init>(IIILjava/lang/String;I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processCallState(Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V

    .line 2551
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetCallState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/hfp/HeadsetCallState;-><init>(IIILjava/lang/String;I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processCallState(Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V

    .line 2553
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetCallState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/hfp/HeadsetCallState;-><init>(IIILjava/lang/String;I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processCallState(Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V

    .line 2555
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->setVirtualCallInProgress(Z)V

    .line 2557
    const-string v0, "initiateScoUsingVirtualVoiceCall: Done"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v6

    .line 2558
    goto :goto_0

    .line 2541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2177
    monitor-enter p0

    .line 2186
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 2191
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    if-ne v0, v1, :cond_2

    .line 2192
    const-string v0, "HeadsetStateMachine"

    const-string v1, "isAudioConnected() returned true when state is in mConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :cond_2
    const/4 v0, 0x1

    monitor-exit p0

    .line 2199
    :goto_0
    return v0

    .line 2198
    :cond_3
    monitor-exit p0

    .line 2199
    const/4 v0, 0x0

    goto :goto_0

    .line 2198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isAudioOn()Z
    .locals 2

    .prologue
    .line 2173
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

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
    .line 3418
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 3419
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3446
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 3448
    return-void
.end method

.method okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 3423
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 3424
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 3425
    .local v1, "priority":I
    const/4 v2, 0x0

    .line 3427
    .local v2, "ret":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_2

    .line 3430
    :cond_0
    const/4 v2, 0x0

    .line 3440
    :cond_1
    :goto_0
    return v2

    .line 3435
    :cond_2
    if-gtz v1, :cond_3

    const/4 v3, -0x1

    if-ne v3, v1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 3438
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method setVirtualCallInProgress(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 2533
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVirtualCallStarted:Z

    .line 2534
    return-void
.end method

.method declared-synchronized terminateScoUsingVirtualVoiceCall()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 2562
    monitor-enter p0

    :try_start_0
    const-string v1, "terminateScoUsingVirtualVoiceCall: Received"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2564
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isVirtualCallInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2565
    const-string v1, "HeadsetStateMachine"

    const-string v2, "terminateScoUsingVirtualVoiceCall:No present call to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2576
    :goto_0
    monitor-exit p0

    return v0

    .line 2571
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetCallState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/hfp/HeadsetCallState;-><init>(IIILjava/lang/String;I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processCallState(Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V

    .line 2573
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->setVirtualCallInProgress(Z)V

    .line 2575
    const-string v0, "terminateScoUsingVirtualVoiceCall: Done"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v6

    .line 2576
    goto :goto_0

    .line 2562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
