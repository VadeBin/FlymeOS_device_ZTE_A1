.class public final Lcom/android/bluetooth/opp/BluetoothOppProvider;
.super Landroid/content/ContentProvider;
.source "BluetoothOppProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field protected static final DB_NAME:Ljava/lang/String; = "btopp.db"

.field private static final DB_TABLE:Ljava/lang/String; = "btopp"

.field private static final DB_VERSION:I = 0x2

.field private static final DB_VERSION_NOP_UPGRADE_FROM:I = 0x0

.field private static final DB_VERSION_NOP_UPGRADE_TO:I = 0x1

.field private static final LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIVE_FOLDER_RECEIVED_FILES:I = 0x3

.field private static final SHARES:I = 0x1

.field private static final SHARES_ID:I = 0x2

.field private static final SHARE_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.android.btopp"

.field private static final SHARE_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.android.btopp"

.field private static final TAG:Ljava/lang/String; = "[Bluetooth.OPP]BluetoothOppProvider"

.field private static final V:Z = true

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 90
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 101
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.bluetooth.opp"

    const-string v2, "btopp"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.bluetooth.opp"

    const-string v2, "btopp/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.bluetooth.opp"

    const-string v2, "live_folders/received"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    .line 110
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "hint AS name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppProvider;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppProvider;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static final copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 232
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 233
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    :cond_0
    return-void
.end method

