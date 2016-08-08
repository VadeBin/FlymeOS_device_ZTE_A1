.class public Lcom/mediatek/fmradio/FmRadioUtils;
.super Ljava/lang/Object;
.source "FmRadioUtils.java"


# static fields
.field private static final CONVERT_RATE:I = 0xa

.field public static final DEFAULT_STATION:I = 0x3e8

.field public static final DEFAULT_STATION_FLOAT:F

.field private static final HIGHEST_STATION:I = 0x438

.field private static final IS_FM_SHORT_ANTENNA_SUPPORT:Z

.field private static final IS_FM_SUSPEND_SUPPORT:Z

.field private static final LOWEST_STATION:I = 0x36b

.field public static final LOW_SPACE_THRESHOLD:J = 0x80000L

.field private static final STEP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FmRx/Utils"

.field private static sStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v0

    sput v0, Lcom/mediatek/fmradio/FmRadioUtils;->DEFAULT_STATION_FLOAT:F

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/fmradio/FmRadioUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    .line 75
    const-string v0, "ro.mtk_fm_short_antenna_support"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 74
    sput-boolean v0, Lcom/mediatek/fmradio/FmRadioUtils;->IS_FM_SHORT_ANTENNA_SUPPORT:Z

    .line 78
    const-string v0, "ro.mtk_tcl_fm_at_suspend"

    .line 77
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/fmradio/FmRadioUtils;->IS_FM_SUSPEND_SUPPORT:Z

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeDecreaseStation(I)I
    .locals 2
    .param p0, "station"    # I

    .prologue
    .line 120
    add-int/lit8 v0, p0, -0x1

    .line 121
    .local v0, "result":I
    const/16 v1, 0x36b

    if-ge v0, v1, :cond_0

    .line 122
    const/16 v0, 0x438

    .line 124
    :cond_0
    return v0
.end method

.method public static computeFrequency(I)F
    .locals 2
    .param p0, "station"    # I

    .prologue
    .line 148
    int-to-float v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static computeIncreaseStation(I)I
    .locals 2
    .param p0, "station"    # I

    .prologue
    .line 104
    add-int/lit8 v0, p0, 0x1

    .line 105
    .local v0, "result":I
    const/16 v1, 0x438

    if-le v0, v1, :cond_0

    .line 106
    const/16 v0, 0x36b

    .line 108
    :cond_0
    return v0
.end method

.method public static computeStation(F)I
    .locals 1
    .param p0, "frequency"    # F

    .prologue
    .line 136
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static ensureStorageManager(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    sget-object v0, Lcom/mediatek/fmradio/FmRadioUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 216
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 215
    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/mediatek/fmradio/FmRadioUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    .line 218
    :cond_0
    return-void
.end method

.method public static formatStation(I)Ljava/lang/String;
    .locals 7
    .param p0, "station"    # I

    .prologue
    .line 160
    int-to-float v2, p0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v0, v2, v3

    .line 161
    .local v0, "frequency":F
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 162
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    .line 161
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method

.method public static getDefaultStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-static {p0}, Lcom/mediatek/fmradio/FmRadioUtils;->ensureStorageManager(Landroid/content/Context;)V

    .line 173
    sget-object v5, Lcom/mediatek/fmradio/FmRadioUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 174
    .local v4, "volumes":[Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    .line 175
    .local v3, "mUSBVolume":Landroid/os/storage/StorageVolume;
    const/4 v2, 0x0

    .line 176
    .local v2, "mSDCardVolume":Landroid/os/storage/StorageVolume;
    array-length v0, v4

    .line 177
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 186
    const-string v5, "FmRx/Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mUSBVolume="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v5, "FmRx/Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mSDCardVolume="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-nez v2, :cond_3

    .line 189
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 195
    :goto_1
    return-object v5

    .line 178
    :cond_0
    const-string v5, "FmRx/Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "storageVolumeList["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    aget-object v2, v4, v1

    .line 182
    :cond_1
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 183
    aget-object v3, v4, v1

    .line 177
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_3
    const-string v5, "mounted"

    .line 192
    sget-object v6, Lcom/mediatek/fmradio/FmRadioUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 192
    if-eqz v5, :cond_4

    .line 193
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 195
    :cond_4
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static getDefaultStorageState(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-static {p0}, Lcom/mediatek/fmradio/FmRadioUtils;->ensureStorageManager(Landroid/content/Context;)V

    .line 208
    sget-object v1, Lcom/mediatek/fmradio/FmRadioUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {p0}, Lcom/mediatek/fmradio/FmRadioUtils;->getDefaultStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "state":Ljava/lang/String;
    const-string v1, "FmRx/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDefaultStorageState() return state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-object v0
.end method

.method public static getPlaylistPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    invoke-static {p0}, Lcom/mediatek/fmradio/FmRadioUtils;->ensureStorageManager(Landroid/content/Context;)V

    .line 230
    sget-object v2, Lcom/mediatek/fmradio/FmRadioUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "externalStoragePaths":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Playlists/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "path":Ljava/lang/String;
    return-object v1
.end method

.method public static hasEnoughSpace(Ljava/lang/String;)Z
    .locals 12
    .param p0, "recordingSdcard"    # Ljava/lang/String;

    .prologue
    .line 244
    const/4 v6, 0x0

    .line 246
    .local v6, "ret":Z
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 247
    .local v5, "fs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v2, v7

    .line 248
    .local v2, "blocks":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    .line 249
    .local v0, "blockSize":J
    mul-long v8, v2, v0

    .line 250
    .local v8, "spaceLeft":J
    const-string v7, "FmRx/Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "hasEnoughSpace: available space="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    const-wide/32 v10, 0x80000

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    const/4 v6, 0x1

    .line 255
    .end local v0    # "blockSize":J
    .end local v2    # "blocks":J
    .end local v5    # "fs":Landroid/os/StatFs;
    .end local v8    # "spaceLeft":J
    :goto_0
    return v6

    .line 251
    .restart local v0    # "blockSize":J
    .restart local v2    # "blocks":J
    .restart local v5    # "fs":Landroid/os/StatFs;
    .restart local v8    # "spaceLeft":J
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 252
    .end local v0    # "blockSize":J
    .end local v2    # "blocks":J
    .end local v5    # "fs":Landroid/os/StatFs;
    .end local v8    # "spaceLeft":J
    :catch_0
    move-exception v4

    .line 253
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "FmRx/Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sdcard may be unmounted:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isFmShortAntennaSupport()Z
    .locals 1

    .prologue
    .line 264
    sget-boolean v0, Lcom/mediatek/fmradio/FmRadioUtils;->IS_FM_SHORT_ANTENNA_SUPPORT:Z

    return v0
.end method

.method public static isFmSuspendSupport()Z
    .locals 1

    .prologue
    .line 273
    sget-boolean v0, Lcom/mediatek/fmradio/FmRadioUtils;->IS_FM_SUSPEND_SUPPORT:Z

    return v0
.end method

.method public static isValidStation(I)Z
    .locals 4
    .param p0, "station"    # I

    .prologue
    .line 90
    const/16 v1, 0x36b

    if-lt p0, v1, :cond_0

    const/16 v1, 0x438

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 91
    .local v0, "isValid":Z
    :goto_0
    const-string v1, "FmRx/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isValidStation: freq = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", valid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v0

    .line 90
    .end local v0    # "isValid":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
