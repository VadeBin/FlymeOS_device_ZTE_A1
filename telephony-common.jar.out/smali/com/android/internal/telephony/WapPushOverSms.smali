.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z = true

.field private static final LOCATION_SELECTION:Ljava/lang/String; = "m_type=? AND ct_l =?"

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final THREAD_ID_SELECTION:Ljava/lang/String; = "m_id=? AND m_type=?"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 91
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 92
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    :cond_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager succeeded"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    const-wide/16 v10, -0x1

    .line 445
    instance-of v0, p1, Lcom/google/android/mms/pdu/DeliveryInd;

    if-eqz v0, :cond_1

    .line 446
    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 454
    .local v9, "messageId":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 456
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "thread_id"

    aput-object v4, v3, v0

    const-string v4, "m_id=? AND m_type=?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    const/16 v6, 0x80

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 467
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 468
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 473
    if-eqz v7, :cond_0

    .line 474
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 477
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "messageId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-wide v0

    .line 447
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    instance-of v0, p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    if-eqz v0, :cond_2

    .line 448
    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v9    # "messageId":Ljava/lang/String;
    goto :goto_0

    .line 450
    .end local v9    # "messageId":Ljava/lang/String;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_2
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WAP Push data is neither delivery or read report type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v10

    .line 452
    goto :goto_1

    .line 473
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "messageId":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 474
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    move-wide v0, v10

    .line 477
    goto :goto_1

    .line 470
    :catch_0
    move-exception v8

    .line 471
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "WAP PUSH"

    const-string v1, "Failed to query delivery or read report thread id"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    if-eqz v7, :cond_4

    .line 474
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 473
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 474
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nInd"    # Lcom/google/android/mms/pdu/NotificationInd;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 484
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v10

    .line 485
    .local v10, "rawLocation":[B
    if-eqz v10, :cond_2

    .line 486
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 487
    .local v9, "location":Ljava/lang/String;
    new-array v11, v12, [Ljava/lang/String;

    aput-object v9, v11, v13

    .line 488
    .local v11, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 490
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v0

    const-string v4, "m_type=? AND ct_l =?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v6, 0x82

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([B)V

    aput-object v6, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 501
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 508
    if-eqz v7, :cond_0

    .line 509
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v12

    .line 513
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "location":Ljava/lang/String;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    :goto_0
    return v0

    .line 508
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "location":Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 509
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "location":Ljava/lang/String;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    :goto_1
    move v0, v13

    .line 513
    goto :goto_0

    .line 505
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "location":Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 506
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "WAP PUSH"

    const-string v1, "failed to query existing notification ind"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    if-eqz v7, :cond_2

    .line 509
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 508
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 509
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static shouldParseContentDisposition(I)Z
    .locals 3
    .param p0, "subId"    # I

    .prologue
    .line 345
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "supportMmsContentDisposition"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private writeInboxMessage(I[B)V
    .locals 23
    .param p1, "subId"    # I
    .param p2, "pushData"    # [B

    .prologue
    .line 352
    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v5

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v5}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    .line 354
    .local v3, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v3, :cond_0

    .line 355
    const-string v4, "WAP PUSH"

    const-string v5, "Invalid PUSH PDU"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 358
    .local v2, "persister":Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v22

    .line 360
    .local v22, "type":I
    sparse-switch v22, :sswitch_data_0

    .line 430
    :try_start_0
    const-string v4, "WAP PUSH"

    const-string v5, "Received unrecognized WAP Push PDU."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_1
    :goto_0
    return-void

    .line 363
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/WapPushOverSms;->getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J

    move-result-wide v20

    .line 364
    .local v20, "threadId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-nez v4, :cond_2

    .line 367
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to find delivery or read report\'s thread id"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 432
    .end local v20    # "threadId":J
    :catch_0
    move-exception v17

    .line 433
    .local v17, "e":Lcom/google/android/mms/MmsException;
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to save MMS WAP push data: type="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 370
    .end local v17    # "e":Lcom/google/android/mms/MmsException;
    .restart local v20    # "threadId":J
    :cond_2
    :try_start_1
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 376
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_3

    .line 377
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to persist delivery or read report"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 434
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v20    # "threadId":J
    :catch_1
    move-exception v17

    .line 435
    .local v17, "e":Ljava/lang/RuntimeException;
    const-string v4, "WAP PUSH"

    const-string v5, "Unexpected RuntimeException in persisting MMS WAP push data"

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 381
    .end local v17    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v20    # "threadId":J
    :cond_3
    :try_start_2
    new-instance v7, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 382
    .local v7, "values":Landroid/content/ContentValues;
    const-string v4, "thread_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 390
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to update delivery or read report thread id"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v20    # "threadId":J
    :sswitch_1
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v18, v0

    .line 397
    .local v18, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-static/range {p1 .. p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v14

    .line 399
    .local v14, "configs":Landroid/os/Bundle;
    if-eqz v14, :cond_4

    const-string v4, "enabledTransID"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 401
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v15

    .line 402
    .local v15, "contentLocation":[B
    const/16 v4, 0x3d

    array-length v5, v15

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v15, v5

    if-ne v4, v5, :cond_4

    .line 403
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v19

    .line 404
    .local v19, "transactionId":[B
    array-length v4, v15

    move-object/from16 v0, v19

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 406
    .local v16, "contentLocationWithId":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v8, v15

    move-object/from16 v0, v16

    invoke-static {v15, v4, v0, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 408
    const/4 v4, 0x0

    array-length v5, v15

    move-object/from16 v0, v19

    array-length v8, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 410
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    .line 413
    .end local v15    # "contentLocation":[B
    .end local v16    # "contentLocationWithId":[B
    .end local v19    # "transactionId":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/internal/telephony/WapPushOverSms;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 414
    sget-object v10, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, v2

    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 420
    .restart local v6    # "uri":Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 421
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to save MMS WAP push notification ind"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 424
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip storing duplicate MMS WAP push notification ind: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 360
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 38
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 119
    const-string v6, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Rx: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/16 v23, 0x0

    .line 123
    .local v23, "index":I
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "index":I
    .local v24, "index":I
    :try_start_0
    aget-byte v6, p1, v23
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit16 v7, v6, 0xff

    .line 124
    .local v7, "transactionId":I
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "index":I
    .restart local v23    # "index":I
    :try_start_1
    aget-byte v6, p1, v24

    and-int/lit16 v8, v6, 0xff

    .line 127
    .local v8, "pduType":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v28

    .line 129
    .local v28, "phoneId":I
    const/4 v6, 0x6

    if-eq v8, v6, :cond_1

    const/16 v6, 0xf0

    if-eq v8, v6, :cond_1

    const/4 v6, 0x7

    if-eq v8, v6, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v11, 0x10e0079

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v23

    .line 134
    const/4 v6, -0x1

    move/from16 v0, v23

    if-eq v0, v6, :cond_0

    .line 135
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "index":I
    .restart local v24    # "index":I
    :try_start_2
    aget-byte v6, p1, v23
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    and-int/lit16 v7, v6, 0xff

    .line 136
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "index":I
    .restart local v23    # "index":I
    :try_start_3
    aget-byte v6, p1, v24

    and-int/lit16 v8, v6, 0xff

    .line 138
    const-string v6, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "index = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " PDU Type = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " transactionID = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v6, 0x6

    if-eq v8, v6, :cond_1

    const/4 v6, 0x7

    if-eq v8, v6, :cond_1

    .line 144
    const-string v6, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v6, 0x1

    .line 340
    .end local v7    # "transactionId":I
    .end local v8    # "pduType":I
    .end local v28    # "phoneId":I
    :goto_0
    return v6

    .line 148
    .restart local v7    # "transactionId":I
    .restart local v8    # "pduType":I
    .restart local v28    # "phoneId":I
    :cond_0
    const-string v6, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v6, 0x1

    goto :goto_0

    .line 153
    :cond_1
    new-instance v27, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 161
    .local v27, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 162
    const-string v6, "WAP PUSH"

    const-string v11, "Received PDU. Header Length error."

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v6, 0x2

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v9, v0

    .line 166
    .local v9, "headerLength":I
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v6

    add-int v23, v23, v6

    .line 168
    move/from16 v10, v23

    .line 182
    .local v10, "headerStartIndex":I
    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 183
    const-string v6, "WAP PUSH"

    const-string v11, "Received PDU. Header Content-Type error."

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v6, 0x2

    goto :goto_0

    .line 187
    :cond_3
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v26

    .line 188
    .local v26, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    .line 189
    .local v4, "binaryContentType":J
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v6

    add-int v23, v23, v6

    .line 191
    new-array v0, v9, [B

    move-object/from16 v22, v0

    .line 192
    .local v22, "header":[B
    const/4 v6, 0x0

    move-object/from16 v0, v22

    array-length v11, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v10, v1, v6, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 194
    sub-int v6, v9, v23

    add-int/2addr v6, v10

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeHeaders(II)V

    .line 199
    if-eqz v26, :cond_5

    const-string v6, "application/vnd.wap.coc"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 200
    move-object/from16 v25, p1

    .line 207
    .local v25, "intentData":[B
    :goto_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 209
    invoke-static/range {v28 .. v28}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v32

    .line 212
    .local v32, "subIds":[I
    if-eqz v32, :cond_6

    move-object/from16 v0, v32

    array-length v6, v0

    if-lez v6, :cond_6

    const/4 v6, 0x0

    aget v31, v32, v6

    .line 214
    .local v31, "subId":I
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->writeInboxMessage(I[B)V

    .line 217
    .end local v31    # "subId":I
    .end local v32    # "subIds":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    const-string v11, "address"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ZteWapPushOverSms;->setAddress(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/ZteWapPushOverSms;->init(Landroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Lcom/android/internal/telephony/WspTypeDecoder;)V

    move-object/from16 v6, p1

    .line 219
    invoke-static/range {v4 .. v10}, Lcom/android/internal/telephony/ZteWapPushOverSms;->dispatchWapPduExtra(J[BIIII)Z

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_7

    .line 221
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 202
    .end local v25    # "intentData":[B
    :cond_5
    add-int v20, v10, v9

    .line 203
    .local v20, "dataIndex":I
    move-object/from16 v0, p1

    array-length v6, v0

    sub-int v6, v6, v20

    new-array v0, v6, [B

    move-object/from16 v25, v0

    .line 204
    .restart local v25    # "intentData":[B
    const/4 v6, 0x0

    move-object/from16 v0, v25

    array-length v11, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2, v6, v11}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 336
    .end local v4    # "binaryContentType":J
    .end local v8    # "pduType":I
    .end local v9    # "headerLength":I
    .end local v10    # "headerStartIndex":I
    .end local v20    # "dataIndex":I
    .end local v22    # "header":[B
    .end local v25    # "intentData":[B
    .end local v26    # "mimeType":Ljava/lang/String;
    .end local v27    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v28    # "phoneId":I
    :catch_0
    move-exception v17

    .line 339
    .end local v7    # "transactionId":I
    .local v17, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_3
    const-string v6, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 212
    .end local v17    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "binaryContentType":J
    .restart local v7    # "transactionId":I
    .restart local v8    # "pduType":I
    .restart local v9    # "headerLength":I
    .restart local v10    # "headerStartIndex":I
    .restart local v22    # "header":[B
    .restart local v25    # "intentData":[B
    .restart local v26    # "mimeType":Ljava/lang/String;
    .restart local v27    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v28    # "phoneId":I
    .restart local v32    # "subIds":[I
    :cond_6
    :try_start_4
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v31

    goto :goto_2

    .line 223
    .end local v32    # "subIds":[I
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/ZteWapPushOverSms;->getMimeType()Ljava/lang/String;

    move-result-object v26

    .line 231
    add-int v6, v23, v9

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 232
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v23, v0

    .line 233
    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 234
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v33

    .line 235
    .local v33, "wapAppId":Ljava/lang/String;
    if-nez v33, :cond_8

    .line 236
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    .line 239
    :cond_8
    if-nez v26, :cond_a

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    .line 241
    .local v19, "contentType":Ljava/lang/String;
    :goto_4
    const-string v6, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "appid found: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, ":"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 244
    const/16 v30, 0x1

    .line 245
    .local v30, "processFurther":Z
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v34, v0

    .line 247
    .local v34, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v34, :cond_b

    .line 248
    const-string v6, "WAP PUSH"

    const-string v11, "wap push manager not found!"

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_9
    :goto_5
    if-nez v30, :cond_d

    .line 276
    const/4 v6, 0x1

    goto/16 :goto_0

    .end local v19    # "contentType":Ljava/lang/String;
    .end local v30    # "processFurther":Z
    .end local v34    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_a
    move-object/from16 v19, v26

    .line 239
    goto :goto_4

    .line 250
    .restart local v19    # "contentType":Ljava/lang/String;
    .restart local v30    # "processFurther":Z
    .restart local v34    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_b
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v12, "intent":Landroid/content/Intent;
    const-string v6, "transactionId"

    invoke-virtual {v12, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v6, "pduType"

    invoke-virtual {v12, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string v6, "header"

    move-object/from16 v0, v22

    invoke-virtual {v12, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 254
    const-string v6, "data"

    move-object/from16 v0, v25

    invoke-virtual {v12, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 255
    const-string v6, "contentTypeParameters"

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v12, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 257
    move/from16 v0, v28

    invoke-static {v12, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 259
    const-string v6, "wspHeaders"

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaders()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v12, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 261
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    if-eqz v6, :cond_c

    .line 262
    const-string v6, "WAP PUSH"

    const-string v11, "put addr info into intent 1"

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v6, "address"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    const-string v15, "address"

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v6, "service_center"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    const-string v15, "service_center"

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    :cond_c
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2, v12}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v29

    .line 269
    .local v29, "procRet":I
    const-string v6, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "procRet:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    .line 270
    and-int/lit8 v6, v29, 0x1

    if-lez v6, :cond_9

    const v6, 0x8000

    and-int v6, v6, v29

    if-nez v6, :cond_9

    .line 272
    const/16 v30, 0x0

    goto/16 :goto_5

    .line 278
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v29    # "procRet":I
    .end local v34    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_1
    move-exception v21

    .line 279
    .local v21, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v6, "WAP PUSH"

    const-string v11, "remote func failed..."

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v19    # "contentType":Ljava/lang/String;
    .end local v21    # "e":Landroid/os/RemoteException;
    .end local v30    # "processFurther":Z
    .end local v33    # "wapAppId":Ljava/lang/String;
    :cond_d
    const-string v6, "WAP PUSH"

    const-string v11, "fall back to existing handler"

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    if-nez v26, :cond_e

    .line 285
    const-string v6, "WAP PUSH"

    const-string v11, "Header Content-Type error."

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 292
    :cond_e
    const-string v6, "application/vnd.wap.mms-message"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 294
    const-string v6, "WAP PUSH"

    const-string v11, "WapPush set permission for RECEIVE_MMS"

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v13, "android.permission.RECEIVE_MMS"

    .line 297
    .local v13, "permission":Ljava/lang/String;
    const/16 v14, 0x12

    .line 306
    .local v14, "appOp":I
    :goto_6
    new-instance v12, Landroid/content/Intent;

    const-string v6, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v12, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v6, "transactionId"

    invoke-virtual {v12, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v6, "pduType"

    invoke-virtual {v12, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string v6, "header"

    move-object/from16 v0, v22

    invoke-virtual {v12, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 311
    const-string v6, "data"

    move-object/from16 v0, v25

    invoke-virtual {v12, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 312
    const-string v6, "contentTypeParameters"

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v12, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 313
    move/from16 v0, v28

    invoke-static {v12, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 315
    const-string v6, "wspHeaders"

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaders()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v12, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 317
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    if-eqz v6, :cond_f

    .line 318
    const-string v6, "WAP PUSH"

    const-string v11, "put addr info into intent 2"

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v6, "address"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    const-string v15, "address"

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v6, "service_center"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    const-string v15, "service_center"

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-static {v6, v11}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v18

    .line 327
    .local v18, "componentName":Landroid/content/ComponentName;
    if-eqz v18, :cond_10

    .line 329
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 330
    const-string v6, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Delivering MMS to: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_10
    sget-object v16, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v11, p3

    move-object/from16 v15, p2

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 335
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 300
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "permission":Ljava/lang/String;
    .end local v14    # "appOp":I
    .end local v18    # "componentName":Landroid/content/ComponentName;
    :cond_11
    const-string v6, "WAP PUSH"

    const-string v11, "WapPush set permission for RECEIVE_WAP_PUSH"

    invoke-static {v6, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v13, "android.permission.RECEIVE_WAP_PUSH"
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 303
    .restart local v13    # "permission":Ljava/lang/String;
    const/16 v14, 0x13

    .restart local v14    # "appOp":I
    goto/16 :goto_6

    .line 336
    .end local v4    # "binaryContentType":J
    .end local v7    # "transactionId":I
    .end local v8    # "pduType":I
    .end local v9    # "headerLength":I
    .end local v10    # "headerStartIndex":I
    .end local v13    # "permission":Ljava/lang/String;
    .end local v14    # "appOp":I
    .end local v22    # "header":[B
    .end local v23    # "index":I
    .end local v25    # "intentData":[B
    .end local v26    # "mimeType":Ljava/lang/String;
    .end local v27    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v28    # "phoneId":I
    .restart local v24    # "index":I
    :catch_2
    move-exception v17

    move/from16 v23, v24

    .end local v24    # "index":I
    .restart local v23    # "index":I
    goto/16 :goto_3
.end method

.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Bundle;)I
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p4, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 524
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispathchWapPdu!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "service_center"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iput-object p4, p0, Lcom/android/internal/telephony/WapPushOverSms;->bundle:Landroid/os/Bundle;

    .line 529
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v0

    return v0
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: unbind wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 77
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 78
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wappush manager connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 84
    const-string v0, "WAP PUSH"

    const-string v1, "wappush manager disconnected."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
