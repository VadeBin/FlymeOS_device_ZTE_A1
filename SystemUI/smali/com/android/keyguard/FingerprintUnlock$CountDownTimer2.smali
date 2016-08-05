.class public abstract Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;
.super Ljava/lang/Object;
.source "FingerprintUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/FingerprintUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "CountDownTimer2"
.end annotation


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mMillisInFuture:J

.field private mStopTimeInFuture:J

.field final synthetic this$0:Lcom/android/keyguard/FingerprintUnlock;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/FingerprintUnlock;JJ)V
    .locals 2
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    new-instance v0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2$1;-><init>(Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;)V

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mHandler:Landroid/os/Handler;

    .line 662
    iput-wide p2, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mMillisInFuture:J

    .line 663
    iput-wide p4, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mCountdownInterval:J

    .line 664
    return-void
.end method

.method static synthetic access$0(Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;)J
    .locals 2

    .prologue
    .line 652
    iget-wide v0, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mStopTimeInFuture:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;)J
    .locals 2

    .prologue
    .line 650
    iget-wide v0, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mCountdownInterval:J

    return-wide v0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    return-void
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public final declared-synchronized start()Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;
    .locals 6

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mMillisInFuture:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 683
    .end local p0    # "this":Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;
    .local v0, "this":Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 681
    .end local v0    # "this":Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;
    .restart local p0    # "this":Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mMillisInFuture:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mStopTimeInFuture:J

    .line 682
    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 683
    .end local p0    # "this":Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;
    .restart local v0    # "this":Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;
    goto :goto_0

    .line 677
    .end local v0    # "this":Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;
    .restart local p0    # "this":Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
