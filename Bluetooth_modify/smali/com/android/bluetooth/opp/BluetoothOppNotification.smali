.class Lcom/android/bluetooth/opp/BluetoothOppNotification;
.super Ljava/lang/Object;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;,
        Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    }
.end annotation


# static fields
.field private static final CLEAR_INCOMING_NOTIFY:I = 0x1

.field private static final NOTIFICATION_ID_INBOUND:I = -0xf4246

.field private static final NOTIFICATION_ID_OUTBOUND:I = -0xf4245

.field private static final NOTIFY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[Bluetooth.OPP]BluetoothOppNotification"

.field private static final V:Z = true

.field static final WHERE_COMPLETED:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\')"

.field private static final WHERE_COMPLETED_INBOUND:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 1)"

.field private static final WHERE_COMPLETED_OUTBOUND:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 0)"

.field static final WHERE_CONFIRM_PENDING:Ljava/lang/String; = "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

.field static final WHERE_RUNNING:Ljava/lang/String; = "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"

.field static final confirm:Ljava/lang/String; = "(confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"

.field private static mActiveNotificationId:I = 0x0

.field private static mContext:Landroid/content/Context; = null

.field private static mNotCleanedNotificationId:I = 0x0

.field private static mPreparedToCleanedNotificationId:I = 0x0

.field static final not_through_handover:Ljava/lang/String; = "(confirm != \'5\')"

.field static final status:Ljava/lang/String; = "(status == \'192\')"

.field static final visible:Ljava/lang/String; = "(visibility IS NULL OR visibility == \'0\')"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field public mNotificationMgr:Landroid/app/NotificationManager;

.field private mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingUpdate:I

.field private mUpdateCompleteNotification:Z

.field private mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    sput v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    .line 112
    sput v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotCleanedNotificationId:I

    .line 114
    sput v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPreparedToCleanedNotificationId:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    .line 185
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    .line 146
    sput-object p1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 147
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppNotification;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/BluetoothOppNotification;Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;
    .param p1, "x1"    # Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->clearIncomingNotify()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateActiveNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateIncomingFileConfirmNotification()V

    return-void
.end method

