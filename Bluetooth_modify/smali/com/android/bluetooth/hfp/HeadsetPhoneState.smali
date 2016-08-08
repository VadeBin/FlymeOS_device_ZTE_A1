.class Lcom/android/bluetooth/hfp/HeadsetPhoneState;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadsetPhoneState"


# instance fields
.field private mBatteryCharge:I

.field private mCallState:I

.field private mContext:Landroid/content/Context;

.field private mListening:Z

.field private mMicVolume:I

.field private mNumActive:I

.field private mNumHeld:I

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRoam:I

.field private mService:I

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignal:I

.field private mSlcReady:Z

.field private mSpeakerVolume:I

.field private mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateMachine"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    .line 59
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    .line 62
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    .line 65
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    .line 68
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    .line 71
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    .line 74
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    .line 76
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    .line 78
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    .line 80
    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSlcReady:Z

    .line 85
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mContext:Landroid/content/Context;

    .line 87
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 91
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 108
    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 109
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 110
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mContext:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 116
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return v0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 251
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$2;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)V

    .line 365
    .local v0, "mPhoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private startListenForPhoneState()V
    .locals 4

    .prologue
    .line 140
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSlcReady:Z

    if-eqz v1, :cond_0

    .line 142
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    .line 144
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 147
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x101

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 150
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    .line 153
    .end local v0    # "subId":I
    :cond_0
    return-void
.end method

.method private stopListenForPhoneState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 159
    iput-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->listenForPhoneState(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 123
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 124
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 125
    return-void
.end method

.method getBatteryCharge()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    return v0
.end method

.method getCallState()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    return v0
.end method

.method getMicVolume()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    return v0
.end method

.method getNumActiveCall()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    return v0
.end method

.method getNumHeldCall()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    return v0
.end method

.method getRoam()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    return v0
.end method

.method getService()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    return v0
.end method

.method getSignal()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return v0
.end method

.method getSpeakerVolume()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    return v0
.end method

.method isInCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 231
    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method listenForPhoneState(Z)V
    .locals 0
    .param p1, "start"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSlcReady:Z

    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->startListenForPhoneState()V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->stopListenForPhoneState()V

    goto :goto_0
.end method

.method sendDeviceStateChanged()V
    .locals 7

    .prologue
    .line 238
    iget v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    .line 240
    .local v0, "signal":I
    :goto_0
    const-string v2, "HeadsetPhoneState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDeviceStateChanged. mService="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSignal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mRoam="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBatteryCharge="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 244
    .local v1, "sm":Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    if-eqz v1, :cond_0

    .line 245
    const/16 v2, 0xb

    new-instance v3, Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    iget v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    iget v6, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/bluetooth/hfp/HeadsetDeviceState;-><init>(IIII)V

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 248
    :cond_0
    return-void

    .line 238
    .end local v0    # "signal":I
    .end local v1    # "sm":Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBatteryCharge(I)V
    .locals 1
    .param p1, "batteryLevel"    # I

    .prologue
    .line 204
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    if-eq v0, p1, :cond_0

    .line 205
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    .line 206
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    .line 208
    :cond_0
    return-void
.end method

.method setCallState(I)V
    .locals 0
    .param p1, "callState"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    .line 181
    return-void
.end method

.method setMicVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    .line 224
    return-void
.end method

.method setNumActiveCall(I)V
    .locals 0
    .param p1, "numActive"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    .line 173
    return-void
.end method

.method setNumHeldCall(I)V
    .locals 0
    .param p1, "numHeldCall"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    .line 189
    return-void
.end method

.method setRoam(I)V
    .locals 0
    .param p1, "roam"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    .line 201
    return-void
.end method

.method setSpeakerVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    .line 216
    return-void
.end method
