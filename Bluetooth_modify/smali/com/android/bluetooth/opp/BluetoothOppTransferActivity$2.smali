.class Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$2;
.super Ljava/lang/Object;
.source "BluetoothOppTransferActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 492
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 495
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$600(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 498
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$600(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->originalUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 499
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$600(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    .line 501
    .local v0, "sendFileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    invoke-static {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->generateUri(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)Landroid/net/Uri;

    move-result-object v1

    .line 502
    invoke-static {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->putSendFileInfo(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V

    .line 503
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$600(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileUri:Ljava/lang/String;

    .line 504
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$600(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->retryTransfer(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;)V

    .line 506
    return-void
.end method
