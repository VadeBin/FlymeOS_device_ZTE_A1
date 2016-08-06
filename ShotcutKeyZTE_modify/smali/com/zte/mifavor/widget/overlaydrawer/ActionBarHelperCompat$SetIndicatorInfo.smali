.class Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;
.super Ljava/lang/Object;
.source "ActionBarHelperCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetIndicatorInfo"
.end annotation


# instance fields
.field public mActionBar:Ljava/lang/Object;

.field public mHomeAsUpEnabled:Ljava/lang/reflect/Method;

.field public mUpIndicatorView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    .local v0, "appPackage":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "abs__home"

    const-string v10, "id"

    invoke-virtual {v8, v9, v10, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, "homeId":I
    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 75
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 76
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "abs__up"

    const-string v10, "id"

    invoke-virtual {v8, v9, v10, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 77
    .local v6, "upId":I
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .end local v2    # "homeId":I
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v6    # "upId":I
    .end local v7    # "v":Landroid/view/View;
    :goto_0
    :try_start_2
    iget-object v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    if-nez v8, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "home"

    const-string v10, "id"

    invoke-virtual {v8, v9, v10, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 87
    .restart local v2    # "homeId":I
    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 88
    .restart local v7    # "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 89
    .restart local v3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "up"

    const-string v10, "id"

    invoke-virtual {v8, v9, v10, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 90
    .restart local v6    # "upId":I
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    .line 93
    .end local v2    # "homeId":I
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v6    # "upId":I
    .end local v7    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 94
    .local v5, "supportActivity":Ljava/lang/Class;
    const-string v8, "getSupportActionBar"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 96
    .local v1, "getActionBar":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    invoke-virtual {v1, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mActionBar:Ljava/lang/Object;

    .line 97
    iget-object v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mActionBar:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 98
    .local v4, "supportActionBar":Ljava/lang/Class;
    const-string v8, "setDisplayHomeAsUpEnabled"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelperCompat$SetIndicatorInfo;->mHomeAsUpEnabled:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    .end local v0    # "appPackage":Ljava/lang/String;
    .end local v1    # "getActionBar":Ljava/lang/reflect/Method;
    .end local v4    # "supportActionBar":Ljava/lang/Class;
    .end local v5    # "supportActivity":Ljava/lang/Class;
    :goto_1
    return-void

    .line 100
    :catch_0
    move-exception v8

    goto :goto_1

    .line 78
    .restart local v0    # "appPackage":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_0
.end method
