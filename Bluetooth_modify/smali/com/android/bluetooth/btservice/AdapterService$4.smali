.class Lcom/android/bluetooth/btservice/AdapterService$4;
.super Landroid/content/BroadcastReceiver;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    .prologue
    .line 2076
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$4;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$4;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    # getter for: Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1500(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$4;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    # getter for: Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterService;->access$1500(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2080
    return-void
.end method
