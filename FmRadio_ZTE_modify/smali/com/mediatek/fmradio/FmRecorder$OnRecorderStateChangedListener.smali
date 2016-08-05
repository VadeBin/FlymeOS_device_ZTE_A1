.class public interface abstract Lcom/mediatek/fmradio/FmRecorder$OnRecorderStateChangedListener;
.super Ljava/lang/Object;
.source "FmRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRecorderStateChangedListener"
.end annotation


# virtual methods
.method public abstract onPlayRecordFileComplete()V
.end method

.method public abstract onRecorderError(I)V
.end method

.method public abstract onRecorderStateChanged(I)V
.end method

.method public abstract onShowToast(Ljava/lang/String;)V
.end method
