.class public Lcom/mediatek/fmradio/FmRadioStation;
.super Ljava/lang/Object;
.source "FmRadioStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/FmRadioStation$Station;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.mediatek.fmradio.FmRadioContentProvider"

.field static final COLUMNS:[Ljava/lang/String;

.field private static final CURRENT_STATION_NAME:Ljava/lang/String; = "FmDfltSttnNm"

.field private static final DEFAULT_AF_ENABLED:Z = false

.field private static final DEFAULT_PSRT_ENABLED:Z = false

.field private static final DEFAULT_TA_ENABLED:Z = false

.field public static final MAX_FAVORITE_STATION_COUNT:I = 0x10

.field public static final RDS_SETTING_FREQ_AF:I = 0x2

.field public static final RDS_SETTING_FREQ_PSRT:I = 0x1

.field public static final RDS_SETTING_FREQ_TA:I = 0x3

.field public static final RDS_SETTING_VALUE_DISABLED:Ljava/lang/String; = "DISABLED"

.field public static final RDS_SETTING_VALUE_ENABLED:Ljava/lang/String; = "ENABLED"

.field public static final STATION:Ljava/lang/String; = "station"

.field public static final STATION_TYPE_CURRENT:I = 0x1

.field public static final STATION_TYPE_FAVORITE:I = 0x2

.field private static final STATION_TYPE_RDS_SETTING:I = 0x4

.field public static final STATION_TYPE_SEARCHED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FmRx/Station"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 92
    const-string v2, "COLUMN_STATION_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "COLUMN_STATION_FREQ"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 94
    const-string v2, "COLUMN_STATION_TYPE"

    aput-object v2, v0, v1

    .line 91
    sput-object v0, Lcom/mediatek/fmradio/FmRadioStation;->COLUMNS:[Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanAllStations(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 522
    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 523
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/fmradio/FmRadioStation;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 525
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 527
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 528
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 540
    :cond_0
    return-void

    .line 530
    :cond_1
    :try_start_1
    sget-object v0, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 531
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    .line 530
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 533
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 534
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 536
    :catchall_0
    move-exception v0

    .line 537
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 538
    throw v0
.end method

.method public static cleanSearchedStations(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 427
    const-string v0, "FmRx/Station"

    const-string v1, "FmRadioStation.cleanSearchedStations start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 429
    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "COLUMN_STATION_TYPE="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 430
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    const/4 v3, 0x0

    .line 428
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 432
    const-string v0, "FmRx/Station"

    const-string v1, "FmRadioStation.cleanSearchedStations end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method public static deleteStationInDb(Landroid/content/Context;II)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationFreq"    # I
    .param p2, "stationType"    # I

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 276
    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 277
    const-string v2, "COLUMN_STATION_FREQ=? AND COLUMN_STATION_TYPE=?"

    .line 279
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 280
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 275
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 281
    const-string v0, "FmRx/Station"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioStation.deleteStationInDb: freq = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public static getCurrentStation(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 369
    const/16 v7, 0x3e8

    .line 370
    .local v7, "currentStation":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 371
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "COLUMN_STATION_FREQ"

    aput-object v3, v2, v8

    .line 372
    const-string v3, "COLUMN_STATION_TYPE=?"

    .line 373
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    .line 370
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 374
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 376
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 378
    invoke-static {v7}, Lcom/mediatek/fmradio/FmRadioUtils;->isValidStation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    const/16 v7, 0x3e8

    .line 382
    invoke-static {p0, v7}, Lcom/mediatek/fmradio/FmRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 383
    const-string v0, "FmRx/Station"

    const-string v1, "current station is invalid, use default!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_1
    const-string v0, "FmRx/Station"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioStation.getCurrentStation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return v7

    .line 386
    :catchall_0
    move-exception v0

    .line 387
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 388
    throw v0
.end method

.method public static getStationCount(Landroid/content/Context;I)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationType"    # I

    .prologue
    .line 499
    const-string v0, "FmRx/Station"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioStation.getStationCount Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v7, 0x0

    .line 501
    .local v7, "stationNus":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 502
    sget-object v2, Lcom/mediatek/fmradio/FmRadioStation;->COLUMNS:[Ljava/lang/String;

    const-string v3, "COLUMN_STATION_TYPE=?"

    .line 503
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    .line 501
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 504
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 506
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 508
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 511
    :cond_0
    const-string v0, "FmRx/Station"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioStation.getStationCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return v7

    .line 507
    :catchall_0
    move-exception v0

    .line 508
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 509
    throw v0
.end method

.method public static getStationName(Landroid/content/Context;II)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationFreq"    # I
    .param p2, "stationType"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 449
    const-string v0, "FmRx/Station"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioStation.getStationName: type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 450
    const-string v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v7, ""

    .line 453
    .local v7, "stationName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 454
    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 455
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "COLUMN_STATION_NAME"

    aput-object v3, v2, v8

    .line 456
    const-string v3, "COLUMN_STATION_FREQ=? AND COLUMN_STATION_TYPE=?"

    .line 458
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 459
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    .line 453
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 460
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 462
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 466
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 469
    :cond_1
    const-string v0, "FmRx/Station"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FmRadioStation.getStationName: stationName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-object v7

    .line 465
    :catchall_0
    move-exception v0

    .line 466
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 467
    throw v0
.end method

.method public static initFmDatabase(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 119
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "COLUMN_STATION_FREQ"

    aput-object v4, v2, v3

    .line 120
    const-string v3, "COLUMN_STATION_TYPE=?"

    .line 121
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    .line 118
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 122
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 124
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/4 v9, 0x3

    .line 128
    .local v9, "size":I
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 129
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "COLUMN_STATION_NAME"

    .line 130
    const-string v1, "FmDfltSttnNm"

    .line 129
    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "COLUMN_STATION_FREQ"

    .line 132
    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 131
    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v0, "COLUMN_STATION_TYPE"

    .line 134
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 133
    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v9    # "size":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    const/4 v0, 0x3

    new-array v10, v0, [I

    fill-array-data v10, :array_0

    .line 146
    .local v10, "types":[I
    const/4 v0, 0x3

    new-array v7, v0, [Z

    .line 148
    .local v7, "enables":[Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v10

    if-lt v8, v0, :cond_2

    .line 173
    const-string v0, "FmRx/Station"

    const-string v1, "FmRadioStation.initFmDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 138
    .end local v7    # "enables":[Z
    .end local v8    # "i":I
    .end local v10    # "types":[I
    :catchall_0
    move-exception v0

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    throw v0

    .line 149
    .restart local v7    # "enables":[Z
    .restart local v8    # "i":I
    .restart local v10    # "types":[I
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 151
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "COLUMN_STATION_NAME"

    aput-object v4, v2, v3

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "COLUMN_STATION_FREQ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    aget v4, v10, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 149
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    if-eqz v6, :cond_4

    .line 156
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 157
    const/4 v9, 0x3

    .line 158
    .restart local v9    # "size":I
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 159
    .restart local v11    # "values":Landroid/content/ContentValues;
    const-string v1, "COLUMN_STATION_NAME"

    .line 160
    aget-boolean v0, v7, v8

    if-eqz v0, :cond_5

    const-string v0, "ENABLED"

    .line 159
    :goto_1
    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "COLUMN_STATION_FREQ"

    aget v1, v10, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string v0, "COLUMN_STATION_TYPE"

    .line 164
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 163
    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 165
    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    .end local v9    # "size":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 161
    .restart local v9    # "size":I
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_5
    :try_start_2
    const-string v0, "DISABLED"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 168
    .end local v9    # "size":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v0

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 170
    throw v0

    .line 144
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static insertStationToDb(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationName"    # Ljava/lang/String;
    .param p2, "stationFreq"    # I
    .param p3, "stationType"    # I

    .prologue
    .line 190
    const-string v2, "FmRx/Station"

    const-string v3, "FmRadioStation.insertStationToDb start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x3

    .line 192
    .local v0, "size":I
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 193
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "COLUMN_STATION_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "COLUMN_STATION_FREQ"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v2, "COLUMN_STATION_TYPE"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 197
    const-string v2, "FmRx/Station"

    const-string v3, "FmRadioStation.insertStationToDb end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method public static isFavoriteStation(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iStation"    # I

    .prologue
    .line 485
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/mediatek/fmradio/FmRadioStation;->isStationExist(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public static isStationExist(Landroid/content/Context;II)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationFreq"    # I
    .param p2, "stationType"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 300
    const-string v0, "FmRx/Station"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> isStationExist: stationFreq="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    const-string v2, ",stationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v7, 0x0

    .line 303
    .local v7, "isExist":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 304
    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 305
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "COLUMN_STATION_NAME"

    aput-object v3, v2, v8

    .line 306
    const-string v3, "COLUMN_STATION_FREQ=? AND COLUMN_STATION_TYPE=?"

    .line 308
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 309
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    .line 303
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 310
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 312
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const/4 v7, 0x1

    .line 317
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 320
    :cond_1
    const-string v0, "FmRx/Station"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<<< isStationExist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return v7

    .line 316
    :catchall_0
    move-exception v0

    .line 317
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 318
    throw v0
.end method

.method public static isStationExistInChList(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationFreq"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 338
    const-string v0, "FmRx/Station"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> isStationExist: stationFreq="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v7, 0x0

    .line 340
    .local v7, "isExist":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 341
    sget-object v1, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 342
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "COLUMN_STATION_NAME"

    aput-object v3, v2, v8

    .line 343
    const-string v3, "COLUMN_STATION_FREQ=? AND COLUMN_STATION_TYPE<>1"

    .line 345
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    .line 340
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 346
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 348
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const/4 v7, 0x1

    .line 353
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_1
    const-string v0, "FmRx/Station"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<<< isStationExist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return v7

    .line 352
    :catchall_0
    move-exception v0

    .line 353
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 354
    throw v0
.end method

.method public static setCurrentStation(Landroid/content/Context;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "station"    # I

    .prologue
    const/4 v8, 0x1

    .line 403
    const-string v2, "FmRx/Station"

    const-string v3, "FmRadioStation.setCurrentStation start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x3

    .line 406
    .local v0, "size":I
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 407
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "COLUMN_STATION_NAME"

    const-string v3, "FmDfltSttnNm"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v2, "COLUMN_STATION_FREQ"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    const-string v2, "COLUMN_STATION_TYPE"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 411
    sget-object v3, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 413
    const-string v4, "COLUMN_STATION_NAME=? AND COLUMN_STATION_TYPE=?"

    .line 415
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "FmDfltSttnNm"

    aput-object v7, v5, v6

    .line 416
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 410
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 417
    const-string v2, "FmRx/Station"

    const-string v3, "FmRadioStation.setCurrentStation end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method

.method public static updateStationToDb(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newStationName"    # Ljava/lang/String;
    .param p2, "newStationType"    # I
    .param p3, "stationFreq"    # I

    .prologue
    .line 247
    const/4 v0, 0x3

    .line 248
    .local v0, "size":I
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 249
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "COLUMN_STATION_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v2, "COLUMN_STATION_FREQ"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const-string v2, "COLUMN_STATION_TYPE"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 253
    sget-object v3, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 255
    const-string v4, "COLUMN_STATION_FREQ=? AND COLUMN_STATION_TYPE<>1"

    .line 258
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 252
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 259
    const-string v2, "FmRx/Station"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FmRadioStation.updateStationToDb: new name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new freq type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method public static updateStationToDb(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationName"    # Ljava/lang/String;
    .param p2, "oldStationFreq"    # I
    .param p3, "newStationFreq"    # I
    .param p4, "stationType"    # I

    .prologue
    .line 217
    const/4 v0, 0x3

    .line 218
    .local v0, "size":I
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 219
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "COLUMN_STATION_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v2, "COLUMN_STATION_FREQ"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string v2, "COLUMN_STATION_TYPE"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 223
    sget-object v3, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 225
    const-string v4, "COLUMN_STATION_FREQ=? AND COLUMN_STATION_TYPE=?"

    .line 227
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 228
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 222
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    const-string v2, "FmRx/Station"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FmRadioStation.updateStationToDb: name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 230
    const-string v4, ", new freq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method
