.class public final Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;
.super Ljava/lang/Object;
.source "ActionBarHelper.java"


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ActionBarHelper"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIndicatorInfo:Ljava/lang/Object;

.field private mUsesCompat:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mActivity:Landroid/app/Activity;

    .line 26
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 27
    .local v0, "clazz":Ljava/lang/Class;
    const-string v2, "getSupportActionBar"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 28
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mUsesCompat:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->getIndicatorInfo()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mIndicatorInfo:Ljava/lang/Object;

    .line 38
    return-void

    .line 29
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getIndicatorInfo()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mUsesCompat:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat;->getIndicatorInfo(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 43
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 44
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative;->getIndicatorInfo(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mUsesCompat:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mIndicatorInfo:Ljava/lang/Object;

    invoke-static {v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat;->getThemeUpIndicator(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 70
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mIndicatorInfo:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative;->getThemeUpIndicator(Ljava/lang/Object;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDesc"    # I

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mUsesCompat:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mIndicatorInfo:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat;->setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mIndicatorInfo:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative;->setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDesc"    # I

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mUsesCompat:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mIndicatorInfo:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat;->setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mIndicatorInfo:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative;->setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method public setDisplayShowHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mUsesCompat:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mIndicatorInfo:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat;->setDisplayHomeAsUpEnabled(Ljava/lang/Object;Z)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperNative;->setDisplayHomeAsUpEnabled(Landroid/app/Activity;Z)V

    goto :goto_0
.end method
