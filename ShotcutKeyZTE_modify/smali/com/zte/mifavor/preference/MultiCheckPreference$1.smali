.class Lcom/zte/mifavor/preference/MultiCheckPreference$1;
.super Ljava/lang/Object;
.source "MultiCheckPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/preference/MultiCheckPreference;->onPrepareDialogBuilder(Lcom/zte/mifavor/widget/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/preference/MultiCheckPreference;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/preference/MultiCheckPreference;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference$1;->this$0:Lcom/zte/mifavor/preference/MultiCheckPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 256
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference$1;->this$0:Lcom/zte/mifavor/preference/MultiCheckPreference;

    # getter for: Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z
    invoke-static {v0}, Lcom/zte/mifavor/preference/MultiCheckPreference;->access$000(Lcom/zte/mifavor/preference/MultiCheckPreference;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 257
    return-void
.end method
