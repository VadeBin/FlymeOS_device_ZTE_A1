.class Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
.super Ljava/lang/Object;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanNative"
.end annotation


# static fields
.field private static final ALL_PASS_FILTER_INDEX_BATCH_SCAN:I = 0x2

.field private static final ALL_PASS_FILTER_INDEX_REGULAR_SCAN:I = 0x1

.field private static final ALL_PASS_FILTER_SELECTION:I = 0x0

.field private static final DEFAULT_ONLOST_ONFOUND_TIMEOUT_MILLIS:I = 0x3e8

.field private static final DELIVERY_MODE_BATCH:I = 0x2

.field private static final DELIVERY_MODE_IMMEDIATE:I = 0x0

.field private static final DELIVERY_MODE_ON_FOUND_LOST:I = 0x1

.field private static final DISCARD_OLDEST_WHEN_BUFFER_FULL:I = 0x0

.field private static final FILTER_LOGIC_TYPE:I = 0x1

.field private static final LIST_LOGIC_TYPE:I = 0x1111111

.field private static final ONFOUND_SIGHTINGS:I = 0x2

.field private static final SCAN_MODE_BALANCED_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_BALANCED_WINDOW_MS:I = 0x7d0

.field private static final SCAN_MODE_BATCH_BALANCED_INTERVAL_MS:I = 0x3a98

.field private static final SCAN_MODE_BATCH_BALANCED_WINDOW_MS:I = 0x5dc

.field private static final SCAN_MODE_BATCH_LOW_LATENCY_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_BATCH_LOW_LATENCY_WINDOW_MS:I = 0x5dc

.field private static final SCAN_MODE_BATCH_LOW_POWER_INTERVAL_MS:I = 0x249f0

.field private static final SCAN_MODE_BATCH_LOW_POWER_WINDOW_MS:I = 0x5dc

.field private static final SCAN_MODE_LOW_LATENCY_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_LOW_LATENCY_WINDOW_MS:I = 0x1388

.field private static final SCAN_MODE_LOW_POWER_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_LOW_POWER_WINDOW_MS:I = 0x1f4


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAllPassBatchClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllPassRegularClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBatchScanIntervalIntent:Landroid/app/PendingIntent;

