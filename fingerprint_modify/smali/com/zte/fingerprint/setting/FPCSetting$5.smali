.class Lcom/zte/fingerprint/setting/FPCSetting$5;
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

.field final synthetic val$witch:Lcom/zte/mifavor/preference/SwitchPreference;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/setting/FPCSetting;Lcom/zte/mifavor/preference/SwitchPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/setting/FPCSetting;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/zte/fingerprint/setting/FPCSetting$5;->this$0:Lcom/zte/fingerprint/setting/FPCSetting;

    iput-object p2, p0, Lcom/zte/fingerprint/setting/FPCSetting$5;->val$witch:Lcom/zte/mifavor/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FPCSetting$5;->val$witch:Lcom/zte/mifavor/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FPCSetting$5;->val$witch:Lcom/zte/mifavor/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/SwitchPreference;->setChecked(Z)V

    .line 223
    :cond_0
    return-void
.end method
