.class public Lcom/meizu/settings/deviceinfo/Memory;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Memory.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static sClickedMountPoint:Ljava/lang/String;


# instance fields
.field private mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

.field private mInternalStorageVolumePreferenceCategory:Lcom/meizu/settings/deviceinfo/MeizuStorageVolumePreferenceCategory;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mOtherConnectionWay:Landroid/preference/PreferenceScreen;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcom/meizu/settings/deviceinfo/Memory$5;

    invoke-direct {v0}, Lcom/meizu/settings/deviceinfo/Memory$5;-><init>()V

    sput-object v0, Lcom/meizu/settings/deviceinfo/Memory;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 228
    new-instance v0, Lcom/meizu/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/Memory$1;-><init>(Lcom/meizu/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/deviceinfo/Memory;)Landroid/os/storage/IMountService;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/deviceinfo/Memory;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/meizu/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/settings/deviceinfo/Memory;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/settings/deviceinfo/Memory;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/deviceinfo/Memory;)Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/deviceinfo/Memory;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

    return-object v0
.end method

.method private addConnectionPreference()V
    .locals 2

    .prologue
    .line 173
    const v0, #com.android.settings:xml@memory_usb_settings#t

    invoke-virtual {p0, v0}, Lcom/meizu/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 174
    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "other_connection_way"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mOtherConnectionWay:Landroid/preference/PreferenceScreen;

    .line 176
    return-void
.end method

