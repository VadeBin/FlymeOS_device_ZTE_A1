.class public interface abstract Lcom/android/fingerprints/keyguard/IFingerActionCallback;
.super Ljava/lang/Object;
.source "IFingerActionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fingerprints/keyguard/IFingerActionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFingerDown(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFingerUp(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