.field private final mClientFilterIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFilterIndexStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 356
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    .line 351
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    .line 357
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    .line 358
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    .line 360
    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;
    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    .line 361
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.bluetooth.gatt.REFRESH_BATCHED_SCAN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 362
    .local v0, "batchIntent":Landroid/content/Intent;
    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;
    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v2

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    .line 363
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.bluetooth.gatt.REFRESH_BATCHED_SCAN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    new-instance v2, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;

    invoke-direct {v2, p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;-><init>(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanManager;)V

    # setter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {p1, v2}, Lcom/android/bluetooth/gatt/ScanManager;->access$602(Lcom/android/bluetooth/gatt/ScanManager;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 380
    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;
    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v2

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$600(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/bluetooth/gatt/GattService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    const/4 v2, 0x1

    # setter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiverRegistered:Z
    invoke-static {p1, v2}, Lcom/android/bluetooth/gatt/ScanManager;->access$702(Lcom/android/bluetooth/gatt/ScanManager;Z)Z

    .line 382
    return-void
.end method

.method private addFilterToController(ILcom/android/bluetooth/gatt/ScanFilterQueue$Entry;I)V
    .locals 22
    .param p1, "clientIf"    # I
    .param p2, "entry"    # Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    .param p3, "filterIndex"    # I

    .prologue
    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addFilterToController: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filterIndex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 798
    move-object/from16 v0, p2

    iget-byte v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    packed-switch v2, :pswitch_data_0

    .line 838
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 800
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 801
    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-string v16, ""

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->address:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v19, v0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v20, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto :goto_0

    .line 807
    :pswitch_2
    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-string v16, ""

    const-string v17, ""

    const/16 v18, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    move-object/from16 v20, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto :goto_0

    .line 814
    :pswitch_3
    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v12

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v14

    const-string v16, ""

    const-string v17, ""

    const/16 v18, 0x0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v19, v0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v20, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto/16 :goto_0

    .line 823
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding filters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 824
    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ""

    const/16 v18, 0x0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v19, v0

    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v20, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto/16 :goto_0

    .line 830
    :pswitch_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    array-length v0, v2

    move/from16 v21, v0

    .line 831
    .local v21, "len":I
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    array-length v2, v2

    move/from16 v0, v21

    if-ne v2, v0, :cond_0

    .line 833
    move-object/from16 v0, p2

    iget-byte v4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company_mask:I

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-string v16, ""

    const-string v17, ""

    const/16 v18, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    move-object/from16 v20, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V

    goto/16 :goto_0

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private configureFilterParamter(ILcom/android/bluetooth/gatt/ScanClient;II)V
    .locals 12
    .param p1, "clientIf"    # I
    .param p2, "client"    # Lcom/android/bluetooth/gatt/ScanClient;
    .param p3, "featureSelection"    # I
    .param p4, "filterIndex"    # I

    .prologue
    .line 855
    invoke-direct {p0, p2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I

    move-result v8

    .line 856
    .local v8, "deliveryMode":I
    const/16 v6, -0x80

    .line 857
    .local v6, "rssiThreshold":I
    invoke-direct {p0, p2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getOnfoundLostTimeout(Lcom/android/bluetooth/gatt/ScanClient;)I

    move-result v9

    .line 858
    .local v9, "timeout":I
    const-string v0, "BtGatt.ScanManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureFilterParamter: deliveryMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,rssiThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string v0, "BtGatt.ScanManager"

    const-string v1, "gattClientScanFilterParamAddNative"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const v4, 0x1111111

    const/4 v5, 0x1

    const/4 v11, 0x2

    move-object v0, p0

    move v1, p1

    move/from16 v2, p4

    move v3, p3

    move v7, v6

    move v10, v9

    invoke-direct/range {v0 .. v11}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterParamAddNative(IIIIIIIIIII)V

    .line 866
    return-void
.end method

.method private configureScanFilters(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 12
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    .line 669
    const-string v9, "BtGatt.ScanManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configureScanFilters: client="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    .line 671
    .local v1, "clientIf":I
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I

    move-result v2

    .line 672
    .local v2, "deliveryMode":I
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldAddAllPassFilterToController(Lcom/android/bluetooth/gatt/ScanClient;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 709
    :goto_0
    return-void

    .line 676
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 677
    const-string v9, "BtGatt.ScanManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gattClientScanFilterEnableNative("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",true);"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-direct {p0, v1, v8}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterEnableNative(IZ)V

    .line 679
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 681
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 682
    const-string v9, "BtGatt.ScanManager"

    const-string v10, "configureScanFilters: shouldUseAllPassFilter"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    if-ne v2, v5, :cond_1

    .line 685
    .local v5, "filterIndex":I
    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 686
    const/4 v8, 0x0

    invoke-direct {p0, v1, p1, v8, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureFilterParamter(ILcom/android/bluetooth/gatt/ScanClient;II)V

    .line 687
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    goto :goto_0

    .end local v5    # "filterIndex":I
    :cond_1
    move v5, v8

    .line 683
    goto :goto_1

    .line 689
    :cond_2
    const-string v8, "BtGatt.ScanManager"

    const-string v9, "configureScanFilters: !shouldUseAllPassFilter"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 691
    .local v0, "clientFilterIndices":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Integer;>;"
    iget-object v8, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/le/ScanFilter;

    .line 692
    .local v4, "filter":Landroid/bluetooth/le/ScanFilter;
    new-instance v7, Lcom/android/bluetooth/gatt/ScanFilterQueue;

    invoke-direct {v7}, Lcom/android/bluetooth/gatt/ScanFilterQueue;-><init>()V

    .line 693
    .local v7, "queue":Lcom/android/bluetooth/gatt/ScanFilterQueue;
    invoke-virtual {v7, v4}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addScanFilter(Landroid/bluetooth/le/ScanFilter;)V

    .line 694
    invoke-virtual {v7}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->getFeatureSelection()I

    move-result v3

    .line 695
    .local v3, "featureSelection":I
    iget-object v8, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v8}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 696
    .restart local v5    # "filterIndex":I
    :goto_3
    invoke-virtual {v7}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 697
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 698
    invoke-virtual {v7}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->pop()Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    move-result-object v8

    invoke-direct {p0, v1, v8, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->addFilterToController(ILcom/android/bluetooth/gatt/ScanFilterQueue$Entry;I)V

    .line 699
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    goto :goto_3

    .line 701
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 702
    invoke-direct {p0, v1, p1, v3, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureFilterParamter(ILcom/android/bluetooth/gatt/ScanClient;II)V

    .line 703
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 704
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 705
    const-string v8, "BtGatt.ScanManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configureScanFilters: filterIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 707
    .end local v3    # "featureSelection":I
    .end local v4    # "filter":Landroid/bluetooth/le/ScanFilter;
    .end local v5    # "filterIndex":I
    .end local v7    # "queue":Lcom/android/bluetooth/gatt/ScanFilterQueue;
    :cond_4
    iget-object v8, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private native gattClientConfigBatchScanStorageNative(IIII)V
.end method

.method private native gattClientReadScanReportsNative(II)V
.end method

.method private native gattClientScanFilterAddNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V
.end method

.method private native gattClientScanFilterClearNative(II)V
.end method

.method private native gattClientScanFilterDeleteNative(IIIIIJJJJLjava/lang/String;Ljava/lang/String;B[B[B)V
.end method

.method private native gattClientScanFilterEnableNative(IZ)V
.end method

.method private native gattClientScanFilterParamAddNative(IIIIIIIIIII)V
.end method

.method private native gattClientScanFilterParamClearAllNative(I)V
.end method

.method private native gattClientScanFilterParamDeleteNative(II)V
.end method

.method private native gattClientScanNative(Z)V
.end method

.method private native gattClientStartBatchScanNative(IIIIII)V
.end method

.method private native gattClientStopBatchScanNative(I)V
.end method

.method private native gattSetScanParametersNative(II)V
.end method

.method private getBatchScanClient(I)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 3
    .param p1, "clientIf"    # I

    .prologue
    .line 760
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 761
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    if-ne v2, p1, :cond_0

    .line 765
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBatchScanIntervalMillis(I)I
    .locals 1
    .param p1, "scanMode"    # I

    .prologue
    const v0, 0x249f0

    .line 577
    packed-switch p1, :pswitch_data_0

    .line 585
    :goto_0
    :pswitch_0
    return v0

    .line 579
    :pswitch_1
    const/16 v0, 0x1388

    goto :goto_0

    .line 581
    :pswitch_2
    const/16 v0, 0x3a98

    goto :goto_0

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getBatchScanParams()Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    .locals 5

    .prologue
    .line 546
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 547
    const/4 v2, 0x0

    .line 560
    :cond_0
    return-object v2

    .line 549
    :cond_1
    new-instance v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;-><init>(Lcom/android/bluetooth/gatt/ScanManager;)V

    .line 552
    .local v2, "params":Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 553
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v3, v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    .line 554
    iget-object v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v3

    if-nez v3, :cond_2

    .line 555
    iget v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    iput v3, v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    goto :goto_0

    .line 557
    :cond_2
    iget v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    iput v3, v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    goto :goto_0
.end method

.method private getBatchScanWindowMillis(I)I
    .locals 1
    .param p1, "scanMode"    # I

    .prologue
    const/16 v0, 0x5dc

    .line 564
    packed-switch p1, :pswitch_data_0

    .line 572
    :pswitch_0
    return v0

    .line 564
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getBatchTriggerIntervalMillis()J
    .locals 8

    .prologue
    .line 655
    const-wide v2, 0x7fffffffffffffffL

    .line 656
    .local v2, "intervalMillis":J
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 657
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 658
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 662
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :cond_1
    return-wide v2
.end method

.method private getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I
    .locals 10
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 870
    if-nez p1, :cond_0

    .line 871
    const-string v1, "BtGatt.ScanManager"

    const-string v3, "getDeliveryMode: DELIVERY_MODE_IMMEDIATE"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :goto_0
    return v2

    .line 874
    :cond_0
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 875
    .local v0, "settings":Landroid/bluetooth/le/ScanSettings;
    if-nez v0, :cond_1

    .line 876
    const-string v1, "BtGatt.ScanManager"

    const-string v3, "getDeliveryMode: DELIVERY_MODE_IMMEDIATE"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 879
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 881
    :cond_2
    const-string v1, "BtGatt.ScanManager"

    const-string v2, "getDeliveryMode: DELIVERY_MODE_ON_FOUND_LOST"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/4 v2, 0x1

    goto :goto_0

    .line 885
    :cond_3
    const-string v3, "BtGatt.ScanManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeliveryMode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v6

    cmp-long v1, v6, v8

    if-nez v1, :cond_4

    const-string v1, " DELIVERY_MODE_IMMEDIATE"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    move v2, v1

    goto :goto_0

    .line 885
    :cond_4
    const-string v1, "DELIVERY_MODE_BATCH"

    goto :goto_1

    .line 887
    :cond_5
    const/4 v1, 0x2

    goto :goto_2
.end method

.method private getFullScanStoragePercent(I)I
    .locals 1
    .param p1, "resultType"    # I

    .prologue
    const/16 v0, 0x32

    .line 533
    packed-switch p1, :pswitch_data_0

    .line 541
    :goto_0
    :pswitch_0
    return v0

    .line 535
    :pswitch_1
    const/16 v0, 0x64

    goto :goto_0

    .line 537
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getOnfoundLostTimeout(Lcom/android/bluetooth/gatt/ScanClient;)I
    .locals 4
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/16 v1, 0x3e8

    .line 893
    if-nez p1, :cond_1

    .line 900
    :cond_0
    :goto_0
    return v1

    .line 896
    :cond_1
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 897
    .local v0, "settings":Landroid/bluetooth/le/ScanSettings;
    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0
.end method

.method private getResultType(Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)I
    .locals 2
    .param p1, "params"    # Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    .prologue
    const/4 v0, -0x1

    .line 772
    iget v1, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    if-eq v1, v0, :cond_1

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    if-eq v1, v0, :cond_1

    .line 773
    const/4 v0, 0x3

    .line 781
    :cond_0
    :goto_0
    return v0

    .line 775
    :cond_1
    iget v1, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    if-eq v1, v0, :cond_2

    .line 776
    const/4 v0, 0x1

    goto :goto_0

    .line 778
    :cond_2
    iget v1, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    if-eq v1, v0, :cond_0

    .line 779
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private initFilterIndexStack()V
    .locals 4

    .prologue
    .line 841
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->getNumOfOffloadedScanFilterSupported()I

    move-result v1

    .line 847
    .local v1, "maxFiltersSupported":I
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 848
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 850
    :cond_0
    return-void
.end method

.method private removeFilterIfExisits(Ljava/util/Set;II)V
    .locals 1
    .param p2, "clientIf"    # I
    .param p3, "filterIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, "clients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 752
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 754
    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterParamDeleteNative(II)V

    .line 755
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    goto :goto_0
.end method

.method private removeScanFilters(I)V
    .locals 6
    .param p1, "clientIf"    # I

    .prologue
    .line 729
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Deque;

    .line 730
    .local v1, "filterIndices":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 731
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v3, v1}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 732
    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 733
    .local v0, "filterIndex":Ljava/lang/Integer;
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 734
    const-string v3, "BtGatt.ScanManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gattClientScanFilterParamDeleteNative("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterParamDeleteNative(II)V

    .line 736
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    goto :goto_0

    .line 740
    .end local v0    # "filterIndex":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {p0, v3, p1, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeFilterIfExisits(Ljava/util/Set;II)V

    .line 742
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    const/4 v4, 0x2

    invoke-direct {p0, v3, p1, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeFilterIfExisits(Ljava/util/Set;II)V

    .line 744
    return-void
.end method

.method private resetBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 11
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/4 v5, 0x0

    .line 486
    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    .line 487
    .local v1, "clientIf":I
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchScanParams()Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v7

    .line 489
    .local v7, "batchScanParams":Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string v6, "stopping BLe Batch"

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v6}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 491
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 492
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gattClientStopBatchScanNative("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ");"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v6}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 493
    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientStopBatchScanNative(I)V

    .line 494
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 497
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->flushBatchResults(I)V

    .line 500
    :cond_0
    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    const/16 v9, 0x5f

    .line 502
    .local v9, "notifyThreshold":I
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string v6, "Starting BLE batch scan"

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v6}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 503
    invoke-direct {p0, v7}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getResultType(Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)I

    move-result v2

    .line 504
    .local v2, "resultType":I
    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getFullScanStoragePercent(I)I

    move-result v8

    .line 505
    .local v8, "fullScanPercent":I
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 506
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configuring batch scan storage, appIf "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v6}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gattClientConfigBatchScanStorageNative("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    rsub-int/lit8 v10, v8, 0x64

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ");"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v6}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 511
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    rsub-int/lit8 v6, v8, 0x64

    invoke-direct {p0, v0, v8, v6, v9}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientConfigBatchScanStorageNative(IIII)V

    .line 513
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 514
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 515
    iget v0, v7, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchScanIntervalMillis(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v3

    .line 517
    .local v3, "scanInterval":I
    iget v0, v7, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchScanWindowMillis(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v4

    .line 519
    .local v4, "scanWindow":I
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gattClientStartBatchScanNative("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ",0,"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ");"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v6}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    move-object v0, p0

    move v6, v5

    .line 524
    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientStartBatchScanNative(IIIIII)V

    .line 526
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 528
    .end local v2    # "resultType":I
    .end local v3    # "scanInterval":I
    .end local v4    # "scanWindow":I
    .end local v8    # "fullScanPercent":I
    .end local v9    # "notifyThreshold":I
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # setter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    invoke-static {v0, v7}, Lcom/android/bluetooth/gatt/ScanManager;->access$1002(Lcom/android/bluetooth/gatt/ScanManager;Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    .line 529
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->setBatchAlarm()V

    .line 530
    return-void
.end method

.method private resetCountDownLatch()V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/android/bluetooth/gatt/ScanManager;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$802(Lcom/android/bluetooth/gatt/ScanManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 386
    return-void
.end method

.method private setBatchAlarm()V
    .locals 10

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 594
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    :goto_0
    return-void

    .line 597
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchTriggerIntervalMillis()J

    move-result-wide v8

    .line 600
    .local v8, "batchTriggerIntervalMillis":J
    const-wide/16 v0, 0xa

    div-long v4, v8, v0

    .line 601
    .local v4, "windowLengthMillis":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v2, v0, v8

    .line 602
    .local v2, "windowStartMillis":J
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private shouldAddAllPassFilterToController(Lcom/android/bluetooth/gatt/ScanClient;I)Z
    .locals 4
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;
    .param p2, "deliveryMode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 715
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 724
    :cond_0
    :goto_0
    return v0

    .line 719
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 720
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    iget v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 723
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    iget v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 3
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/4 v0, 0x1

    .line 786
    if-nez p1, :cond_1

    .line 792
    :cond_0
    :goto_0
    return v0

    .line 789
    :cond_1
    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 792
    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitForCallback()Z
    .locals 5

    .prologue
    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 393
    :goto_0
    return v1

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 648
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiverRegistered:Z
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$700(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$600(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiverRegistered:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$702(Lcom/android/bluetooth/gatt/ScanManager;Z)Z

    .line 652
    return-void
.end method

.method configureRegularScanParams()V
    .locals 7

    .prologue
    .line 398
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configureRegularScanParams() - queue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->access$200(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 399
    const/high16 v1, -0x80000000

    .line 400
    .local v1, "curScanSetting":I
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/bluetooth/gatt/ScanManager;->access$200(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getAggressiveClient(Ljava/util/Set;)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    .line 401
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    if-eqz v0, :cond_0

    .line 402
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v1

    .line 405
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configureRegularScanParams() - ScanSetting Scan mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mLastConfiguredScanSetting="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanSetting:I
    invoke-static {v6}, Lcom/android/bluetooth/gatt/ScanManager;->access$900(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 408
    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_2

    .line 409
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanSetting:I
    invoke-static {v4}, Lcom/android/bluetooth/gatt/ScanManager;->access$900(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 411
    packed-switch v1, :pswitch_data_0

    .line 425
    const-string v4, "BtGatt.ScanManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value for curScanSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/16 v3, 0x1f4

    .line 427
    .local v3, "scanWindow":I
    const/16 v2, 0x1388

    .line 431
    .local v2, "scanInterval":I
    :goto_0
    invoke-static {v3}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v3

    .line 432
    invoke-static {v2}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v2

    .line 433
    const-string v4, "BtGatt.ScanManager"

    const-string v5, "gattClientScanNative(false);"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    .line 435
    const-string v4, "BtGatt.ScanManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gattSetScanParametersNative("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattSetScanParametersNative(II)V

    .line 437
    const-string v4, "BtGatt.ScanManager"

    const-string v5, "gattClientScanNative(true);"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    .line 439
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # setter for: Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanSetting:I
    invoke-static {v4, v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$902(Lcom/android/bluetooth/gatt/ScanManager;I)I

    .line 445
    .end local v2    # "scanInterval":I
    .end local v3    # "scanWindow":I
    :cond_1
    :goto_1
    return-void

    .line 413
    :pswitch_0
    const/16 v3, 0x1f4

    .line 414
    .restart local v3    # "scanWindow":I
    const/16 v2, 0x1388

    .line 415
    .restart local v2    # "scanInterval":I
    goto :goto_0

    .line 417
    .end local v2    # "scanInterval":I
    .end local v3    # "scanWindow":I
    :pswitch_1
    const/16 v3, 0x7d0

    .line 418
    .restart local v3    # "scanWindow":I
    const/16 v2, 0x1388

    .line 419
    .restart local v2    # "scanInterval":I
    goto :goto_0

    .line 421
    .end local v2    # "scanInterval":I
    .end local v3    # "scanWindow":I
    :pswitch_2
    const/16 v3, 0x1388

    .line 422
    .restart local v3    # "scanWindow":I
    const/16 v2, 0x1388

    .line 423
    .restart local v2    # "scanInterval":I
    goto :goto_0

    .line 442
    .end local v2    # "scanInterval":I
    .end local v3    # "scanWindow":I
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # setter for: Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanSetting:I
    invoke-static {v4, v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$902(Lcom/android/bluetooth/gatt/ScanManager;I)I

    .line 443
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string v5, "configureRegularScanParams() - queue emtpy, scan stopped"

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    goto :goto_1

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method flushBatchResults(I)V
    .locals 6
    .param p1, "clientIf"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 625
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flushPendingBatchResults - clientIf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    if-eq v0, v3, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 628
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gattClientReadScanReportsNative("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->access$1000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v2

    iget v2, v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanClientIf:I

    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientReadScanReportsNative(II)V

    .line 632
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    if-eq v0, v3, :cond_1

    .line 635
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 636
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gattClientReadScanReportsNative("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->access$1000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v2

    iget v2, v2, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanClientIf:I

    invoke-direct {p0, v0, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientReadScanReportsNative(II)V

    .line 640
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 642
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->setBatchAlarm()V

    .line 643
    return-void
.end method

.method getAggressiveClient(Ljava/util/Set;)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;)",
            "Lcom/android/bluetooth/gatt/ScanClient;"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "cList":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/bluetooth/gatt/ScanClient;>;"
    const/4 v3, 0x0

    .line 449
    .local v3, "result":Lcom/android/bluetooth/gatt/ScanClient;
    const/high16 v1, -0x80000000

    .line 450
    .local v1, "curScanSetting":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 453
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 454
    move-object v3, v0

    .line 455
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v1

    goto :goto_0

    .line 458
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :cond_1
    return-object v3
.end method

.method startBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->isFilteringSupported()Z
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->initFilterIndexStack()V

    .line 480
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureScanFilters(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 482
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 483
    return-void
.end method

.method startRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 3
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    const/4 v2, 0x1

    .line 462
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->isFilteringSupported()Z
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->initFilterIndexStack()V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->isFilteringSupported()Z
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureScanFilters(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$200(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 471
    const-string v0, "BtGatt.ScanManager"

    const-string v1, "gattClientScanNative(true);"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    .line 474
    :cond_2
    return-void
.end method

.method stopBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 620
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeScanFilters(I)V

    .line 621
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 622
    return-void
.end method

.method stopRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/bluetooth/gatt/ScanClient;

    .prologue
    .line 609
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeScanFilters(I)V

    .line 610
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$200(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 611
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    # getter for: Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$200(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string v1, "stop scan"

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string v1, "gattClientScanNative(false);"

    # invokes: Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$100(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    .line 616
    :cond_0
    return-void
.end method
