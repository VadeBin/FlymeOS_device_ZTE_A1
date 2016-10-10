.class Lcom/android/systemui/keyguard/KeyguardViewMediator$3;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 2
    .param p1, "authenticated"    # Z

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 652
    :cond_0
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 656
    return-void
.end method

.method public keyguardDonePending()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 670
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2102(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 671
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2302(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 672
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 673
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 675
    return-void
.end method

.method public keyguardGone()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    .line 684
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUpAndStartActivityAfterKeyguardExit()V
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 685
    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateUserActivityTimeout()V

    .line 666
    return-void
.end method

.method public playTrustedSound()V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->playTrustedSound()V
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 699
    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 689
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 694
    :cond_0
    return-void
.end method

.method public resetStateLocked()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 709
    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNeedsInput(Z)V

    .line 661
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 646
    return-void
.end method

# hxs modify begin
.method public isOccluded()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isOccluded()Z

    move-result v0

    return v0
.end method

.method public setFingerprintFlag(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setFingerprintFlag(Z)V

    return-void
.end method
# hxs modify end