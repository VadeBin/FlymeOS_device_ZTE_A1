.class Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/zte/mifavor/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResId:I

.field private mRemoveIconIfEmpty:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutResId"    # I
    .param p4, "removeIconBehavior"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/mifavor/preference/PreferenceActivity$Header;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 272
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 273
    iput p3, p0, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter;->mLayoutResId:I

    .line 274
    iput-boolean p4, p0, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter;->mRemoveIconIfEmpty:Z

    .line 275
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 282
    if-nez p2, :cond_0

    .line 283
    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter;->mLayoutResId:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 284
    .local v3, "view":Landroid/view/View;
    new-instance v1, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/zte/mifavor/preference/PreferenceActivity$1;)V

    .line 285
    .local v1, "holder":Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 286
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 287
    const v4, 0x1020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 288
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 295
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    .line 296
    .local v0, "header":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    iget-boolean v4, p0, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter;->mRemoveIconIfEmpty:Z

    if-eqz v4, :cond_2

    .line 297
    iget v4, v0, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->iconRes:I

    if-nez v4, :cond_1

    .line 298
    iget-object v4, v1, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    :goto_1
    iget-object v4, v1, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 308
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 309
    iget-object v4, v1, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v4, v1, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :goto_2
    return-object v3

    .line 290
    .end local v0    # "header":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    .end local v1    # "holder":Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    .end local v2    # "summary":Ljava/lang/CharSequence;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    move-object v3, p2

    .line 291
    .restart local v3    # "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;

    .restart local v1    # "holder":Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    goto :goto_0

    .line 300
    .restart local v0    # "header":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    :cond_1
    iget-object v4, v1, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v4, v1, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v5, v0, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 304
    :cond_2
    iget-object v4, v1, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v5, v0, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 312
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, v1, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
