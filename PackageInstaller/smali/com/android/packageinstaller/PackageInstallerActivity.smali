.class public Lcom/android/packageinstaller/PackageInstallerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/PackageInstallerActivity$PackageDeleteObserver;,
        Lcom/android/packageinstaller/PackageInstallerActivity$RecomAppsListAdapter;,
        Lcom/android/packageinstaller/PackageInstallerActivity$ViewHolder;,
        Lcom/android/packageinstaller/PackageInstallerActivity$DownloadImagesAsyncTask;,
        Lcom/android/packageinstaller/PackageInstallerActivity$IncomingHandler;,
        Lcom/android/packageinstaller/PackageInstallerActivity$PermissionIncomingHandler;,
        Lcom/android/packageinstaller/PackageInstallerActivity$NewFileCreator;,
        Lcom/android/packageinstaller/PackageInstallerActivity$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final DLG_ADMIN_RESTRICTS_UNKNOWN_SOURCES:I = 0x8

.field private static final DLG_ALLOW_SOURCE:I = 0x6

.field private static final DLG_BASE:I = 0x0

.field private static final DLG_INSTALL_ERROR:I = 0x5

.field private static final DLG_OUT_OF_SPACE:I = 0x4

.field private static final DLG_PACKAGE_ERROR:I = 0x3

.field private static final DLG_REPLACE_APP:I = 0x1

.field private static final DLG_UNKNOWN_APPS:I = 0x2

.field private static final DLG_VIRUS_INSTALL_CONFIRM:I = 0x7

.field public static final INSTALL_COMPLETE:I = 0x1

.field private static final INSTALL_RETURN_CODE_DEFAULT:I = -0xc8

.field static final PREFS_ALLOWED_SOURCES:Ljava/lang/String; = "allowed_sources"

.field private static final SAVE_FILE_DR:Ljava/lang/String; = "/mnt/sdcard/Android/data/com.android.email"

.field public static final SHAREDPREFERENCES_NAME:Ljava/lang/String; = "install_apps_pref"

.field private static final STATE_DEFAULT:I = 0x2

.field private static final STATE_INSTALLING:I = 0x4

.field private static final STATE_INSTALL_DONE:I = 0x5

.field private static final STATE_INSTALL_DONE_NO_LUNCH:I = 0x6

.field private static final STATE_INSTALL_ERROR:I = 0x7

.field private static final STATE_PERM_CONFIRM:I = 0x3

.field private static final STATE_QUERY_MSTORE:I = 0x0

.field private static final STATE_SCANNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"

.field private static installResult:I

.field public static installed:Z


# instance fields
.field private final INSTALL_TIME_LIMIT:I

.field private final MSTORE_CHECK_APP_UPDATE:Ljava/lang/String;

.field private final PKG_TYPE_DEFAULT:I

.field private final PKG_TYPE_RIVAL:I

.field private final PKG_TYPE_RIVAL_DOWNLOAD:I

.field private final PKG_TYPE_UNTYPICAL_DOWNLOAD:I

.field private final PKG_TYPE_VIRUS:I

.field private final QUERY_PKG_INFO_DONE:I

.field private final SCAN_FINISH:I

.field private final SCAN_TIMEOUT:I

.field private SCAN_TIMEOUT_TIME:I

.field private adapter:Lcom/android/packageinstaller/PackageInstallerActivity$RecomAppsListAdapter;

.field private animButton:Lcom/meizu/common/AnimDownloadProgressButton;

.field final appItem:Lcom/meizu/permissioncommon/AppItem;

.field appItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/permissioncommon/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private appNameString:Ljava/lang/String;

.field private archiveFilePath:Ljava/lang/String;

.field private as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

.field private authenView:Landroid/widget/RelativeLayout;

.field private bitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private downgradeFlags:Z

.field private file:Ljava/io/File;

.field private finishTextView:Landroid/widget/TextView;

.field private fromEmailInstall:Z

.field private installStartTime:J

.field private installedVersionCode:I

.field private installing:Landroid/view/ViewGroup;

.field private isInstallDoneHandled:Z

.field private isInstallTimeUp:Z

.field isMzStoreExist:Z

.field isNetWorkAvailable:Z

.field isSystemApp:Z

.field private isUpdatePkg:Z

.field localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field mAppInfoView:Landroid/view/ViewGroup;

.field mAppInfoViewDetailView:Landroid/view/View;

.field private mAppVersion:Landroid/widget/TextView;

.field private mBtnNegative:Landroid/view/MenuItem;

.field private mBtnPositive:Landroid/view/MenuItem;

.field private mCurInstallState:I

.field private mHandler:Landroid/os/Handler;

.field mInstallConfirm:Landroid/view/ViewGroup;

.field volatile mIsPermissionScanDone:Z

.field volatile mIsPkgOfficialAuthen:Z

.field volatile mIsQueryInstallTypeDone:Z

.field mIsScanTimeOut:Z

.field mIsStillInstallClicked:Z

.field private mIsVirusCheckFinish:Z

.field private mIsVirusCheckResultSafe:Z

.field private mLaunchIntent:Landroid/content/Intent;

.field mLoadingText:Landroid/widget/TextView;

.field mLoadingView:Landroid/view/ViewGroup;

.field private mMenu:Landroid/view/Menu;

.field private mNotificationPreferences:Landroid/content/SharedPreferences;

.field mOkCanInstall:Z

.field mOldName:Ljava/lang/String;

.field private mOriginatingPkgName:Ljava/lang/String;

.field private mOriginatingURI:Landroid/net/Uri;

.field private mOriginatingUid:I

.field private mPackageURI:Landroid/net/Uri;

.field mPkgInfo:Landroid/content/pm/PackageParser$Package;

.field private mPkgInstallReceiver:Landroid/content/BroadcastReceiver;

.field mPm:Landroid/content/pm/PackageManager;

.field private mRecomListView:Lflyme/support/v7/widget/MzRecyclerView;

.field private mReferrerURI:Landroid/net/Uri;

.field private mReplaceFlag:Z

.field mSc:Landroid/content/ServiceConnection;

.field mSc_permission:Landroid/content/ServiceConnection;

.field private mScheme:Z

.field mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

.field mSourceInfo:Landroid/content/pm/ApplicationInfo;

.field private mUserManager:Landroid/os/UserManager;

.field public mVersionNameOld:Ljava/lang/String;

.field private mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

.field observer:Lcom/android/packageinstaller/PackageInstallerActivity$PackageInstallObserver;

.field private originPkgLabel:Ljava/lang/String;

.field volatile packageInfo:Landroid/content/pm/PackageInfo;

.field private pageStopTime:J

.field permNums:I

.field permView:Landroid/view/ViewGroup;

.field perms:Lcom/meizu/permissioncommon/AppSecurityPermissions;

.field private pkgType:I

.field rAnimation:Landroid/view/animation/RotateAnimation;

.field private recomListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/safe/security/utils/RecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private recomView:Landroid/view/ViewGroup;

.field private renameFile:Ljava/io/File;

.field private savedPath:Ljava/lang/String;

.field private scanImg:Landroid/widget/ImageView;

.field private scanTimeCountThread:Ljava/lang/Thread;

.field private scanWaittingTime:J

.field private scrollIndex:I

.field showHighVersion:Z

.field sourceFile:Ljava/io/File;

.field private stopTimeCount:J

.field private versionCode:I

.field private virusScanView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    const/16 v0, -0xc8

    sput v0, Lcom/android/packageinstaller/PackageInstallerActivity;->installResult:I

    .line 257
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/packageinstaller/PackageInstallerActivity;->installed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 154
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 160
    iput v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    .line 161
    const-string v0, "unKnown"

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPkgName:Ljava/lang/String;

    .line 163
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    .line 169
    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    .line 177
    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 183
    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfoViewDetailView:Landroid/view/View;

    .line 187
    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnNegative:Landroid/view/MenuItem;

    .line 188
    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnPositive:Landroid/view/MenuItem;

    .line 207
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReplaceFlag:Z

    .line 209
    iput v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->QUERY_PKG_INFO_DONE:I

    .line 210
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->SCAN_FINISH:I

    .line 211
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->SCAN_TIMEOUT:I

    .line 212
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->SCAN_TIMEOUT_TIME:I

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanWaittingTime:J

    .line 219
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsVirusCheckFinish:Z

    .line 220
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsVirusCheckResultSafe:Z

    .line 222
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsQueryInstallTypeDone:Z

    .line 223
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsPkgOfficialAuthen:Z

    .line 224
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsStillInstallClicked:Z

    .line 225
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsPermissionScanDone:Z

    .line 226
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsScanTimeOut:Z

    .line 227
    iput-boolean v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isNetWorkAvailable:Z

    .line 228
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isSystemApp:Z

    .line 229
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isMzStoreExist:Z

    .line 230
    iput v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scrollIndex:I

    .line 232
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isUpdatePkg:Z

    .line 234
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->INSTALL_TIME_LIMIT:I

    .line 235
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallTimeUp:Z

    .line 241
    iput v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->PKG_TYPE_DEFAULT:I

    .line 242
    iput v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->PKG_TYPE_RIVAL:I

    .line 243
    iput v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->PKG_TYPE_RIVAL_DOWNLOAD:I

    .line 244
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->PKG_TYPE_UNTYPICAL_DOWNLOAD:I

    .line 245
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->PKG_TYPE_VIRUS:I

    .line 247
    iput v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    .line 259
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallDoneHandled:Z

    .line 264
    const-string v0, "com.meizu.mstore.check.apps.update"

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->MSTORE_CHECK_APP_UPDATE:Ljava/lang/String;

    .line 266
    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$1;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mHandler:Landroid/os/Handler;

    .line 335
    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$2;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 626
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->downgradeFlags:Z

    .line 627
    iput v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->versionCode:I

    .line 628
    iput v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installedVersionCode:I

    .line 1205
    new-instance v0, Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    invoke-direct {v0}, Lcom/meizu/safe/security/bean/MzStoreAppInfo;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    .line 1277
    const-string v0, ""

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->appNameString:Ljava/lang/String;

    .line 1369
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->showHighVersion:Z

    .line 1581
    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    .line 1582
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOkCanInstall:Z

    .line 1585
    iput v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->permNums:I

    .line 2273
    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->savedPath:Ljava/lang/String;

    .line 2274
    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->file:Ljava/io/File;

    .line 2275
    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOldName:Ljava/lang/String;

    .line 2276
    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->renameFile:Ljava/io/File;

    .line 2277
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScheme:Z

    .line 2278
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->fromEmailInstall:Z

    .line 2482
    new-instance v0, Lcom/meizu/permissioncommon/AppItem;

    invoke-direct {v0}, Lcom/meizu/permissioncommon/AppItem;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->appItem:Lcom/meizu/permissioncommon/AppItem;

    .line 2845
    return-void
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallDoneHandled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallDoneHandled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallTimeUp:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallTimeUp:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/packageinstaller/PackageInstallerActivity;)Lcom/meizu/safe/security/bean/MzStoreAppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsVirusCheckFinish:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsVirusCheckFinish:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->onScanFinish()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/packageinstaller/PackageInstallerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPkgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/packageinstaller/PackageInstallerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/packageinstaller/PackageInstallerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->uninstallPackageForReplace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallScan()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstall()V

    return-void
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 154
    sget v0, Lcom/android/packageinstaller/PackageInstallerActivity;->installResult:I

    return v0
.end method

