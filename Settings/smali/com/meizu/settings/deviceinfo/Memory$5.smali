.class final Lcom/meizu/settings/deviceinfo/Memory$5;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "com.meizu.backup"

    invoke-static {p1, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    const-string v1, "backup_data"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_0
    const-string v1, "com.meizu.safe"

    invoke-static {p1, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    :cond_1
    const-string v1, "clean_rubbish"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_2
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    const-string v1, "clean_data"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_3
    const-string v1, "key_storage_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    return-object v0
.end method

# hxs modify begin
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .local v2, "cleanData":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v11, "clean_data"

    iput-object v11, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v11, #com.android.settings:string@master_clear_title#t

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v11, #com.android.settings:string@storage_settings#t

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .local v3, "cleanRubbish":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v11, "clean_rubbish"

    iput-object v11, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v11, #com.android.settings:string@clean_rubbish#t

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v11, #com.android.settings:string@storage_settings#t

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .local v1, "backup":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v11, "backup_data"

    iput-object v11, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v11, #com.android.settings:string@backup_phone_data#t

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v11, #com.android.settings:string@storage_settings#t

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v8

    .local v8, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v9

    .local v9, "storageVolumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v9

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v10, v0, v5

    .local v10, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/storage/sdcard"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "Memory"

    const-string v12, "sdcard is available"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v4, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .local v4, "externalStorageCatetory":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v11, "key_external_storage_catetory"

    iput-object v11, v4, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v11, #com.android.settings:string@external_sdcard_storage#t

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v11, #com.android.settings:string@storage_settings#t

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4    # "externalStorageCatetory":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v10    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    return-object v7

    .restart local v10    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
# hxs modify end

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 356
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, #com.android.settings:xml@memory_usb_settings#t

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 357
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
