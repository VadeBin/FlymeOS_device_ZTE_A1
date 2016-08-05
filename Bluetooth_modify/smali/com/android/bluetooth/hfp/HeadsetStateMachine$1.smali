.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;
.super Ljava/lang/Object;
.source "HeadsetStateMachine.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 0

    .prologue
    .line 2096
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2098
    const-string v0, "HeadsetStateMachine"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v1

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5602(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/IBluetoothHeadsetPhone;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 2100
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 2103
    const-string v0, "HeadsetStateMachine"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5602(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/IBluetoothHeadsetPhone;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 2105
    return-void
.end method
