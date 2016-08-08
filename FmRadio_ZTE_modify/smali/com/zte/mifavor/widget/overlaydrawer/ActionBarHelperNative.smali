.class final Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative;
.super Ljava/lang/Object;
.source "ActionBarHelperNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative$SetIndicatorInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarHelperNative"

.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101030b

    aput v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative;->THEME_ATTRS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getIndicatorInfo(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative$SetIndicatorInfo;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getThemeUpIndicator(Ljava/lang/Object;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    sget-object v2, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative;->THEME_ATTRS:[I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-object v1
.end method

.method public static setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)V
    .locals 6
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 44
    move-object v1, p0

    check-cast v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative$SetIndicatorInfo;

    .line 45
    .local v1, "sii":Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative$SetIndicatorInfo;
    iget-object v2, v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 48
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v2, v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V
    .locals 6
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentDescRes"    # I

    .prologue
    .line 27
    move-object v1, p0

    check-cast v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative$SetIndicatorInfo;

    .line 28
    .local v1, "sii":Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative$SetIndicatorInfo;
    iget-object v2, v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 30
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 31
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v2, v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v2, v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v2, v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 33
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setDisplayHomeAsUpEnabled(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "b"    # Z

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 68
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 71
    :cond_0
    return-void
.end method
