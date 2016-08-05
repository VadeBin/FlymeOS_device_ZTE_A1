.class Lcom/android/bluetooth/btservice/AdapterService$3$2;
.super Ljava/lang/Object;
.source "AdapterService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 716
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$3$2;->this$1:Lcom/android/bluetooth/btservice/AdapterService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 719
    const-string v0, "BluetoothAdapterService"

    const-string v1, "WFD Concurrency: onCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void
.end method
