.class Lcom/mediatek/telephony/ExternalSimManager$1;
.super Ljava/lang/Thread;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/telephony/ExternalSimManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/ExternalSimManager;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$1;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/mediatek/telephony/ExternalSimManager$ServerTask;

    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$1;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {v0, v1}, Lcom/mediatek/telephony/ExternalSimManager$ServerTask;-><init>(Lcom/mediatek/telephony/ExternalSimManager;)V

    .line 130
    .local v0, "server":Lcom/mediatek/telephony/ExternalSimManager$ServerTask;
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$1;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
    invoke-static {v1}, Lcom/mediatek/telephony/ExternalSimManager;->access$000(Lcom/mediatek/telephony/ExternalSimManager;)Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/ExternalSimManager$ServerTask;->listenConnection(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V

    .line 131
    return-void
.end method
