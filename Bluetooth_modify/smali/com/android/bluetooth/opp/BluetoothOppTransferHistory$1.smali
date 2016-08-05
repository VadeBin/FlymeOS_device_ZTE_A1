.class Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;
.super Ljava/lang/Object;
.source "BluetoothOppTransferHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->promptClearList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v3, 0x0

    .line 257
    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearHistory:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$000()Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearHistory:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$002(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;)Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;

    .line 259
    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearHistory:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$000()Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 261
    :cond_0
    return-void
.end method
