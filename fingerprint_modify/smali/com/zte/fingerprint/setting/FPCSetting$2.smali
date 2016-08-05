.class Lcom/zte/fingerprint/setting/FPCSetting$2;
.super Ljava/lang/Object;
.source "FPCSetting.java"

# interfaces
.implements Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/setting/FPCSetting;->initComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/setting/FPCSetting;

.field final synthetic val$currentCount:I

.field final synthetic val$prfAppLock:Lcom/zte/mifavor/preference/SwitchPreference;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/setting/FPCSetting;ILcom/zte/mifavor/preference/SwitchPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/setting/FPCSetting;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/zte/fingerprint/setting/FPCSetting$2;->this$0:Lcom/zte/fingerprint/setting/FPCSetting;

    iput p2, p0, Lcom/zte/fingerprint/setting/FPCSetting$2;->val$currentCount:I

    iput-object p3, p0, Lcom/zte/fingerprint/setting/FPCSetting$2;->val$prfAppLock:Lcom/zte/mifavor/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/zte/mifavor/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 103
    iget v0, p0, Lcom/zte/fingerprint/setting/FPCSetting$2;->val$currentCount:I

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FPCSetting$2;->this$0:Lcom/zte/fingerprint/setting/FPCSetting;

    iget-object v1, p0, Lcom/zte/fingerprint/setting/FPCSetting$2;->val$prfAppLock:Lcom/zte/mifavor/preference/SwitchPreference;

    # invokes: Lcom/zte/fingerprint/setting/FPCSetting;->showAddFingerDialog(Lcom/zte/mifavor/preference/SwitchPreference;)V
    invoke-static {v0, v1}, Lcom/zte/fingerprint/setting/FPCSetting;->access$000(Lcom/zte/fingerprint/setting/FPCSetting;Lcom/zte/mifavor/preference/SwitchPreference;)V

    .line 108
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FPCSetting$2;->this$0:Lcom/zte/fingerprint/setting/FPCSetting;

    invoke-virtual {v0}, Lcom/zte/fingerprint/setting/FPCSetting;->isAppLockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/fingerprint/setting/FPCSetting$2;->val$prfAppLock:Lcom/zte/mifavor/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/zte/fingerprint/setting/FPCSetting$2;->this$0:Lcom/zte/fingerprint/setting/FPCSetting;

    const-string v1, "lock_for_application"

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/setting/FPCSetting;->goHeartyService(Ljava/lang/String;)V

    goto :goto_0
.end method
