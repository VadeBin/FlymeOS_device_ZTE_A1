.class Lcom/android/internal/telephony/IccSmsInterfaceManager$2;
.super Landroid/content/BroadcastReceiver;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0

    .prologue
    .line 1909
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$2;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1911
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$2;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v2, "Receive intent"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1912
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1913
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$2;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v2, "Receive wipe intent"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1914
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$2$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$2$1;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager$2;)V

    .line 1921
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1923
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    return-void
.end method
