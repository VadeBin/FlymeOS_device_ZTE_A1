.class Lcom/zte/fingerprint/setting/GoodixSetting$3;
.super Ljava/lang/Object;
.source "GoodixSetting.java"

# interfaces
.implements Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/setting/GoodixSetting;->initComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/setting/GoodixSetting;

.field final synthetic val$currentCount:I

.field final synthetic val$prfSecretZone:Lcom/zte/mifavor/preference/SwitchPreference;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/setting/GoodixSetting;ILcom/zte/mifavor/preference/SwitchPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/setting/GoodixSetting;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/zte/fingerprint/setting/GoodixSetting$3;->this$0:Lcom/zte/fingerprint/setting/GoodixSetting;

    iput p2, p0, Lcom/zte/fingerprint/setting/GoodixSetting$3;->val$currentCount:I

    iput-object p3, p0, Lcom/zte/fingerprint/setting/GoodixSetting$3;->val$prfSecretZone:Lcom/zte/mifavor/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/zte/mifavor/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 112
    iget v0, p0, Lcom/zte/fingerprint/setting/GoodixSetting$3;->val$currentCount:I

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/zte/fingerprint/setting/GoodixSetting$3;->this$0:Lcom/zte/fingerprint/setting/GoodixSetting;

    iget-object v1, p0, Lcom/zte/fingerprint/setting/GoodixSetting$3;->val$prfSecretZone:Lcom/zte/mifavor/preference/SwitchPreference;

    # invokes: Lcom/zte/fingerprint/setting/GoodixSetting;->showAddFingerDialog(Lcom/zte/mifavor/preference/SwitchPreference;)V
    invoke-static {v0, v1}, Lcom/zte/fingerprint/setting/GoodixSetting;->access$000(Lcom/zte/fingerprint/setting/GoodixSetting;Lcom/zte/mifavor/preference/SwitchPreference;)V

    .line 117
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/zte/fingerprint/setting/GoodixSetting$3;->this$0:Lcom/zte/fingerprint/setting/GoodixSetting;

    invoke-virtual {v0}, Lcom/zte/fingerprint/setting/GoodixSetting;->isAppLockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/fingerprint/setting/GoodixSetting$3;->val$prfSecretZone:Lcom/zte/mifavor/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/zte/fingerprint/setting/GoodixSetting$3;->this$0:Lcom/zte/fingerprint/setting/GoodixSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/setting/GoodixSetting;->goHeartyService(Ljava/lang/String;)V

    goto :goto_0
.end method
