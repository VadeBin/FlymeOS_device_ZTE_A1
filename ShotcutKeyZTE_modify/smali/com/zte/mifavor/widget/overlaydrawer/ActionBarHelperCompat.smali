.class final Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat;
.super Ljava/lang/Object;
.source "ActionBarHelperCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarHelperCompat"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getIndicatorInfo(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getThemeUpIndicator(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    .line 37
    move-object v0, p0

    check-cast v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;

    .line 38
    .local v0, "sii":Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;
    iget-object v1, v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)V
    .locals 3
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 29
    move-object v1, p0

    check-cast v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;

    .line 30
    .local v1, "sii":Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;
    iget-object v2, v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 31
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 32
    .local v0, "contentDescription":Ljava/lang/String;
    :goto_0
    iget-object v2, v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    .end local v0    # "contentDescription":Ljava/lang/String;
    :cond_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentDescRes"    # I

    .prologue
    .line 20
    move-object v1, p0

    check-cast v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;

    .line 21
    .local v1, "sii":Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;
    iget-object v2, v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 22
    iget-object v2, v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    if-nez p3, :cond_1

    const/4 v0, 0x0

    .line 24
    .local v0, "contentDescription":Ljava/lang/String;
    :goto_0
    iget-object v2, v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    .end local v0    # "contentDescription":Ljava/lang/String;
    :cond_0
    return-void

    .line 23
    :cond_1
    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setDisplayHomeAsUpEnabled(Ljava/lang/Object;Z)V
    .locals 6
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "enabled"    # Z

    .prologue
    .line 49
    move-object v0, p0

    check-cast v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;

    .line 50
    .local v0, "sii":Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;
    iget-object v1, v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mHomeAsUpEnabled:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    iget-object v1, v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mHomeAsUpEnabled:Ljava/lang/reflect/Method;

    iget-object v2, v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mActionBar:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    goto :goto_0
.end method
