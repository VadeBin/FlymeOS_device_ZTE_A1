.class Lcom/android/bluetooth/btservice/AdapterService$3$3;
.super Ljava/lang/Object;
.source "AdapterService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 695
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$3$3;->this$1:Lcom/android/bluetooth/btservice/AdapterService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 698
    const-string v1, "BluetoothAdapterService"

    const-string v2, "WFD Concurrency: user wants to use BT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$3$3;->this$1:Lcom/android/bluetooth/btservice/AdapterService$3;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/AdapterService$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 700
    .local v0, "checked":Z
    const-string v1, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WFD Concurrency: onClick(), checked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-eqz v0, :cond_0

    .line 703
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$3$3;->this$1:Lcom/android/bluetooth/btservice/AdapterService$3;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_sound_path_do_not_remind"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 714
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$3$3;->this$1:Lcom/android/bluetooth/btservice/AdapterService$3;

    iget-object v1, v1, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_sound_path_do_not_remind"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
