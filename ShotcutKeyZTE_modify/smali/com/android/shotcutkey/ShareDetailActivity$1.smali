.class Lcom/android/shotcutkey/ShareDetailActivity$1;
.super Landroid/os/Handler;
.source "ShareDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/ShareDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shotcutkey/ShareDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/ShareDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/ShareDetailActivity$1;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 85
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$1;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mListAdapter:Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;
    invoke-static {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->access$0(Lcom/android/shotcutkey/ShareDetailActivity;)Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
