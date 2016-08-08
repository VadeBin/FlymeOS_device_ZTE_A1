.class Lcom/alipay/android/fingerprint/AlipayFingerprint$1;
.super Ljava/lang/Object;
.source "AlipayFingerprint.java"

# interfaces
.implements Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/AlipayFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;


# direct methods
.method constructor <init>(Lcom/alipay/android/fingerprint/AlipayFingerprint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(III)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "id"    # I
    .param p3, "userData"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 106
    return-void
.end method

.method public onStatus(II)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    .line 87
    return-void
.end method
