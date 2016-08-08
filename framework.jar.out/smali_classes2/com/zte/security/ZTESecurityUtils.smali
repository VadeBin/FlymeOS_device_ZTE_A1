.class public Lcom/zte/security/ZTESecurityUtils;
.super Ljava/lang/Object;
.source "ZTESecurityUtils.java"


# static fields
.field private static final SERVICE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ZTESecurityUtils"

.field private static ZTEPrivacyClass:Ljava/lang/String;

.field private static ZTESecurityClass:Ljava/lang/String;

.field private static ZTESecurityJar:Ljava/lang/String;

.field private static final controlledService:[Ljava/lang/String;

.field private static mLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->mLoader:Ljava/lang/ClassLoader;

    .line 30
    const-string v0, "/system/framework/IZTESecurity.jar:/system/framework/com.zte.ZTESecurity.jar"

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityJar:Ljava/lang/String;

    .line 31
    const-string v0, "com.zte.ZTESecurity.ZTESecurity"

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    .line 32
    const-string v0, "com.zte.privacy.ZTEPrivacyManagerService"

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->ZTEPrivacyClass:Ljava/lang/String;

    .line 34
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iphonesubinfo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iphonesubinfo_msim"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "isms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "isms_msim"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "package"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "phone_msim"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "wifi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bluetooth"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bluetooth_manager"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "connectivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->controlledService:[Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->SERVICE_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ZTECheckCallingPermission(Ljava/lang/String;I)I
    .locals 10
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 81
    const/4 v4, 0x0

    .line 82
    .local v4, "res":I
    if-nez p0, :cond_0

    move v5, v4

    .line 97
    .end local v4    # "res":I
    .local v5, "res":I
    :goto_0
    return v5

    .line 86
    .end local v5    # "res":I
    .restart local v4    # "res":I
    :cond_0
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 87
    .local v3, "loader":Ljava/lang/ClassLoader;
    if-nez v3, :cond_1

    move v5, v4

    .line 88
    .end local v4    # "res":I
    .restart local v5    # "res":I
    goto :goto_0

    .line 91
    .end local v5    # "res":I
    .restart local v4    # "res":I
    :cond_1
    :try_start_0
    sget-object v6, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 92
    .local v1, "cl":Ljava/lang/Class;
    const-string v6, "checkCallingPermission"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 93
    .local v0, "checkCallingPermission":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .end local v0    # "checkCallingPermission":Ljava/lang/reflect/Method;
    .end local v1    # "cl":Ljava/lang/Class;
    :goto_1
    move v5, v4

    .line 97
    .end local v4    # "res":I
    .restart local v5    # "res":I
    goto :goto_0

    .line 94
    .end local v5    # "res":I
    .restart local v4    # "res":I
    :catch_0
    move-exception v2

    .line 95
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "ZTESecurityUtils"

    const-string v7, "catch Exception: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getClassLoader()Ljava/lang/ClassLoader;
    .locals 4

    .prologue
    .line 73
    sget-object v0, Lcom/zte/security/ZTESecurityUtils;->mLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ldalvik/system/PathClassLoader;

    sget-object v1, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityJar:Ljava/lang/String;

    const-string v2, "/system/framework/"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->mLoader:Ljava/lang/ClassLoader;

    .line 77
    :cond_0
    sget-object v0, Lcom/zte/security/ZTESecurityUtils;->mLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getOrigTransport(Landroid/content/IContentProvider;)Landroid/content/IContentProvider;
    .locals 10
    .param p0, "mZTETransport"    # Landroid/content/IContentProvider;

    .prologue
    const/4 v6, 0x0

    .line 101
    const/4 v5, 0x0

    .line 102
    .local v5, "origTransport":Landroid/content/IContentProvider;
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 103
    .local v3, "loader":Ljava/lang/ClassLoader;
    if-nez v3, :cond_0

    .line 113
    :goto_0
    return-object v6

    .line 107
    :cond_0
    :try_start_0
    sget-object v6, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 108
    .local v1, "cl":Ljava/lang/Class;
    const-string v6, "getOrigTransport"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/IContentProvider;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 109
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/content/IContentProvider;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "cl":Ljava/lang/Class;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_1
    move-object v6, v5

    .line 113
    goto :goto_0

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "ZTESecurityUtils"

    const-string v7, " catch Exception: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getZTEProxyService(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 10
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 136
    const/4 v5, 0x0

    .line 138
    .local v5, "proxyService":Landroid/os/IBinder;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/zte/security/ZTESecurityUtils;->isControlledService(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-object v6

    .line 144
    :cond_1
    invoke-static {p0}, Lcom/zte/security/ZTESecurityUtils;->isPhoneService(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 145
    sget-object v7, Lcom/zte/security/ZTESecurityUtils;->SERVICE_MAP:Ljava/util/HashMap;

    invoke-virtual {v7, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "proxyService":Landroid/os/IBinder;
    check-cast v5, Landroid/os/IBinder;

    .line 148
    .restart local v5    # "proxyService":Landroid/os/IBinder;
    :cond_2
    if-nez v5, :cond_4

    .line 149
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 150
    .local v4, "loader":Ljava/lang/ClassLoader;
    if-eqz v4, :cond_0

    .line 154
    :try_start_0
    sget-object v6, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 155
    .local v1, "cl":Ljava/lang/Class;
    const-string v6, "get"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 156
    .local v3, "getProxyService":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object v5, v0

    .line 157
    if-eqz v5, :cond_4

    .line 158
    invoke-static {p0}, Lcom/zte/security/ZTESecurityUtils;->isPhoneService(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 159
    sget-object v6, Lcom/zte/security/ZTESecurityUtils;->SERVICE_MAP:Ljava/util/HashMap;

    invoke-virtual {v6, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v6, v5

    .line 160
    goto :goto_0

    .line 162
    .end local v1    # "cl":Ljava/lang/Class;
    .end local v3    # "getProxyService":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 163
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "ZTESecurityUtils"

    const-string v7, "Catch Exception: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    :cond_4
    move-object v6, v5

    .line 167
    goto :goto_0
.end method

.method public static getZTETransport(Landroid/content/ContentProvider;Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 10
    .param p0, "provider"    # Landroid/content/ContentProvider;
    .param p1, "mTransport"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 117
    const/4 v5, 0x0

    .line 119
    .local v5, "targetTransport":Landroid/content/IContentProvider;
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 120
    .local v3, "loader":Ljava/lang/ClassLoader;
    if-nez v3, :cond_0

    .line 132
    :goto_0
    return-object v6

    .line 125
    :cond_0
    :try_start_0
    sget-object v6, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 126
    .local v1, "cl":Ljava/lang/Class;
    const-string v6, "getTransport"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/ContentProvider;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 127
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/content/IContentProvider;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "cl":Ljava/lang/Class;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_1
    move-object v6, v5

    .line 132
    goto :goto_0

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "ZTESecurityUtils"

    const-string v7, " catch Exception: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static initZTEPrivacyService(Landroid/content/Context;)V
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 172
    .local v2, "loader":Ljava/lang/ClassLoader;
    if-nez v2, :cond_0

    .line 185
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v5, "ZTESecurityUtils"

    const-string v6, "init Privacy Manager Service"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_0
    sget-object v5, Lcom/zte/security/ZTESecurityUtils;->ZTEPrivacyClass:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 179
    .local v0, "cl":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 180
    .local v3, "mConstructor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 181
    .local v4, "privacy":Landroid/os/IBinder;
    const-string v5, "privacy"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v3    # "mConstructor":Ljava/lang/reflect/Constructor;
    .end local v4    # "privacy":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "ZTESecurityUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught exception in initZTEPrivacyService "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isControlledService(Ljava/lang/String;)Z
    .locals 2
    .param p0, "service"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v1, Lcom/zte/security/ZTESecurityUtils;->controlledService:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 65
    sget-object v1, Lcom/zte/security/ZTESecurityUtils;->controlledService:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 69
    :goto_1
    return v1

    .line 64
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isPhoneService(Ljava/lang/String;)Z
    .locals 1
    .param p0, "service"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "iphonesubinfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "iphonesubinfo_msim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "isms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "isms_msim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "phone_msim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
