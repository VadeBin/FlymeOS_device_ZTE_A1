.class public Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;
.super Ljava/lang/Object;
.source "ViaPolicyManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ViaPolicyManager"

.field private static final VIA_GPS_PROCESS_CLASS_NAME:Ljava/lang/String; = "com.mediatek.internal.telephony.cdma.ViaGpsProcess"

.field private static final VIA_PLUS_CODE_IMPL_CLASS_NAME:Ljava/lang/String; = "com.mediatek.internal.telephony.cdma.ViaPlusCodeUtils"

.field private static final VIA_SMS_INTERFACES_IMPL_CLASS_NAME:Ljava/lang/String; = "com.mediatek.internal.telephony.cdma.ViaSmsInterfacesAdapter"

.field private static final VIA_UTKSERVICE_IMPL_CLASS_NAME:Ljava/lang/String; = "com.android.internal.telephony.cdma.utk.UtkService"

.field private static final mLock:Ljava/lang/Object;

.field private static sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

.field private static sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

.field private static sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

.field private static sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disposeUtkService(I)V
    .locals 3
    .param p0, "mPhoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlusCodeUtils dispose UtkService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 135
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/cdma/IUtkService;->dispose()V

    .line 136
    sput-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 138
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/cdma/IUtkService;->dispose()V

    .line 139
    sput-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlusCodeUtils no need to dispose UtkService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getGpsProcess(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/cdma/IGpsProcess;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 156
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeGpsProcess(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

    move-result-object v0

    .line 157
    .local v0, "gpsProcessInstance":Lcom/mediatek/internal/telephony/cdma/IGpsProcess;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGpsProcess gpsProcessInstance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 158
    return-object v0
.end method

.method public static getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    if-nez v0, :cond_1

    .line 62
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makePlusCodeUtis()Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    .line 66
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlusCodeUtils sPlusCodeUtilsInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    if-nez v0, :cond_1

    .line 79
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    .line 83
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlusCodeUtils sSmsInterfacesInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;
    .locals 5
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v2, 0x0

    .line 99
    if-nez p2, :cond_0

    .line 100
    const-string v3, "getPlusCodeUtils getUtkService ic == null"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-object v2

    .line 103
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v1

    .line 104
    .local v1, "mPhoneId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlusCodeUtils getUtkService mPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 105
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 106
    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v0, :cond_1

    .line 107
    const-string v3, "getPlusCodeUtils getUtkService ca == null"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    if-nez v1, :cond_4

    .line 111
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-nez v2, :cond_3

    .line 112
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 113
    :try_start_0
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-nez v2, :cond_2

    .line 114
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    .line 116
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlusCodeUtils sUtkServiceInstanceSim1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 119
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 121
    :cond_4
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-nez v2, :cond_6

    .line 122
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 123
    :try_start_2
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-nez v2, :cond_5

    .line 124
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    .line 126
    :cond_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlusCodeUtils sUtkServiceInstanceSim2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 129
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    goto/16 :goto_0

    .line 126
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 242
    const-string v0, "ViaPolicyManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method private static makeGpsProcess(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/cdma/IGpsProcess;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 218
    :try_start_0
    const-string v3, "com.mediatek.internal.telephony.cdma.ViaGpsProcess"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 219
    .local v2, "gpsProcessClass":Ljava/lang/Class;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lcom/android/internal/telephony/CommandsInterface;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 221
    .local v0, "c":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 222
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/cdma/IGpsProcess;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 237
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    .end local v2    # "gpsProcessClass":Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const-string v3, "createGpsProcess ClassNotFoundException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 225
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 226
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 227
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    const-string v3, "createGpsProcess IllegalAccessException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 228
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 229
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 230
    .local v1, "ex":Ljava/lang/InstantiationException;
    const-string v3, "createGpsProcess InstantiationException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 231
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 232
    .end local v1    # "ex":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 233
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    const-string v3, "createGpsProcess NoSuchMethodException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 234
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 235
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 236
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "createGpsProcess InvocationTargetException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 237
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0
.end method

.method private static makePlusCodeUtis()Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    .locals 3

    .prologue
    .line 163
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.cdma.ViaPlusCodeUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 164
    .local v1, "policyClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 173
    :goto_0
    return-object v2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string v2, "makePlusCodeUtis ClassNotFoundException, return default DefaultPlusCodeUtils"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 167
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;-><init>()V

    goto :goto_0

    .line 168
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 169
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v2, "makePlusCodeUtis IllegalAccessException, return default DefaultPlusCodeUtils"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 170
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;-><init>()V

    goto :goto_0

    .line 171
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/InstantiationException;
    const-string v2, "makePlusCodeUtis InstantiationException, return default DefaultPlusCodeUtils"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 173
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;-><init>()V

    goto :goto_0
.end method

.method private static makeSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    .locals 3

    .prologue
    .line 179
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.cdma.ViaSmsInterfacesAdapter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 180
    .local v1, "policyClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 189
    :goto_0
    return-object v2

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string v2, "makeSmsInterfaces ClassNotFoundException, return default DefaultSmsInterfaces"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 183
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;-><init>()V

    goto :goto_0

    .line 184
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 185
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v2, "makeSmsInterfaces IllegalAccessException, return default DefaultSmsInterfaces"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 186
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;-><init>()V

    goto :goto_0

    .line 187
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 188
    .local v0, "ex":Ljava/lang/InstantiationException;
    const-string v2, "makeSmsInterfaces InstantiationException, return default DefaultSmsInterfaces"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 189
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;-><init>()V

    goto :goto_0
.end method

.method private static makeUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;
    .locals 7
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 196
    :try_start_0
    const-string v3, "com.android.internal.telephony.cdma.utk.UtkService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 197
    .local v2, "policyClass":Ljava/lang/Class;
    const-string v3, "getInstance"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/android/internal/telephony/CommandsInterface;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Lcom/android/internal/telephony/uicc/UiccCard;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 199
    .local v1, "mUtkMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/cdma/IUtkService;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 211
    .end local v1    # "mUtkMethod":Ljava/lang/reflect/Method;
    .end local v2    # "policyClass":Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string v3, "makeUtkService ClassNotFoundException, return default DefaultUtkService"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 202
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    goto :goto_0

    .line 203
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 204
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v3, "makeUtkService IllegalAccessException, return default DefaultUtkService"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 205
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    goto :goto_0

    .line 206
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 207
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const-string v3, "makeUtkService NoSuchMethodException, return default DefaultUtkService"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 208
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    goto :goto_0

    .line 209
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "makeUtkService InvocationTargetException, return default DefaultUtkService"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 211
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    goto :goto_0
.end method
