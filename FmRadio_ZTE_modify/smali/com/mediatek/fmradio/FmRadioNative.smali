.class public Lcom/mediatek/fmradio/FmRadioNative;
.super Ljava/lang/Object;
.source "FmRadioNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "fmjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native activeAf()S
.end method

.method static native autoScan()[S
.end method

.method static native closeDev()Z
.end method

.method static native emcmd([S)[S
.end method

.method static native emsetth(II)Z
.end method

.method static native getFmStatus(I)Z
.end method

.method static native getHardwareVersion()[I
.end method

.method static native getLrText()[B
.end method

.method static native getPs()[B
.end method

.method static native isRdsSupport()I
.end method

.method static native openDev()Z
.end method

.method static native powerDown(I)Z
.end method

.method static native powerUp(F)Z
.end method

.method static native readCapArray()S
.end method

.method static native readRds()S
.end method

.method static native readRdsBler()S
.end method

.method static native readRssi()I
.end method

.method static native seek(FZ)F
.end method

.method static native setFmStatus(IZ)Z
.end method

.method static native setMute(Z)I
.end method

.method static native setRds(Z)I
.end method

.method static native setStereoMono(Z)Z
.end method

.method static native stereoMono()Z
.end method

.method static native stopScan()Z
.end method

.method static native switchAntenna(I)I
.end method

.method static native tune(F)Z
.end method
