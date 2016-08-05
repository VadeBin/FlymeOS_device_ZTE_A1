.class Lcom/android/bluetooth/btservice/AdapterService$3$1;
.super Ljava/lang/Object;
.source "AdapterService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/btservice/AdapterService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/btservice/AdapterService$3;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService$3;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$3$1;->this$1:Lcom/android/bluetooth/btservice/AdapterService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 725
    const-string v0, "BluetoothAdapterService"

    const-string v1, "WFD Concurrency: onDismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$3$1;->this$1:Lcom/android/bluetooth/btservice/AdapterService$3;

    iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    # getter for: Lcom/android/bluetooth/btservice/AdapterService;->mWfdHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$900(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 727
    return-void
.end method