.method private clearIncomingNotify()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 579
    const-string v0, "[Bluetooth.OPP]BluetoothOppNotification"

    const-string v1, "clearIncomingNotify ++ "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

    const-string v5, "_id"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 583
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 597
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f05001c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 590
    .local v9, "title":Ljava/lang/CharSequence;
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f05001d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 592
    .local v6, "caption":Ljava/lang/CharSequence;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 594
    .local v8, "id":I
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 587
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 596
    .end local v6    # "caption":Ljava/lang/CharSequence;
    .end local v8    # "id":I
    .end local v9    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getOppOngoingNotification(Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;)Landroid/app/Notification;
    .locals 10
    .param p0, "item"    # Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 600
    const-string v2, "[Bluetooth.OPP]BluetoothOppNotification"

    const-string v5, "getOppOngoingNotification ++"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 602
    .local v0, "b":Landroid/app/Notification$Builder;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 603
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    int-to-long v6, v2

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    int-to-long v8, v2

    invoke-static {v6, v7, v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 604
    iget v5, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    iget v6, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v5, v6, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 607
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-nez v2, :cond_1

    .line 608
    const v2, 0x1080088

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 615
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 617
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.bluetooth"

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 621
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 624
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    sput v2, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    .line 626
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    move v2, v4

    .line 604
    goto :goto_0

    .line 609
    :cond_1
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-ne v2, v3, :cond_2

    .line 610
    const v2, 0x1080081

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 613
    :cond_2
    const-string v2, "[Bluetooth.OPP]BluetoothOppNotification"

    const-string v5, "mDirection ERROR!"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateActiveNotification()V
    .locals 37

    .prologue
    .line 235
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    const-string v5, "updateActiveNotification ++"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 239
    .local v18, "cursor":Landroid/database/Cursor;
    if-nez v18, :cond_1

    .line 389
    :cond_0
    return-void

    .line 245
    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 246
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    .line 250
    :goto_0
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUpdateCompleteNotification = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v4, "timestamp"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 254
    .local v34, "timestampIndex":I
    const-string v4, "direction"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 255
    .local v23, "directionIndex":I
    const-string v4, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 256
    .local v28, "idIndex":I
    const-string v4, "total_bytes"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 257
    .local v36, "totalBytesIndex":I
    const-string v4, "current_bytes"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 258
    .local v17, "currentBytesIndex":I
    const-string v4, "_data"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 259
    .local v19, "dataIndex":I
    const-string v4, "hint"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 260
    .local v25, "filenameHintIndex":I
    const-string v4, "confirm"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 261
    .local v14, "confirmIndex":I
    const-string v4, "destination"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 263
    .local v21, "destinationIndex":I
    const-string v4, "carrier_name"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 265
    .local v12, "carrierIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 266
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_9

    .line 267
    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 268
    .local v32, "timeStamp":J
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 269
    .local v22, "dir":I
    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 270
    .local v27, "id":I
    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 271
    .local v35, "total":I
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 272
    .local v16, "current":I
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 275
    .local v15, "confirmation":I
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 277
    .local v13, "carrierName":Ljava/lang/String;
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 278
    .local v20, "destination":Ljava/lang/String;
    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 279
    .local v24, "fileName":Ljava/lang/String;
    if-nez v24, :cond_2

    .line 280
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 282
    :cond_2
    if-nez v24, :cond_3

    .line 283
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v5, 0x7f050041

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 286
    :cond_3
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 289
    .local v11, "batchID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 266
    :goto_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 248
    .end local v11    # "batchID":Ljava/lang/String;
    .end local v12    # "carrierIndex":I
    .end local v13    # "carrierName":Ljava/lang/String;
    .end local v14    # "confirmIndex":I
    .end local v15    # "confirmation":I
    .end local v16    # "current":I
    .end local v17    # "currentBytesIndex":I
    .end local v19    # "dataIndex":I
    .end local v20    # "destination":Ljava/lang/String;
    .end local v21    # "destinationIndex":I
    .end local v22    # "dir":I
    .end local v23    # "directionIndex":I
    .end local v24    # "fileName":Ljava/lang/String;
    .end local v25    # "filenameHintIndex":I
    .end local v27    # "id":I
    .end local v28    # "idIndex":I
    .end local v32    # "timeStamp":J
    .end local v34    # "timestampIndex":I
    .end local v35    # "total":I
    .end local v36    # "totalBytesIndex":I
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    goto/16 :goto_0

    .line 293
    .restart local v11    # "batchID":Ljava/lang/String;
    .restart local v12    # "carrierIndex":I
    .restart local v13    # "carrierName":Ljava/lang/String;
    .restart local v14    # "confirmIndex":I
    .restart local v15    # "confirmation":I
    .restart local v16    # "current":I
    .restart local v17    # "currentBytesIndex":I
    .restart local v19    # "dataIndex":I
    .restart local v20    # "destination":Ljava/lang/String;
    .restart local v21    # "destinationIndex":I
    .restart local v22    # "dir":I
    .restart local v23    # "directionIndex":I
    .restart local v24    # "fileName":Ljava/lang/String;
    .restart local v25    # "filenameHintIndex":I
    .restart local v27    # "id":I
    .restart local v28    # "idIndex":I
    .restart local v32    # "timeStamp":J
    .restart local v34    # "timestampIndex":I
    .restart local v35    # "total":I
    .restart local v36    # "totalBytesIndex":I
    :cond_5
    new-instance v30, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    invoke-direct/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;-><init>()V

    .line 295
    .local v30, "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    move-object/from16 v0, v30

    iput-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->carrier:Ljava/lang/String;

    .line 297
    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    .line 298
    move/from16 v0, v27

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    .line 299
    move/from16 v0, v22

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    .line 300
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-nez v4, :cond_6

    .line 301
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v5, 0x7f050022

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v24, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    .line 308
    :goto_3
    move/from16 v0, v16

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    .line 309
    move/from16 v0, v35

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    .line 310
    const/4 v4, 0x5

    if-ne v15, v4, :cond_8

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, v30

    iput-boolean v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    .line 312
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->destination:Ljava/lang/String;

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; batchID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; totoalCurrent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; totalTotal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 302
    :cond_6
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 303
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v5, 0x7f05001f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v24, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    goto/16 :goto_3

    .line 306
    :cond_7
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    const-string v5, "mDirection ERROR!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 310
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 319
    .end local v11    # "batchID":Ljava/lang/String;
    .end local v13    # "carrierName":Ljava/lang/String;
    .end local v15    # "confirmation":I
    .end local v16    # "current":I
    .end local v20    # "destination":Ljava/lang/String;
    .end local v22    # "dir":I
    .end local v24    # "fileName":Ljava/lang/String;
    .end local v27    # "id":I
    .end local v30    # "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    .end local v32    # "timeStamp":J
    .end local v35    # "total":I
    :cond_9
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    .line 323
    .restart local v30    # "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    move-object/from16 v0, v30

    iget-boolean v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    if-eqz v4, :cond_c

    .line 324
    const/16 v31, 0x0

    .line 325
    .local v31, "progress":F
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 326
    const/high16 v31, -0x40800000    # -1.0f

    .line 332
    :goto_6
    new-instance v29, Landroid/content/Intent;

    const-string v4, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v29, "intent":Landroid/content/Intent;
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 334
    const-string v4, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    :goto_7
    const-string v4, "android.nfc.handover.intent.extra.TRANSFER_ID"

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    const-string v4, "android.nfc.handover.intent.extra.TRANSFER_PROGRESS"

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 342
    const-string v4, "android.nfc.handover.intent.extra.ADDRESS"

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->destination:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v4, "btopp.invokecarrier"

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->carrier:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.NFC_HANDOVER_STATUS"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_5

    .line 328
    .end local v29    # "intent":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    int-to-float v4, v4

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    int-to-float v5, v5

    div-float v31, v4, v5

    goto :goto_6

    .line 337
    .restart local v29    # "intent":Landroid/content/Intent;
    :cond_b
    const-string v4, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    const/4 v5, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7

    .line 350
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v31    # "progress":F
    :cond_c
    new-instance v10, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-direct {v10, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    .local v10, "b":Landroid/app/Notification$Builder;
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 353
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 354
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    int-to-long v4, v4

    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 356
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_d

    const/4 v4, 0x1

    :goto_8
    invoke-virtual {v10, v5, v6, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 357
    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    invoke-virtual {v10, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 358
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-nez v4, :cond_e

    .line 359
    const v4, 0x1080088

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 365
    :goto_9
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 367
    new-instance v29, Landroid/content/Intent;

    const-string v4, "android.btopp.intent.action.LIST"

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .restart local v29    # "intent":Landroid/content/Intent;
    const-string v4, "com.android.bluetooth"

    const-class v5, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 371
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 376
    sget v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    if-eq v4, v5, :cond_10

    .line 377
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    .line 386
    :goto_a
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    sput v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    goto/16 :goto_5

    .line 356
    .end local v29    # "intent":Landroid/content/Intent;
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 360
    :cond_e
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 361
    const v4, 0x1080081

    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_9

    .line 363
    :cond_f
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    const-string v5, "mDirection ERROR!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 379
    .restart local v29    # "intent":Landroid/content/Intent;
    :cond_10
    sget v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    sput v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotCleanedNotificationId:I

    .line 380
    sget v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPreparedToCleanedNotificationId:I

    sget v5, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotCleanedNotificationId:I

    if-eq v4, v5, :cond_11

    .line 381
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove MissID= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPreparedToCleanedNotificationId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    sget v5, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPreparedToCleanedNotificationId:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 384
    :cond_11
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keep cancel_id= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotCleanedNotificationId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private updateIncomingFileConfirmNotification()V
    .locals 15

    .prologue
    .line 535
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 538
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 576
    :goto_0
    return-void

    .line 542
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f05001c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 545
    .local v14, "title":Ljava/lang/CharSequence;
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f05001d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 547
    .local v6, "caption":Ljava/lang/CharSequence;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 548
    .local v9, "id":I
    const-string v0, "timestamp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 549
    .local v12, "timeStamp":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 551
    .local v7, "contentUri":Landroid/net/Uri;
    new-instance v11, Landroid/app/Notification;

    invoke-direct {v11}, Landroid/app/Notification;-><init>()V

    .line 552
    .local v11, "n":Landroid/app/Notification;
    const/high16 v0, 0x7f020000

    iput v0, v11, Landroid/app/Notification;->icon:I

    .line 553
    iget v0, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 554
    iget v0, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 555
    const/4 v0, 0x1

    iput v0, v11, Landroid/app/Notification;->defaults:I

    .line 556
    iput-object v14, v11, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 558
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.btopp.intent.action.CONFIRM"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "com.android.bluetooth"

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    invoke-virtual {v10, v7}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 562
    iput-wide v12, v11, Landroid/app/Notification;->when:J

    .line 563
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, v11, Landroid/app/Notification;->color:I

    .line 565
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v10, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v11, v0, v14, v6, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 568
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string v0, "android.btopp.intent.action.HIDE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v0, "com.android.bluetooth"

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    invoke-virtual {v10, v7}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 571
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v11, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 573
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, v9, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 542
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 575
    .end local v6    # "caption":Ljava/lang/CharSequence;
    .end local v7    # "contentUri":Landroid/net/Uri;
    .end local v9    # "id":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "n":Landroid/app/Notification;
    .end local v12    # "timeStamp":J
    .end local v14    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method public clearIncomingConfirmNotifycation()V
    .locals 3

    .prologue
    .line 170
    const-string v0, "[Bluetooth.OPP]BluetoothOppNotification"

    const-string v1, "clearIncomingConfirmNotifycation ++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    monitor-exit p0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateCompletedNotification()V
    .locals 28

    .prologue
    .line 394
    const-wide/16 v24, 0x0

    .line 395
    .local v24, "timeStamp":J
    const/16 v21, 0x0

    .line 396
    .local v21, "outboundSuccNumber":I
    const/16 v19, 0x0

    .line 399
    .local v19, "outboundFailNumber":I
    const/16 v16, 0x0

    .line 400
    .local v16, "inboundSuccNumber":I
    const/4 v14, 0x0

    .line 405
    .local v14, "inboundFailNumber":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    if-nez v4, :cond_1

    .line 406
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    const-string v5, "No need to update complete notification"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v4, :cond_2

    sget v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    if-eqz v4, :cond_2

    .line 415
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start to cancel_id= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotCleanedNotificationId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    sget v5, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotCleanedNotificationId:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 419
    sget v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mActiveNotificationId:I

    sput v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotCleanedNotificationId:I

    .line 420
    sget v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotCleanedNotificationId:I

    sput v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPreparedToCleanedNotificationId:I

    .line 421
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "next will be cancel_id= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotCleanedNotificationId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    const-string v5, "ongoing transfer notification was removed"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_2
    :try_start_0
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 0)"

    const/4 v8, 0x0

    const-string v9, "timestamp DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 431
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_0

    .line 435
    const-string v4, "timestamp"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 436
    .local v26, "timestampIndex":I
    const-string v4, "status"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 438
    .local v23, "statusIndex":I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_5

    .line 439
    invoke-interface {v11}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 441
    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 443
    :cond_3
    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 445
    .local v22, "status":I
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 446
    add-int/lit8 v19, v19, 0x1

    .line 438
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 502
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v22    # "status":I
    .end local v23    # "statusIndex":I
    .end local v26    # "timestampIndex":I
    :catch_0
    move-exception v12

    .line 503
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    const-string v5, "updateCompletedNotification:: update error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 507
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    add-int v15, v16, v14

    .line 509
    .local v15, "inboundNum":I
    if-lez v15, :cond_b

    .line 510
    new-instance v13, Landroid/app/Notification;

    invoke-direct {v13}, Landroid/app/Notification;-><init>()V

    .line 511
    .local v13, "inNoti":Landroid/app/Notification;
    const v4, 0x1080082

    iput v4, v13, Landroid/app/Notification;->icon:I

    .line 512
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v5, 0x7f050063

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 513
    .local v27, "title":Ljava/lang/String;
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v5, 0x7f050064

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 515
    .local v10, "caption":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    const-string v4, "android.btopp.intent.action.OPEN_INBOUND"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .local v17, "intent":Landroid/content/Intent;
    const-string v4, "com.android.bluetooth"

    const-class v5, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, v13, Landroid/app/Notification;->color:I

    .line 519
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v13, v4, v0, v10, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 521
    new-instance v17, Landroid/content/Intent;

    .end local v17    # "intent":Landroid/content/Intent;
    const-string v4, "android.btopp.intent.action.HIDE_COMPLETE"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v4, "com.android.bluetooth"

    const-class v5, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v13, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 524
    move-wide/from16 v0, v24

    iput-wide v0, v13, Landroid/app/Notification;->when:J

    .line 525
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v5, -0xf4246

    invoke-virtual {v4, v5, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 448
    .end local v10    # "caption":Ljava/lang/String;
    .end local v13    # "inNoti":Landroid/app/Notification;
    .end local v15    # "inboundNum":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v27    # "title":Ljava/lang/String;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "status":I
    .restart local v23    # "statusIndex":I
    .restart local v26    # "timestampIndex":I
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 451
    .end local v22    # "status":I
    :cond_5
    :try_start_1
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "outbound: succ-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  fail-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 454
    add-int v20, v21, v19

    .line 456
    .local v20, "outboundNum":I
    if-lez v20, :cond_8

    .line 457
    new-instance v18, Landroid/app/Notification;

    invoke-direct/range {v18 .. v18}, Landroid/app/Notification;-><init>()V

    .line 458
    .local v18, "outNoti":Landroid/app/Notification;
    const v4, 0x1080089

    move-object/from16 v0, v18

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 459
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v5, 0x7f050062

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 460
    .restart local v27    # "title":Ljava/lang/String;
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v5, 0x7f050064

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 462
    .restart local v10    # "caption":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    const-string v4, "android.btopp.intent.action.OPEN_OUTBOUND"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v4, "com.android.bluetooth"

    const-class v5, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v18

    iput v4, v0, Landroid/app/Notification;->color:I

    .line 466
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1, v10, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 468
    new-instance v17, Landroid/content/Intent;

    .end local v17    # "intent":Landroid/content/Intent;
    const-string v4, "android.btopp.intent.action.HIDE_COMPLETE"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v4, "com.android.bluetooth"

    const-class v5, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 471
    move-wide/from16 v0, v24

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v5, -0xf4245

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 481
    .end local v10    # "caption":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "outNoti":Landroid/app/Notification;
    .end local v27    # "title":Ljava/lang/String;
    :cond_6
    :goto_4
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 1)"

    const/4 v8, 0x0

    const-string v9, "timestamp DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 483
    if-eqz v11, :cond_0

    .line 487
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_a

    .line 488
    invoke-interface {v11}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 490
    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 492
    :cond_7
    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 494
    .restart local v22    # "status":I
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 495
    add-int/lit8 v14, v14, 0x1

    .line 487
    :goto_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    .line 474
    .end local v22    # "status":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v4, :cond_6

    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v5, -0xf4245

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 476
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    const-string v5, "outbound notification was removed."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 497
    .restart local v22    # "status":I
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 500
    .end local v22    # "status":I
    :cond_a
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inbound: succ-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  fail-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 527
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v20    # "outboundNum":I
    .end local v23    # "statusIndex":I
    .end local v26    # "timestampIndex":I
    .restart local v15    # "inboundNum":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v4, :cond_0

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v5, -0xf4246

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 529
    const-string v4, "[Bluetooth.OPP]BluetoothOppNotification"

    const-string v5, "inbound notification was removed."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateNotification()V
    .locals 3

    .prologue
    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    .line 158
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 159
    const-string v0, "[Bluetooth.OPP]BluetoothOppNotification"

    const-string v1, "update too frequent, put in queue"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    monitor-exit p0

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    const-string v0, "[Bluetooth.OPP]BluetoothOppNotification"

    const-string v1, "send message"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
