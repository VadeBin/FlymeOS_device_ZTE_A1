.class Lcom/zte/mifavor/preference/ListPreference$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/preference/ListPreference;->onPrepareDialogBuilder(Lcom/zte/mifavor/widget/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/preference/ListPreference;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/preference/ListPreference;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/zte/mifavor/preference/ListPreference$1;->this$0:Lcom/zte/mifavor/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference$1;->this$0:Lcom/zte/mifavor/preference/ListPreference;

    # setter for: Lcom/zte/mifavor/preference/ListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/zte/mifavor/preference/ListPreference;->access$002(Lcom/zte/mifavor/preference/ListPreference;I)I

    .line 264
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference$1;->this$0:Lcom/zte/mifavor/preference/ListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/zte/mifavor/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 265
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 266
    return-void
.end method
