.class Lcom/android/shotcutkey/SelectShareAppDialog$1;
.super Landroid/os/Handler;
.source "SelectShareAppDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/SelectShareAppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shotcutkey/SelectShareAppDialog;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/SelectShareAppDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/SelectShareAppDialog$1;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 76
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog$1;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mAdapter:Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$0(Lcom/android/shotcutkey/SelectShareAppDialog;)Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
