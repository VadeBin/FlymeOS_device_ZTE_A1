.class Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;
.super Landroid/os/Handler;
.source "BluetoothOppTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;
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
    .line 183
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 189
    .local v0, "param":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
