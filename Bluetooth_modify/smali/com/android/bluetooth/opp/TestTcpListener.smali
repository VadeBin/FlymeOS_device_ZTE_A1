.class Lcom/android/bluetooth/opp/TestTcpListener;
.super Ljava/lang/Object;
.source "TestActivity.java"


# static fields
.field private static final ACCEPT_WAIT_TIMEOUT:I = 0x1388

.field private static final D:Z = true

.field public static final DEFAULT_OPP_CHANNEL:I = 0xc

.field public static final MSG_INCOMING_BTOPP_CONNECTION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "[Bluetooth.OPP]BtOppRfcommListener"

.field private static final V:Z = true


# instance fields
.field private mBtOppRfcommChannel:I

.field private mCallback:Landroid/os/Handler;

.field private volatile mInterrupted:Z

.field private mSocketAcceptThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 380
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/TestTcpListener;-><init>(I)V

    .line 381
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "channel"    # I

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mBtOppRfcommChannel:I

    .line 384
    iput p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mBtOppRfcommChannel:I

    .line 385
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/TestTcpListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/TestTcpListener;

    .prologue
    .line 357
    iget v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mBtOppRfcommChannel:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/TestTcpListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/TestTcpListener;

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/TestTcpListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/TestTcpListener;
    .param p1, "x1"    # Z

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/TestTcpListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/TestTcpListener;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mCallback:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler;

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 389
    iput-object p1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mCallback:Landroid/os/Handler;

    .line 390
    new-instance v0, Lcom/android/bluetooth/opp/TestTcpListener$1;

    const-string v1, "[Bluetooth.OPP]BtOppRfcommListener"

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/TestTcpListener$1;-><init>(Lcom/android/bluetooth/opp/TestTcpListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z

    .line 435
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 444
    const-string v1, "[Bluetooth.OPP]BtOppRfcommListener"

    const-string v2, "stopping Connect Thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mInterrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 448
    const-string v1, "[Bluetooth.OPP]BtOppRfcommListener"

    const-string v2, "waiting for thread to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 450
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mSocketAcceptThread:Ljava/lang/Thread;

    .line 451
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/TestTcpListener;->mCallback:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "[Bluetooth.OPP]BtOppRfcommListener"

    const-string v2, "Interrupted waiting for Accept Thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 443
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