.method static synthetic access$1902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 154
    sput p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installResult:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/packageinstaller/PackageInstallerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->showRecListView(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/packageinstaller/PackageInstallerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->versionCode:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/packageinstaller/PackageInstallerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/packageinstaller/PackageInstallerActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/packageinstaller/PackageInstallerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->continuePermConfirm()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/packageinstaller/PackageInstallerActivity;Z)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUpLoadDataParams(Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/packageinstaller/PackageInstallerActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnPositive:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->SCAN_TIMEOUT_TIME:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/packageinstaller/PackageInstallerActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->mCreate(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isRecomendationAppShowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/packageinstaller/PackageInstallerActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->setSourceUpLoadDataParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/packageinstaller/PackageInstallerActivity;)Lcom/meizu/common/AnimDownloadProgressButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->animButton:Lcom/meizu/common/AnimDownloadProgressButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->uploadRecommendationsUseTime()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/packageinstaller/PackageInstallerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->onInstallFinish(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->onQueryPkgInfoFinish()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsVirusCheckResultSafe:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/packageinstaller/PackageInstallerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsVirusCheckResultSafe:Z

    return p1
.end method

.method private bindDetectingService(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgPath"    # Ljava/lang/String;

    .prologue
    .line 2624
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/android/packageinstaller/PackageInstallerActivity$IncomingHandler;

    invoke-direct {v2, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$IncomingHandler;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 2626
    .local v1, "messenger_reciever":Landroid/os/Messenger;
    new-instance v2, Lcom/android/packageinstaller/PackageInstallerActivity$28;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/packageinstaller/PackageInstallerActivity$28;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;Landroid/os/Messenger;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSc:Landroid/content/ServiceConnection;

    .line 2650
    const-string v2, "PackageInstaller"

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2652
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.meizu.safe"

    const-string v4, "com.meizu.safe.DetectingService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2653
    const-string v2, "com.meizu.safe.Detecting"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2656
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSc:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2657
    return-void
.end method

.method private bindPermissionService()V
    .locals 8

    .prologue
    .line 2432
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    if-nez v5, :cond_1

    .line 2480
    :cond_0
    :goto_0
    return-void

    .line 2435
    :cond_1
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2436
    .local v3, "pkgName":Ljava/lang/String;
    new-instance v2, Landroid/os/Messenger;

    new-instance v5, Lcom/android/packageinstaller/PackageInstallerActivity$PermissionIncomingHandler;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$PermissionIncomingHandler;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-direct {v2, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 2438
    .local v2, "messenger_reciever_permission":Landroid/os/Messenger;
    new-instance v5, Lcom/android/packageinstaller/PackageInstallerActivity$26;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/packageinstaller/PackageInstallerActivity$26;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;Landroid/os/Messenger;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSc_permission:Landroid/content/ServiceConnection;

    .line 2464
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2465
    .local v1, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.meizu.safe"

    const-string v7, "com.meizu.safe.PermissionQueryService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2467
    const-string v5, "com.meizu.safe.PermissionQuery"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2469
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSc_permission:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/packageinstaller/PackageInstallerActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2472
    const-string v5, "PackageInstaller"

    const-string v6, "bind permission service failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2474
    .local v4, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v5, 0x21

    if-ge v0, v5, :cond_2

    .line 2475
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2474
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2477
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->mCreate(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private checkForUnkownSource()V
    .locals 5

    .prologue
    .line 1186
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    .line 1187
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isUnknownSourcesAllowedByAdmin()Z

    move-result v1

    .line 1188
    .local v1, "unknownSourcesAllowedByAdmin":Z
    invoke-static {p0}, Lcom/meizu/safe/security/utils/Utils;->isInstallingUnknownAppsAllowed(Landroid/content/Context;)Z

    move-result v2

    .line 1192
    .local v2, "unknownSourcesAllowedByUser":Z
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    .line 1193
    .local v0, "isManagedProfile":Z
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 1195
    :cond_0
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    .line 1202
    :goto_0
    return-void

    .line 1196
    :cond_1
    if-nez v2, :cond_2

    .line 1198
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_0

    .line 1200
    :cond_2
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    goto :goto_0
.end method

.method private continuePermConfirm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1574
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLoadingView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1575
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLoadingText:Landroid/widget/TextView;

    const v1, #com.android.packageinstaller:string@loading#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1576
    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    invoke-direct {p0, v0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->initOfficialAuthenView(IZ)V

    .line 1577
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initOriginPermView(Z)V

    .line 1578
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnPositive:Landroid/view/MenuItem;

    const v1, #com.android.packageinstaller:string@btn_next_step#t

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1579
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2245
    invoke-static {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 2246
    .local v0, "count":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2247
    const/4 v2, -0x1

    .line 2249
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2254
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 2255
    .local v0, "buffer":[B
    const-wide/16 v2, 0x0

    .line 2256
    .local v2, "count":J
    const/4 v1, 0x0

    .line 2257
    .local v1, "n":I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v4, v1, :cond_0

    .line 2258
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 2259
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 2261
    :cond_0
    return-wide v2
.end method

.method private static copyToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2266
    const/16 v2, 0x4000

    new-array v0, v2, [B

    .line 2268
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_0

    .line 2269
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2271
    :cond_0
    return-void
.end method

.method public static createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2215
    sget-object v0, Lcom/android/packageinstaller/PackageInstallerActivity$NewFileCreator;->DEFAULT:Lcom/android/packageinstaller/PackageInstallerActivity$NewFileCreator;

    invoke-static {v0, p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->createUniqueFileInternal(Lcom/android/packageinstaller/PackageInstallerActivity$NewFileCreator;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static createUniqueFileInternal(Lcom/android/packageinstaller/PackageInstallerActivity$NewFileCreator;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .param p0, "nfc"    # Lcom/android/packageinstaller/PackageInstallerActivity$NewFileCreator;
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2220
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2221
    .local v1, "file":Ljava/io/File;
    invoke-interface {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$NewFileCreator;->createNewFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    .line 2241
    :goto_0
    return-object v6

    .line 2225
    :cond_0
    const/16 v6, 0x2e

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 2227
    .local v4, "index":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 2228
    invoke-virtual {p2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2229
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2230
    .local v0, "extension":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-%d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2235
    .end local v0    # "extension":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .local v2, "format":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_2
    const v6, 0x7fffffff

    if-ge v3, v6, :cond_3

    .line 2236
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2237
    .restart local v1    # "file":Ljava/io/File;
    invoke-interface {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$NewFileCreator;->createNewFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v1

    .line 2238
    goto :goto_0

    .line 2232
    .end local v2    # "format":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-%d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "format":Ljava/lang/String;
    goto :goto_1

    .line 2235
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2241
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private delApk()V
    .locals 5

    .prologue
    .line 954
    :try_start_0
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->archiveFilePath:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 955
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 957
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->archiveFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 958
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 959
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "del apk file Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doDelete()V
    .locals 0

    .prologue
    .line 948
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->delApk()V

    .line 949
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    .line 950
    return-void
.end method

.method private doInstall()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 903
    iget-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsVirusCheckResultSafe:Z

    if-nez v0, :cond_0

    .line 904
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    .line 936
    :goto_0
    return-void

    .line 907
    :cond_0
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isGuestUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    const v0, #com.android.packageinstaller:string@install_failed#t

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 910
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    .line 911
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 912
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/packageinstaller/PackageInstallerActivity$18;

    invoke-direct {v1, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$18;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 932
    :goto_1
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstall()V

    goto :goto_0

    .line 929
    :cond_2
    const-string v0, "PackageInstaller"

    const-string v1, "install skip time count"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallTimeUp:Z

    goto :goto_1
.end method

.method private doLunch()V
    .locals 4

    .prologue
    .line 940
    :try_start_0
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :goto_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    .line 945
    return-void

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doLunch() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doPositiveBtnClick()V
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    .line 853
    iget v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    if-ne v4, v6, :cond_3

    .line 859
    iget v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 861
    :pswitch_1
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanImg:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 862
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->virusScanView:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 865
    :pswitch_2
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->continuePermConfirm()V

    .line 866
    invoke-direct {p0, v9}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUpLoadDataParams(Z)Ljava/util/HashMap;

    move-result-object v0

    .line 867
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "wait_time"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanWaittingTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    const-string v4, "click_continue"

    invoke-static {p0, v4, v0}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 872
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_3
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPkgName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->appNameString:Ljava/lang/String;

    invoke-static {p0, v4, v5, v9, v9}, Lcom/meizu/safe/security/utils/FakeAPKIdentifyUtils;->gotoMzAppMarketForDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 873
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 874
    .local v1, "map1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    const-string v5, "version_type"

    iget-boolean v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->showHighVersion:Z

    if-eqz v4, :cond_2

    const-string v4, "1"

    :goto_1
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const-string v4, "click_mstore"

    invoke-static {p0, v4, v1}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 875
    :cond_2
    const-string v4, "0"

    goto :goto_1

    .line 879
    .end local v1    # "map1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 880
    iget-boolean v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOkCanInstall:Z

    if-eqz v4, :cond_5

    .line 881
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->doInstall()V

    .line 884
    invoke-direct {p0, v9}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUpLoadDataParams(Z)Ljava/util/HashMap;

    move-result-object v0

    .line 885
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "install_type"

    iget-boolean v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReplaceFlag:Z

    if-eqz v4, :cond_4

    const-string v4, "0"

    :goto_2
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string v4, "click_install"

    invoke-static {p0, v4, v0}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 885
    :cond_4
    const-string v4, "1"

    goto :goto_2

    .line 888
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    if-eqz v4, :cond_0

    .line 889
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    invoke-virtual {v4}, Lcom/android/packageinstaller/CaffeinatedScrollView;->getMeasuredHeight()I

    move-result v3

    .line 890
    .local v3, "off":I
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    const-string v5, "scrollY"

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scrollIndex:I

    aput v8, v6, v7

    iget v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scrollIndex:I

    add-int/2addr v7, v3

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 891
    .local v2, "objectAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 892
    iget v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scrollIndex:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scrollIndex:I

    goto/16 :goto_0

    .line 894
    .end local v2    # "objectAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "off":I
    :cond_6
    iget v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    .line 895
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->doLunch()V

    .line 896
    const-string v4, "click_open"

    invoke-direct {p0, v9}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUpLoadDataParams(Z)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 897
    :cond_7
    iget v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 898
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->doInstall()V

    goto/16 :goto_0

    .line 859
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2174
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2176
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2177
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2178
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2180
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2181
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0

    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private getApkInfoFromMzAppCenter()V
    .locals 4

    .prologue
    .line 1210
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsQueryInstallTypeDone:Z

    .line 1212
    invoke-static {p0}, Lcom/meizu/safe/security/utils/Utils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, "imei":Ljava/lang/String;
    const-string v2, "ro.serialno"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1215
    .local v1, "sn":Ljava/lang/String;
    new-instance v2, Lcom/android/packageinstaller/PackageInstallerActivity$19;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$19;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/packageinstaller/PackageInstallerActivity$19;->start()V

    .line 1249
    new-instance v2, Lcom/android/packageinstaller/PackageInstallerActivity$20;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$20;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/packageinstaller/PackageInstallerActivity$20;->start()V

    .line 1273
    return-void
.end method

.method private getInstallVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1523
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_1
# hxs modify begin
    #iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    #iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #move-result v1

    #if-nez v1, :cond_1
# hxs modify end
    .line 1524
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1528
    :cond_0
    :goto_0
    return-object v0

    .line 1525
    :cond_1
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getOriginatingUid(Landroid/content/Intent;)I
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    .line 2000
    const-string v11, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2008
    .local v9, "uidFromIntent":I
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getSourceInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 2009
    .local v8, "sourceInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_2

    .line 2010
    if-eq v9, v10, :cond_1

    iget-object v10, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    .line 2056
    .end local v9    # "uidFromIntent":I
    :cond_0
    :goto_0
    return v9

    .line 2018
    .restart local v9    # "uidFromIntent":I
    :cond_1
    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    .line 2025
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2036
    .local v3, "callingUid":I
    if-eq v9, v10, :cond_3

    .line 2037
    iget-object v10, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2038
    .local v2, "callingPackages":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 2039
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v7, v1, v5

    .line 2041
    .local v7, "packageName":Ljava/lang/String;
    :try_start_1
    iget-object v10, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2044
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_0

    .line 2039
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2027
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "callingPackages":[Ljava/lang/String;
    .end local v3    # "callingUid":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 2028
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v11, "PackageInstaller"

    const-string v12, "Could not determine the launching uid."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 2030
    goto :goto_0

    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "callingUid":I
    :cond_3
    move v9, v3

    .line 2056
    goto :goto_0

    .line 2047
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "callingPackages":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1975
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1976
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1977
    .local v0, "pkg":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1976
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPgkAuthenticationValue()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2669
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_package_install_authentication"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2670
    .local v0, "mInstallAppRiskIndex":I
    const-string v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get authentication value from MzSettings : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    if-ne v0, v1, :cond_0

    .line 2674
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2909
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_0

    .line 2910
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 2914
    :goto_0
    return-object v0

    .line 2911
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    .line 2912
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 2914
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSourceInfo()Landroid/content/pm/ApplicationInfo;
    .locals 3

    .prologue
    .line 1982
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1983
    .local v0, "callingPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1985
    :try_start_0
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1990
    :goto_0
    return-object v1

    .line 1986
    :catch_0
    move-exception v1

    .line 1990
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initOfficialAuthenView(IZ)V
    .locals 36
    .param p1, "apkType"    # I
    .param p2, "isVisible"    # Z

    .prologue
    .line 1371
    const v27, #com.android.packageinstaller:id@install_official_confirm#t

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    .line 1372
    if-eqz p2, :cond_4

    .line 1373
    packed-switch p1, :pswitch_data_0

    .line 1514
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x53

    new-instance v31, Landroid/view/animation/PathInterpolator;

    const v32, 0x3e99999a    # 0.3f

    const/16 v33, 0x0

    const v34, 0x3f333333    # 0.7f

    const/high16 v35, 0x3f800000    # 1.0f

    invoke-direct/range {v31 .. v35}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static/range {v27 .. v31}, Lcom/meizu/safe/security/utils/Utils;->setAlphaAnim(Landroid/view/View;FFILandroid/view/animation/Interpolator;)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1520
    :cond_0
    :goto_1
    return-void

    .line 1375
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const v28, #com.android.packageinstaller:id@btn_goto_mz_store#t

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1376
    .local v5, "btnGotoMzStore":Landroid/widget/Button;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1377
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1380
    .end local v5    # "btnGotoMzStore":Landroid/widget/Button;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const v28, #com.android.packageinstaller:id@btn_goto_mz_store#t

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1381
    .local v7, "btnNext":Landroid/widget/Button;
    const v27, #com.android.packageinstaller:string@btn_install_mz_edition#t

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1383
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const v28, #com.android.packageinstaller:id@warning_title#t

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1386
    .local v26, "warningTitle":Landroid/widget/TextView;
    const v27, #com.android.packageinstaller:string@warning_title_remind#t

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const v28, #com.android.packageinstaller:id@warning_text#t

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1389
    .local v11, "message":Landroid/widget/TextView;
    const v27, #com.android.packageinstaller:string@install_warning_rival_download_text#t

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1392
    .end local v7    # "btnNext":Landroid/widget/Button;
    .end local v11    # "message":Landroid/widget/TextView;
    .end local v26    # "warningTitle":Landroid/widget/TextView;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const v28, #com.android.packageinstaller:id@warning_title#t

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1393
    .local v22, "title1":Landroid/widget/TextView;
    const v27, #com.android.packageinstaller:string@warning_title_caution#t

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, #com.android.packageinstaller:color@warning_color#t

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const v28, #com.android.packageinstaller:id@warning_text#t

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1398
    .local v12, "message1":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPkgName:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "com.android.providers.downloads.ui"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPkgName:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "com.meizu.filemanager"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 1400
    :cond_1
    const v27, #com.android.packageinstaller:string@install_warning_untypical_download#t

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const v30, #com.android.packageinstaller:string@source_network#t

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1406
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const v28, #com.android.packageinstaller:id@btn_handle_warning#t

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1407
    .local v8, "btnNext1":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, #com.android.packageinstaller:drawable@stroke_btn#t

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    check-cast v18, Landroid/graphics/drawable/StateListDrawable;

    .line 1408
    .local v18, "seletor":Landroid/graphics/drawable/StateListDrawable;
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1409
    .local v14, "normal":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, #com.android.packageinstaller:color@warning_color_pressed#t

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    sget-object v28, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1410
    const/16 v27, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1411
    .local v16, "pressed":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, #com.android.packageinstaller:color@warning_color#t

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    sget-object v28, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v16

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1412
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1413
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1414
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, #com.android.packageinstaller:color@warning_color#t

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1416
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1402
    .end local v8    # "btnNext1":Landroid/widget/Button;
    .end local v14    # "normal":Landroid/graphics/drawable/Drawable;
    .end local v16    # "pressed":Landroid/graphics/drawable/Drawable;
    .end local v18    # "seletor":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    const v27, #com.android.packageinstaller:string@install_warning_untypical_download#t

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPkgName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/meizu/safe/security/utils/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1419
    .end local v12    # "message1":Landroid/widget/TextView;
    .end local v22    # "title1":Landroid/widget/TextView;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const v28, #com.android.packageinstaller:id@warning_img#t

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1420
    .local v10, "img":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, #com.android.packageinstaller:drawable@install_wraning_unsafe#t

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const v28, #com.android.packageinstaller:id@warning_title#t

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1423
    .local v23, "title2":Landroid/widget/TextView;
    const v27, #com.android.packageinstaller:string@warning_title_unsafe#t

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, #com.android.packageinstaller:color@warning_unsafe_color#t

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const v28, #com.android.packageinstaller:id@warning_text#t

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1427
    .local v13, "messageTextView":Landroid/widget/TextView;
    const v27, #com.android.packageinstaller:string@install_warning_virus#t

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1429
    const v27, #com.android.packageinstaller:string@btn_install_confirm#t

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1430
    .local v21, "textConfirm":Ljava/lang/CharSequence;
    new-instance v20, Landroid/text/SpannableString;

    invoke-direct/range {v20 .. v21}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1431
    .local v20, "spannableString":Landroid/text/SpannableString;
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, #com.android.packageinstaller:color@text_50percent_alpha#t

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v28, 0x0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v29

    const/16 v30, 0x22

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1433
    new-instance v27, Landroid/text/style/UnderlineSpan;

    invoke-direct/range {v27 .. v27}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v28, 0x0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v29

    const/16 v30, 0x12

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1435
    new-instance v27, Lcom/android/packageinstaller/PackageInstallerActivity$22;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$22;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    const/16 v28, 0x0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v29

    const/16 v30, 0x12

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1443
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1444
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const v28, #com.android.packageinstaller:id@mz_store_statement#t

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1447
    .local v24, "tv1":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const v28, #com.android.packageinstaller:id@mz_store_statement_summry#t

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1448
    .local v25, "tv2":Landroid/widget/TextView;
    const/16 v27, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const v28, #com.android.packageinstaller:id@btn_handle_warning#t

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1451
    .local v9, "btnNext2":Landroid/widget/Button;
    const v27, #com.android.packageinstaller:string@btn_delete_apk_file#t

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1452
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, #com.android.packageinstaller:color@color_safe_level_virus#t

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1453
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, #com.android.packageinstaller:drawable@stroke_btn#t

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    check-cast v19, Landroid/graphics/drawable/StateListDrawable;

    .line 1454
    .local v19, "seletor1":Landroid/graphics/drawable/StateListDrawable;
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1455
    .local v15, "normal1":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, #com.android.packageinstaller:color@warning_unsafe_color_pressed#t

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    sget-object v28, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1456
    const/16 v27, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1457
    .local v17, "pressed1":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, #com.android.packageinstaller:color@warning_unsafe_color#t

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    sget-object v28, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1458
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1459
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1460
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1462
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->isMzStoreExist:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 1463
    const v27, #com.android.packageinstaller:string@install_warning_default_summry#t

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const v28, #com.android.packageinstaller:id@btn_goto_mz_store#t

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1466
    .local v6, "btnMStore":Landroid/widget/Button;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1467
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1469
    .end local v6    # "btnMStore":Landroid/widget/Button;
    :cond_3
    const/16 v27, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1517
    .end local v9    # "btnNext2":Landroid/widget/Button;
    .end local v10    # "img":Landroid/widget/ImageView;
    .end local v13    # "messageTextView":Landroid/widget/TextView;
    .end local v15    # "normal1":Landroid/graphics/drawable/Drawable;
    .end local v17    # "pressed1":Landroid/graphics/drawable/Drawable;
    .end local v19    # "seletor1":Landroid/graphics/drawable/StateListDrawable;
    .end local v20    # "spannableString":Landroid/text/SpannableString;
    .end local v21    # "textConfirm":Ljava/lang/CharSequence;
    .end local v23    # "title2":Landroid/widget/TextView;
    .end local v24    # "tv1":Landroid/widget/TextView;
    .end local v25    # "tv2":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 1373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initOnScanView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1281
    const v0, #com.android.packageinstaller:id@app_size#t

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppVersion:Landroid/widget/TextView;

    .line 1282
    const v0, #com.android.packageinstaller:id@install_confirm_panel#t

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/ViewGroup;

    .line 1283
    const v0, #com.android.packageinstaller:id@perm_panel#t

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfoView:Landroid/view/ViewGroup;

    .line 1284
    const v0, #com.android.packageinstaller:id@perm_panel_loading#t

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLoadingView:Landroid/view/ViewGroup;

    .line 1285
    const v0, #com.android.packageinstaller:id@perm_panel_loading_text#t

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLoadingText:Landroid/widget/TextView;

    .line 1286
    const v0, #com.android.packageinstaller:id@installing_hint#t

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installing:Landroid/view/ViewGroup;

    .line 1287
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installing:Landroid/view/ViewGroup;

    const v1, #com.android.packageinstaller:id@anim_installing#t

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/AnimDownloadProgressButton;

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->animButton:Lcom/meizu/common/AnimDownloadProgressButton;

    .line 1288
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installing:Landroid/view/ViewGroup;

    const v1, #com.android.packageinstaller:id@installing_text#t

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->finishTextView:Landroid/widget/TextView;

    .line 1289
    const v0, #com.android.packageinstaller:id@scanning_virus#t

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->virusScanView:Landroid/view/ViewGroup;

    .line 1290
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->virusScanView:Landroid/view/ViewGroup;

    const v1, #com.android.packageinstaller:id@scan_view#t

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanImg:Landroid/widget/ImageView;

    .line 1292
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1293
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfoView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1294
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLoadingView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1295
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLoadingText:Landroid/widget/TextView;

    const v1, #com.android.packageinstaller:string@text_loading#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1297
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    if-nez v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_0
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    invoke-static {p0, v0, v1}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    .line 1299
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v0, v0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->appNameString:Ljava/lang/String;

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    const v1, #com.android.packageinstaller:id@app_snippet#t

    invoke-static {p0, v0, v1}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForNewApp(Landroid/app/Activity;Lcom/android/packageinstaller/PackageUtil$AppSnippet;I)Landroid/view/View;

    .line 1302
    return-void

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method private initOriginPermView(Z)V
    .locals 2
    .param p1, "isPermViewVisible"    # Z

    .prologue
    const/16 v1, 0x8

    .line 1587
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1590
    :cond_0
    const v0, #com.android.packageinstaller:id@install_confirm#t

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->permView:Landroid/view/ViewGroup;

    .line 1592
    if-eqz p1, :cond_1

    .line 1593
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    .line 1594
    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->updateBtnStatus(I)V

    .line 1595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOkCanInstall:Z

    .line 1602
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/packageinstaller/PackageInstallerActivity$23;

    invoke-direct {v1, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$23;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1644
    :goto_0
    return-void

    .line 1642
    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->permView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private initiateInstall()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 630
    const-string v4, " "

    .line 631
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->versionCode:I

    .line 632
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_3

    .line 633
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 634
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget v5, v5, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->versionCode:I

    .line 640
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 641
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, #com.android.packageinstaller:string@version_text#t

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    :goto_1
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    new-array v6, v11, [Ljava/lang/String;

    aput-object v4, v6, v10

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 652
    .local v2, "oldName":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    aget-object v5, v2, v10

    if-eqz v5, :cond_1

    .line 653
    aget-object v4, v2, v10

    .line 654
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    .line 659
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_2
    iput-boolean v10, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReplaceFlag:Z

    .line 666
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.ALLOW_REPLACE"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 667
    :cond_2
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallScan()V

    .line 688
    :goto_3
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.meizu.mstore.check.apps.update"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v1, "msIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 690
    return-void

    .line 635
    .end local v1    # "msIntent":Landroid/content/Intent;
    .end local v2    # "oldName":[Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_0

    .line 636
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 637
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->versionCode:I

    goto :goto_0

    .line 644
    :cond_4
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppVersion:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 661
    .restart local v2    # "oldName":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_2

    .line 670
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 672
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_6

    .line 673
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mVersionNameOld:Ljava/lang/String;

    .line 674
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installedVersionCode:I

    .line 675
    iget v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installedVersionCode:I

    iget v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->versionCode:I

    if-le v5, v6, :cond_6

    .line 676
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->downgradeFlags:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 682
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    :goto_4
    const-string v5, "PackageInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Replacing existing package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iput-boolean v11, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReplaceFlag:Z

    .line 684
    invoke-direct {p0, v11}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_3

    .line 679
    :catch_1
    move-exception v5

    goto :goto_4
.end method

.method private initiateSafeScan(Ljava/lang/String;)V
    .locals 1
    .param p1, "archiveFilePath"    # Ljava/lang/String;

    .prologue
    .line 1868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    .local v0, "apkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1870
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->bindDetectingService(Ljava/lang/String;)V

    .line 1871
    return-void
.end method

.method private installErrorStatement(I)V
    .locals 13
    .param p1, "errorCode"    # I

    .prologue
    const v9, #com.android.packageinstaller:id@btn_handle_warning#t

    const v12, #com.android.packageinstaller:string@install_error#t

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 1532
    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    if-nez v6, :cond_0

    .line 1533
    const v6, #com.android.packageinstaller:id@install_official_confirm#t

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    .line 1535
    :cond_0
    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1536
    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    const v7, #com.android.packageinstaller:id@mz_store_statement#t

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1537
    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    const v7, #com.android.packageinstaller:id@mz_store_statement_summry#t

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1538
    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    const v7, #com.android.packageinstaller:id@btn_goto_mz_store#t

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1540
    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    const v7, #com.android.packageinstaller:id@warning_span#t

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1541
    .local v3, "stateSpan":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1542
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x42f80000    # 124.0f

    invoke-static {v6, v7}, Lcom/meizu/safe/security/utils/Utils;->dpTopx(FF)I

    move-result v6

    invoke-virtual {v2, v10, v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1543
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1545
    const v6, #com.android.packageinstaller:id@warning_img#t

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #com.android.packageinstaller:drawable@install_warning_default#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1546
    const v6, #com.android.packageinstaller:id@warning_title#t

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1547
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1548
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, #com.android.packageinstaller:color@text_50percent_alpha#t

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1549
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1551
    iget-boolean v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isMzStoreExist:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isNetWorkAvailable:Z

    if-eqz v6, :cond_1

    .line 1552
    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1553
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 1554
    const v6, #com.android.packageinstaller:string@btn_goto_mz_store#t

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1555
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, #com.android.packageinstaller:color@color_safe_level_safe#t

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 1556
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, #com.android.packageinstaller:drawable@stroke_btn#t

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1557
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1560
    .end local v0    # "btn":Landroid/widget/Button;
    :cond_1
    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    const v7, #com.android.packageinstaller:id@warning_text#t

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1561
    .local v4, "statement":Landroid/widget/TextView;
    const v6, #com.android.packageinstaller:string@install_error_statement#t

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {p1}, Lcom/meizu/safe/security/utils/Utils;->getInstallErrorStatement(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1562
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1564
    const v6, #com.android.packageinstaller:id@install_done_hint#t

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1565
    .local v1, "installDone":Landroid/view/ViewGroup;
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1566
    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1567
    const v6, #com.android.packageinstaller:id@done_img#t

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #com.android.packageinstaller:drawable@install_error#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1568
    const v6, #com.android.packageinstaller:id@done_text#t

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1570
    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->authenView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1571
    return-void
.end method

.method private isGuestUser()Z
    .locals 3

    .prologue
    .line 2661
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2662
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v1

    return v1
.end method

.method private isRecomendationAppShowed()Z
    .locals 1

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2903
    const/4 v0, 0x1

    .line 2905
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnknownSourcesAllowedByAdmin()Z
    .locals 2

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mCreate(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2489
    .local p1, "perm_List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 2556
    :goto_0
    return-void

    .line 2493
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->appItem:Lcom/meizu/permissioncommon/AppItem;

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/meizu/permissioncommon/AppItem;->packageName:Ljava/lang/String;

    .line 2494
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->appItem:Lcom/meizu/permissioncommon/AppItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/permissioncommon/AppItem;->IsCheckFilePathName:Z

    .line 2495
    iget-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->fromEmailInstall:Z

    if-eqz v0, :cond_1

    .line 2496
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->appItem:Lcom/meizu/permissioncommon/AppItem;

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->savedPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/meizu/permissioncommon/AppItem;->filePathName:Ljava/lang/String;

    .line 2502
    :goto_1
    const-string v0, "PackageInstaller"

    const-string v1, "mCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/packageinstaller/PackageInstallerActivity$27;

    invoke-direct {v1, p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity$27;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2499
    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->appItem:Lcom/meizu/permissioncommon/AppItem;

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/permissioncommon/AppItem;->filePathName:Ljava/lang/String;

    goto :goto_1
.end method

.method private onInstallFinish(I)V
    .locals 10
    .param p1, "result"    # I

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 1814
    iget v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    if-ne v4, v7, :cond_1

    .line 1865
    :cond_0
    :goto_0
    return-void

    .line 1819
    :cond_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1820
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1821
    .local v2, "ret":Landroid/content/Intent;
    const-string v4, "android.intent.extra.INSTALL_RESULT"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1822
    if-ne p1, v3, :cond_2

    const/4 v3, -0x1

    :cond_2
    invoke-virtual {p0, v3, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->setResult(ILandroid/content/Intent;)V

    .line 1825
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    goto :goto_0

    .line 1829
    .end local v2    # "ret":Landroid/content/Intent;
    :cond_3
    iput v9, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    .line 1830
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    if-nez v4, :cond_4

    .line 1831
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 1832
    :cond_4
    if-ne p1, v3, :cond_8

    .line 1833
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 1835
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v4, :cond_7

    .line 1836
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1837
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 1838
    iput v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    .line 1845
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    sput-boolean v6, Lcom/android/packageinstaller/PackageInstallerActivity;->installed:Z

    .line 1846
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->sendNotity(Ljava/lang/String;)V

    .line 1856
    :goto_2
    iget v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->updateBtnStatus(I)V

    .line 1858
    invoke-direct {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUpLoadDataParams(Z)Ljava/util/HashMap;

    move-result-object v1

    .line 1859
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "status"

    if-ne p1, v3, :cond_a

    const-string v4, "1"

    :goto_3
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    if-eq p1, v3, :cond_5

    .line 1861
    const-string v3, "status_reason"

    invoke-static {p1}, Lcom/meizu/safe/security/utils/Utils;->getInstallErrorStatement(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    :cond_5
    const-string v4, "install_type"

    iget-boolean v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReplaceFlag:Z

    if-eqz v3, :cond_b

    const-string v3, "0"

    :goto_4
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    const-string v3, "install_status"

    invoke-static {p0, v3, v1}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1840
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    iput v8, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    goto :goto_1

    .line 1843
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    iput v8, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    goto :goto_1

    .line 1849
    :cond_8
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 1850
    invoke-direct {p0, v6}, Lcom/android/packageinstaller/PackageInstallerActivity;->showRecListView(Z)V

    .line 1854
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->installErrorStatement(I)V

    goto :goto_2

    .line 1852
    :cond_9
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLoadingView:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 1859
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    const-string v4, "0"

    goto :goto_3

    .line 1863
    :cond_b
    const-string v3, "1"

    goto :goto_4
.end method

.method private onInstallStart()V
    .locals 5

    .prologue
    const v4, #com.android.packageinstaller:string@installing#t

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1725
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    .line 1726
    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->updateBtnStatus(I)V

    .line 1727
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1728
    const v0, #com.android.packageinstaller:id@recommendation_list#t

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomView:Landroid/view/ViewGroup;

    .line 1729
    invoke-direct {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->showRecListView(Z)V

    .line 1730
    invoke-direct {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->initOriginPermView(Z)V

    .line 1731
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1732
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installing:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1733
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->finishTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1734
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->animButton:Lcom/meizu/common/AnimDownloadProgressButton;

    invoke-virtual {v0, v2}, Lcom/meizu/common/AnimDownloadProgressButton;->setVisibility(I)V

    .line 1735
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->animButton:Lcom/meizu/common/AnimDownloadProgressButton;

    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/AnimDownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 1736
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->animButton:Lcom/meizu/common/AnimDownloadProgressButton;

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/meizu/safe/security/utils/Utils;->dpTopx(FF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/AnimDownloadProgressButton;->setTextSize(F)V

    .line 1737
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->animButton:Lcom/meizu/common/AnimDownloadProgressButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/meizu/common/AnimDownloadProgressButton;->setState(I)V

    .line 1745
    :goto_0
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installStartTime:J

    .line 1748
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/packageinstaller/PackageInstallerActivity$24;

    invoke-direct {v1, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$24;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1768
    :goto_1
    return-void

    .line 1739
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->initOriginPermView(Z)V

    .line 1740
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLoadingView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1741
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1765
    :cond_1
    const-string v0, "PackageInstaller"

    const-string v1, "install skip time count"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iput-boolean v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallTimeUp:Z

    goto :goto_1
.end method

.method private onQueryPkgInfoFinish()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1306
    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryPkgInfoFinish, isUpdatePkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isUpdatePkg:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isMzVersionExists: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    invoke-virtual {v6}, Lcom/meizu/safe/security/bean/MzStoreAppInfo;->isMzVersionExists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iput v9, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    .line 1309
    iget-boolean v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isSystemApp:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isUpdatePkg:Z

    if-eqz v4, :cond_1

    .line 1310
    :cond_0
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    iput-boolean v7, v4, Lcom/meizu/safe/security/bean/MzStoreAppInfo;->vrcSwitch:Z

    .line 1313
    :cond_1
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->virusScanTimeCheck()V

    .line 1314
    iget v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->updateBtnStatus(I)V

    .line 1316
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    iget-boolean v4, v4, Lcom/meizu/safe/security/bean/MzStoreAppInfo;->vrcSwitch:Z

    if-eqz v4, :cond_2

    .line 1317
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLoadingView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1318
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->virusScanView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1319
    invoke-direct {p0, v9}, Lcom/android/packageinstaller/PackageInstallerActivity;->startVirusScanAnim(Z)V

    .line 1321
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->virusScanView:Landroid/view/ViewGroup;

    const v5, #com.android.packageinstaller:id@btn_goto_mz_store#t

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1322
    .local v0, "btnGotoMstore":Landroid/widget/Button;
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isMzStoreExist:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    invoke-virtual {v4}, Lcom/meizu/safe/security/bean/MzStoreAppInfo;->isMzVersionExists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1323
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1335
    .end local v0    # "btnGotoMstore":Landroid/widget/Button;
    :cond_2
    :goto_0
    return-void

    .line 1325
    .restart local v0    # "btnGotoMstore":Landroid/widget/Button;
    :cond_3
    const v4, #com.android.packageinstaller:id@scanning_view#t

    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1326
    .local v3, "scanningView":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1327
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v4, v5}, Lcom/meizu/safe/security/utils/Utils;->dpTopx(FF)I

    move-result v4

    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1328
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1330
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1331
    const v4, #com.android.packageinstaller:id@mstore_notify#t

    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1332
    .local v1, "btnMsg":Landroid/widget/TextView;
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onScanFinish()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x5

    const/16 v8, 0x8

    .line 1653
    iget v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    if-eq v5, v9, :cond_0

    iget v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    .line 1721
    :cond_0
    :goto_0
    return-void

    .line 1659
    :cond_1
    const-string v5, "PackageInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scan done, pkgType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-boolean v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsVirusCheckResultSafe:Z

    if-nez v5, :cond_2

    .line 1661
    iput v9, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    .line 1664
    :cond_2
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLoadingView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1665
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    .line 1667
    iget v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    if-ne v5, v9, :cond_4

    .line 1668
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->virusScanView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1669
    iget v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    invoke-direct {p0, v5, v11}, Lcom/android/packageinstaller/PackageInstallerActivity;->initOfficialAuthenView(IZ)V

    .line 1696
    :goto_1
    iget v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    invoke-direct {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->updateBtnStatus(I)V

    .line 1697
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->regPkgInstallReceiver()V

    .line 1700
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1701
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPkgName:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/meizu/safe/security/utils/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->originPkgLabel:Ljava/lang/String;

    .line 1702
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->appNameString:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 1703
    const-string v5, "appname"

    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    :goto_2
    const-string v5, "apkname"

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    const-string v6, "appversion"

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    :goto_3
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    const-string v6, "start_up"

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->originPkgLabel:Ljava/lang/String;

    if-nez v5, :cond_a

    const-string v5, ""

    :goto_4
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    iget-boolean v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isNetWorkAvailable:Z

    if-eqz v5, :cond_b

    .line 1711
    const-string v5, "network"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/meizu/safe/security/utils/NetWorkHelper;->getNetWorkType(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    :goto_5
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPkgName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isSystemApp:Z

    if-eqz v5, :cond_c

    .line 1716
    :cond_3
    const-string v5, "type"

    const-string v6, "3"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    :goto_6
    const-string v5, "start_up"

    invoke-static {p0, v5, v1}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1671
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    iget-boolean v5, v5, Lcom/meizu/safe/security/bean/MzStoreAppInfo;->vrcSwitch:Z

    if-eqz v5, :cond_7

    .line 1672
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanImg:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1673
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanImg:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1675
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->virusScanView:Landroid/view/ViewGroup;

    const v6, #com.android.packageinstaller:id@virus_scan_done#t

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1676
    .local v2, "tv1":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->virusScanView:Landroid/view/ViewGroup;

    const v6, #com.android.packageinstaller:id@virus_scan_done_msg#t

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1677
    .local v3, "tv2":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->virusScanView:Landroid/view/ViewGroup;

    const v6, #com.android.packageinstaller:id@scanning_text#t

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1679
    .local v4, "tv3":Landroid/widget/TextView;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1680
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1682
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isMzStoreExist:Z

    if-nez v5, :cond_6

    .line 1683
    :cond_5
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1686
    :cond_6
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1687
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1688
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1689
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1690
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 1692
    .end local v0    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    .end local v2    # "tv1":Landroid/view/ViewGroup;
    .end local v3    # "tv2":Landroid/widget/TextView;
    .end local v4    # "tv3":Landroid/widget/TextView;
    :cond_7
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    .line 1693
    invoke-direct {p0, v11}, Lcom/android/packageinstaller/PackageInstallerActivity;->initOriginPermView(Z)V

    goto/16 :goto_1

    .line 1705
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    const-string v5, "appname"

    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->appNameString:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1708
    :cond_9
    const-string v5, ""

    goto/16 :goto_3

    .line 1709
    :cond_a
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->originPkgLabel:Ljava/lang/String;

    goto/16 :goto_4

    .line 1713
    :cond_b
    const-string v5, "network"

    const-string v6, "1"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1718
    :cond_c
    const-string v5, "type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6
.end method

.method private regPkgInstallReceiver()V
    .locals 2

    .prologue
    .line 360
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    return-void
.end method

.method private saveFile(Landroid/content/Intent;)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2282
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->fromEmailInstall:Z

    .line 2283
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->file:Ljava/io/File;

    .line 2284
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->savedPath:Ljava/lang/String;

    .line 2285
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOldName:Ljava/lang/String;

    .line 2286
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->renameFile:Ljava/io/File;

    .line 2287
    const-string v4, "com.meizu.email.AttachmentFileName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2288
    .local v15, "mFileName":Ljava/lang/String;
    const-string v4, "com.meizu.email.AttachmentFilePath"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2306
    .local v17, "path":Ljava/lang/String;
    const/4 v14, 0x0

    .line 2308
    .local v14, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    const-string v6, "r"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 2315
    :goto_0
    if-nez v14, :cond_1

    .line 2316
    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider returned no file descriptor for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->savedPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2352
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->savedPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    .line 2353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    invoke-static {v4}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    .line 2354
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScheme:Z

    .line 2355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    invoke-static {v4}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 2358
    .local v3, "parsed":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_3

    .line 2359
    const-string v4, "PackageInstaller"

    const-string v5, "Parse error when parsing manifest. Discontinuing installation"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    .line 2361
    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    .line 2369
    .end local v3    # "parsed":Landroid/content/pm/PackageParser$Package;
    :cond_0
    :goto_2
    return-void

    .line 2309
    :catch_0
    move-exception v13

    .line 2310
    .local v13, "e":Ljava/io/FileNotFoundException;
    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t open file descriptor from download service. Failed with exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2319
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    if-eqz v4, :cond_2

    .line 2320
    const-string v4, "PackageInstaller"

    const-string v5, "Opened file descriptor from download service."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->savedPath:Ljava/lang/String;

    .line 2323
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v14}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2325
    .local v2, "dlStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    new-instance v12, Ljava/io/File;

    const-string v4, "/mnt/sdcard/Android/data/com.android.email"

    invoke-direct {v12, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2327
    .local v12, "downloads":Ljava/io/File;
    :try_start_1
    invoke-static {v12, v15}, Lcom/android/packageinstaller/PackageInstallerActivity;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->file:Ljava/io/File;

    .line 2329
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->file:Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2331
    .local v16, "out":Ljava/io/OutputStream;
    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->copyToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->savedPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2334
    .end local v16    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v13

    .line 2335
    .local v13, "e":Ljava/lang/Exception;
    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ee: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2365
    .end local v2    # "dlStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local v12    # "downloads":Ljava/io/File;
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v3    # "parsed":Landroid/content/pm/PackageParser$Package;
    :cond_3
    const/4 v4, 0x0

    const/16 v5, 0x1000

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    new-instance v11, Landroid/content/pm/PackageUserState;

    invoke-direct {v11}, Landroid/content/pm/PackageUserState;-><init>()V

    invoke-static/range {v3 .. v11}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLandroid/util/ArraySet;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    goto/16 :goto_2
.end method

.method private sendNotity(Ljava/lang/String;)V
    .locals 24
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 2108
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_2

    .line 2109
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "notification"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 2110
    .local v14, "notificationManager":Landroid/app/NotificationManager;
    invoke-direct/range {p0 .. p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 2111
    .local v12, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_2

    .line 2112
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 2113
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    .local v3, "componentName":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2116
    .local v10, "intent":Landroid/content/Intent;
    const-string v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2117
    invoke-virtual {v10, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2118
    const/high16 v19, 0x10200000

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2121
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 2124
    .local v15, "pendingNotify":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 2125
    .local v11, "label":Ljava/lang/CharSequence;
    const v19, #com.android.packageinstaller:string@install_success#t

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2126
    .local v9, "installSequence":Ljava/lang/CharSequence;
    new-instance v13, Landroid/app/Notification;

    invoke-direct {v13}, Landroid/app/Notification;-><init>()V

    .line 2130
    .local v13, "notification":Landroid/app/Notification;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 2131
    .local v16, "res":Landroid/content/res/Resources;
    new-instance v19, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v21

    const v22, #com.android.packageinstaller:dimen@notification_icon_size#t

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v22

    const v23, #com.android.packageinstaller:dimen@notification_icon_size#t

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v23

    invoke-static/range {v20 .. v23}, Lcom/meizu/safe/security/utils/Utils;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->bitmap:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2141
    .end local v16    # "res":Landroid/content/res/Resources;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->bitmap:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 2142
    new-instance v19, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, #com.android.packageinstaller:drawable@ic_launcher_m#t

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->bitmap:Ljava/lang/ref/WeakReference;

    .line 2146
    :cond_0
    iget-object v0, v13, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->bitmap:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Bitmap;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    .line 2148
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "mz_stat_sys_installed"

    const-string v21, "drawable"

    const-string v22, "com.android.packageinstaller"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 2150
    .local v17, "resID":I
    if-nez v17, :cond_1

    .line 2151
    const v17, #com.android.packageinstaller:drawable@ic_launcher_m#t

    .line 2153
    :cond_1
    move/from16 v0, v17

    iput v0, v13, Landroid/app/Notification;->icon:I

    .line 2154
    const/16 v19, 0x10

    move/from16 v0, v19

    iput v0, v13, Landroid/app/Notification;->flags:I

    .line 2157
    iput-object v11, v13, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2158
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v11, v9, v15}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2159
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v19, "hhmmssSS"

    invoke-direct/range {v18 .. v19}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2160
    .local v18, "tempDate":Ljava/text/SimpleDateFormat;
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v18 .. v19}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 2161
    .local v4, "datetime":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2162
    .local v7, "id":I
    invoke-virtual {v14, v7, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mNotificationPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 2137
    .end local v4    # "datetime":Ljava/lang/String;
    .end local v7    # "id":I
    .end local v17    # "resID":I
    .end local v18    # "tempDate":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v5

    .line 2138
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "PackageInstaller"

    const-string v20, "send notify, packageName not found exception!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2168
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v9    # "installSequence":Ljava/lang/CharSequence;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "label":Ljava/lang/CharSequence;
    .end local v12    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "notification":Landroid/app/Notification;
    .end local v14    # "notificationManager":Landroid/app/NotificationManager;
    .end local v15    # "pendingNotify":Landroid/app/PendingIntent;
    :cond_2
    return-void

    .line 2139
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "installSequence":Ljava/lang/CharSequence;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v11    # "label":Ljava/lang/CharSequence;
    .restart local v12    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v13    # "notification":Landroid/app/Notification;
    .restart local v14    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v15    # "pendingNotify":Landroid/app/PendingIntent;
    :catch_1
    move-exception v19

    goto/16 :goto_1
.end method

.method private setSourceUpLoadDataParams()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2874
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2875
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "source_apkname"

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2876
    const-string v1, "source_appversion"

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getInstallVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2877
    const-string v2, "install_source"

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->originPkgLabel:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2878
    return-object v0

    .line 2877
    :cond_0
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->originPkgLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method private setUpLoadDataParams(Z)Ljava/util/HashMap;
    .locals 4
    .param p1, "isSetInstallType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2863
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2864
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "apkname"

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2865
    const-string v1, "appversion"

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getInstallVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2866
    const-string v2, "install_source"

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->originPkgLabel:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2867
    if-eqz p1, :cond_0

    .line 2868
    const-string v1, "type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2870
    :cond_0
    return-object v0

    .line 2866
    :cond_1
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->originPkgLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method private showDialogInner(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->removeDialog(I)V

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialog(I)V

    .line 391
    :cond_0
    return-void
.end method

.method private showMenuItem(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 754
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    .line 755
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 757
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 760
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private showRecListView(Z)V
    .locals 14
    .param p1, "isVisiable"    # Z

    .prologue
    .line 1771
    if-eqz p1, :cond_0

    .line 1772
    const v1, #com.android.packageinstaller:id@recom_apps_list#t

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/MzRecyclerView;

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mRecomListView:Lflyme/support/v7/widget/MzRecyclerView;

    .line 1773
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mRecomListView:Lflyme/support/v7/widget/MzRecyclerView;

    new-instance v2, Lflyme/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Lflyme/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setLayoutManager(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1774
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mRecomListView:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setClickable(Z)V

    .line 1775
    new-instance v1, Lcom/android/packageinstaller/PackageInstallerActivity$RecomAppsListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity$RecomAppsListAdapter;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;Lcom/android/packageinstaller/PackageInstallerActivity$1;)V

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->adapter:Lcom/android/packageinstaller/PackageInstallerActivity$RecomAppsListAdapter;

    .line 1776
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mRecomListView:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->adapter:Lcom/android/packageinstaller/PackageInstallerActivity$RecomAppsListAdapter;

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setAdapter(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 1778
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1780
    .local v12, "listAnim":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x3faccccd    # 1.35f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1784
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3eb33333    # 0.35f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1786
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1787
    .local v9, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1789
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1790
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1791
    const-wide/16 v2, 0x12c

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1793
    new-instance v11, Landroid/view/animation/LayoutAnimationController;

    const v1, 0x3d591687    # 0.053f

    invoke-direct {v11, v12, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 1794
    .local v11, "lac":Landroid/view/animation/LayoutAnimationController;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 1795
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mRecomListView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1, v11}, Lflyme/support/v7/widget/MzRecyclerView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1798
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_0
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_1

    .line 1799
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->setSourceUpLoadDataParams()Ljava/util/HashMap;

    move-result-object v13

    .line 1800
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "pos"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    const-string v1, "hor_pos"

    const-string v2, "0"

    invoke-interface {v13, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    const-string v2, "appid"

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/safe/security/utils/RecommendAppInfo;

    invoke-virtual {v1}, Lcom/meizu/safe/security/utils/RecommendAppInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    const-string v2, "appname"

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/safe/security/utils/RecommendAppInfo;

    invoke-virtual {v1}, Lcom/meizu/safe/security/utils/RecommendAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    const-string v2, "apkname"

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomListData:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/safe/security/utils/RecommendAppInfo;

    invoke-virtual {v1}, Lcom/meizu/safe/security/utils/RecommendAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    const-string v1, "exposure_recom"

    invoke-static {p0, v1, v13}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1798
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1808
    .end local v0    # "ta":Landroid/view/animation/TranslateAnimation;
    .end local v9    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v10    # "j":I
    .end local v11    # "lac":Landroid/view/animation/LayoutAnimationController;
    .end local v12    # "listAnim":Landroid/view/animation/AnimationSet;
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1809
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->recomView:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1811
    :cond_1
    return-void
.end method

.method private startInstall()V
    .locals 11

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 987
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallDoneHandled:Z

    .line 988
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->onInstallStart()V

    .line 990
    const/4 v9, 0x0

    .line 991
    .local v9, "installFlags":I
    iget-boolean v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReplaceFlag:Z

    if-eqz v3, :cond_0

    .line 992
    or-int/lit8 v9, v9, 0x2

    .line 995
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 997
    .local v10, "installerPackageName":Ljava/lang/String;
    iget v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    if-eq v3, v2, :cond_1

    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    :cond_1
    iput v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    .line 999
    new-instance v0, Landroid/content/pm/VerificationParams;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    iget v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    .line 1002
    .local v0, "verificationParams":Landroid/content/pm/VerificationParams;
    new-instance v1, Lcom/android/packageinstaller/PackageInstallerActivity$PackageInstallObserver;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/android/packageinstaller/PackageInstallerActivity$PackageInstallObserver;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->observer:Lcom/android/packageinstaller/PackageInstallerActivity$PackageInstallObserver;

    .line 1007
    const-string v1, "package"

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1009
    :try_start_0
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->installExistingPackage(Ljava/lang/String;)I

    .line 1010
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->observer:Lcom/android/packageinstaller/PackageInstallerActivity$PackageInstallObserver;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/packageinstaller/PackageInstallerActivity$PackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V

    .line 1012
    const-string v1, "PackageInstaller"

    const-string v2, "package"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :goto_0
    return-void

    .line 1013
    :catch_0
    move-exception v8

    .line 1014
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->observer:Lcom/android/packageinstaller/PackageInstallerActivity$PackageInstallObserver;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/packageinstaller/PackageInstallerActivity$PackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V

    goto :goto_0

    .line 1019
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScheme:Z

    if-nez v1, :cond_3

    .line 1020
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->observer:Lcom/android/packageinstaller/PackageInstallerActivity$PackageInstallObserver;

    const/4 v7, 0x0

    move v4, v9

    move-object v5, v10

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageManager;->installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1028
    :catch_1
    move-exception v8

    .line 1029
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "PackageInstaller"

    const-string v2, "scheme not package, install error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->observer:Lcom/android/packageinstaller/PackageInstallerActivity$PackageInstallObserver;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, -0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/packageinstaller/PackageInstallerActivity$PackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V

    goto :goto_0

    .line 1025
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->savedPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->observer:Lcom/android/packageinstaller/PackageInstallerActivity$PackageInstallObserver;

    invoke-virtual {v1, v2, v3, v9, v10}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private startInstallConfirm()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 376
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 377
    .local v0, "permVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 378
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLoadingView:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 380
    if-nez v0, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 383
    :cond_0
    return-void

    .end local v0    # "permVisible":Z
    :cond_1
    move v0, v1

    .line 376
    goto :goto_0
.end method

.method private startInstallScan()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 693
    const-string v1, "PackageInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startInstallScan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iput v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    .line 696
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLoadingView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 697
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLoadingText:Landroid/widget/TextView;

    const v2, #com.android.packageinstaller:string@text_loading#t

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 700
    invoke-static {p0}, Lcom/meizu/safe/security/utils/NetWorkHelper;->isConnectionAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isNetWorkAvailable:Z

    .line 701
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/meizu/permissioncommon/AppInfoUtil;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isSystemApp:Z

    .line 702
    invoke-static {p0}, Lcom/meizu/safe/security/utils/Utils;->isMzStoreExits(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isMzStoreExist:Z

    .line 704
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPkgName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    iput-boolean v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isUpdatePkg:Z

    .line 709
    :cond_0
    const/4 v0, 0x0

    .line 710
    .local v0, "isRequest":Z
    iget-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isNetWorkAvailable:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isMzStoreExist:Z

    if-eqz v1, :cond_1

    .line 711
    const/4 v0, 0x1

    .line 713
    :cond_1
    iget-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isSystemApp:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->isUpdatePkg:Z

    if-eqz v1, :cond_3

    .line 714
    :cond_2
    const/4 v0, 0x0

    .line 716
    :cond_3
    if-eqz v0, :cond_4

    .line 717
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApkInfoFromMzAppCenter()V

    .line 725
    :goto_0
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->archiveFilePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateSafeScan(Ljava/lang/String;)V

    .line 726
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->bindPermissionService()V

    .line 727
    return-void

    .line 719
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->initOriginPermView(Z)V

    .line 720
    const-string v1, "PackageInstaller"

    const-string v2, "show permission view."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iput-boolean v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsQueryInstallTypeDone:Z

    .line 722
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->onQueryPkgInfoFinish()V

    goto :goto_0
.end method

.method private startVirusScanAnim(Z)V
    .locals 4
    .param p1, "isStart"    # Z

    .prologue
    .line 1338
    if-eqz p1, :cond_0

    .line 1339
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1340
    .local v0, "rAlphAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1341
    new-instance v1, Lcom/android/packageinstaller/PackageInstallerActivity$21;

    invoke-direct {v1, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$21;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1362
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1366
    .end local v0    # "rAlphAnimation":Landroid/view/animation/AlphaAnimation;
    :goto_0
    return-void

    .line 1364
    :cond_0
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0
.end method

.method private uninstallPackageForReplace(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/meizu/safe/security/utils/Utils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 605
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_0

    .line 624
    :goto_0
    return-void

    .line 609
    :cond_0
    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$PackageDeleteObserver;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    .line 611
    .local v0, "deleteObserver":Lcom/android/packageinstaller/PackageInstallerActivity$PackageDeleteObserver;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 614
    :try_start_0
    const-string v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 616
    .local v2, "iPackageManager":Landroid/content/pm/IPackageManager;
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v6, 0x2

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    .end local v2    # "iPackageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v1

    .line 619
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "PackageInstaller"

    const-string v5, "Failed to talk to package manager"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 622
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    goto :goto_0
.end method

.method private unregPkgInstallReceiver()V
    .locals 4

    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregPkgInstallReceiver() Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateBtnStatus(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const v6, #com.android.packageinstaller:string@btn_next_step#t

    const v5, #com.android.packageinstaller:string@done#t

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 787
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnNegative:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnPositive:Landroid/view/MenuItem;

    if-nez v1, :cond_1

    .line 788
    :cond_0
    const-string v1, "PackageInstaller"

    const-string v2, "updateBtnStatus null ????"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_0
    return-void

    .line 792
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 829
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->showMenuItem(Z)V

    .line 830
    iget v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 832
    :pswitch_2
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnPositive:Landroid/view/MenuItem;

    const v2, #com.android.packageinstaller:string@continue_confirm#t

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 795
    :pswitch_3
    const v1, #com.android.packageinstaller:id@install_done_hint#t

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 796
    .local v0, "installDone":Landroid/view/ViewGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 797
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installing:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 800
    invoke-direct {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->showMenuItem(Z)V

    .line 801
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnNegative:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 802
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnPositive:Landroid/view/MenuItem;

    const v2, #com.android.packageinstaller:string@launch#t

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 805
    .end local v0    # "installDone":Landroid/view/ViewGroup;
    :pswitch_4
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installing:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 806
    invoke-direct {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->showMenuItem(Z)V

    .line 807
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnPositive:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 810
    :pswitch_5
    invoke-direct {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->showMenuItem(Z)V

    goto :goto_0

    .line 814
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->showMenuItem(Z)V

    .line 815
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnPositive:Landroid/view/MenuItem;

    const v2, #com.android.packageinstaller:string@continue_confirm#t

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 816
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnPositive:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 819
    :pswitch_7
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->finishTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 820
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installing:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 821
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installing:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installing:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 823
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->finishTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 824
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->animButton:Lcom/meizu/common/AnimDownloadProgressButton;

    invoke-virtual {v1, v4}, Lcom/meizu/common/AnimDownloadProgressButton;->setVisibility(I)V

    .line 825
    invoke-direct {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->showMenuItem(Z)V

    goto/16 :goto_0

    .line 836
    :pswitch_8
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnPositive:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 839
    :pswitch_9
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->finishTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 840
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installing:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 841
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installing:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 842
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installing:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 843
    invoke-direct {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->showMenuItem(Z)V

    goto/16 :goto_0

    .line 846
    :pswitch_a
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnPositive:Landroid/view/MenuItem;

    const v2, #com.android.packageinstaller:string@btn_install_mz_edition#t

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 792
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch

    .line 830
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private uploadPermStatusOnFinish()V
    .locals 9

    .prologue
    .line 2559
    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    if-nez v6, :cond_0

    .line 2578
    :goto_0
    return-void

    .line 2562
    :cond_0
    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->appItem:Lcom/meizu/permissioncommon/AppItem;

    iget-object v5, v6, Lcom/meizu/permissioncommon/AppItem;->security:Ljava/util/LinkedHashMap;

    .line 2563
    .local v5, "security":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/meizu/permissioncommon/SecurityItem;>;"
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2564
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2566
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "apkname"

    iget-object v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2567
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2568
    .local v2, "key":Ljava/lang/Integer;
    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/permissioncommon/SecurityItem;

    .line 2569
    .local v1, "item":Lcom/meizu/permissioncommon/SecurityItem;
    iget v6, v1, Lcom/meizu/permissioncommon/SecurityItem;->id:I

    const/16 v7, 0x41

    if-ne v6, v7, :cond_2

    .line 2570
    const-string v6, "auto_run"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/meizu/permissioncommon/SecurityItem;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2571
    :cond_2
    iget v6, v1, Lcom/meizu/permissioncommon/SecurityItem;->id:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_3

    .line 2572
    const-string v6, "post_notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/meizu/permissioncommon/SecurityItem;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2573
    :cond_3
    iget v6, v1, Lcom/meizu/permissioncommon/SecurityItem;->id:I

    const/16 v7, 0x18

    if-ne v6, v7, :cond_1

    .line 2574
    const-string v6, "alert_window"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/meizu/permissioncommon/SecurityItem;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2577
    .end local v1    # "item":Lcom/meizu/permissioncommon/SecurityItem;
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_4
    const-string v6, "permission_setting"

    invoke-static {p0, v6, v4}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method private uploadRecommendationsUseTime()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 2882
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isRecomendationAppShowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2883
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->setSourceUpLoadDataParams()Ljava/util/HashMap;

    move-result-object v0

    .line 2885
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->stopTimeCount:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 2886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installStartTime:J

    sub-long v2, v4, v6

    .line 2887
    .local v2, "recomUseTime":J
    iget-wide v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->stopTimeCount:J

    sub-long/2addr v2, v4

    .line 2895
    :goto_0
    const-string v1, "PackageInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recom use time, stopTimeCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->stopTimeCount:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " recomUseTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    const-string v1, "common_data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2897
    const-string v1, "recom_use_time"

    invoke-static {p0, v1, v0}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2899
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "recomUseTime":J
    :cond_0
    return-void

    .line 2889
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-wide v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pageStopTime:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    .line 2890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pageStopTime:J

    sub-long v2, v4, v6

    .restart local v2    # "recomUseTime":J
    goto :goto_0

    .line 2892
    .end local v2    # "recomUseTime":J
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->installStartTime:J

    sub-long v2, v4, v6

    .restart local v2    # "recomUseTime":J
    goto :goto_0
.end method

.method private virusScanTimeCheck()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1874
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanWaittingTime:J

    .line 1875
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    iget-boolean v1, v1, Lcom/meizu/safe/security/bean/MzStoreAppInfo;->vrcSwitch:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    iget-object v1, v1, Lcom/meizu/safe/security/bean/MzStoreAppInfo;->vrc_timer_key:[I

    if-eqz v1, :cond_0

    .line 1876
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1878
    .local v0, "random":Ljava/util/Random;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->SCAN_TIMEOUT_TIME:I

    .line 1880
    const-string v1, "PackageInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "virusScanTimeCheck radom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->SCAN_TIMEOUT_TIME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->SCAN_TIMEOUT_TIME:I

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    iget-object v2, v2, Lcom/meizu/safe/security/bean/MzStoreAppInfo;->vrc_timer_key:[I

    aget v2, v2, v4

    if-gt v1, v2, :cond_1

    .line 1882
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    iget-object v1, v1, Lcom/meizu/safe/security/bean/MzStoreAppInfo;->vrc_timer_value:[I

    aget v1, v1, v4

    iput v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->SCAN_TIMEOUT_TIME:I

    .line 1888
    :goto_0
    const-string v1, "PackageInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scan waite time set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->SCAN_TIMEOUT_TIME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    .end local v0    # "random":Ljava/util/Random;
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/packageinstaller/PackageInstallerActivity$25;

    invoke-direct {v2, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$25;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanTimeCountThread:Ljava/lang/Thread;

    .line 1904
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanTimeCountThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1905
    return-void

    .line 1883
    .restart local v0    # "random":Ljava/util/Random;
    :cond_1
    iget v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->SCAN_TIMEOUT_TIME:I

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    iget-object v2, v2, Lcom/meizu/safe/security/bean/MzStoreAppInfo;->vrc_timer_key:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    iget-object v3, v3, Lcom/meizu/safe/security/bean/MzStoreAppInfo;->vrc_timer_key:[I

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_2

    .line 1884
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    iget-object v1, v1, Lcom/meizu/safe/security/bean/MzStoreAppInfo;->vrc_timer_value:[I

    aget v1, v1, v5

    iput v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->SCAN_TIMEOUT_TIME:I

    goto :goto_0

    .line 1886
    :cond_2
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mzStoreAppInfo:Lcom/meizu/safe/security/bean/MzStoreAppInfo;

    iget-object v1, v1, Lcom/meizu/safe/security/bean/MzStoreAppInfo;->vrc_timer_value:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->SCAN_TIMEOUT_TIME:I

    goto :goto_0
.end method


# virtual methods
.method public appsec_seclist_data()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/safe/security/factory/ViewFactory$SecData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->appItem:Lcom/meizu/permissioncommon/AppItem;

    iget-object v0, v0, Lcom/meizu/permissioncommon/AppItem;->security:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/meizu/safe/security/factory/ViewFactory;->appsec_seclist_data(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 1958
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 1959
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1960
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 2061
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    .line 2062
    invoke-virtual {p0, v0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->overridePendingTransition(II)V

    .line 2063
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 2373
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 2066
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2104
    :cond_0
    :goto_0
    return-void

    .line 2068
    :sswitch_0
    iget v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    if-eq v1, v4, :cond_1

    .line 2069
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2071
    :cond_1
    iget v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    if-ne v1, v4, :cond_2

    .line 2072
    invoke-static {p0}, Lcom/meizu/safe/security/utils/FakeAPKIdentifyUtils;->gotoMzStoreMain(Landroid/content/Context;)V

    .line 2073
    const-string v1, "click_start_mstore"

    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUpLoadDataParams(Z)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 2075
    :cond_2
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->appNameString:Ljava/lang/String;

    invoke-static {p0, v1, v2, v4, v4}, Lcom/meizu/safe/security/utils/FakeAPKIdentifyUtils;->gotoMzAppMarketForDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2076
    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUpLoadDataParams(Z)Ljava/util/HashMap;

    move-result-object v0

    .line 2077
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "scan_end"

    iget-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIsVirusCheckFinish:Z

    if-eqz v1, :cond_3

    const-string v1, "1"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    const-string v1, "wait_time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanWaittingTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    const-string v1, "click_mstore"

    invoke-static {p0, v1, v0}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 2077
    :cond_3
    const-string v1, "0"

    goto :goto_1

    .line 2083
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_1
    const-string v1, "PackageInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click btn_handle_warning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    iget v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    .line 2085
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->appNameString:Ljava/lang/String;

    invoke-static {p0, v1, v2, v4, v4}, Lcom/meizu/safe/security/utils/FakeAPKIdentifyUtils;->gotoMzAppMarketForDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2086
    const-string v1, "click_fail2mstore"

    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUpLoadDataParams(Z)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2088
    :cond_4
    iget v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    if-nez v1, :cond_6

    .line 2089
    :cond_5
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->continuePermConfirm()V

    .line 2090
    const-string v1, "click_continue"

    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUpLoadDataParams(Z)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2091
    :cond_6
    iget v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pkgType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 2092
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->doDelete()V

    .line 2093
    const-string v1, "click_clear"

    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUpLoadDataParams(Z)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2098
    :sswitch_2
    const-string v1, "click_done"

    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUpLoadDataParams(Z)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2099
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    goto/16 :goto_0

    .line 2066
    :sswitch_data_0
    .sparse-switch
        #com.android.packageinstaller:id@installing_hint#t -> :sswitch_2
        #com.android.packageinstaller:id@btn_handle_warning#t -> :sswitch_1
        #com.android.packageinstaller:id@btn_goto_mz_store#t -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 1038
    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1039
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/packageinstaller/PackageInstallerActivity;->installed:Z

    .line 1040
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/meizu/safe/security/helper/ShowHelper;->mContext:Landroid/content/Context;

    .line 1043
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 1044
    .local v15, "intent":Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    .line 1045
    const-string v3, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    .line 1046
    const-string v3, "android.intent.extra.REFERRER"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    .line 1047
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 1048
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScheme:Z

    .line 1049
    const-string v3, "install_apps_pref"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mNotificationPreferences:Landroid/content/SharedPreferences;

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 1052
    .local v17, "scheme":Ljava/lang/String;
    if-eqz v17, :cond_0

    const-string v3, "file"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "content"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "package"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1054
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected scheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1057
    :cond_0
    const-string v3, "package"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1059
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3040

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1064
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    if-nez v3, :cond_1

    .line 1065
    const-string v3, "PackageInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not available. Discontinuing installation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    .line 1068
    const/4 v3, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    .line 1158
    :goto_1
    return-void

    .line 1071
    :cond_1
    new-instance v3, Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/packageinstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    .line 1073
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v3, v3, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->appNameString:Ljava/lang/String;

    .line 1098
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->archiveFilePath:Ljava/lang/String;

    .line 1099
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    if-nez v3, :cond_3

    .line 1100
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->archiveFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    .line 1102
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    if-nez v3, :cond_4

    .line 1103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    invoke-static {v3}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    .line 1105
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    if-nez v3, :cond_5

    const-string v3, "content"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1106
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/packageinstaller/PackageInstallerActivity;->saveFile(Landroid/content/Intent;)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->savedPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->archiveFilePath:Ljava/lang/String;

    .line 1112
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUiOptions(I)V

    .line 1113
    const v3, #com.android.packageinstaller:layout@install_start#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->setContentView(I)V

    .line 1114
    const v3, #com.android.packageinstaller:id@action_bar_container#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1115
    .local v12, "actionBarView":Landroid/view/View;
    if-eqz v12, :cond_6

    .line 1116
    const/16 v3, 0x8

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 1119
    .local v2, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v2, :cond_7

    .line 1120
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #com.android.packageinstaller:drawable@mz_smartbar_background_grey#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1121
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeRom()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1122
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setSplitBarFitSystemWindows(Z)V

    .line 1125
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initOnScanView()V

    .line 1128
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/packageinstaller/PackageInstallerActivity;->getOriginatingUid(Landroid/content/Intent;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    .line 1129
    const/16 v16, 0x0

    .line 1131
    .local v16, "pkgs":[Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    .line 1135
    :goto_3
    if-eqz v16, :cond_8

    move-object/from16 v0, v16

    array-length v3, v0

    if-lez v3, :cond_8

    .line 1136
    const/4 v3, 0x0

    aget-object v3, v16, v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPkgName:Ljava/lang/String;

    .line 1137
    const-string v3, "PackageInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOriginatingPkgName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v13

    .line 1142
    .local v13, "callerPackage":Ljava/lang/String;
    if-eqz v13, :cond_9

    const-string v3, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1145
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    .line 1146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_9

    .line 1147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    .line 1149
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1153
    :catch_0
    move-exception v3

    .line 1157
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->checkForUnkownSource()V

    goto/16 :goto_1

    .line 1075
    .end local v2    # "actionBar":Landroid/support/v7/app/ActionBar;
    .end local v12    # "actionBarView":Landroid/view/View;
    .end local v13    # "callerPackage":Ljava/lang/String;
    .end local v16    # "pkgs":[Ljava/lang/String;
    :cond_a
    const-string v3, "content"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1078
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    .line 1080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    invoke-static {v3}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    .line 1083
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    if-nez v3, :cond_b

    .line 1084
    const-string v3, "PackageInstaller"

    const-string v4, "Parse error when parsing manifest. Discontinuing installation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    .line 1086
    const/4 v3, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    goto/16 :goto_1

    .line 1090
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    const/4 v4, 0x0

    const/16 v5, 0x1040

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    new-instance v11, Landroid/content/pm/PackageUserState;

    invoke-direct {v11}, Landroid/content/pm/PackageUserState;-><init>()V

    invoke-static/range {v3 .. v11}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLandroid/util/ArraySet;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    .line 1095
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v3, v3, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->appNameString:Ljava/lang/String;

    goto/16 :goto_2

    .line 1132
    .restart local v2    # "actionBar":Landroid/support/v7/app/ActionBar;
    .restart local v12    # "actionBarView":Landroid/view/View;
    .restart local v16    # "pkgs":[Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 1133
    .local v14, "e":Ljava/lang/Exception;
    const-string v3, "PackageInstaller"

    const-string v4, ""

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1062
    .end local v2    # "actionBar":Landroid/support/v7/app/ActionBar;
    .end local v12    # "actionBarView":Landroid/view/View;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "pkgs":[Ljava/lang/String;
    :catch_2
    move-exception v3

    goto/16 :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 21
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 395
    packed-switch p1, :pswitch_data_0

    .line 600
    const/4 v15, 0x0

    :goto_0
    return-object v15

    .line 397
    :pswitch_0
    const v12, #com.android.packageinstaller:string@dlg_app_replacement_statement#t

    .line 400
    .local v12, "msgId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_0

    .line 401
    const v12, #com.android.packageinstaller:string@dlg_sys_app_replacement_statement#t

    .line 403
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mVersionNameOld:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 404
    .local v14, "oldVer":Ljava/lang/String;
    const/4 v10, 0x0

    .line 405
    .local v10, "message":Ljava/lang/String;
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v16, Lcom/flyme/internal/R$drawable;->mz_ic_popup_caution:I

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 408
    .local v6, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    const-string v15, "PackageInstaller"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DLG_REPLACE_APP downgradeFlags "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->downgradeFlags:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " isSystemApp "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->isSystemApp:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->downgradeFlags:Z

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->isSystemApp:Z

    if-nez v15, :cond_3

    .line 410
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "null"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@downgrade_install_statement#t

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 414
    :cond_1
    const v15, #com.android.packageinstaller:string@continue_confirm#t

    new-instance v16, Lcom/android/packageinstaller/PackageInstallerActivity$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$4;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@cancel#t

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$3;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 457
    :goto_1
    if-eqz v10, :cond_2

    .line 458
    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 460
    :cond_2
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    goto/16 :goto_0

    .line 430
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getInstallVersionName()Ljava/lang/String;

    move-result-object v13

    .line 432
    .local v13, "newVer":Ljava/lang/String;
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "null"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "null"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->appNameString:Ljava/lang/String;

    if-eqz v15, :cond_5

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@version_text_message#t

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->appNameString:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v14, v17, v18

    const/16 v18, 0x2

    aput-object v13, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 444
    :cond_4
    :goto_2
    const v15, #com.android.packageinstaller:string@continue_confirm#t

    new-instance v16, Lcom/android/packageinstaller/PackageInstallerActivity$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$6;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@cancel#t

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$5;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 440
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@version_text_message#t

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->packageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v14, v17, v18

    const/16 v18, 0x2

    aput-object v13, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 462
    .end local v6    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    .end local v10    # "message":Ljava/lang/String;
    .end local v12    # "msgId":I
    .end local v13    # "newVer":Ljava/lang/String;
    .end local v14    # "oldVer":Ljava/lang/String;
    :pswitch_1
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, #com.android.packageinstaller:string@unknown_apps_dlg_title#t

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    sget v16, Lcom/flyme/internal/R$drawable;->mz_ic_popup_caution:I

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@unknown_apps_dlg_text#t

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@cancel#t

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$8;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@settings#t

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$7;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    goto/16 :goto_0

    .line 484
    :pswitch_2
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, #com.android.packageinstaller:string@unknown_apps_dlg_title#t

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@unknown_apps_admin_dlg_text#t

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x104000a

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$9;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    goto/16 :goto_0

    .line 495
    :pswitch_3
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, #com.android.packageinstaller:string@Parse_error_dlg_title#t

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@Parse_error_dlg_text#t

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    sget v16, Lcom/flyme/internal/R$drawable;->mz_ic_popup_caution:I

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@ok#t

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$10;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    goto/16 :goto_0

    .line 509
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 510
    .local v2, "appTitle":Ljava/lang/CharSequence;
    const v15, #com.android.packageinstaller:string@out_of_space_dlg_text#t

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 512
    .local v7, "dlgText":Ljava/lang/String;
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, #com.android.packageinstaller:string@out_of_space_dlg_title#t

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    sget v16, Lcom/flyme/internal/R$drawable;->mz_ic_popup_caution:I

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@manage_applications#t

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$12;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$12;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@cancel#t

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$11;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$11;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    goto/16 :goto_0

    .line 538
    .end local v2    # "appTitle":Ljava/lang/CharSequence;
    .end local v7    # "dlgText":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 539
    .local v3, "appTitle1":Ljava/lang/CharSequence;
    const v15, #com.android.packageinstaller:string@install_failed_msg#t

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 541
    .local v8, "dlgText1":Ljava/lang/String;
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, #com.android.packageinstaller:string@install_failed#t

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    sget v16, Lcom/flyme/internal/R$drawable;->mz_ic_popup_caution:I

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@ok#t

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$13;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$13;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    goto/16 :goto_0

    .line 553
    .end local v3    # "appTitle1":Ljava/lang/CharSequence;
    .end local v8    # "dlgText1":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 554
    .local v4, "appTitle2":Ljava/lang/CharSequence;
    const v15, #com.android.packageinstaller:string@allow_source_dlg_text#t

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 556
    .local v9, "dlgText2":Ljava/lang/String;
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, #com.android.packageinstaller:string@allow_source_dlg_title#t

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    sget v16, Lcom/flyme/internal/R$drawable;->mz_ic_popup_caution:I

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@cancel#t

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$15;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$15;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@ok#t

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$14;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$14;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    goto/16 :goto_0

    .line 578
    .end local v4    # "appTitle2":Ljava/lang/CharSequence;
    .end local v9    # "dlgText2":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@text_virus_install_confirm#t

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 579
    .local v11, "msg":Ljava/lang/String;
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, #com.android.packageinstaller:string@text_virus_install_confirm_tips#t

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    sget v16, Lcom/flyme/internal/R$drawable;->mz_ic_popup_caution:I

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@ok#t

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$17;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$17;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, #com.android.packageinstaller:string@cancel#t

    new-instance v17, Lcom/android/packageinstaller/PackageInstallerActivity$16;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity$16;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 597
    .local v5, "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    goto/16 :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mMenu:Landroid/view/Menu;

    .line 741
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, #com.android.packageinstaller:menu@menu_split_action_bar#i

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 742
    const v1, #com.android.packageinstaller:id@action_negative#t

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnNegative:Landroid/view/MenuItem;

    .line 743
    const v1, #com.android.packageinstaller:id@action_positive#t

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mBtnPositive:Landroid/view/MenuItem;

    .line 744
    const v1, #com.android.packageinstaller:id@mz_action_menu_view#t

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 745
    .local v0, "menuView":Landroid/support/v7/widget/ActionMenuView;
    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->setButtonBarStyleDivider()V

    .line 748
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->updateBtnStatus(I)V

    .line 749
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1910
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 1912
    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    .line 1914
    :cond_0
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->uploadPermStatusOnFinish()V

    .line 1920
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->fromEmailInstall:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->file:Ljava/io/File;

    if-eqz v2, :cond_2

    .line 1921
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1922
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1926
    :cond_2
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSc:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_3

    .line 1928
    :try_start_0
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSc:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1933
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSc_permission:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_4

    .line 1935
    :try_start_1
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSc_permission:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1940
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    if-eqz v2, :cond_5

    .line 1941
    iput-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    .line 1945
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanTimeCountThread:Ljava/lang/Thread;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanTimeCountThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1946
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanTimeCountThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1947
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanTimeCountThread:Ljava/lang/Thread;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1953
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->unregPkgInstallReceiver()V

    .line 1954
    return-void

    .line 1915
    :cond_7
    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isRecomendationAppShowed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1917
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->uploadRecommendationsUseTime()V

    goto :goto_0

    .line 1929
    :catch_0
    move-exception v1

    .line 1930
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1936
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1937
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1949
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1950
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStop stop time count thread Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 764
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 765
    .local v0, "id":I
    const v2, #com.android.packageinstaller:id@action_negative#t

    if-ne v0, v2, :cond_8

    .line 766
    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    if-ge v2, v3, :cond_4

    .line 767
    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUpLoadDataParams(Z)Ljava/util/HashMap;

    move-result-object v1

    .line 768
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 769
    :cond_0
    const-string v2, "wait_time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->scanWaittingTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_1
    const-string v2, "click_first_cancel"

    invoke-static {p0, v2, v1}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 779
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    .line 783
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 772
    :cond_4
    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    if-ne v2, v3, :cond_5

    .line 773
    const-string v2, "click_second_cancel"

    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUpLoadDataParams(Z)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 774
    :cond_5
    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 775
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->uploadRecommendationsUseTime()V

    goto :goto_0

    .line 776
    :cond_6
    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 777
    :cond_7
    const-string v2, "click_done"

    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->setUpLoadDataParams(Z)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/meizu/safe/security/utils/Mtj;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 780
    :cond_8
    const v2, #com.android.packageinstaller:id@action_positive#t

    if-ne v0, v2, :cond_3

    .line 781
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->doPositiveBtnClick()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 1175
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 1176
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 1162
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 1163
    const-string v2, "PackageInstaller"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1165
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isRecomendationAppShowed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pageStopTime:J

    sub-long v0, v2, v4

    .line 1167
    .local v0, "stopTime":J
    iget-wide v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->stopTimeCount:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->stopTimeCount:J

    .line 1168
    const-string v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume, pageStopTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->stopTimeCount:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    .end local v0    # "stopTime":J
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 2680
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 2682
    invoke-static {p0}, Lcom/meizu/safe/security/utils/Mtj;->getUsageStatsProxy(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    const-string v1, "page_packageInstallerActivity"

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 2683
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 1964
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 1966
    invoke-static {p0}, Lcom/meizu/safe/security/utils/Mtj;->getUsageStatsProxy(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    const-string v1, "page_packageInstallerActivity"

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 1967
    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurInstallState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isRecomendationAppShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pageStopTime:J

    .line 1970
    const-string v0, "PackageInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageStopTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->pageStopTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    :cond_0
    return-void
.end method

.method setPmResult(I)V
    .locals 3
    .param p1, "pmResult"    # I

    .prologue
    const/4 v1, 0x1

    .line 730
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 731
    .local v0, "result":Landroid/content/Intent;
    const-string v2, "android.intent.extra.INSTALL_RESULT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 732
    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->setResult(ILandroid/content/Intent;)V

    .line 734
    return-void
.end method
