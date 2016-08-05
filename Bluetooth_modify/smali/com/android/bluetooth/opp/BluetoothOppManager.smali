.class public Lcom/android/bluetooth/opp/BluetoothOppManager;
.super Ljava/lang/Object;
.source "BluetoothOppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;
    }
.end annotation


# static fields
.field private static final ALLOWED_INSERT_SHARE_THREAD_NUMBER:I = 0x3

.field private static final ARRAYLIST_ITEM_SEPERATOR:Ljava/lang/String; = ";"

.field private static final FILE_URI:Ljava/lang/String; = "FILE_URI"

.field private static final FILE_URIS:Ljava/lang/String; = "FILE_URIS"

.field private static INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager; = null

.field private static INSTANCE_LOCK:Ljava/lang/Object; = null

.field private static final MIME_TYPE:Ljava/lang/String; = "MIMETYPE"

.field private static final MIME_TYPE_MULTIPLE:Ljava/lang/String; = "MIMETYPE_MULTIPLE"

.field private static final MULTIPLE_FLAG:Ljava/lang/String; = "MULTIPLE_FLAG"

.field private static final OPP_PREFERENCE_FILE:Ljava/lang/String; = "OPPMGR"

.field private static final SENDING_FLAG:Ljava/lang/String; = "SENDINGFLAG"

.field private static final TAG:Ljava/lang/String; = "[Bluetooth.OPP]BluetoothOppManager"

.field private static final V:Z = true

.field private static final WHITELIST_DURATION_MS:I = 0x3a98


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCarrierName:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mInsertShareThreadNum:I

.field private mIsHandoverInitiated:Z

.field private mMimeTypeOfSendingFile:Ljava/lang/String;

.field private mMimeTypeOfSendingFiles:Ljava/lang/String;

.field public mMultipleFlag:Z

.field public mSendingFlag:Z

.field private mUriOfSendingFile:Ljava/lang/String;

.field private mUrisOfSendingFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mfileNumInBatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    .line 431
    return-void
.end method

