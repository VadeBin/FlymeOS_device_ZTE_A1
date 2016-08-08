.class public abstract Lcom/android/bluetooth/btservice/ProfileService;
.super Landroid/app/Service;
.source "ProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BLUETOOTH_PRIVILEGED:Ljava/lang/String; = "android.permission.BLUETOOTH_PRIVILEGED"

.field private static final DBG:Z = true

.field private static final PROFILE_SERVICE_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothProfileService"

.field private static sReferenceCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field protected mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

.field private mCleaningUp:Z

.field protected mName:Ljava/lang/String;

.field protected mProfileStarted:Z

.field protected mStartError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mProfileStarted:Z

    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    .line 87
    sget-object v2, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    monitor-enter v2

    .line 88
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 89
    .local v0, "refCount":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 90
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 94
    :goto_0
    sget-object v1, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: CREATED. INSTANCE_COUNT="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    .line 96
    monitor-exit v2

    .line 98
    return-void

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 96
    .end local v0    # "refCount":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doStart(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 230
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "Error starting profile. BluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v0, "start()"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->start()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    .line 235
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v0, :cond_2

    .line 236
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->notifyProfileServiceStateChanged(I)V

    .line 237
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mProfileStarted:Z

    goto :goto_0

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "Error starting profile. BluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doStop(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->stop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "stop()"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    .line 247
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->notifyProfileServiceStateChanged(I)V

    .line 248
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->stopSelf()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mProfileStarted:Z

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "Unable to stop profile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static println(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    return-void
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    return-void
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 102
    sget-object v2, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    monitor-enter v2

    .line 103
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 104
    .local v0, "refCount":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 109
    :goto_0
    sget-object v1, Lcom/android/bluetooth/btservice/ProfileService;->sReferenceCount:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: FINALIZED. INSTANCE_COUNT="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    .line 111
    monitor-exit v2

    .line 113
    return-void

    .line 107
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 111
    .end local v0    # "refCount":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .param p1, "address"    # [B

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
.end method

.method protected isAvailable()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method public notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profileId"    # I
    .param p3, "newState"    # I
    .param p4, "prevState"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 267
    :cond_0
    return-void
.end method

.method protected notifyProfileServiceStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileServiceStateChanged(Ljava/lang/String;I)V

    .line 260
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    const-string v0, "onBind"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "onCreate"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    .line 118
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 119
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 120
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    .line 121
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 122
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService;->addProfile(Lcom/android/bluetooth/btservice/ProfileService;)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v0, "BluetoothProfileService"

    const-string v1, "onCreate, null mAdapterService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    const-string v0, "Destroying service."

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService;->removeProfile(Lcom/android/bluetooth/btservice/ProfileService;)V

    .line 207
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mProfileStarted:Z

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProfileStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mProfileStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service is stopped abnormally."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->notifyProfileServiceStateChanged(I)V

    .line 213
    :cond_1
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    if-eqz v0, :cond_3

    .line 214
    const-string v0, "Cleanup already started... Skipping cleanup()..."

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    .line 224
    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 225
    iput-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 226
    return-void

    .line 216
    :cond_3
    const-string v0, "cleanup()"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mCleaningUp:Z

    .line 218
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->cleanup()Z

    .line 219
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    invoke-interface {v0}, Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;->cleanup()Z

    .line 221
    iput-object v3, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x2

    .line 130
    const-string v2, "onStartCommand()"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    .line 131
    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mStartError:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_2

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Stopping profile service: device does not have BT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStop(Landroid/content/Intent;)V

    .line 176
    :cond_1
    :goto_0
    return v4

    .line 137
    :cond_2
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/ProfileService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Permission denied!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_3
    if-nez p1, :cond_4

    .line 143
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Restarting profile service..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_4
    const-string v2, "action"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.android.bluetooth.btservice.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 149
    .local v1, "state":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 150
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Received stop request...Stopping profile..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mProfileStarted:Z

    if-nez v2, :cond_5

    .line 155
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Error stopping profile. Profile is not started yet"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStop(Landroid/content/Intent;)V

    goto :goto_0

    .line 161
    :cond_6
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v3, "Received start request. Starting profile..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->doStart(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    const-string v0, "onUnbind"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->log(Ljava/lang/String;)V

    .line 186
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected abstract start()Z
.end method

.method protected abstract stop()Z
.end method
