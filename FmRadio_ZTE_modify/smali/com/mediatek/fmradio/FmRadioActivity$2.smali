.class Lcom/mediatek/fmradio/FmRadioActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "FmRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioActivity$2;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    .line 211
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    const-string v1, "FmRx/Activity"

    const-string v2, "Sd card mounted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$2;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->isRecordingCardUnmount(Landroid/content/Intent;)Z
    invoke-static {v1, p2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$1(Lcom/mediatek/fmradio/FmRadioActivity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 227
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$2;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity$2;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    const v3, 0x7f090076

    invoke-virtual {v2, v3}, Lcom/mediatek/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v1, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$2(Lcom/mediatek/fmradio/FmRadioActivity;Ljava/lang/CharSequence;)V

    .line 229
    const-string v1, "FmRx/Activity"

    const-string v2, "Sd card Eject or unmounted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
