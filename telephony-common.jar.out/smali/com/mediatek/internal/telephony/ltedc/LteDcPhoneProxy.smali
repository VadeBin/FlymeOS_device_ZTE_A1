.class public Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
.super Lcom/android/internal/telephony/PhoneProxy;
.source "LteDcPhoneProxy.java"


# static fields
.field private static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCsPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mPsPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

.field protected mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field protected mSvlteIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

.field protected mSvlteRatController:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 3
    .param p1, "ltePhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "nltePhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "radioTechMode"    # I

    .prologue
    .line 105
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    move-object v0, p2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 106
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 107
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 108
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getDefaultCsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 111
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 112
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    .line 113
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;-><init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteRatController:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .line 114
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;-><init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LteDcPhoneProxy: mLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 117
    return-void

    :cond_0
    move-object v0, p1

    .line 105
    goto :goto_0
.end method

.method private getPreferredApnIdForSub(I)I
    .locals 9
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 521
    const/4 v6, -0x1

    .line 522
    .local v6, "apnId":I
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 523
    .local v8, "subIdString":Ljava/lang/String;
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-static {v0, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 524
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 527
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 528
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 529
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 531
    :cond_0
    if-eqz v7, :cond_1

    .line 532
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApnIdForSub: subId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",apnId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 535
    return v6
.end method

.method private putIdsExtra(Landroid/content/Intent;II)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "newPhoneId"    # I
    .param p3, "oldPhoneId"    # I

    .prologue
    const/4 v8, 0x0

    .line 581
    const/4 v6, 0x2

    new-array v2, v6, [I

    aput p2, v2, v8

    const/4 v6, 0x1

    aput p3, v2, v6

    .line 582
    .local v2, "phoneIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_5

    .line 583
    aget v1, v2, v0

    .line 584
    .local v1, "phoneId":I
    const/4 v4, -0x1

    .line 585
    .local v4, "subId":I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v3

    .line 586
    .local v3, "slotId":I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 587
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcSubId(I)I

    move-result v4

    .line 594
    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    .line 595
    if-nez v0, :cond_2

    .line 596
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->putNewIdsExtra(Landroid/content/Intent;III)V

    .line 582
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_1
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 590
    .local v5, "subIds":[I
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 591
    aget v4, v5, v8

    goto :goto_1

    .line 598
    .end local v5    # "subIds":[I
    :cond_2
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->putOldIdsExtra(Landroid/content/Intent;III)V

    goto :goto_2

    .line 601
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "putIdsExtra: no valid sub id found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_4

    const-string v6, "newphone"

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v6, "oldphone"

    goto :goto_3

    .line 605
    .end local v1    # "phoneId":I
    .end local v3    # "slotId":I
    .end local v4    # "subId":I
    :cond_5
    return-void
.end method

.method private putNewIdsExtra(Landroid/content/Intent;III)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .param p3, "slotId"    # I
    .param p4, "subId"    # I

    .prologue
    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putNewIdsExtra: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 609
    const-string v0, "subscription"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 610
    const-string v0, "phone"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 611
    const-string v0, "slot"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    return-void
.end method

.method private putOldIdsExtra(Landroid/content/Intent;III)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .param p3, "slotId"    # I
    .param p4, "subId"    # I

    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putOldIdsExtra: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 616
    const-string v0, "oldsubscription"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    const-string v0, "oldphone"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    const-string v0, "oldslot"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 619
    return-void
.end method

.method private setpreferredApnForSub(II)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "apnId"    # I

    .prologue
    const/4 v6, 0x0

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setpreferredApnForSub: subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",apnId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 540
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "subIdString":Ljava/lang/String;
    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 542
    .local v2, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 543
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 545
    if-ltz p2, :cond_0

    .line 546
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 547
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "apn_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 550
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private updatePhoneIds(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "oldPhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "newPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 374
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 375
    .local v1, "oldPhoneId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 376
    .local v0, "newPhoneId":I
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->setPhoneId(I)V

    .line 377
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->setPhoneId(I)V

    .line 379
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v2, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePreferApnForSubIdChanged(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    .line 380
    return-void
.end method

.method private updatePreferApnForSubIdChanged(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "activePhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "oldPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 510
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 511
    .local v1, "activeSubId":I
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 512
    .local v3, "oldSubId":I
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPreferredApnIdForSub(I)I

    move-result v0

    .line 513
    .local v0, "activeApnId":I
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPreferredApnIdForSub(I)I

    move-result v2

    .line 514
    .local v2, "oldApnId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreferApnForSubIdChanged: activeSubId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",oldSubId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",activeApnId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",oldApnId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 516
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->setpreferredApnForSub(II)V

    .line 517
    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->setpreferredApnForSub(II)V

    .line 518
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 127
    :cond_1
    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    return-object v0
.end method

.method public getCsPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getDataCallList(Landroid/os/Message;)V

    .line 385
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataEnabled()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method protected getDefaultCsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method protected getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    const-string v0, "IRAT_LteDcPhoneProxy"

    return-object v0
.end method

.method public getLtePhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getNLtePhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getPhoneById(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 298
    :goto_0
    return-object v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0

    .line 297
    :cond_1
    const-string v0, "getPhoneById should come here"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getRadioAccessFamily()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getRadioAccessFamily()I

    move-result v0

    return v0
.end method

.method public getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    return-object v0
.end method

.method public getSharedDcTracker()Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method public getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteRatController:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 466
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void
.end method

.method public logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 482
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 498
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 474
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method public logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 490
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void
.end method

.method public registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 573
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeReferences: mLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 139
    :cond_1
    return-void
.end method

.method public setCsPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "csPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 179
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setDataEnabled(Z)V

    .line 405
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 394
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setDataRoamingEnabled(Z)V

    .line 395
    return-void
.end method

.method public setLtePhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "ltePhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 203
    return-void
.end method

.method public setNLtePhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "nltePhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 211
    return-void
.end method

.method public setPsPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "psPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 171
    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 2
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 554
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 555
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    .line 563
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setRadioPower(ZI)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadioPower phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 284
    :cond_0
    return-void
.end method

.method protected switchActivePhone(Lcom/android/internal/telephony/Phone;)V
    .locals 9
    .param p1, "targetPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0x8

    const/4 v8, 0x1

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchActivePhone targetPhone="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", oldPhone="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 336
    .local v2, "oldPhone":Lcom/android/internal/telephony/Phone;
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 339
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 340
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 342
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v2, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePhoneIds(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    .line 345
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    .line 347
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 348
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_0

    const/16 v4, 0x10

    :goto_0
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 352
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccRefresh()V

    .line 355
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_1

    move v3, v5

    .line 357
    .local v3, "oldSs":I
    :goto_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_2

    move v1, v6

    .line 359
    .local v1, "newSs":I
    :goto_2
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePsPhone(II)V

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 365
    const-string v4, "phoneName"

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneId()I

    move-result v4

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-direct {p0, v0, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->putIdsExtra(Landroid/content/Intent;II)V

    .line 368
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 370
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "newSs":I
    .end local v3    # "oldSs":I
    :cond_0
    move v4, v5

    .line 348
    goto :goto_0

    :cond_1
    move v3, v6

    .line 355
    goto :goto_1

    .restart local v3    # "oldSs":I
    :cond_2
    move v1, v5

    .line 357
    goto :goto_2
.end method

.method public toggleActivePhone(I)V
    .locals 4
    .param p1, "radioTech"    # I

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 310
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 311
    .local v1, "lteMode":Z
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 312
    const-string v2, "toggleActivePhone to CSFB mode"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 313
    const/4 v1, 0x1

    .line 321
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 323
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchActivePhone return without action, lteMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", activePhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLtePhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNLtePhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 330
    :goto_1
    return-void

    .line 314
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 315
    const-string v2, "toggleActivePhone to SVLTE mode"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 316
    const/4 v1, 0x0

    goto :goto_0

    .line 318
    :cond_3
    const-string v2, "toggleActivePhone return, Unknown mode"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :cond_4
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    :goto_2
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->switchActivePhone(Lcom/android/internal/telephony/Phone;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_2
.end method

.method public unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V

    .line 578
    return-void
.end method

.method public updatePsPhone(II)V
    .locals 2
    .param p1, "sourceRat"    # I
    .param p2, "targetRat"    # I

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePsPhone, sourceRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 230
    packed-switch p2, :pswitch_data_0

    .line 248
    :pswitch_0
    const-string v0, "updatePsPhone, target rat is unknown, keep on."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 232
    :pswitch_1
    const-string v0, "updatePsPhone to ltePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 253
    :goto_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V

    goto :goto_0

    .line 243
    :pswitch_2
    const-string v0, "updatePsPhone to nltePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_1

    .line 230
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "psPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePsPhoneAndCi: psPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 262
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 263
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->updatePsCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 264
    return-void
.end method
