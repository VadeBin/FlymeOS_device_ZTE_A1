.class Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;
.super Landroid/os/AsyncTask;
.source "BluetoothOppTransferHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearHistory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissProgress()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 420
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->mDialog:Landroid/app/ProgressDialog;

    .line 421
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Integer;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearAllDownloads()V
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V

    .line 433
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 399
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->dismissProgress()V

    .line 439
    const/4 v0, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearHistory:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$002(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;)Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;

    .line 440
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 441
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 399
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 425
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 426
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->showProgress(Landroid/app/Activity;)V

    .line 427
    return-void
.end method

.method public showProgress(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 404
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->mDialog:Landroid/app/ProgressDialog;

    .line 405
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    const v3, 0x7f050065

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$ClearHistory;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 409
    return-void
.end method
