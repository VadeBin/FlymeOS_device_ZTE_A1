.class Lcom/zte/mifavor/preference/PreferenceActivity$1;
.super Landroid/os/Handler;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/PreferenceActivity;
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
    .line 227
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 230
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    # invokes: Lcom/zte/mifavor/preference/PreferenceActivity;->bindPreferences()V
    invoke-static {v3}, Lcom/zte/mifavor/preference/PreferenceActivity;->access$000(Lcom/zte/mifavor/preference/PreferenceActivity;)V

    goto :goto_0

    .line 235
    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    # getter for: Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/mifavor/preference/PreferenceActivity;->access$100(Lcom/zte/mifavor/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    .local v2, "oldHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/preference/PreferenceActivity$Header;>;"
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    # getter for: Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/mifavor/preference/PreferenceActivity;->access$100(Lcom/zte/mifavor/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 237
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    # getter for: Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/mifavor/preference/PreferenceActivity;->access$100(Lcom/zte/mifavor/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 238
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    # getter for: Lcom/zte/mifavor/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/zte/mifavor/preference/PreferenceActivity;->access$200(Lcom/zte/mifavor/preference/PreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    # getter for: Lcom/zte/mifavor/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/zte/mifavor/preference/PreferenceActivity;->access$300(Lcom/zte/mifavor/preference/PreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 241
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v3}, Lcom/zte/mifavor/preference/PreferenceActivity;->onGetNewHeader()Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 242
    .local v0, "header":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 243
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v3, v0, v2}, Lcom/zte/mifavor/preference/PreferenceActivity;->findBestMatchingHeader(Lcom/zte/mifavor/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    move-result-object v1

    .line 244
    .local v1, "mappedHeader":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    # getter for: Lcom/zte/mifavor/preference/PreferenceActivity;->mCurHeader:Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    invoke-static {v3}, Lcom/zte/mifavor/preference/PreferenceActivity;->access$400(Lcom/zte/mifavor/preference/PreferenceActivity;)Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 245
    :cond_2
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v3, v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->switchToHeader(Lcom/zte/mifavor/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 247
    .end local v1    # "mappedHeader":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    # getter for: Lcom/zte/mifavor/preference/PreferenceActivity;->mCurHeader:Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    invoke-static {v3}, Lcom/zte/mifavor/preference/PreferenceActivity;->access$400(Lcom/zte/mifavor/preference/PreferenceActivity;)Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 248
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    # getter for: Lcom/zte/mifavor/preference/PreferenceActivity;->mCurHeader:Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    invoke-static {v4}, Lcom/zte/mifavor/preference/PreferenceActivity;->access$400(Lcom/zte/mifavor/preference/PreferenceActivity;)Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    # getter for: Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/zte/mifavor/preference/PreferenceActivity;->access$100(Lcom/zte/mifavor/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/zte/mifavor/preference/PreferenceActivity;->findBestMatchingHeader(Lcom/zte/mifavor/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    move-result-object v1

    .line 249
    .restart local v1    # "mappedHeader":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_0

    .line 250
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity$1;->this$0:Lcom/zte/mifavor/preference/PreferenceActivity;

    invoke-virtual {v3, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setSelectedHeader(Lcom/zte/mifavor/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
