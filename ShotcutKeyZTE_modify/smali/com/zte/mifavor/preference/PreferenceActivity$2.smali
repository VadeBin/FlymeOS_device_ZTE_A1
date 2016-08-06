.class Lcom/zte/mifavor/preference/PreferenceActivity$2;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/preference/PreferenceActivity;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceActivity$2;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity$2;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setResult(I)V

    .line 651
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity$2;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->finish()V

    .line 652
    return-void
.end method
