.class Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;
.super Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;
.source "FingerprintUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/FingerprintUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountDownTimer1"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/FingerprintUnlock;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/FingerprintUnlock;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    .line 620
    invoke-direct/range {p0 .. p5}, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;-><init>(Lcom/android/keyguard/FingerprintUnlock;JJ)V

    .line 621
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/FingerprintUnlock;->access$6(Lcom/android/keyguard/FingerprintUnlock;Z)V

    .line 634
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/FingerprintUnlock;->access$7(Lcom/android/keyguard/FingerprintUnlock;I)V

    .line 635
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/FingerprintUnlock;->access$8(Lcom/android/keyguard/FingerprintUnlock;Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;)V

    .line 636
    const-string v0, "FPCUnlock"

    const-string v1, "timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 626
    const-string v0, "FPCUnlock"

    const-string v1, "the millisUntilFinished is %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/keyguard/FingerprintUnlock;->access$4(Lcom/android/keyguard/FingerprintUnlock;J)V

    .line 628
    const-string v0, "FPCUnlock"

    const-string v1, "the leftTime is %d"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->leftTime:J
    invoke-static {v3}, Lcom/android/keyguard/FingerprintUnlock;->access$5(Lcom/android/keyguard/FingerprintUnlock;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void
.end method
