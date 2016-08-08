.class Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$1;
.super Landroid/database/ContentObserver;
.source "BluetoothMapEmailAppObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->registerObserver(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$1;->onChange(ZLandroid/net/Uri;)V

    .line 157
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 163
    if-eqz p2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->handleAccountChanges(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;->access$000(Lcom/android/bluetooth/map/BluetoothMapEmailAppObserver;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v0, "[MAP]BluetoothMapEmailAppObserver"

    const-string v1, "Unable to handle change as the URI is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
