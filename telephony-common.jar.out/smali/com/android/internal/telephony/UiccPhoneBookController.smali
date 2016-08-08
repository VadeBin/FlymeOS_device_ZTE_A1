.class public Lcom/android/internal/telephony/UiccPhoneBookController;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "UiccPhoneBookController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiccPhoneBookController"


# instance fields
.field private mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 49
    const-string v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    const-string v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/UiccPhoneBookController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 53
    return-void
.end method

.method private getDefaultSubscription()J
    .locals 2

    .prologue
    .line 557
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    const/4 v4, 0x0

    .line 542
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    long-to-int v5, p1

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    int-to-long v2, v1

    .line 544
    .local v2, "phoneId":J
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/UiccPhoneBookController;->mPhone:[Lcom/android/internal/telephony/Phone;

    long-to-int v5, v2

    aget-object v1, v1, v5

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getIccPhoneBookInterfaceManagerProxy()Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 552
    :goto_0
    return-object v1

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "UiccPhoneBookController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " For subscription :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v4

    .line 548
    goto :goto_0

    .line 549
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "UiccPhoneBookController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " For subscription :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move-object v1, v4

    .line 552
    goto :goto_0
.end method


# virtual methods
.method public addContactToGroup(JII)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "adnIndex"    # I
    .param p4, "grpIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 298
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->addContactToGroup(II)Z

    move-result v1

    .line 303
    :goto_0
    return v1

    .line 301
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 2
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getAdnRecordsInEfForSubscriber(JI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsInEfForSubscriber(JI)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # J
    .param p3, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 214
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v1

    .line 219
    :goto_0
    return-object v1

    .line 217
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsInEf iccPbkIntMgrProxy isnull for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 2
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getAdnRecordsSizeForSubscriber(JI)[I

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsSizeForSubscriber(JI)[I
    .locals 5
    .param p1, "subId"    # J
    .param p3, "efid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 197
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAdnRecordsSize(I)[I

    move-result-object v1

    .line 202
    :goto_0
    return-object v1

    .line 200
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsSize iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAnrCount(J)I
    .locals 5
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 419
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAnrCount()I

    move-result v1

    .line 424
    :goto_0
    return v1

    .line 422
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmailCount(J)I
    .locals 5
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 431
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getEmailCount()I

    move-result v1

    .line 436
    :goto_0
    return v1

    .line 434
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPhonebookMemStorageExt(J)[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 5
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 527
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-result-object v1

    .line 532
    :goto_0
    return-object v1

    .line 530
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSneRecordLen(J)I
    .locals 5
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 503
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getSneRecordLen()I

    move-result v1

    .line 508
    :goto_0
    return v1

    .line 506
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsimAasById(JI)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 395
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getUsimAasById(I)Ljava/lang/String;

    move-result-object v1

    .line 400
    :goto_0
    return-object v1

    .line 398
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsimAasList(J)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/AlphaTag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 383
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getUsimAasList()Ljava/util/List;

    move-result-object v1

    .line 388
    :goto_0
    return-object v1

    .line 386
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsimAasMaxCount(J)I
    .locals 5
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 443
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getUsimAasMaxCount()I

    move-result v1

    .line 448
    :goto_0
    return v1

    .line 446
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsimAasMaxNameLen(J)I
    .locals 5
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 455
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getUsimAasMaxNameLen()I

    move-result v1

    .line 460
    :goto_0
    return v1

    .line 458
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsimGroupById(JI)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # J
    .param p3, "nGasId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 250
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getUsimGroupById(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    :goto_0
    return-object v1

    .line 253
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsimGroups(J)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/UsimGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 238
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getUsimGroups()Ljava/util/List;

    move-result-object v1

    .line 243
    :goto_0
    return-object v1

    .line 241
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsimGrpMaxCount(J)I
    .locals 5
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 371
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getUsimGrpMaxCount()I

    move-result v1

    .line 376
    :goto_0
    return v1

    .line 374
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getUsimGrpMaxNameLen(J)I
    .locals 5
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 359
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getUsimGrpMaxNameLen()I

    move-result v1

    .line 364
    :goto_0
    return v1

    .line 362
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public hasExistGroup(JLjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # J
    .param p3, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 347
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->hasExistGroup(Ljava/lang/String;)I

    move-result v1

    .line 352
    :goto_0
    return v1

    .line 350
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public hasSne(J)Z
    .locals 5
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 491
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->hasSne()Z

    move-result v1

    .line 496
    :goto_0
    return v1

    .line 494
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertUsimAas(JLjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # J
    .param p3, "aasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 407
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->insertUsimAas(Ljava/lang/String;)I

    move-result v1

    .line 412
    :goto_0
    return v1

    .line 410
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertUsimGroup(JLjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # J
    .param p3, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 274
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->insertUsimGroup(Ljava/lang/String;)I

    move-result v1

    .line 279
    :goto_0
    return v1

    .line 277
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isAdnAccessible(J)Z
    .locals 5
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 513
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 515
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->isAdnAccessible()Z

    move-result v1

    .line 520
    :goto_0
    return v1

    .line 518
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPhbReady(J)Z
    .locals 5
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 226
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->isPhbReady()Z

    move-result v1

    .line 231
    :goto_0
    return v1

    .line 229
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUICCCard(J)Z
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 561
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->isUICCCard()Z

    move-result v0

    return v0
.end method

.method public isUsimCard(J)Z
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 565
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->isUsimCard()Z

    move-result v0

    return v0
.end method

.method public moveContactFromGroupsToGroups(JI[I[I)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "adnIndex"    # I
    .param p4, "fromGrpIdList"    # [I
    .param p5, "toGrpIdList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 334
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->moveContactFromGroupsToGroups(I[I[I)Z

    move-result v1

    .line 340
    :goto_0
    return v1

    .line 338
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeContactFromGroup(JII)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "adnIndex"    # I
    .param p4, "grpIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 310
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->removeContactFromGroup(II)Z

    move-result v1

    .line 315
    :goto_0
    return v1

    .line 313
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeUsimAasById(JII)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "index"    # I
    .param p4, "pbrIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 479
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->removeUsimAasById(II)Z

    move-result v1

    .line 484
    :goto_0
    return v1

    .line 482
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeUsimGroupById(JI)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "nGasId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 262
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->removeUsimGroupById(I)Z

    move-result v1

    .line 267
    :goto_0
    return v1

    .line 265
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/UiccPhoneBookController;->updateAdnRecordsInEfByIndexForSubscriber(JILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfByIndexForSubscriber(JILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .param p1, "subId"    # J
    .param p3, "efid"    # I
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "index"    # I
    .param p7, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 123
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 129
    :goto_0
    return v1

    .line 127
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfByIndex iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateAdnRecordsInEfByIndexWithError(JILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "subId"    # J
    .param p3, "efid"    # I
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "index"    # I
    .param p7, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 138
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 144
    :goto_0
    return v1

    .line 142
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/UiccPhoneBookController;->updateAdnRecordsInEfBySearchForSubscriber(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfBySearchForSubscriber(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "subId"    # J
    .param p3, "efid"    # I
    .param p4, "oldTag"    # Ljava/lang/String;
    .param p5, "oldPhoneNumber"    # Ljava/lang/String;
    .param p6, "newTag"    # Ljava/lang/String;
    .param p7, "newPhoneNumber"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 68
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 69
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 74
    :goto_0
    return v1

    .line 72
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateAdnRecordsInEfBySearchWithError(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "subId"    # J
    .param p3, "efid"    # I
    .param p4, "oldTag"    # Ljava/lang/String;
    .param p5, "oldPhoneNumber"    # Ljava/lang/String;
    .param p6, "newTag"    # Ljava/lang/String;
    .param p7, "newPhoneNumber"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 84
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 85
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 90
    :goto_0
    return v1

    .line 88
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateContactToGroups(JI[I)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "adnIndex"    # I
    .param p4, "grpIdList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 322
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateContactToGroups(I[I)Z

    move-result v1

    .line 327
    :goto_0
    return v1

    .line 325
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateUsimAas(JIILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "index"    # I
    .param p4, "pbrIndex"    # I
    .param p5, "aasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 467
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateUsimAas(IILjava/lang/String;)Z

    move-result v1

    .line 472
    :goto_0
    return v1

    .line 470
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateUsimGroup(JILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # J
    .param p3, "nGasId"    # I
    .param p4, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 286
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateUsimGroup(ILjava/lang/String;)I

    move-result v1

    .line 291
    :goto_0
    return v1

    .line 289
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public updateUsimPBRecordsByIndexWithError(JILcom/android/internal/telephony/uicc/AdnRecord;I)I
    .locals 5
    .param p1, "subId"    # J
    .param p3, "efid"    # I
    .param p4, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p5, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 166
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v1

    .line 172
    :goto_0
    return v1

    .line 170
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateUsimPBRecordsBySearchWithError(JILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)I
    .locals 5
    .param p1, "subId"    # J
    .param p3, "efid"    # I
    .param p4, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p5, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 179
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)I

    move-result v1

    .line 185
    :goto_0
    return v1

    .line 183
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateUsimPBRecordsInEfByIndexWithError(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 9
    .param p1, "subId"    # J
    .param p3, "efid"    # I
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "newAnr"    # Ljava/lang/String;
    .param p7, "newGrpIds"    # Ljava/lang/String;
    .param p8, "newEmails"    # [Ljava/lang/String;
    .param p9, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 153
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    .line 154
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v1

    .line 159
    :goto_0
    return v1

    .line 157
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateUsimPBRecordsInEfBySearchWithError(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 13
    .param p1, "subId"    # J
    .param p3, "efid"    # I
    .param p4, "oldTag"    # Ljava/lang/String;
    .param p5, "oldPhoneNumber"    # Ljava/lang/String;
    .param p6, "oldAnr"    # Ljava/lang/String;
    .param p7, "oldGrpIds"    # Ljava/lang/String;
    .param p8, "oldEmails"    # [Ljava/lang/String;
    .param p9, "newTag"    # Ljava/lang/String;
    .param p10, "newPhoneNumber"    # Ljava/lang/String;
    .param p11, "newAnr"    # Ljava/lang/String;
    .param p12, "newGrpIds"    # Ljava/lang/String;
    .param p13, "newEmails"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(J)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 100
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    .line 101
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 107
    :goto_0
    return v1

    .line 105
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method
