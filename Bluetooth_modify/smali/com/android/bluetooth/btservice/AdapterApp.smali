.class public Lcom/android/bluetooth/btservice/AdapterApp;
.super Landroid/app/Application;
.source "AdapterApp.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterApp"

.field private static sRefCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    .line 38
    const-string v0, "BluetoothAdapterApp"

    const-string v1, "Loading JNI Library"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v0, "bluetooth_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 45
    const-class v1, Lcom/android/bluetooth/btservice/AdapterApp;

    monitor-enter v1

    .line 46
    :try_start_0
    sget v0, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    .line 47
    const-string v0, "BluetoothAdapterApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: Constructed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Instance Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    monitor-exit v1

    .line 50
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 4

    .prologue
    .line 62
    const-class v1, Lcom/android/bluetooth/btservice/AdapterApp;

    monitor-enter v1

    .line 63
    :try_start_0
    sget v0, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    .line 64
    const-string v0, "BluetoothAdapterApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: Finalized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Instance Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    monitor-exit v1

    .line 67
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 55
    const-string v0, "BluetoothAdapterApp"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p0}, Lcom/android/bluetooth/btservice/Config;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method