.method private static final copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 225
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 181
    :try_start_0
    const-string v1, "CREATE TABLE btopp(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, hint TEXT, _data TEXT, mimetype TEXT, direction INTEGER, destination TEXT, carrier_name TEXT, visibility INTEGER, confirm INTEGER, status INTEGER, total_bytes INTEGER, current_bytes INTEGER, timestamp INTEGER,scanned INTEGER); "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ex":Landroid/database/SQLException;
    const-string v1, "[Bluetooth.OPP]BluetoothOppProvider"

    const-string v2, "couldn\'t create table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    throw v0
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 200
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS btopp"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "ex":Landroid/database/SQLException;
    const-string v1, "[Bluetooth.OPP]BluetoothOppProvider"

    const-string v2, "couldn\'t drop table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    throw v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 451
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 453
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v7, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 454
    .local v2, "match":I
    packed-switch v2, :pswitch_data_0

    .line 477
    const-string v7, "[Bluetooth.OPP]BluetoothOppProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleting unknown/invalid URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot delete URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 458
    :pswitch_0
    if-eqz p2, :cond_2

    .line 459
    if-ne v2, v9, :cond_1

    .line 460
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "myWhere":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    .line 468
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 469
    .local v6, "segment":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 470
    .local v4, "rowId":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ( _id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 473
    .end local v4    # "rowId":J
    .end local v6    # "segment":Ljava/lang/String;
    :cond_0
    const-string v7, "btopp"

    invoke-virtual {v1, v7, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 481
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 482
    return v0

    .line 462
    .end local v0    # "count":I
    .end local v3    # "myWhere":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "myWhere":Ljava/lang/String;
    goto :goto_0

    .line 465
    .end local v3    # "myWhere":Ljava/lang/String;
    :cond_2
    const-string v3, ""

    .restart local v3    # "myWhere":Ljava/lang/String;
    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 209
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 210
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 218
    const-string v1, "[Bluetooth.OPP]BluetoothOppProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling getType on an unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.android.btopp"

    .line 215
    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.android.btopp"

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 240
    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 242
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v10, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v10, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 243
    const-string v10, "[Bluetooth.OPP]BluetoothOppProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calling insert on an unknown/invalid URI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown/Invalid URI "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 247
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v5, "filteredValues":Landroid/content/ContentValues;
    const-string v10, "uri"

    invoke-static {v10, p2, v5}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 250
    const-string v10, "hint"

    invoke-static {v10, p2, v5}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 251
    const-string v10, "mimetype"

    invoke-static {v10, p2, v5}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 252
    const-string v10, "destination"

    invoke-static {v10, p2, v5}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 254
    const-string v10, "carrier_name"

    invoke-static {v10, p2, v5}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 256
    const-string v10, "visibility"

    invoke-static {v10, p2, v5}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 257
    const-string v10, "total_bytes"

    invoke-static {v10, p2, v5}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 259
    const-string v10, "visibility"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_1

    .line 260
    const-string v10, "visibility"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    :cond_1
    const-string v10, "direction"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 263
    .local v4, "dir":Ljava/lang/Integer;
    const-string v10, "confirm"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 264
    .local v1, "con":Ljava/lang/Integer;
    const-string v10, "destination"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "address":Ljava/lang/String;
    const-string v10, "direction"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_2

    .line 267
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 269
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_3

    if-nez v1, :cond_3

    .line 270
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 272
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    if-nez v1, :cond_4

    .line 273
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 275
    :cond_4
    const-string v10, "confirm"

    invoke-virtual {v5, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    const-string v10, "direction"

    invoke-virtual {v5, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    const-string v10, "status"

    const/16 v11, 0xbe

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string v10, "scanned"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const-string v10, "timestamp"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 282
    .local v7, "ts":Ljava/lang/Long;
    if-nez v7, :cond_5

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 285
    :cond_5
    const-string v10, "timestamp"

    invoke-virtual {v5, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 288
    .local v2, "context":Landroid/content/Context;
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-direct {v10, v2, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 290
    const-string v10, "btopp"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 292
    .local v8, "rowID":J
    const/4 v6, 0x0

    .line 294
    .local v6, "ret":Landroid/net/Uri;
    const-wide/16 v10, -0x1

    cmp-long v10, v8, v10

    if-eqz v10, :cond_6

    .line 295
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-direct {v10, v2, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 296
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 297
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 302
    :goto_0
    return-object v6

    .line 299
    :cond_6
    const-string v10, "[Bluetooth.OPP]BluetoothOppProvider"

    const-string v11, "couldn\'t insert into btopp database"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 307
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;-><init>(Lcom/android/bluetooth/opp/BluetoothOppProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 316
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 318
    .local v1, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 319
    .local v10, "match":I
    packed-switch v10, :pswitch_data_0

    .line 339
    const-string v3, "[Bluetooth.OPP]BluetoothOppProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "querying unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 321
    :pswitch_0
    const-string v3, "btopp"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 345
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v12, "sb":Ljava/lang/StringBuilder;
    const-string v3, "starting query, database is "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    if-eqz v2, :cond_0

    .line 348
    const-string v3, "not "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_0
    const-string v3, "null; "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    if-nez p2, :cond_3

    .line 352
    const-string v3, "projection is null; "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_1
    :goto_1
    const-string v3, "selection is "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v3, "; "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    if-nez p4, :cond_5

    .line 368
    const-string v3, "selectionArgs is null; "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_2
    :goto_2
    const-string v3, "sort is "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v3, "."

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const/4 v11, 0x0

    .line 388
    .local v11, "ret":Landroid/database/Cursor;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 390
    if-eqz v11, :cond_7

    .line 391
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v11, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 402
    :goto_3
    return-object v11

    .line 325
    .end local v11    # "ret":Landroid/database/Cursor;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :pswitch_1
    const-string v3, "btopp"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 326
    const-string v3, "_id="

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 331
    :pswitch_2
    const-string v3, "btopp"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 332
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppProvider;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 333
    const-string v3, "direction=1 AND status=200"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id DESC, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 336
    goto/16 :goto_0

    .line 353
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    array-length v3, p2

    if-nez v3, :cond_4

    .line 354
    const-string v3, "projection is empty; "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 356
    :cond_4
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    array-length v3, p2

    if-ge v9, v3, :cond_1

    .line 357
    const-string v3, "projection["

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    const-string v3, "] is "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    aget-object v3, p2, v9

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v3, "; "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 369
    .end local v9    # "i":I
    :cond_5
    move-object/from16 v0, p4

    array-length v3, v0

    if-nez v3, :cond_6

    .line 370
    const-string v3, "selectionArgs is empty; "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 372
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    move-object/from16 v0, p4

    array-length v3, v0

    if-ge v9, v3, :cond_2

    .line 373
    const-string v3, "selectionArgs["

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    const-string v3, "] is "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    aget-object v3, p4, v9

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v3, "; "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 394
    .end local v9    # "i":I
    .restart local v11    # "ret":Landroid/database/Cursor;
    :cond_7
    const-string v3, "[Bluetooth.OPP]BluetoothOppProvider"

    const-string v4, "query failed in downloads database"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 407
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 410
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, 0x0

    .line 412
    .local v4, "rowId":J
    sget-object v7, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 413
    .local v2, "match":I
    packed-switch v2, :pswitch_data_0

    .line 440
    const-string v7, "[Bluetooth.OPP]BluetoothOppProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updating unknown/invalid URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot update URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 417
    :pswitch_0
    if-eqz p3, :cond_2

    .line 418
    if-ne v2, v9, :cond_1

    .line 419
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "myWhere":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    .line 427
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 428
    .local v6, "segment":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 429
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ( _id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 432
    .end local v6    # "segment":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 433
    const-string v7, "btopp"

    invoke-virtual {v1, v7, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 444
    .local v0, "count":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 446
    return v0

    .line 421
    .end local v0    # "count":I
    .end local v3    # "myWhere":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "myWhere":Ljava/lang/String;
    goto :goto_0

    .line 424
    .end local v3    # "myWhere":Ljava/lang/String;
    :cond_2
    const-string v3, ""

    .restart local v3    # "myWhere":Ljava/lang/String;
    goto :goto_0

    .line 435
    :cond_3
    const/4 v0, 0x0

    .line 437
    .restart local v0    # "count":I
    goto :goto_1

    .line 413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
