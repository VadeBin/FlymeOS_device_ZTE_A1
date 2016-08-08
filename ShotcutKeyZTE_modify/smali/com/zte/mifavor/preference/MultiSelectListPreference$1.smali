.class Lcom/zte/mifavor/preference/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Lcom/zte/mifavor/widget/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/preference/MultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/preference/MultiSelectListPreference;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/zte/mifavor/preference/MultiSelectListPreference$1;->this$0:Lcom/zte/mifavor/preference/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 184
    if-eqz p3, :cond_0

    .line 185
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiSelectListPreference$1;->this$0:Lcom/zte/mifavor/preference/MultiSelectListPreference;

    iget-object v1, p0, Lcom/zte/mifavor/preference/MultiSelectListPreference$1;->this$0:Lcom/zte/mifavor/preference/MultiSelectListPreference;

    # getter for: Lcom/zte/mifavor/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v1}, Lcom/zte/mifavor/preference/MultiSelectListPreference;->access$200(Lcom/zte/mifavor/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/preference/MultiSelectListPreference$1;->this$0:Lcom/zte/mifavor/preference/MultiSelectListPreference;

    # getter for: Lcom/zte/mifavor/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/zte/mifavor/preference/MultiSelectListPreference;->access$100(Lcom/zte/mifavor/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    # |= operator for: Lcom/zte/mifavor/preference/MultiSelectListPreference;->mPreferenceChanged:Z
    invoke-static {v0, v1}, Lcom/zte/mifavor/preference/MultiSelectListPreference;->access$076(Lcom/zte/mifavor/preference/MultiSelectListPreference;I)Z

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiSelectListPreference$1;->this$0:Lcom/zte/mifavor/preference/MultiSelectListPreference;

    iget-object v1, p0, Lcom/zte/mifavor/preference/MultiSelectListPreference$1;->this$0:Lcom/zte/mifavor/preference/MultiSelectListPreference;

    # getter for: Lcom/zte/mifavor/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v1}, Lcom/zte/mifavor/preference/MultiSelectListPreference;->access$200(Lcom/zte/mifavor/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/preference/MultiSelectListPreference$1;->this$0:Lcom/zte/mifavor/preference/MultiSelectListPreference;

    # getter for: Lcom/zte/mifavor/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/zte/mifavor/preference/MultiSelectListPreference;->access$100(Lcom/zte/mifavor/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    # |= operator for: Lcom/zte/mifavor/preference/MultiSelectListPreference;->mPreferenceChanged:Z
    invoke-static {v0, v1}, Lcom/zte/mifavor/preference/MultiSelectListPreference;->access$076(Lcom/zte/mifavor/preference/MultiSelectListPreference;I)Z

    goto :goto_0
.end method
