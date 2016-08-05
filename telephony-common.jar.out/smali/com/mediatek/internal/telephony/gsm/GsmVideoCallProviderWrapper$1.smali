.class Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$1;
.super Ljava/lang/Object;
.source "GsmVideoCallProviderWrapper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$1;->this$0:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;

    # getter for: Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->access$000(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 61
    return-void
.end method
