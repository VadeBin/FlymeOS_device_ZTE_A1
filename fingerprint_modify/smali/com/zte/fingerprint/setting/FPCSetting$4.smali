.class Lcom/zte/fingerprint/setting/FPCSetting$4;
.super Ljava/lang/Object;
.source "FPCSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/setting/FPCSetting;->showAddFingerDialog(Lcom/zte/mifavor/preference/SwitchPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/setting/FPCSetting;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/setting/FPCSetting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/setting/FPCSetting;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/zte/fingerprint/setting/FPCSetting$4;->this$0:Lcom/zte/fingerprint/setting/FPCSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FPCSetting$4;->this$0:Lcom/zte/fingerprint/setting/FPCSetting;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zte/fingerprint/setting/FPCSetting$4;->this$0:Lcom/zte/fingerprint/setting/FPCSetting;

    invoke-virtual {v2}, Lcom/zte/fingerprint/setting/FPCSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/zte/fingerprint/main/FingerprintEnrolActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/setting/FPCSetting;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method
