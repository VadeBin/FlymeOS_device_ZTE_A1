.class public Lcom/mediatek/fmradio/FmRadioService$ServiceBinder;
.super Landroid/os/Binder;
.source "FmRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioService;


# direct methods
.method public constructor <init>(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService$ServiceBinder;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/mediatek/fmradio/FmRadioService;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService$ServiceBinder;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    return-object v0
.end method
