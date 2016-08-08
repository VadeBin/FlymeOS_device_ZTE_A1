.class public Lcom/zte/ZTESecurity/ZTESecurity;
.super Ljava/lang/Object;
.source "ZTESecurity.java"


# static fields
.field private static final DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "ZTESecurity"

.field private static mService:Lcom/zte/privacy/IZTEPrivacyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/ZTESecurity/ZTESecurity;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCallingPermission(Ljava/lang/String;I)I
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 167
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecurity;->getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v1

    .line 168
    .local v1, "privacyService":Lcom/zte/privacy/IZTEPrivacyManager;
    if-nez v1, :cond_0

    .line 169
    const/4 v2, 0x0

    .line 175
    :goto_0
    return v2

    .line 172
    :cond_0
    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/zte/privacy/IZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 34
    const-string v0, "iphonesubinfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->getIphonesubinfo(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 38
    :cond_0
    const-string v0, "isms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->getIsms(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_1
    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->getIpackage(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_2
    const-string v0, "location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->getIlocation(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->getIphone(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_4
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 56
    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->getIWifi(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_5
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 60
    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->getIBluetooth(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_6
    const-string v0, "bluetooth_manager"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->getIBluetoothManager(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_7
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    invoke-static {p1}, Lcom/zte/ZTESecurity/ZTESecurity;->getIConnectivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIBluetooth(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p0, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 131
    new-instance v0, Lcom/zte/ZTESecurity/ZTEBluetoothService;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTEBluetoothService;-><init>(Landroid/os/IBinder;)V

    .line 133
    .local v0, "mBinder":Lcom/zte/ZTESecurity/ZTEBluetoothService;
    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTEBluetoothService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static getIBluetoothManager(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p0, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 139
    new-instance v0, Lcom/zte/ZTESecurity/ZTEBluetoothManagerService;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTEBluetoothManagerService;-><init>(Landroid/os/IBinder;)V

    .line 141
    .local v0, "mBinder":Lcom/zte/ZTESecurity/ZTEBluetoothManagerService;
    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTEBluetoothManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static getIConnectivity(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p0, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 148
    new-instance v0, Lcom/zte/ZTESecurity/ZTEConnectivityService;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTEConnectivityService;-><init>(Landroid/os/IBinder;)V

    .line 150
    .local v0, "mBinder":Lcom/zte/ZTESecurity/ZTEConnectivityService;
    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTEConnectivityService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static getIWifi(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p0, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 122
    new-instance v0, Lcom/zte/ZTESecurity/ZTEWifiService;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTEWifiService;-><init>(Landroid/os/IBinder;)V

    .line 124
    .local v0, "mBinder":Lcom/zte/ZTESecurity/ZTEWifiService;
    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTEWifiService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static getIlocation(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p0, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 104
    new-instance v0, Lcom/zte/ZTESecurity/ZTELocationManager;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTELocationManager;-><init>(Landroid/os/IBinder;)V

    .line 106
    .local v0, "mBinder":Lcom/zte/ZTESecurity/ZTELocationManager;
    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTELocationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static getIpackage(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p0, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 95
    new-instance v0, Lcom/zte/ZTESecurity/ZTEPackageManager;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTEPackageManager;-><init>(Landroid/os/IBinder;)V

    .line 97
    .local v0, "mBinder":Lcom/zte/ZTESecurity/ZTEPackageManager;
    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTEPackageManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static getIphone(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p0, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 113
    new-instance v0, Lcom/zte/ZTESecurity/ZTETelephony;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTETelephony;-><init>(Landroid/os/IBinder;)V

    .line 115
    .local v0, "mBinder":Lcom/zte/ZTESecurity/ZTETelephony;
    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTETelephony;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method private static getIphonesubinfo(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p0, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 77
    new-instance v0, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;-><init>(Landroid/os/IBinder;)V

    .line 79
    .local v0, "mBinder":Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;
    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static getIsms(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p0, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 86
    new-instance v0, Lcom/zte/ZTESecurity/ZTESms;

    invoke-direct {v0, p0}, Lcom/zte/ZTESecurity/ZTESms;-><init>(Landroid/os/IBinder;)V

    .line 88
    .local v0, "mBinder":Lcom/zte/ZTESecurity/ZTESms;
    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTESms;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static getOrigTransport(Landroid/content/IContentProvider;)Landroid/content/IContentProvider;
    .locals 1
    .param p0, "zteTransport"    # Landroid/content/IContentProvider;

    .prologue
    .line 20
    check-cast p0, Lcom/zte/ZTESecurity/ZTETransport;

    .end local p0    # "zteTransport":Landroid/content/IContentProvider;
    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    return-object v0
.end method

.method private static getPrivacyService()Lcom/zte/privacy/IZTEPrivacyManager;
    .locals 2

    .prologue
    .line 157
    sget-object v1, Lcom/zte/ZTESecurity/ZTESecurity;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    if-nez v1, :cond_0

    .line 158
    const-string v1, "privacy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 159
    .local v0, "privacy":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 160
    invoke-static {v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v1

    sput-object v1, Lcom/zte/ZTESecurity/ZTESecurity;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    .line 163
    :cond_0
    sget-object v1, Lcom/zte/ZTESecurity/ZTESecurity;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    return-object v1
.end method

.method public static getTransport(Landroid/content/ContentProvider;Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 1
    .param p0, "cp"    # Landroid/content/ContentProvider;
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 26
    new-instance v0, Lcom/zte/ZTESecurity/ZTETransport;

    invoke-direct {v0, p0, p1}, Lcom/zte/ZTESecurity/ZTETransport;-><init>(Landroid/content/ContentProvider;Landroid/os/IBinder;)V

    .line 27
    .local v0, "newTran":Lcom/zte/ZTESecurity/ZTETransport;
    return-object v0
.end method
