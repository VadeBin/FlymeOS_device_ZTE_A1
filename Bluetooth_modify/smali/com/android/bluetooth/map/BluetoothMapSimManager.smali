.class public Lcom/android/bluetooth/map/BluetoothMapSimManager;
.super Ljava/lang/Object;
.source "BluetoothMapSimManager.java"


# static fields
.field public static final INVALID_SUBID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "[MAP]BluetoothMapSimManager"

.field private static sSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private static sTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubCount:I

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapSimManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMapSimManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapSimManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/map/BluetoothMapSimManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapSimManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100()Landroid/telephony/SubscriptionManager;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/map/BluetoothMapSimManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapSimManager;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubCount:I

    return p1
.end method

.method public static getFristSubID()J
    .locals 4

    .prologue
    .line 109
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, "activeSubInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 112
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    int-to-long v2, v1

    .line 116
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getNumberBySubID(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 120
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    long-to-int v1, p0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getSubInfoNumber()I
    .locals 2

    .prologue
    .line 99
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "activeSubInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 105
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidSubId(J)Z
    .locals 6
    .param p0, "subId"    # J

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "isValid":Z
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v4, :cond_1

    .line 129
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "activeSubInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_1

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 133
    .local v3, "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    .line 134
    const/4 v2, 0x1

    .line 140
    .end local v0    # "activeSubInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return v2
.end method


# virtual methods
.method public getSimIdFromOriginator(Ljava/lang/String;)J
    .locals 4
    .param p1, "origNumber"    # Ljava/lang/String;

    .prologue
    .line 86
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->getSingleSubId()J

    move-result-wide v2

    .line 94
    :goto_0
    return-wide v2

    .line 89
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    int-to-long v2, v1

    goto :goto_0

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getSimList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getSingleSubId()J
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    int-to-long v0, v0

    .line 78
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getSubCount()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubCount:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mContext:Landroid/content/Context;

    .line 46
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 47
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 48
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    .line 49
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubCount:I

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void

    .line 49
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    return-void
.end method
