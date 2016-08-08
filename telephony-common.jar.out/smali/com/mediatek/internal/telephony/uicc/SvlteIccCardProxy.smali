.class public Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;
.super Lcom/android/internal/telephony/uicc/IccCardProxy;
.source "SvlteIccCardProxy.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field private static final EVENT_SVLTE_ICC_LOCKED:I = 0x67

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteIccCardProxy"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mPhoneId:Ljava/lang/Integer;

.field private mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mSvlteUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mPhoneId:Ljava/lang/Integer;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    .line 55
    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 56
    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ctor: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 63
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mPhoneId:Ljava/lang/Integer;

    .line 65
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 66
    return-void
.end method

.method private getRemoteSimPinAppType()I
    .locals 1

    .prologue
    .line 263
    const-string v0, "RemoteSimPinAppType is 3GPP."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method private isSvlteCT4G()Z
    .locals 2

    .prologue
    .line 259
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isRemoteSimSlot(I)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string v0, "SvlteIccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 279
    const-string v0, "SvlteIccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method private refreshUiccApplication()V
    .locals 4

    .prologue
    .line 247
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->getRemoteSimPinAppType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 249
    .local v0, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 250
    const-string v1, "Icc app changed. Reregestering."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->unregisterUiccCardEvents()V

    .line 252
    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 253
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->registerUiccCardEvents()V

    .line 255
    :cond_0
    const-string v1, "refreshUiccApplication() to 3GPP done."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private registerUiccCardEvents()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    :cond_0
    return-void
.end method

.method private supplyPinFail(Landroid/os/Message;Ljava/lang/String;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "functionName"    # Ljava/lang/String;

    .prologue
    .line 268
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasIccCard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->hasIccCard()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 270
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 271
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 272
    return-void
.end method

.method private unregisterUiccCardEvents()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->refreshUiccApplication()V

    .line 193
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 202
    :cond_0
    :goto_0
    monitor-exit v1

    .line 203
    :goto_1
    return-void

    .line 195
    :cond_1
    if-eqz p3, :cond_0

    .line 196
    const-string v0, "changeIccLockPassword"

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->supplyPinFail(Landroid/os/Message;Ljava/lang/String;)V

    .line 197
    monitor-exit v1

    goto :goto_1

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 200
    :cond_2
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    const-string v0, "Disposing"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 74
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dispose()V

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SvlteIccCardProxyAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSvlteUiccController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSvlteUiccApplication: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public getIccLockEnabled()Z
    .locals 4

    .prologue
    .line 207
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 208
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->refreshUiccApplication()V

    .line 211
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 213
    .local v0, "retValue":Ljava/lang/Boolean;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccLockEnabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    .line 216
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :goto_1
    return v1

    .line 211
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 216
    :cond_1
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccLockEnabled()Z

    move-result v1

    monitor-exit v2

    goto :goto_1

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 96
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->handleMessage(Landroid/os/Message;)V

    .line 99
    :goto_0
    return-void

    .line 84
    :sswitch_0
    const-string v0, "receive EVENT_SVLTE_ICC_LOCKED "

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x5

    iput v0, p1, Landroid/os/Message;->what:I

    .line 86
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 89
    :sswitch_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "receive EVENT_ICC_LOCKED, SVLTE CT 4G is true, so do nothing"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to setIccLockEnabled enabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " onComplete = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->refreshUiccApplication()V

    .line 175
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 184
    :cond_0
    :goto_0
    monitor-exit v1

    .line 185
    :goto_1
    return-void

    .line 177
    :cond_1
    if-eqz p3, :cond_0

    .line 178
    const-string v0, "setIccLockEnabled"

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->supplyPinFail(Landroid/os/Message;Ljava/lang/String;)V

    .line 179
    monitor-exit v1

    goto :goto_1

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 182
    :cond_2
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->refreshUiccApplication()V

    .line 106
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 115
    :cond_0
    :goto_0
    monitor-exit v1

    .line 116
    :goto_1
    return-void

    .line 108
    :cond_1
    if-eqz p2, :cond_0

    .line 109
    const-string v0, "supplyPin"

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->supplyPinFail(Landroid/os/Message;Ljava/lang/String;)V

    .line 110
    monitor-exit v1

    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 113
    :cond_2
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->refreshUiccApplication()V

    .line 140
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 149
    :cond_0
    :goto_0
    monitor-exit v1

    .line 150
    :goto_1
    return-void

    .line 142
    :cond_1
    if-eqz p2, :cond_0

    .line 143
    const-string v0, "supplyPin2"

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->supplyPinFail(Landroid/os/Message;Ljava/lang/String;)V

    .line 144
    monitor-exit v1

    goto :goto_1

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 147
    :cond_2
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->refreshUiccApplication()V

    .line 123
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 132
    :cond_0
    :goto_0
    monitor-exit v1

    .line 133
    :goto_1
    return-void

    .line 125
    :cond_1
    if-eqz p3, :cond_0

    .line 126
    const-string v0, "supplyPuk"

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->supplyPinFail(Landroid/os/Message;Ljava/lang/String;)V

    .line 127
    monitor-exit v1

    goto :goto_1

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 130
    :cond_2
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 154
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->refreshUiccApplication()V

    .line 157
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 166
    :cond_0
    :goto_0
    monitor-exit v1

    .line 167
    :goto_1
    return-void

    .line 159
    :cond_1
    if-eqz p3, :cond_0

    .line 160
    const-string v0, "supplyPuk2"

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->supplyPinFail(Landroid/os/Message;Ljava/lang/String;)V

    .line 161
    monitor-exit v1

    goto :goto_1

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 164
    :cond_2
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
