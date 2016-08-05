.class public Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "MeizuExternalStoragePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;
    }
.end annotation


# static fields
.field static final sCategoryInfos:[Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;


# instance fields
# hxs modify begin
.field private mResources:Landroid/content/res/Resources;
# hxs modify end

.field private mColors:[I

.field private mFormatSdcardPreference:Landroid/preference/Preference;

.field private mMountOrUnmountPreference:Landroid/preference/Preference;

.field private mPreferenceFragment:Landroid/preference/PreferenceFragment;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mStoragebarPreferences:Lcom/meizu/settings/StoragePercentagePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;

    const v3, #com.android.settings:string@memory_system#t

    const v4, #com.android.settings:color@memory_system#t

    invoke-direct {v2, v3, v4}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;

    const v3, #com.android.settings:string@memory_ava#t

    const v4, #com.android.settings:color@memory_avail#t

    invoke-direct {v2, v3, v4}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->sCategoryInfos:[Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;

    return-void
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updatePreference(JJI)V
    .locals 5
    .param p1, "size"    # J
    .param p3, "totalSize"    # J
    .param p5, "category"    # I

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStoragebarPreferences:Lcom/meizu/settings/StoragePercentagePreference;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStoragebarPreferences:Lcom/meizu/settings/StoragePercentagePreference;

    const/4 v1, 0x1

    long-to-float v2, p1

    long-to-float v3, p3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mColors:[I

    aget v3, v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/settings/StoragePercentagePreference;->addEntry(IFI)V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public formatSDcard()V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 212
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 214
    return-void
.end method

.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public setFormatPreferenceEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 193
    iget-object v0, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mFormatSdcardPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 194
    return-void
.end method

.method public setMountingPreferenceView(Z)V
    .locals 2
    .param p1, "unmounting"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mMountOrUnmountPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 186
    iget-object v1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mMountOrUnmountPreference:Landroid/preference/Preference;

    if-eqz p1, :cond_0

    const v0, #com.android.settings:string@unmount_sdcard#t

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 188
    iget-object v1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mMountOrUnmountPreference:Landroid/preference/Preference;

    if-eqz p1, :cond_1

    const v0, #com.android.settings:string@sdcard_unmounting#t

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 190
    return-void

    .line 186
    :cond_0
    const v0, #com.android.settings:string@mount_sdcard#t

    goto :goto_0

    .line 188
    :cond_1
    const v0, #com.android.settings:string@sdcard_mounting#t

    goto :goto_1
.end method

.method public updateStoragebar()V
    .locals 12

    .prologue
    .line 157
    iget-object v1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStoragebarPreferences:Lcom/meizu/settings/StoragePercentagePreference;

    invoke-virtual {v1}, Lcom/meizu/settings/StoragePercentagePreference;->clear()V

    .line 158
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v10

    .line 160
    .local v10, "blockSize":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v8

    .line 161
    .local v8, "availableBlocks":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    .line 163
    .local v4, "allBlocks":J
    const-string v1, "MeizuExternalStoragePreferenceCategory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStoragebar blockSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", availableBlocks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", allBlocks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStoragebarPreferences:Lcom/meizu/settings/StoragePercentagePreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, #com.android.settings:string@total_size#t

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-long v6, v4, v10

    invoke-direct {p0, v6, v7}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/settings/StoragePercentagePreference;->setTotalInfo(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStoragebarPreferences:Lcom/meizu/settings/StoragePercentagePreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, #com.android.settings:string@memory_ava#t

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-long v6, v8, v10

    invoke-direct {p0, v6, v7}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/settings/StoragePercentagePreference;->setAvailableInfo(Ljava/lang/String;)V

    .line 171
    sub-long v2, v4, v8

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->updatePreference(JJI)V

    .line 173
    iget-object v1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStoragebarPreferences:Lcom/meizu/settings/StoragePercentagePreference;

    invoke-virtual {v1}, Lcom/meizu/settings/StoragePercentagePreference;->commit()V

    .line 174
    return-void
.end method

# hxs modify begin
.method public constructor <init>(Landroid/preference/PreferenceFragment;Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "storageVolume"    # Landroid/os/storage/StorageVolume;
    .param p5, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p6, "isPrimary"    # Z

    .prologue
    invoke-direct {p0, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    iget-object v0, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const v1, #com.android.settings:xml@external_sdcard_settings#t

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iput-object p3, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mResources:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-direct {p0}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->initPreference()V

    invoke-virtual {p0}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->updatePreferencesFromState()V

    invoke-virtual {p0}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->updateStoragebar()V

    return-void
.end method

.method private initPreference()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string v1, "key_storage_percentage_bar"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/StoragePercentagePreference;

    iput-object v1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStoragebarPreferences:Lcom/meizu/settings/StoragePercentagePreference;

    iget-object v1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStoragebarPreferences:Lcom/meizu/settings/StoragePercentagePreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/settings/StoragePercentagePreference;->setSelectable(Z)V

    const-string v1, "mount_or_unmout_sdcard"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mMountOrUnmountPreference:Landroid/preference/Preference;

    const-string v1, "format_sdcard"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mFormatSdcardPreference:Landroid/preference/Preference;

    return-void
.end method

.method private isSdcardMounted()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldState"    # Ljava/lang/String;
    .param p2, "newState"    # Ljava/lang/String;

    .prologue
    const-string v0, "checking"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->updatePreferencesFromState()V

    const-string v0, "mounted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->updateStoragebar()V

    goto :goto_0
.end method


.method public setStorageVolume(Landroid/os/storage/StorageVolume;)V
    .locals 2
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    const-string v0, "Memory"

    const-string v1, "set volume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-void
.end method

.method public updatePreferencesFromState()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v4}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .local v1, "root":Landroid/preference/PreferenceScreen;
    const-string v4, "key_external_storage_catetory"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .local v0, "category":Landroid/preference/PreferenceCategory;
    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, #com.android.settings:color@memory_system#t

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v4, v2

    iget-object v5, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, #com.android.settings:color@memory_avail#t

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v4, v3

    iput-object v4, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mColors:[I

    iget-object v4, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStoragebarPreferences:Lcom/meizu/settings/StoragePercentagePreference;

    invoke-virtual {v4, v2}, Lcom/meizu/settings/StoragePercentagePreference;->setSelectable(Z)V

    invoke-direct {p0}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->isSdcardMounted()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "Memory"

    const-string v4, "updatePreferencesFromState sdcard mounted"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "key_storage_percentage_bar"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStoragebarPreferences:Lcom/meizu/settings/StoragePercentagePreference;

    iget-object v4, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mMountOrUnmountPreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lcom/meizu/settings/StoragePercentagePreference;->setOrder(I)V

    iget-object v2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStoragebarPreferences:Lcom/meizu/settings/StoragePercentagePreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v2, "format_sdcard"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mFormatSdcardPreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mMountOrUnmountPreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mFormatSdcardPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mMountOrUnmountPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mFormatSdcardPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mMountOrUnmountPreference:Landroid/preference/Preference;

    const v4, #com.android.settings:string@unmount_sdcard#t

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mMountOrUnmountPreference:Landroid/preference/Preference;

    const v4, #com.android.settings:string@unmount_sdcard_summay#t

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    :goto_0
    invoke-virtual {p0, v3}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->filterDivider(Z)V

    return-void

    :cond_2
    const-string v4, "Memory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePreferencesFromState remove mStoragebarPreferences and mFormatSdcardPreference "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mFormatSdcardPreference:Landroid/preference/Preference;

    if-nez v6, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStoragebarPreferences:Lcom/meizu/settings/StoragePercentagePreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mFormatSdcardPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mMountOrUnmountPreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unmounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mMountOrUnmountPreference:Landroid/preference/Preference;

    const v4, #com.android.settings:string@mount_sdcard#t

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->mMountOrUnmountPreference:Landroid/preference/Preference;

    const v4, #com.android.settings:string@mount_sdcard_summary#t

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method
# hxs modify end
