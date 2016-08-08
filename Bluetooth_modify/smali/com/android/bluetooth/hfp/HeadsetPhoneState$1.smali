.class Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "HeadsetPhoneState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetPhoneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$000(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "HeadsetPhoneState"

    const-string v1, "onSubscriptionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->listenForPhoneState(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->listenForPhoneState(Z)V

    .line 103
    :cond_0
    return-void
.end method
