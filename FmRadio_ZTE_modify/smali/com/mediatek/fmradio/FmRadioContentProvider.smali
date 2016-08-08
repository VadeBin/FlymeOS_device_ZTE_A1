.class public Lcom/mediatek/fmradio/FmRadioContentProvider;
.super Landroid/content/ContentProvider;
.source "FmRadioContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "FmRadio.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final STATION_FREQ:I = 0x1

.field private static final STATION_FREQ_ID:I = 0x2

.field private static final TABLE_NAME:Ljava/lang/String; = "StationList"

.field private static final TAG:Ljava/lang/String; = "FmRx/Provider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;

.field private mSqlDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Landroid/content/UriMatcher;

    .line 76
    const/4 v1, -0x1

    .line 75
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/mediatek/fmradio/FmRadioContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 80
    sget-object v0, Lcom/mediatek/fmradio/FmRadioContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mediatek.fmradio.FmRadioContentProvider"

    const-string v2, "station"

    .line 81
    const/4 v3, 0x1

    .line 80
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/mediatek/fmradio/FmRadioContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.mediatek.fmradio.FmRadioContentProvider"

    const-string v2, "station/#"

    .line 83
    const/4 v3, 0x2

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mDbHelper:Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;

    .line 56
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 153
    const-string v2, "FmRx/Provider"

    const-string v3, "FmRadioContentProvider.delete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "rows":I
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mDbHelper:Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 156
    sget-object v2, Lcom/mediatek/fmradio/FmRadioContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 173
    const-string v2, "FmRx/Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: Unkown URI to delete: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return v0

    .line 158
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "StationList"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 159
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 163
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    .local v1, "stationID":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "StationList"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 167
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v3, v4, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 169
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 167
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, " AND ("

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 168
    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    .line 191
    const-string v5, "FmRx/Provider"

    const-string v6, "FmRadioContentProvider.insert"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "rowUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mDbHelper:Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 194
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 196
    .local v4, "v":Landroid/content/ContentValues;
    const-string v5, "COLUMN_STATION_NAME"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    const-string v5, "COLUMN_STATION_FREQ"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    const-string v5, "COLUMN_STATION_TYPE"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 199
    :cond_0
    const-string v5, "FmRx/Provider"

    const-string v6, "Error: Invalid values."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 210
    .end local v2    # "rowUri":Landroid/net/Uri;
    .local v3, "rowUri":Landroid/net/Uri;
    :goto_0
    return-object v3

    .line 203
    .end local v3    # "rowUri":Landroid/net/Uri;
    .restart local v2    # "rowUri":Landroid/net/Uri;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "StationList"

    invoke-virtual {v5, v6, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 204
    .local v0, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gtz v5, :cond_2

    .line 205
    const-string v5, "FmRx/Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error: Failed to insert row into "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_2
    sget-object v5, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 207
    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 208
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 209
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v3, v2

    .line 210
    .end local v2    # "rowUri":Landroid/net/Uri;
    .restart local v3    # "rowUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 220
    new-instance v0, Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mDbHelper:Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;

    .line 221
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mDbHelper:Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 243
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 244
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mDbHelper:Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 245
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "StationList"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 247
    sget-object v2, Lcom/mediatek/fmradio/FmRadioContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 249
    .local v9, "match":I
    const/4 v2, 0x2

    if-ne v2, v9, :cond_0

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "_id = "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :cond_0
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 253
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 255
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 258
    :cond_1
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 279
    const-string v2, "FmRx/Provider"

    const-string v3, "FmRadioContentProvider.update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "rows":I
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mDbHelper:Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/mediatek/fmradio/FmRadioContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 282
    sget-object v2, Lcom/mediatek/fmradio/FmRadioContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 297
    const-string v2, "FmRx/Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: Unkown URI to update: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_0
    return v0

    .line 284
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "StationList"

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 285
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 288
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 289
    .local v1, "stationID":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioContentProvider;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "StationList"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 292
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-virtual {v3, v4, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 294
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 292
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, " AND ("

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 293
    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
