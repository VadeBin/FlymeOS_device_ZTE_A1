.class public interface abstract Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
.super Ljava/lang/Object;
.source "FmRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChannelListListener"
.end annotation


# virtual methods
.method public abstract onExit()V
.end method

.method public abstract onScanFinished(Landroid/os/Bundle;)V
.end method

.method public abstract onSwitchAnntenna(Z)V
.end method

.method public abstract onTuneFinished()V
.end method
