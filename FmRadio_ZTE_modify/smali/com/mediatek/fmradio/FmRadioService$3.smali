.class Lcom/mediatek/fmradio/FmRadioService$3;
.super Ljava/lang/Thread;
.source "FmRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/fmradio/FmRadioService;->startRdsThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioService;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    .line 1733
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1735
    const-string v6, "FmRx/Service"

    const-string v7, ">>> RDS Thread run()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :goto_0
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsRdsThreadExit:Z
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioService;->access$50(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1805
    const-string v6, "FmRx/Service"

    const-string v7, "<<< RDS Thread run()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    return-void

    .line 1741
    :cond_0
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->readRds()S

    move-result v5

    .line 1742
    .local v5, "iRdsEvents":I
    if-eqz v5, :cond_1

    .line 1743
    const-string v6, "FmRx/Service"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FmRadioNative.readrds events: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1744
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1743
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_1
    const/16 v6, 0x8

    and-int/lit8 v7, v5, 0x8

    if-ne v6, v7, :cond_2

    .line 1748
    const-string v6, "FmRx/Service"

    const-string v7, "RDS_EVENT_PROGRAMNAME"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->getPs()[B

    move-result-object v1

    .line 1750
    .local v1, "bytePS":[B
    if-eqz v1, :cond_2

    .line 1751
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/fmradio/FmRadioService;->access$51(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V

    .line 1755
    .end local v1    # "bytePS":[B
    :cond_2
    const/16 v6, 0x40

    and-int/lit8 v7, v5, 0x40

    if-ne v6, v7, :cond_3

    .line 1756
    const-string v6, "FmRx/Service"

    const-string v7, "RDS_EVENT_LAST_RADIOTEXT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->getLrText()[B

    move-result-object v0

    .line 1758
    .local v0, "byteLRText":[B
    if-eqz v0, :cond_3

    .line 1759
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/fmradio/FmRadioService;->access$52(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V

    .line 1763
    .end local v0    # "byteLRText":[B
    :cond_3
    const/16 v6, 0x80

    and-int/lit16 v7, v5, 0x80

    if-ne v6, v7, :cond_5

    .line 1764
    const-string v6, "FmRx/Service"

    const-string v7, "RDS_EVENT_AF"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioService;->access$23(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsSeeking:Z
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioService;->access$53(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1769
    :cond_4
    const-string v6, "FmRx/Service"

    .line 1770
    const-string v7, "RDSThread. seek or scan going, no need to tune here"

    .line 1769
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_5
    :goto_1
    const/16 v3, 0x1f4

    .line 1800
    .local v3, "hundredMillisecond":I
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1801
    :catch_0
    move-exception v2

    .line 1802
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1771
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "hundredMillisecond":I
    :cond_6
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioService;->access$3(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1772
    const-string v6, "FmRx/Service"

    .line 1773
    const-string v7, "RDSThread. fm is power down, do nothing."

    .line 1772
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1775
    :cond_7
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioNative;->activeAf()S

    move-result v4

    .line 1776
    .local v4, "iFreq":I
    invoke-static {v4}, Lcom/mediatek/fmradio/FmRadioUtils;->isValidStation(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1779
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioService;->access$20(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v6

    if-ne v6, v4, :cond_8

    .line 1780
    const-string v6, "FmRx/Service"

    .line 1781
    const-string v7, "RDSThread. the new freq is the same as current."

    .line 1780
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1783
    :cond_8
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const-string v7, ""

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/fmradio/FmRadioService;->access$51(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V

    .line 1784
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const-string v7, ""

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/fmradio/FmRadioService;->access$52(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V

    .line 1785
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioService;->access$23(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsSeeking:Z
    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioService;->access$53(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1786
    const-string v6, "FmRx/Service"

    .line 1787
    const-string v7, "RDSThread. seek or scan not going,need to tune here"

    .line 1786
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioService$3;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    .line 1790
    invoke-static {v4}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v7

    .line 1789
    invoke-virtual {v6, v7}, Lcom/mediatek/fmradio/FmRadioService;->tuneStationAsync(F)V

    goto :goto_1
.end method
