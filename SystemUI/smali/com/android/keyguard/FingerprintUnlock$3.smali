.class Lcom/android/keyguard/FingerprintUnlock$3;
.super Ljava/lang/Object;
.source "FingerprintUnlock.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/FingerprintUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/FingerprintUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/FingerprintUnlock;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock$3;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 524
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "e"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 509
    const-string v0, "FPCUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SensorEventListener use time --"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/keyguard/FingerprintUnlock$3;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    iget-wide v4, v4, Lcom/android/keyguard/FingerprintUnlock;->mBeginTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-wide/16 v0, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    float-to-double v0, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 511
    const-string v0, "FPCUnlock"

    const-string v1, "SensorEventListener onSensorChanged--pocketMode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$3;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/FingerprintUnlock;->isPocketMode:Z

    .line 518
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$3;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$0(Lcom/android/keyguard/FingerprintUnlock;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$3;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$0(Lcom/android/keyguard/FingerprintUnlock;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 520
    return-void

    .line 515
    :cond_0
    const-string v0, "FPCUnlock"

    const-string v1, "SensorEventListener onSensorChanged-=-not pocketMode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$3;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    iput-boolean v6, v0, Lcom/android/keyguard/FingerprintUnlock;->isPocketMode:Z

    goto :goto_0
.end method