# hxs modify begin
.method private addStoragePreference()V
    .locals 12

    .prologue
    const v0, #com.android.settings:xml@mz_device_info_memory#t

    invoke-virtual {p0, v0}, Lcom/meizu/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v10

    .local v10, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v11

    .local v11, "storageVolumes":[Landroid/os/storage/StorageVolume;
    move-object v7, v11

    .local v7, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v9, v7

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v4, v7, v8

    .local v4, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/meizu/settings/deviceinfo/MeizuStorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4, v10}, Lcom/meizu/settings/deviceinfo/MeizuStorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/meizu/settings/deviceinfo/MeizuStorageVolumePreferenceCategory;

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/meizu/settings/deviceinfo/MeizuStorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/meizu/settings/deviceinfo/MeizuStorageVolumePreferenceCategory;->init()V

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/storage/sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Memory"

    const-string v1, "createPreferenceHierarchy add external storage category"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/meizu/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;-><init>(Landroid/preference/PreferenceFragment;Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

    goto :goto_1

    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    return-void
.end method
# hxs modify end

.method private createPreferenceHierarchy()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/Memory;->addStoragePreference()V

    .line 150
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/Memory;->addConnectionPreference()V

    .line 151
    return-void
.end method

.method private doUnmount()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 313
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/Memory;->mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

    invoke-virtual {v2, v4}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->setMountingPreferenceView(Z)V

    .line 314
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/Memory;->mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

    invoke-virtual {v2, v3}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->setFormatPreferenceEnabled(Z)V

    .line 315
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 317
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string v2, "Memory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings unMountVolume : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v2, Lcom/meizu/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/meizu/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 336
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 337
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 338
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 343
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 340
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "Memory"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 335
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getOtherConnectionWaySummary()I
    .locals 3

    .prologue
    const v1, #com.android.settings:string@usb_mtp_title#t

    .line 214
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "function":Ljava/lang/String;
    const-string v2, "mtp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 217
    :cond_1
    const-string v2, "ptp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    const v1, #com.android.settings:string@usb_ptp_title#t

    goto :goto_0

    .line 219
    :cond_2
    const-string v2, "charging"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    const v1, #com.android.settings:string@usb_charge_title#t

    goto :goto_0

    .line 221
    :cond_3
    const-string v2, "bicr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const v1, #com.android.settings:string@usb_bicr_title#t

    goto :goto_0
.end method

.method private mount()V
    .locals 2

    .prologue
    .line 261
    new-instance v0, Lcom/meizu/settings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/Memory$2;-><init>(Lcom/meizu/settings/deviceinfo/Memory;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/deviceinfo/Memory$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 276
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/Memory;->showDialog(I)V

    .line 254
    return-void
.end method

.method private unmount()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/settings/deviceinfo/Memory;->showDialogInner(I)V

    .line 258
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 105
    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 106
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 108
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/Memory;->createPreferenceHierarchy()V

    .line 109
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const v4, #com.android.settings:string@cancel#t

    const v3, #com.android.settings:string@dlg_ok#t

    const/4 v0, 0x0

    .line 280
    packed-switch p1, :pswitch_data_0

    .line 309
    :goto_0
    return-object v0

    .line 282
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, #com.android.settings:string@sdcard_unmount#t

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/meizu/settings/deviceinfo/Memory$3;

    invoke-direct {v2, p0}, Lcom/meizu/settings/deviceinfo/Memory$3;-><init>(Lcom/meizu/settings/deviceinfo/Memory;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, #com.android.settings:string@unmount_sdcard_dialog_message#t

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 292
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, #com.android.settings:string@dlg_error_unmount_title#t

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, #com.android.settings:string@dlg_error_unmount_text#t

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 298
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, #com.android.settings:string@format_sdcard#t

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, #com.android.settings:string@format_sdcard_dialog_message#t

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/deviceinfo/Memory$4;

    invoke-direct {v1, p0}, Lcom/meizu/settings/deviceinfo/Memory$4;-><init>(Lcom/meizu/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 117
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 143
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/meizu/settings/deviceinfo/MeizuStorageVolumePreferenceCategory;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/meizu/settings/deviceinfo/MeizuStorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/meizu/settings/deviceinfo/MeizuStorageVolumePreferenceCategory;->onPause()V

    .line 146
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 180
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/Memory;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v5, "Memory"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 181
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    :goto_0
    return v2

    .line 184
    :cond_0
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/meizu/settings/deviceinfo/MeizuStorageVolumePreferenceCategory;

    invoke-virtual {v4, p1, p2}, Lcom/meizu/settings/deviceinfo/MeizuStorageVolumePreferenceCategory;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 186
    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "format_sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/Memory;->mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

    invoke-virtual {v2}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    .line 190
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/meizu/settings/deviceinfo/Memory;->showDialogInner(I)V

    move v2, v3

    .line 192
    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mount_or_unmout_sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 195
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/Memory;->mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

    invoke-virtual {v4}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/meizu/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    .line 196
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/meizu/settings/deviceinfo/Memory;->mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

    invoke-virtual {v5}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "state":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v0, v3

    .line 200
    .local v0, "doUnmount":Z
    :goto_1
    if-eqz v0, :cond_5

    .line 201
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/Memory;->unmount()V

    :goto_2
    move v2, v3

    .line 206
    goto :goto_0

    .end local v0    # "doUnmount":Z
    :cond_4
    move v0, v2

    .line 198
    goto :goto_1

    .line 203
    .restart local v0    # "doUnmount":Z
    :cond_5
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/Memory;->mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

    invoke-virtual {v4, v2}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->setMountingPreferenceView(Z)V

    .line 204
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/Memory;->mount()V

    goto :goto_2

    .line 210
    .end local v0    # "doUnmount":Z
    .end local v1    # "state":Ljava/lang/String;
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/meizu/settings/deviceinfo/MeizuStorageVolumePreferenceCategory;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/meizu/settings/deviceinfo/MeizuStorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/meizu/settings/deviceinfo/MeizuStorageVolumePreferenceCategory;->onResume()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mOtherConnectionWay:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/Memory;->getOtherConnectionWaySummary()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 138
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 122
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "Memory"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 128
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "Memory"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 129
    return-void
.end method

# hxs modify begin
.method private checkIfDlgShowing()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    .local v2, "dlgIds":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .local v1, "dlg":I
    invoke-virtual {p0, v1}, Lcom/meizu/settings/deviceinfo/Memory;->removeDialog(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "dlg":I
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method static synthetic doCheckIfDlgShowing(Lcom/meizu/settings/deviceinfo/Memory;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/settings/deviceinfo/Memory;

    .prologue
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/Memory;->checkIfDlgShowing()V

    return-void
.end method

.method static synthetic getMStorageManager(Lcom/meizu/settings/deviceinfo/Memory;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/deviceinfo/Memory;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method
# hxs modify end
