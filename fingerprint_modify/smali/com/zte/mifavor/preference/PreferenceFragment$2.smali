.class Lcom/zte/mifavor/preference/PreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/preference/PreferenceFragment;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceFragment$2;->this$0:Lcom/zte/mifavor/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment$2;->this$0:Lcom/zte/mifavor/preference/PreferenceFragment;

    # getter for: Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/mifavor/preference/PreferenceFragment;->access$100(Lcom/zte/mifavor/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceFragment$2;->this$0:Lcom/zte/mifavor/preference/PreferenceFragment;

    # getter for: Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/zte/mifavor/preference/PreferenceFragment;->access$100(Lcom/zte/mifavor/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 139
    return-void
.end method
