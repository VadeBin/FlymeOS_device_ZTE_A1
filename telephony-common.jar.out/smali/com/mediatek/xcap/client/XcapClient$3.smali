.class Lcom/mediatek/xcap/client/XcapClient$3;
.super Landroid/content/BroadcastReceiver;
.source "XcapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/xcap/client/XcapClient;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/xcap/client/XcapClient;


# direct methods
.method constructor <init>(Lcom/mediatek/xcap/client/XcapClient;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient$3;->this$0:Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 368
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_GBA_FORBIDDEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    const-string v1, "XcapClient"

    const-string v2, "ACTION_GBA_FORBIDDEN received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapClient$3;->this$0:Lcom/mediatek/xcap/client/XcapClient;

    const/4 v2, 0x1

    # setter for: Lcom/mediatek/xcap/client/XcapClient;->mIsGbaForbidden:Z
    invoke-static {v1, v2}, Lcom/mediatek/xcap/client/XcapClient;->access$002(Lcom/mediatek/xcap/client/XcapClient;Z)Z

    .line 374
    :cond_0
    return-void
.end method