.method static synthetic access$008(Lcom/android/bluetooth/opp/BluetoothOppManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppManager;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/bluetooth/opp/BluetoothOppManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppManager;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppManager;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mCarrierName:Ljava/lang/String;

    return-object v0
.end method

.method private cleanupWhitelist()V
    .locals 8

    .prologue
    .line 173
    const-string v4, "[Bluetooth.OPP]BluetoothOppManager"

    const-string v5, "cleanupWhitelist ++"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 176
    .local v0, "curTime":J
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 178
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3a98

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 179
    const-string v5, "[Bluetooth.OPP]BluetoothOppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning out whitelist entry "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 183
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-direct {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    .line 140
    :cond_0
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->init(Landroid/content/Context;)Z

    .line 142
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    monitor-exit v1

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 150
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    return v2

    .line 152
    :cond_0
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInitialized:Z

    .line 154
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    .line 156
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 157
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 158
    const-string v0, "[Bluetooth.OPP]BluetoothOppManager"

    const-string v1, "BLUETOOTH_SERVICE is not started! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    monitor-enter p0

    .line 164
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->restoreApplicationData()V

    .line 165
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private restoreApplicationData()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 221
    const-string v4, "[Bluetooth.OPP]BluetoothOppManager"

    const-string v5, "restoreApplicationData ++"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-string v5, "OPPMGR"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 225
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v4, "SENDINGFLAG"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 226
    const-string v4, "MIMETYPE"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    .line 227
    const-string v4, "FILE_URI"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    .line 228
    const-string v4, "MIMETYPE_MULTIPLE"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    .line 229
    const-string v4, "MULTIPLE_FLAG"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 231
    const-string v4, "[Bluetooth.OPP]BluetoothOppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreApplicationData! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v4, "FILE_URIS"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "strUris":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    .line 236
    if-eqz v3, :cond_0

    .line 237
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "splitUri":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 239
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    aget-object v5, v2, v0

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v4, "[Bluetooth.OPP]BluetoothOppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uri in batch:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "i":I
    .end local v2    # "splitUri":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private storeApplicationData()V
    .locals 9

    .prologue
    .line 254
    const-string v6, "[Bluetooth.OPP]BluetoothOppManager"

    const-string v7, "storeApplicationData ++"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-string v7, "OPPMGR"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 257
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "SENDINGFLAG"

    iget-boolean v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 258
    const-string v6, "MULTIPLE_FLAG"

    iget-boolean v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 259
    iget-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-eqz v6, :cond_1

    .line 260
    const-string v6, "MIMETYPE_MULTIPLE"

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 263
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 264
    .local v5, "uriContent":Landroid/net/Uri;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v5    # "uriContent":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "strUris":Ljava/lang/String;
    const-string v6, "FILE_URIS"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    const-string v6, "MIMETYPE"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    const-string v6, "FILE_URI"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "strUris":Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    const-string v6, "[Bluetooth.OPP]BluetoothOppManager"

    const-string v7, "Application data stored to SharedPreference! "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 273
    :cond_1
    const-string v6, "MIMETYPE"

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    const-string v6, "FILE_URI"

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    const-string v6, "MIMETYPE_MULTIPLE"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 277
    const-string v6, "FILE_URIS"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addToWhitelist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "carrier"    # Ljava/lang/String;

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    const-string v2, "[Bluetooth.OPP]BluetoothOppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToWhitelist ++, address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    if-nez p1, :cond_0

    .line 197
    :goto_0
    monitor-exit p0

    return-void

    .line 189
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 191
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 186
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 195
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;>;"
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public disableBluetooth()V
    .locals 2

    .prologue
    .line 360
    const-string v0, "[Bluetooth.OPP]BluetoothOppManager"

    const-string v1, "disableBluetooth ++"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 364
    :cond_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 2

    .prologue
    .line 350
    const-string v0, "[Bluetooth.OPP]BluetoothOppManager"

    const-string v1, "enableBluetooth ++"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 354
    :cond_0
    return-void
.end method

.method public getBatchSize()I
    .locals 1

    .prologue
    .line 387
    monitor-enter p0

    .line 388
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mfileNumInBatch:I

    monitor-exit p0

    return v0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getCarrierName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    const-string v2, "[Bluetooth.OPP]BluetoothOppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWhitelisted ++, address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->cleanupWhitelist()V

    .line 211
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 212
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 209
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_0
    if-nez v0, :cond_1

    .line 379
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const v2, 0x7f05000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 382
    :cond_1
    const-string v1, "[Bluetooth.OPP]BluetoothOppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceName::deviceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-object v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 342
    :goto_0
    return v0

    .line 341
    :cond_0
    const-string v0, "[Bluetooth.OPP]BluetoothOppManager"

    const-string v1, "BLUETOOTH_SERVICE is not available! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isWhitelisted(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    const-string v2, "[Bluetooth.OPP]BluetoothOppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWhitelisted ++, address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->cleanupWhitelist()V

    .line 202
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 203
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 205
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 200
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected notifyOppProgress(Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;)V
    .locals 8
    .param p1, "item"    # Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    .prologue
    const/4 v7, 0x1

    .line 540
    const-string v4, "[Bluetooth.OPP]BluetoothOppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyOppProgress ++, handoverInitiated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-boolean v4, p1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    if-eqz v4, :cond_2

    .line 543
    const/4 v3, 0x0

    .line 544
    .local v3, "progress":F
    iget v4, p1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 545
    const/high16 v3, -0x40800000    # -1.0f

    .line 549
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v0, "intent":Landroid/content/Intent;
    iget v4, p1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-ne v4, v7, :cond_1

    .line 551
    const-string v4, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    :goto_1
    const-string v4, "android.nfc.handover.intent.extra.TRANSFER_ID"

    iget v5, p1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    const-string v4, "android.nfc.handover.intent.extra.TRANSFER_PROGRESS"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 557
    const-string v4, "android.nfc.handover.intent.extra.ADDRESS"

    iget-object v5, p1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->destination:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v4, "btopp.invokecarrier"

    iget-object v5, p1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.NFC_HANDOVER_STATUS"

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 568
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "progress":F
    :goto_2
    return-void

    .line 547
    .restart local v3    # "progress":F
    :cond_0
    iget v4, p1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    int-to-float v4, v4

    iget v5, p1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    int-to-float v5, v5

    div-float v3, v4, v5

    goto :goto_0

    .line 553
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v4, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 564
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "progress":F
    :cond_2
    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->getOppOngoingNotification(Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;)Landroid/app/Notification;

    move-result-object v1

    .line 565
    .local v1, "n":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 566
    .local v2, "nm":Landroid/app/NotificationManager;
    iget v4, p1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v2, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_2
.end method

.method public saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "uriString"    # Ljava/lang/String;
    .param p3, "isHandover"    # Z

    .prologue
    .line 284
    const-string v2, "[Bluetooth.OPP]BluetoothOppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveSendingFileInfo, mimeType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uriString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isHandover ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    monitor-enter p0

    .line 287
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 288
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    .line 289
    iput-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mIsHandoverInitiated:Z

    .line 290
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 291
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    .line 293
    .local v0, "sendFileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    invoke-static {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->generateUri(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)Landroid/net/Uri;

    move-result-object v1

    .line 294
    invoke-static {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->putSendFileInfo(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V

    .line 295
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->storeApplicationData()V

    .line 297
    monitor-exit p0

    .line 298
    return-void

    .line 297
    .end local v0    # "sendFileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .end local v1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "uriString"    # Ljava/lang/String;
    .param p3, "isHandover"    # Z
    .param p4, "carrier"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/bluetooth/opp/BluetoothOppManager;->saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 303
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mCarrierName:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public saveSendingFileInfo(Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 6
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p3, "isHandover"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v3, "[Bluetooth.OPP]BluetoothOppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveSendingFileInfo, mimeType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uris = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isHandover ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-enter p0

    .line 310
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 311
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    .line 312
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    .line 313
    iput-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mIsHandoverInitiated:Z

    .line 314
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 315
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v1

    .line 317
    .local v1, "sendFileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    invoke-static {v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->generateUri(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)Landroid/net/Uri;

    move-result-object v2

    .line 318
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-static {v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->putSendFileInfo(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V

    goto :goto_0

    .line 324
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sendFileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .end local v2    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 321
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->putUnstartedSendUris(Ljava/util/ArrayList;)V

    .line 322
    const-string v3, "[Bluetooth.OPP]BluetoothOppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveSendingFileInfo::mUrisOfSendingFiles = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->storeApplicationData()V

    .line 324
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    return-void
.end method

.method public saveSendingFileInfo(Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p3, "isHandover"    # Z
    .param p4, "carrier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/bluetooth/opp/BluetoothOppManager;->saveSendingFileInfo(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 330
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mCarrierName:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public startTransfer(Landroid/bluetooth/BluetoothDevice;)V
    .locals 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 396
    const-string v1, "[Bluetooth.OPP]BluetoothOppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active InsertShareThread number is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->removeUnstartedSendUris()V

    .line 399
    monitor-enter p0

    .line 400
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 401
    const-string v1, "[Bluetooth.OPP]BluetoothOppManager"

    const-string v2, "Too many shares user triggered concurrently!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v9, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {v9, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    .local v9, "in":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 406
    const-string v1, "title"

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const v3, 0x7f050045

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v1, "content"

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const v3, 0x7f05004f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 410
    monitor-exit p0

    .line 421
    .end local v9    # "in":Landroid/content/Intent;
    :goto_0
    return-void

    .line 412
    :cond_0
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;

    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    iget-boolean v8, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mIsHandoverInitiated:Z

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppManager;Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 415
    .local v0, "insertThread":Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mfileNumInBatch:I

    .line 418
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->start()V

    goto :goto_0

    .line 418
    .end local v0    # "insertThread":Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
