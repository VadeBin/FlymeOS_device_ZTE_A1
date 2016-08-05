.class public Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VsimEvent"
.end annotation


# static fields
.field public static final DEFAULT_MAX_DATA_LENGTH:I = 0x5000


# instance fields
.field private mData:[B

.field private mDataLen:I

.field private mEventMaxDataLen:I

.field private mMessageId:I

.field private mReadOffset:I

.field private mSlotId:I

.field private mTransactionId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 365
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I
    .param p3, "slotId"    # I

    .prologue
    .line 375
    const/16 v0, 0x5000

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(IIII)V

    .line 376
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I
    .param p3, "length"    # I
    .param p4, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    const/16 v0, 0x5000

    iput v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    .line 387
    iput p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mTransactionId:I

    .line 388
    iput p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mMessageId:I

    .line 389
    iput p4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mSlotId:I

    .line 390
    iput p3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    .line 391
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    .line 392
    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 393
    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 394
    return-void
.end method


# virtual methods
.method public getByte()I
    .locals 3

    .prologue
    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "ret":I
    monitor-enter p0

    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 592
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 593
    monitor-exit p0

    .line 594
    return v0

    .line 593
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBytes(I)[B
    .locals 4
    .param p1, "length"    # I

    .prologue
    .line 598
    monitor-enter p0

    .line 599
    :try_start_0
    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_0

    .line 600
    const/4 v1, 0x0

    monitor-exit p0

    .line 609
    :goto_0
    return-object v1

    .line 603
    :cond_0
    new-array v1, p1, [B

    .line 605
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 606
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 607
    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 609
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 610
    .end local v0    # "i":I
    .end local v1    # "ret":[B
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getData()[B
    .locals 5

    .prologue
    .line 520
    monitor-enter p0

    .line 521
    :try_start_0
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    new-array v0, v1, [B

    .line 522
    .local v0, "tempData":[B
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 523
    monitor-exit p0

    return-object v0

    .line 524
    .end local v0    # "tempData":[B
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDataLen()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    return v0
.end method

.method public getFirstSlotId()I
    .locals 5

    .prologue
    .line 549
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 550
    .local v1, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 552
    const-string v2, "ExternalSimManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstSlotId, slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slot bit mapping = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 550
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getInt()I
    .locals 4

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "ret":I
    monitor-enter p0

    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    array-length v1, v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 568
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 572
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 574
    :cond_0
    monitor-exit p0

    .line 575
    return v0

    .line 574
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mMessageId:I

    return v0
.end method

.method public getShort()I
    .locals 4

    .prologue
    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "ret":I
    monitor-enter p0

    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 582
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 583
    monitor-exit p0

    .line 584
    return v0

    .line 583
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSlotBitMask()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mSlotId:I

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 614
    new-array v0, p1, [B

    .line 616
    .local v0, "buf":[B
    monitor-enter p0

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 618
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 619
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 619
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mTransactionId:I

    return v0
.end method

.method public putByte(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 425
    monitor-enter p0

    .line 426
    :try_start_0
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 427
    const/4 v0, -0x1

    monitor-exit p0

    .line 433
    :goto_0
    return v0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 431
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 432
    monitor-exit p0

    .line 433
    const/4 v0, 0x0

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putBytes([B)I
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x0

    .line 460
    monitor-enter p0

    .line 461
    :try_start_0
    array-length v0, p1

    .line 463
    .local v0, "len":I
    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    if-le v0, v2, :cond_0

    .line 464
    const/4 v1, -0x1

    monitor-exit p0

    .line 470
    :goto_0
    return v1

    .line 467
    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-static {p1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 468
    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 469
    monitor-exit p0

    goto :goto_0

    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putCapability(III)I
    .locals 2
    .param p1, "multiSim"    # I
    .param p2, "vsimSupported"    # I
    .param p3, "allowedSlots"    # I

    .prologue
    .line 474
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v1, v1, -0x10

    if-le v0, v1, :cond_0

    .line 475
    const/4 v0, -0x1

    .line 482
    :goto_0
    return v0

    .line 478
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 479
    invoke-virtual {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 480
    invoke-virtual {p0, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 481
    invoke-virtual {p0, p3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 482
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putInt(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 397
    monitor-enter p0

    .line 398
    :try_start_0
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v2, v2, -0x4

    if-le v1, v2, :cond_0

    .line 399
    const/4 v1, -0x1

    monitor-exit p0

    .line 407
    :goto_0
    return v1

    .line 402
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 404
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 406
    :cond_1
    monitor-exit p0

    .line 407
    const/4 v1, 0x0

    goto :goto_0

    .line 406
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putPaddingCapability()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 486
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v2, v2, -0x10

    if-le v1, v2, :cond_0

    .line 487
    const/4 v0, -0x1

    .line 494
    :goto_0
    return v0

    .line 490
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 491
    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 492
    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 493
    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_0
.end method

.method public putPaddingUiccCommand()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 509
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v2, v2, -0xc

    if-le v1, v2, :cond_0

    .line 510
    const/4 v0, -0x1

    .line 516
    :goto_0
    return v0

    .line 513
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 514
    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_0
.end method

.method public putShort(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v2, v2, -0x2

    if-le v1, v2, :cond_0

    .line 413
    const/4 v1, -0x1

    monitor-exit p0

    .line 421
    :goto_0
    return v1

    .line 416
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 418
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 420
    :cond_1
    monitor-exit p0

    .line 421
    const/4 v1, 0x0

    goto :goto_0

    .line 420
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putString(Ljava/lang/String;I)I
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 437
    monitor-enter p0

    .line 438
    :try_start_0
    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    sub-int/2addr v5, p2

    if-le v4, v5, :cond_0

    .line 439
    const/4 v3, -0x1

    monitor-exit p0

    .line 456
    :goto_0
    return v3

    .line 442
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 443
    .local v2, "s":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_2

    .line 444
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-static {v2, v4, v5, v6, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 445
    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 455
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v2    # "s":[B
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 447
    .restart local v2    # "s":[B
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, p2, v4

    .line 448
    .local v1, "remain":I
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 449
    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 451
    iget-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 452
    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public putUiccCommand(I[B)I
    .locals 2
    .param p1, "commandLen"    # I
    .param p2, "command"    # [B

    .prologue
    .line 498
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v1, v1, -0xc

    if-le v0, v1, :cond_0

    .line 499
    const/4 v0, -0x1

    .line 505
    :goto_0
    return v0

    .line 502
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 503
    invoke-virtual {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 504
    invoke-virtual {p0, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putBytes([B)I

    .line 505
    const/4 v0, 0x0

    goto :goto_0
.end method
