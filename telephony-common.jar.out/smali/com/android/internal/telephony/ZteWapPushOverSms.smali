.class public Lcom/android/internal/telephony/ZteWapPushOverSms;
.super Ljava/lang/Object;
.source "ZteWapPushOverSms.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"

.field private static handler:Lcom/android/internal/telephony/InboundSmsHandler;

.field private static mOriginatingAddress:Ljava/lang/String;

.field private static mimeType:Ljava/lang/String;

.field private static pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

.field private static receiver:Landroid/content/BroadcastReceiver;

.field private static siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

.field private static slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchWapPduExtra(J[BIIII)Z
    .locals 8
    .param p0, "binaryContentType"    # J
    .param p2, "pdu"    # [B
    .param p3, "transactionId"    # I
    .param p4, "pduType"    # I
    .param p5, "headerLength"    # I
    .param p6, "headerStartIndex"    # I

    .prologue
    .line 724
    const/4 v3, 0x0

    .line 725
    .local v3, "dispatchedByApplication":Z
    add-int v0, p6, p5

    .line 727
    .local v0, "dataIndex":I
    long-to-int v6, p0

    sparse-switch v6, :sswitch_data_0

    .line 791
    :cond_0
    :goto_0
    return v3

    .line 730
    :sswitch_0
    invoke-static {p2, p3, p4, v0}, Lcom/android/internal/telephony/ZteWapPushOverSms;->dispatchWapPdu_SI([BIII)Z

    move-result v3

    .line 731
    if-nez v3, :cond_0

    .line 732
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".invalid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    goto :goto_0

    .line 738
    :sswitch_1
    new-instance v2, Ljava/lang/String;

    const-string v6, "application/x-oma-DCD:DCD.ua"

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 739
    .local v2, "dcd_id_string":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 740
    .local v1, "dcd_id_byte":[B
    array-length v6, v1

    if-lt p5, v6, :cond_2

    .line 741
    const/4 v4, 0x0

    .line 742
    .local v4, "headerStartIndexOffset":I
    :goto_1
    array-length v6, v1

    add-int/2addr v6, v4

    if-gt v6, p5, :cond_2

    .line 744
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 745
    add-int v6, p6, v4

    add-int/2addr v6, v5

    aget-byte v6, p2, v6

    aget-byte v7, v1, v5

    if-eq v6, v7, :cond_3

    .line 749
    :cond_1
    array-length v6, v1

    if-ne v5, v6, :cond_4

    .line 750
    const-string v6, "application/x-oma-DCD:DCD.ua"

    sput-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    .line 758
    .end local v4    # "headerStartIndexOffset":I
    .end local v5    # "i":I
    :cond_2
    invoke-static {p2, p3, p4, v0}, Lcom/android/internal/telephony/ZteWapPushOverSms;->dispatchWapPdu_SL([BIII)Z

    move-result v3

    .line 759
    if-nez v3, :cond_0

    .line 760
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".invalid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    goto :goto_0

    .line 744
    .restart local v4    # "headerStartIndexOffset":I
    .restart local v5    # "i":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 753
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 754
    goto :goto_1

    .line 766
    .end local v1    # "dcd_id_byte":[B
    .end local v2    # "dcd_id_string":Ljava/lang/String;
    .end local v4    # "headerStartIndexOffset":I
    .end local v5    # "i":I
    :sswitch_2
    invoke-static {p2, p3, p4, v0}, Lcom/android/internal/telephony/ZteWapPushOverSms;->dispatchWapPdu_SYNML_NOTIFICATION([BIII)V

    .line 767
    const/4 v3, 0x1

    .line 768
    goto :goto_0

    .line 772
    :sswitch_3
    invoke-static {p2, p3, p4, v0}, Lcom/android/internal/telephony/ZteWapPushOverSms;->dispatchWapPdu_CONNECTIVITY_WBXML([BIII)V

    .line 773
    const/4 v3, 0x1

    .line 774
    goto :goto_0

    .line 778
    :sswitch_4
    invoke-static {p2, p3, p4, v0}, Lcom/android/internal/telephony/ZteWapPushOverSms;->dispatchWapPdu_EMN_WBXML([BIII)V

    .line 779
    const/4 v3, 0x1

    .line 780
    goto :goto_0

    .line 782
    :sswitch_5
    invoke-static {p2, p3, p4, v0}, Lcom/android/internal/telephony/ZteWapPushOverSms;->dispatchWapPdu_EMN_B_X_HDML([BIII)V

    .line 783
    const/4 v3, 0x1

    .line 784
    goto :goto_0

    .line 727
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x2e -> :sswitch_0
        0x30 -> :sswitch_1
        0x36 -> :sswitch_3
        0x44 -> :sswitch_2
        0x30a -> :sswitch_4
    .end sparse-switch
.end method

.method private static dispatchWapPdu_CONNECTIVITY_WBXML([BIII)V
    .locals 6
    .param p0, "pdu"    # [B
    .param p1, "transactionId"    # I
    .param p2, "pduType"    # I
    .param p3, "dataIndex"    # I

    .prologue
    .line 666
    const-string v0, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONNECTIVITY_WBXML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    .local v1, "intent":Landroid/content/Intent;
    sget-object v0, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const-string v0, "data"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 672
    const-string v0, "subscription"

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    .line 676
    .local v2, "permission":Ljava/lang/String;
    const/16 v3, 0x13

    .line 677
    .local v3, "appOp":I
    sget-object v0, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 679
    return-void
.end method

.method private static dispatchWapPdu_EMN_B_X_HDML([BIII)V
    .locals 6
    .param p0, "pdu"    # [B
    .param p1, "transactionId"    # I
    .param p2, "pduType"    # I
    .param p3, "dataIndex"    # I

    .prologue
    .line 701
    const-string v0, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X_HDML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mimetype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .local v1, "intent":Landroid/content/Intent;
    sget-object v0, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v0, "data"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 707
    const-string v0, "subscription"

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    .line 711
    .local v2, "permission":Ljava/lang/String;
    const/16 v3, 0x13

    .line 712
    .local v3, "appOp":I
    sget-object v0, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 713
    return-void
.end method

.method private static dispatchWapPdu_EMN_WBXML([BIII)V
    .locals 6
    .param p0, "pdu"    # [B
    .param p1, "transactionId"    # I
    .param p2, "pduType"    # I
    .param p3, "dataIndex"    # I

    .prologue
    .line 685
    const-string v0, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EMN_WBXML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v1, "intent":Landroid/content/Intent;
    sget-object v0, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const-string v0, "data"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 691
    const-string v0, "subscription"

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    .line 695
    .local v2, "permission":Ljava/lang/String;
    const/16 v3, 0x13

    .line 696
    .local v3, "appOp":I
    sget-object v0, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 697
    return-void
.end method

.method private static dispatchWapPdu_SI([BIII)Z
    .locals 30
    .param p0, "pdu"    # [B
    .param p1, "transactionId"    # I
    .param p2, "pduType"    # I
    .param p3, "dataIndex"    # I

    .prologue
    .line 35
    move-object/from16 v0, p0

    array-length v2, v0

    sub-int v2, v2, p3

    new-array v14, v2, [B

    .line 36
    .local v14, "data":[B
    const/4 v2, 0x0

    array-length v6, v14

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v14, v2, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 39
    const/4 v15, 0x0

    .line 40
    .local v15, "index":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "index":I
    .local v16, "index":I
    aget-byte v2, v14, v15

    and-int/lit16 v0, v2, 0xff

    move/from16 v26, v0

    .line 41
    .local v26, "wbxml_version":I
    const/4 v2, 0x1

    move/from16 v0, v26

    if-eq v2, v0, :cond_0

    const/4 v2, 0x2

    move/from16 v0, v26

    if-eq v2, v0, :cond_0

    .line 42
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push version is Not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v2, 0x0

    move/from16 v15, v16

    .line 415
    .end local v16    # "index":I
    .restart local v15    # "index":I
    :goto_0
    return v2

    .line 47
    .end local v15    # "index":I
    .restart local v16    # "index":I
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-direct {v2, v14}, Lcom/android/internal/telephony/ZteWspTypeDecoder;-><init>([B)V

    sput-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    .line 50
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push publicId error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v2, 0x0

    move/from16 v15, v16

    .end local v16    # "index":I
    .restart local v15    # "index":I
    goto :goto_0

    .line 54
    .end local v15    # "index":I
    .restart local v16    # "index":I
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v20

    .line 55
    .local v20, "publicId":J
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/lit8 v15, v2, 0x1

    .line 56
    .end local v16    # "index":I
    .restart local v15    # "index":I
    const-wide/16 v6, 0x5

    cmp-long v2, v6, v20

    if-eqz v2, :cond_2

    .line 57
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push Not SI index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v2, 0x0

    goto :goto_0

    .line 62
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 63
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push charset error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v2, 0x0

    goto :goto_0

    .line 66
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v12

    .line 67
    .local v12, "charSet":J
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v15, v2

    .line 69
    const-wide/16 v6, 0x6a

    cmp-long v2, v6, v12

    if-eqz v2, :cond_4

    const-wide/16 v6, 0x4

    cmp-long v2, v6, v12

    if-eqz v2, :cond_4

    const-wide/16 v6, 0x3

    cmp-long v2, v6, v12

    if-eqz v2, :cond_4

    .line 70
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push charset Not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 76
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 77
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push table_strlen error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 81
    :cond_5
    const/16 v23, 0x0

    .line 82
    .local v23, "table_str":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v24

    .line 83
    .local v24, "table_strlen":J
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v15, v2

    .line 84
    const-wide/16 v6, 0x0

    cmp-long v2, v6, v24

    if-eqz v2, :cond_7

    .line 85
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeTextString(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 86
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push table_str error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 89
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v23

    .line 92
    :cond_7
    int-to-long v6, v15

    add-long v6, v6, v24

    long-to-int v15, v6

    .line 94
    array-length v2, v14

    add-int/lit8 v2, v2, -0x1

    if-lt v15, v2, :cond_8

    .line 95
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push No valid content index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 100
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x7

    iput v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 101
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 102
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 103
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_id:Ljava/lang/String;

    .line 105
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->created:J

    .line 106
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_expired:J

    .line 108
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iput-wide v12, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->CharSet:J

    .line 110
    aget-byte v2, v14, v15

    and-int/lit16 v2, v2, 0x80

    shr-int/lit8 v10, v2, 0x7

    .line 111
    .local v10, "attrTag":I
    aget-byte v2, v14, v15

    and-int/lit8 v2, v2, 0x40

    shr-int/lit8 v11, v2, 0x6

    .line 112
    .local v11, "conTag":I
    aget-byte v2, v14, v15

    and-int/lit8 v8, v2, 0x3f

    .line 113
    .local v8, "SI_tag":I
    const/4 v2, 0x5

    if-eq v2, v8, :cond_9

    .line 114
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push Not SI 2 index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 117
    :cond_9
    add-int v22, v10, v11

    .line 118
    .local v22, "siEndTagCount":I
    add-int/lit8 v15, v15, 0x1

    .line 120
    :cond_a
    :goto_1
    array-length v2, v14

    if-ge v15, v2, :cond_23

    if-lez v22, :cond_23

    .line 122
    aget-byte v2, v14, v15

    and-int/lit8 v8, v2, 0x3f

    .line 123
    sparse-switch v8, :sswitch_data_0

    .line 357
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push not handled tag:0x%x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 125
    :sswitch_0
    aget-byte v2, v14, v15

    and-int/lit16 v2, v2, 0xc0

    if-eqz v2, :cond_b

    .line 126
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push end tag not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 129
    :cond_b
    add-int/lit8 v15, v15, 0x1

    .line 130
    add-int/lit8 v22, v22, -0x1

    .line 131
    goto :goto_1

    .line 133
    :sswitch_1
    aget-byte v2, v14, v15

    and-int/lit16 v2, v2, 0x80

    shr-int/lit8 v10, v2, 0x7

    .line 134
    aget-byte v2, v14, v15

    and-int/lit8 v2, v2, 0x40

    shr-int/lit8 v11, v2, 0x6

    .line 135
    add-int v2, v10, v11

    int-to-long v0, v2

    move-wide/from16 v18, v0

    .line 136
    .local v18, "indicationEndTagcount":J
    add-int/lit8 v15, v15, 0x1

    .line 137
    :goto_2
    array-length v2, v14

    add-int/lit8 v2, v2, -0x1

    if-gt v15, v2, :cond_a

    const-wide/16 v6, 0x0

    cmp-long v2, v18, v6

    if-lez v2, :cond_a

    .line 138
    aget-byte v2, v14, v15

    and-int/lit16 v9, v2, 0xff

    .line 139
    .local v9, "attrId":I
    packed-switch v9, :pswitch_data_0

    .line 336
    :pswitch_0
    add-int/lit8 v15, v15, 0x1

    .line 337
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push attribute content type not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 141
    :pswitch_1
    const-wide/16 v6, 0x1

    sub-long v18, v18, v6

    .line 142
    add-int/lit8 v15, v15, 0x1

    .line 143
    goto :goto_2

    .line 145
    :pswitch_2
    aget-byte v2, v14, v15

    and-int/lit16 v2, v2, 0xc0

    if-eqz v2, :cond_c

    .line 146
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push string table not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 149
    :cond_c
    add-int/lit8 v15, v15, 0x1

    .line 153
    const-wide/16 v6, 0x4

    cmp-long v2, v6, v12

    if-nez v2, :cond_d

    .line 154
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeTextStringLatin1(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 155
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push latin1 text error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 158
    :cond_d
    const-wide/16 v6, 0x3

    cmp-long v2, v6, v12

    if-nez v2, :cond_e

    .line 159
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeTextStringUsAscII(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 160
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push us-ascii text error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 164
    :cond_e
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeTextString(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 165
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push utf8 text error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 170
    :cond_f
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v2, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 171
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 172
    if-eqz v23, :cond_10

    .line 173
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 179
    :cond_10
    :goto_3
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v15, v2

    .line 180
    goto/16 :goto_2

    .line 175
    :cond_11
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v2, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 176
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    goto :goto_3

    .line 183
    :pswitch_3
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x5

    iput v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 184
    add-int/lit8 v15, v15, 0x1

    .line 185
    goto/16 :goto_2

    .line 187
    :pswitch_4
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x6

    iput v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 188
    add-int/lit8 v15, v15, 0x1

    .line 189
    goto/16 :goto_2

    .line 191
    :pswitch_5
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x7

    iput v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 192
    add-int/lit8 v15, v15, 0x1

    .line 193
    goto/16 :goto_2

    .line 195
    :pswitch_6
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v6, 0x8

    iput v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 196
    add-int/lit8 v15, v15, 0x1

    .line 197
    goto/16 :goto_2

    .line 199
    :pswitch_7
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v6, 0x9

    iput v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 200
    add-int/lit8 v15, v15, 0x1

    .line 201
    goto/16 :goto_2

    .line 203
    :pswitch_8
    add-int/lit8 v15, v15, 0x1

    .line 204
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push data type Not support index at1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    aget-byte v2, v14, v15

    and-int/lit16 v2, v2, 0xff

    const/16 v6, 0xc3

    if-eq v2, v6, :cond_12

    .line 207
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push data type Not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 210
    :cond_12
    add-int/lit8 v15, v15, 0x1

    .line 212
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeTimeInteger(I)Z

    move-result v2

    if-nez v2, :cond_13

    .line 213
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push create time error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 217
    :cond_13
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->created:J

    .line 218
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v15, v2

    .line 220
    goto/16 :goto_2

    .line 222
    :pswitch_9
    add-int/lit8 v15, v15, 0x1

    .line 223
    aget-byte v2, v14, v15

    const/4 v6, 0x3

    if-eq v2, v6, :cond_14

    .line 224
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push href 0x0B string type not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 227
    :cond_14
    add-int/lit8 v15, v15, 0x1

    .line 228
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 229
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push href 0x0B url parse error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 232
    :cond_15
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 233
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v15, v2

    .line 234
    goto/16 :goto_2

    .line 236
    :pswitch_a
    add-int/lit8 v15, v15, 0x1

    .line 237
    aget-byte v2, v14, v15

    const/4 v6, 0x3

    if-eq v2, v6, :cond_16

    .line 238
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push href 0x0C string type not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 241
    :cond_16
    add-int/lit8 v15, v15, 0x1

    .line 242
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 243
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push href 0x0C url parse error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 246
    :cond_17
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 247
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v15, v2

    .line 248
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    const-string v27, "http://"

    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 251
    :pswitch_b
    add-int/lit8 v15, v15, 0x1

    .line 252
    aget-byte v2, v14, v15

    const/4 v6, 0x3

    if-eq v2, v6, :cond_18

    .line 253
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push href 0x0D string type not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 256
    :cond_18
    add-int/lit8 v15, v15, 0x1

    .line 257
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 258
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push href 0x0D url parse error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 261
    :cond_19
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 262
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v15, v2

    .line 263
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    const-string v27, "http://www."

    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 266
    :pswitch_c
    add-int/lit8 v15, v15, 0x1

    .line 267
    aget-byte v2, v14, v15

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1a

    .line 268
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push href 0x0E string type not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 271
    :cond_1a
    add-int/lit8 v15, v15, 0x1

    .line 272
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 273
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push href 0x0E url parse error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 276
    :cond_1b
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 277
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v15, v2

    .line 278
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    const-string v27, "https://"

    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 281
    :pswitch_d
    add-int/lit8 v15, v15, 0x1

    .line 282
    aget-byte v2, v14, v15

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1c

    .line 283
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push href 0x0F string type not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 286
    :cond_1c
    add-int/lit8 v15, v15, 0x1

    .line 287
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 288
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push href 0x0F url parse error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 291
    :cond_1d
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 292
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v15, v2

    .line 293
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    const-string v27, "https://www."

    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 296
    :pswitch_e
    add-int/lit8 v15, v15, 0x1

    .line 299
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push data type Not support index at11:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    aget-byte v2, v14, v15

    and-int/lit16 v2, v2, 0xff

    const/16 v6, 0xc3

    if-eq v2, v6, :cond_1e

    .line 302
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push data type Not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 306
    :cond_1e
    add-int/lit8 v15, v15, 0x1

    .line 308
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeTimeInteger(I)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 309
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push si-expires error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 313
    :cond_1f
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_expired:J

    .line 314
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v15, v2

    .line 316
    goto/16 :goto_2

    .line 318
    :pswitch_f
    add-int/lit8 v15, v15, 0x1

    .line 319
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu_default. data[index] 41= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v14, v15

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "index :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    aget-byte v2, v14, v15

    const/4 v6, 0x3

    if-eq v2, v6, :cond_20

    .line 321
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push SI ID type Not support or may be null string, index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 325
    :cond_20
    add-int/lit8 v15, v15, 0x1

    .line 326
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v2

    if-nez v2, :cond_21

    .line 327
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push SI ID parse error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 330
    :cond_21
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_id:Ljava/lang/String;

    .line 331
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v15, v2

    .line 332
    goto/16 :goto_2

    .line 344
    .end local v9    # "attrId":I
    .end local v18    # "indicationEndTagcount":J
    :sswitch_2
    aget-byte v2, v14, v15

    and-int/lit16 v2, v2, 0x80

    shr-int/lit8 v10, v2, 0x7

    .line 345
    aget-byte v2, v14, v15

    and-int/lit8 v2, v2, 0x40

    shr-int/lit8 v11, v2, 0x6

    .line 346
    add-int v17, v10, v11

    .line 347
    .local v17, "infoEndTagCount":I
    add-int/lit8 v15, v15, 0x1

    .line 348
    :goto_4
    array-length v2, v14

    add-int/lit8 v2, v2, -0x1

    if-gt v15, v2, :cond_a

    if-lez v17, :cond_a

    .line 349
    const/4 v2, 0x1

    aget-byte v6, v14, v15

    and-int/lit16 v6, v6, 0xff

    if-ne v2, v6, :cond_22

    .line 350
    add-int/lit8 v17, v17, -0x1

    .line 352
    :cond_22
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 363
    .end local v17    # "infoEndTagCount":I
    :cond_23
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-wide v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->created:J

    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-wide v0, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_expired:J

    move-wide/from16 v28, v0

    cmp-long v2, v6, v28

    if-lez v2, :cond_24

    .line 364
    const-string v2, "WAP PUSH"

    const-string v6, "si expired, ignor wappush message"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 368
    :cond_24
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget v2, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v6, 0x9

    if-ne v2, v6, :cond_26

    .line 369
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu_default. si_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v2, "WAP PUSH"

    const-string v6, "delete all the push message with the same si_id"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_25
    :goto_5
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SI mimeType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SI transactionId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SI pduType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SI pdu: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v14}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SI action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SI CharSet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-wide v0, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->CharSet:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SI href = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SI NotifyText = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SI si_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SI address = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SI created = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-wide v0, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->created:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SI si_expired = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-wide v0, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_expired:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v3, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v2, "transactionId"

    move/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    const-string v2, "pduType"

    move/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    const-string v2, "data"

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 397
    const-string v2, "href"

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v6, v6, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v2, "action"

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget v6, v6, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string v2, "NotifyText"

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v6, v6, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v2, "si_id"

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v6, v6, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_id:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v2, "address"

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v2, "created"

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-wide v6, v6, Lcom/android/internal/telephony/ZteWspTypeDecoder;->created:J

    invoke-virtual {v3, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 404
    const-string v2, "si_expired"

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-wide v6, v6, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_expired:J

    invoke-virtual {v3, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 406
    const-string v2, "subscription"

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v6, v6, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v6

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    .line 412
    .local v4, "permission":Ljava/lang/String;
    const/16 v5, 0x13

    .line 413
    .local v5, "appOp":I
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 415
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 372
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "appOp":I
    :cond_26
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget v2, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v6, 0x9

    if-eq v2, v6, :cond_27

    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget v2, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x5

    if-ne v2, v6, :cond_25

    .line 374
    :cond_27
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu_default. si_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v2, "WAP PUSH"

    const-string v6, "don\'t save the push message"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private static dispatchWapPdu_SL([BIII)Z
    .locals 24
    .param p0, "pdu"    # [B
    .param p1, "transactionId"    # I
    .param p2, "pduType"    # I
    .param p3, "dataIndex"    # I

    .prologue
    .line 421
    move-object/from16 v0, p0

    array-length v2, v0

    sub-int v2, v2, p3

    new-array v13, v2, [B

    .line 422
    .local v13, "data":[B
    const/4 v2, 0x0

    array-length v6, v13

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v13, v2, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 425
    const/4 v14, 0x0

    .line 426
    .local v14, "index":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "index":I
    .local v15, "index":I
    aget-byte v2, v13, v14

    and-int/lit16 v0, v2, 0xff

    move/from16 v19, v0

    .line 427
    .local v19, "wbxml_version":I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v2, v0, :cond_0

    const/4 v2, 0x2

    move/from16 v0, v19

    if-eq v2, v0, :cond_0

    .line 428
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push version is Not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v2, 0x0

    move v14, v15

    .line 641
    .end local v15    # "index":I
    .restart local v14    # "index":I
    :goto_0
    return v2

    .line 433
    .end local v14    # "index":I
    .restart local v15    # "index":I
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-direct {v2, v13}, Lcom/android/internal/telephony/ZteWspTypeDecoder;-><init>([B)V

    sput-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    .line 436
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 437
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push publicId error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v2, 0x0

    move v14, v15

    .end local v15    # "index":I
    .restart local v14    # "index":I
    goto :goto_0

    .line 440
    .end local v14    # "index":I
    .restart local v15    # "index":I
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v16

    .line 441
    .local v16, "publicId":J
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/lit8 v14, v2, 0x1

    .line 442
    .end local v15    # "index":I
    .restart local v14    # "index":I
    const-wide/16 v6, 0x6

    cmp-long v2, v6, v16

    if-eqz v2, :cond_2

    .line 443
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push Not SL index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v2, 0x0

    goto :goto_0

    .line 448
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 449
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push charset error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v2, 0x0

    goto :goto_0

    .line 452
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v10

    .line 453
    .local v10, "charSet":J
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v14, v2

    .line 455
    const-wide/16 v6, 0x6a

    cmp-long v2, v6, v10

    if-eqz v2, :cond_4

    const-wide/16 v6, 0x4

    cmp-long v2, v6, v10

    if-eqz v2, :cond_4

    .line 456
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push charset Not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 461
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 462
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SI push table_strlen error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 465
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v20

    .line 466
    .local v20, "table_strlen":J
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v14, v2

    .line 467
    const-wide/16 v6, 0x0

    cmp-long v2, v6, v20

    if-eqz v2, :cond_6

    .line 468
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push string table Not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 472
    :cond_6
    int-to-long v6, v14

    add-long v6, v6, v20

    long-to-int v14, v6

    .line 474
    array-length v2, v13

    add-int/lit8 v2, v2, -0x1

    if-lt v14, v2, :cond_7

    .line 475
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push No valid content index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 480
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x5

    iput v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 481
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 482
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 483
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iput-wide v10, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->CharSet:J

    .line 485
    aget-byte v2, v13, v14

    and-int/lit16 v2, v2, 0x80

    shr-int/lit8 v9, v2, 0x7

    .line 486
    .local v9, "attrTag":I
    aget-byte v2, v13, v14

    and-int/lit8 v2, v2, 0x40

    shr-int/lit8 v12, v2, 0x6

    .line 487
    .local v12, "conTag":I
    aget-byte v2, v13, v14

    and-int/lit8 v8, v2, 0x3f

    .line 488
    .local v8, "SL_tag":I
    const/4 v2, 0x5

    if-eq v2, v8, :cond_8

    .line 489
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push Not SI 2 index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 492
    :cond_8
    add-int v18, v9, v12

    .line 493
    .local v18, "slEndTagCount":I
    add-int/lit8 v14, v14, 0x1

    .line 495
    :goto_1
    array-length v2, v13

    if-ge v14, v2, :cond_14

    if-lez v18, :cond_14

    .line 497
    aget-byte v2, v13, v14

    and-int/lit8 v8, v2, 0x3f

    .line 498
    packed-switch v8, :pswitch_data_0

    .line 590
    :pswitch_0
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push not handled tag:0x%x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 500
    :pswitch_1
    aget-byte v2, v13, v14

    and-int/lit16 v2, v2, 0xc0

    if-eqz v2, :cond_9

    .line 501
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push end tag not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 504
    :cond_9
    add-int/lit8 v14, v14, 0x1

    .line 505
    add-int/lit8 v18, v18, -0x1

    .line 506
    goto :goto_1

    .line 508
    :pswitch_2
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x5

    iput v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 509
    add-int/lit8 v14, v14, 0x1

    .line 510
    goto :goto_1

    .line 512
    :pswitch_3
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x6

    iput v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 513
    add-int/lit8 v14, v14, 0x1

    .line 514
    goto :goto_1

    .line 516
    :pswitch_4
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x7

    iput v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 517
    add-int/lit8 v14, v14, 0x1

    .line 518
    goto :goto_1

    .line 520
    :pswitch_5
    add-int/lit8 v14, v14, 0x1

    .line 521
    aget-byte v2, v13, v14

    const/4 v6, 0x3

    if-eq v2, v6, :cond_a

    .line 522
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push href 0x08 string type not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 525
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 526
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 527
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push href 0x08 url parse error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 530
    :cond_b
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 531
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v14, v2

    .line 532
    goto/16 :goto_1

    .line 534
    :pswitch_6
    add-int/lit8 v14, v14, 0x1

    .line 535
    aget-byte v2, v13, v14

    const/4 v6, 0x3

    if-eq v2, v6, :cond_c

    .line 536
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push href 0x09 string type not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 539
    :cond_c
    add-int/lit8 v14, v14, 0x1

    .line 540
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 541
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push href 0x09 url parse error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 544
    :cond_d
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    const-string v22, "http://"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 545
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v14, v2

    .line 546
    goto/16 :goto_1

    .line 548
    :pswitch_7
    add-int/lit8 v14, v14, 0x1

    .line 549
    aget-byte v2, v13, v14

    const/4 v6, 0x3

    if-eq v2, v6, :cond_e

    .line 550
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push href 0x0A string type not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 553
    :cond_e
    add-int/lit8 v14, v14, 0x1

    .line 554
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 555
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push href 0x0A url parse error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 558
    :cond_f
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    const-string v22, "http://www."

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 559
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v14, v2

    .line 560
    goto/16 :goto_1

    .line 562
    :pswitch_8
    add-int/lit8 v14, v14, 0x1

    .line 563
    aget-byte v2, v13, v14

    const/4 v6, 0x3

    if-eq v2, v6, :cond_10

    .line 564
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push href 0x0B string type not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 567
    :cond_10
    add-int/lit8 v14, v14, 0x1

    .line 568
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 569
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push href 0x0B url parse error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 572
    :cond_11
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    const-string v22, "https://"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 573
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v14, v2

    .line 574
    goto/16 :goto_1

    .line 576
    :pswitch_9
    add-int/lit8 v14, v14, 0x1

    .line 577
    aget-byte v2, v13, v14

    const/4 v6, 0x3

    if-eq v2, v6, :cond_12

    .line 578
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push href 0x0C string type not support index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 581
    :cond_12
    add-int/lit8 v14, v14, 0x1

    .line 582
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v2

    if-nez v2, :cond_13

    .line 583
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SL push href 0x0C url parse error index at:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 586
    :cond_13
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    const-string v22, "https://www."

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 587
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/2addr v14, v2

    .line 588
    goto/16 :goto_1

    .line 597
    :cond_14
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v6, "application/x-oma-DCD:DCD.ua"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 599
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SL_DCD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v3, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v2, "href"

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v6, v6, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    .line 607
    .local v4, "permission":Ljava/lang/String;
    const/16 v5, 0x13

    .line 608
    .local v5, "appOp":I
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 609
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 612
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "appOp":I
    :cond_15
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget v2, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/4 v6, 0x7

    if-ne v2, v6, :cond_16

    .line 613
    const-string v2, "WAP PUSH"

    const-string v6, "Received SL push not handled when action is cache "

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 617
    :cond_16
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SL mimeType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SL pduType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SL pdu :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v13}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SL action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SL CharSet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-wide v0, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->CharSet:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SL href = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v7, v7, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v2, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchWapPdu SL address = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    .restart local v3    # "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v2, "transactionId"

    move/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    const-string v2, "pduType"

    move/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 629
    const-string v2, "data"

    invoke-virtual {v3, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 630
    const-string v2, "href"

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget-object v6, v6, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    const-string v2, "action"

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    iget v6, v6, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    const-string v2, "address"

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string v2, "contentTypeParameters"

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 636
    const-string v2, "subscription"

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v6, v6, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v6

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    .line 639
    .restart local v4    # "permission":Ljava/lang/String;
    const/16 v5, 0x13

    .line 640
    .restart local v5    # "appOp":I
    sget-object v2, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 641
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static dispatchWapPdu_SYNML_NOTIFICATION([BIII)V
    .locals 6
    .param p0, "pdu"    # [B
    .param p1, "transactionId"    # I
    .param p2, "pduType"    # I
    .param p3, "dataIndex"    # I

    .prologue
    .line 648
    const-string v0, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SYNML_NOTIFICATION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v1, "intent":Landroid/content/Intent;
    sget-object v0, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const-string v0, "data"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 654
    const-string v0, "subscription"

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 657
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    .line 658
    .local v2, "permission":Ljava/lang/String;
    const/16 v3, 0x13

    .line 659
    .local v3, "appOp":I
    sget-object v0, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 660
    return-void
.end method

.method public static getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    sget-object v0, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Lcom/android/internal/telephony/WspTypeDecoder;)V
    .locals 0
    .param p0, "mReceiver"    # Landroid/content/BroadcastReceiver;
    .param p1, "tHandler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p2, "tMimeType"    # Ljava/lang/String;
    .param p3, "tPduDecoder"    # Lcom/android/internal/telephony/WspTypeDecoder;

    .prologue
    .line 716
    sput-object p0, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    .line 717
    sput-object p1, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    .line 718
    sput-object p2, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    .line 719
    sput-object p3, Lcom/android/internal/telephony/ZteWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 720
    return-void
.end method

.method public static setAddress(Ljava/lang/String;)V
    .locals 0
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 31
    sput-object p0, Lcom/android/internal/telephony/ZteWapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    .line 32
    return-void
.end method
