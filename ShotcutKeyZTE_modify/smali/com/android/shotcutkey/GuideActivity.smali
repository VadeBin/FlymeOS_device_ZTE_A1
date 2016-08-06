.class public Lcom/android/shotcutkey/GuideActivity;
.super Lcom/android/shotcutkey/MyActivity;
.source "GuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/shotcutkey/GuideActivity$viewpagerData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private button:[Landroid/widget/Button;

.field private currIndex:I

.field private instance:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/shotcutkey/GuideActivity$viewpagerData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private pageSize:I

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private viewPagerAdapter:Lcom/android/shotcutkey/MyViewPagerAdapter;

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/shotcutkey/MyLog;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "guideActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/shotcutkey/GuideActivity;->TAG:Ljava/lang/String;

    .line 25
    sget-boolean v0, Lcom/android/shotcutkey/MyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/shotcutkey/GuideActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/shotcutkey/MyActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/shotcutkey/GuideActivity;->currIndex:I

    .line 22
    return-void
.end method

.method private InitViewPager()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 129
    const v5, 0x7f060069

    invoke-virtual {p0, v5}, Lcom/android/shotcutkey/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/shotcutkey/GuideActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 130
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/shotcutkey/GuideActivity;->views:Ljava/util/List;

    .line 131
    invoke-virtual {p0}, Lcom/android/shotcutkey/GuideActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 133
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/android/shotcutkey/GuideActivity;->pageSize:I

    new-array v5, v5, [Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/shotcutkey/GuideActivity;->button:[Landroid/widget/Button;

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lcom/android/shotcutkey/GuideActivity;->pageSize:I

    if-lt v0, v5, :cond_0

    .line 153
    new-instance v5, Lcom/android/shotcutkey/MyViewPagerAdapter;

    iget-object v6, p0, Lcom/android/shotcutkey/GuideActivity;->views:Ljava/util/List;

    invoke-direct {v5, v6}, Lcom/android/shotcutkey/MyViewPagerAdapter;-><init>(Ljava/util/List;)V

    iput-object v5, p0, Lcom/android/shotcutkey/GuideActivity;->viewPagerAdapter:Lcom/android/shotcutkey/MyViewPagerAdapter;

    .line 154
    iget-object v5, p0, Lcom/android/shotcutkey/GuideActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/android/shotcutkey/GuideActivity;->viewPagerAdapter:Lcom/android/shotcutkey/MyViewPagerAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 156
    iget-object v5, p0, Lcom/android/shotcutkey/GuideActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v6, p0, Lcom/android/shotcutkey/GuideActivity;->currIndex:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 158
    iget-object v5, p0, Lcom/android/shotcutkey/GuideActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/android/shotcutkey/GuideActivity$1;

    invoke-direct {v6, p0}, Lcom/android/shotcutkey/GuideActivity$1;-><init>(Lcom/android/shotcutkey/GuideActivity;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 179
    return-void

    .line 136
    :cond_0
    const v5, 0x7f030042

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 139
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f06006a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 140
    .local v2, "imageview":Landroid/widget/ImageView;
    invoke-direct {p0, v0}, Lcom/android/shotcutkey/GuideActivity;->getImageId(I)I

    move-result v1

    .line 141
    .local v1, "imageid":I
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v6, p0, Lcom/android/shotcutkey/GuideActivity;->button:[Landroid/widget/Button;

    const v5, 0x7f06006b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v0

    .line 145
    invoke-direct {p0, v0}, Lcom/android/shotcutkey/GuideActivity;->getButtonExist(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    iget-object v5, p0, Lcom/android/shotcutkey/GuideActivity;->button:[Landroid/widget/Button;

    aget-object v5, v5, v0

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :goto_1
    iget-object v5, p0, Lcom/android/shotcutkey/GuideActivity;->views:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    iget-object v5, p0, Lcom/android/shotcutkey/GuideActivity;->button:[Landroid/widget/Button;

    aget-object v5, v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/GuideActivity;I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/android/shotcutkey/GuideActivity;->currIndex:I

    return-void
.end method

.method private checkIsFirstOpen()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 69
    const-string v3, "sharedpreferences"

    invoke-virtual {p0, v3, v5}, Lcom/android/shotcutkey/GuideActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 71
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "isFirstOpen"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 72
    .local v1, "isFirstOpen":Z
    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "isFirstOpen"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    sget-boolean v3, Lcom/android/shotcutkey/GuideActivity;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 79
    sget-object v3, Lcom/android/shotcutkey/GuideActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkIsFirstOpen() isFirstOpen = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    return v1
.end method

.method private getButtonExist(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 120
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/shotcutkey/GuideActivity;->pageSize:I

    if-lt p1, v0, :cond_1

    .line 121
    :cond_0
    sget-object v0, Lcom/android/shotcutkey/GuideActivity;->TAG:Ljava/lang/String;

    const-string v1, "getvideofile param is error!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/shotcutkey/GuideActivity;->instance:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/GuideActivity$viewpagerData;

    # getter for: Lcom/android/shotcutkey/GuideActivity$viewpagerData;->mHaveButton:Z
    invoke-static {v0}, Lcom/android/shotcutkey/GuideActivity$viewpagerData;->access$1(Lcom/android/shotcutkey/GuideActivity$viewpagerData;)Z

    move-result v0

    return v0
.end method

.method private getImageId(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 113
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/shotcutkey/GuideActivity;->pageSize:I

    if-lt p1, v0, :cond_1

    .line 114
    :cond_0
    sget-object v0, Lcom/android/shotcutkey/GuideActivity;->TAG:Ljava/lang/String;

    const-string v1, "setButtonId param is error!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/shotcutkey/GuideActivity;->instance:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/GuideActivity$viewpagerData;

    # getter for: Lcom/android/shotcutkey/GuideActivity$viewpagerData;->mImageId:I
    invoke-static {v0}, Lcom/android/shotcutkey/GuideActivity$viewpagerData;->access$0(Lcom/android/shotcutkey/GuideActivity$viewpagerData;)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 95
    iget-object v4, p0, Lcom/android/shotcutkey/GuideActivity;->instance:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/shotcutkey/GuideActivity;->instance:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lcom/android/shotcutkey/GuideActivity$viewpagerData;

    const v4, 0x7f02020f

    invoke-direct {v0, p0, v4, v5}, Lcom/android/shotcutkey/GuideActivity$viewpagerData;-><init>(Lcom/android/shotcutkey/GuideActivity;IZ)V

    .line 100
    .local v0, "data1":Lcom/android/shotcutkey/GuideActivity$viewpagerData;
    iget-object v4, p0, Lcom/android/shotcutkey/GuideActivity;->instance:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/android/shotcutkey/GuideActivity$viewpagerData;

    const v4, 0x7f020210

    invoke-direct {v1, p0, v4, v5}, Lcom/android/shotcutkey/GuideActivity$viewpagerData;-><init>(Lcom/android/shotcutkey/GuideActivity;IZ)V

    .line 102
    .local v1, "data2":Lcom/android/shotcutkey/GuideActivity$viewpagerData;
    iget-object v4, p0, Lcom/android/shotcutkey/GuideActivity;->instance:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v2, Lcom/android/shotcutkey/GuideActivity$viewpagerData;

    const v4, 0x7f020211

    invoke-direct {v2, p0, v4, v5}, Lcom/android/shotcutkey/GuideActivity$viewpagerData;-><init>(Lcom/android/shotcutkey/GuideActivity;IZ)V

    .line 104
    .local v2, "data3":Lcom/android/shotcutkey/GuideActivity$viewpagerData;
    iget-object v4, p0, Lcom/android/shotcutkey/GuideActivity;->instance:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v3, Lcom/android/shotcutkey/GuideActivity$viewpagerData;

    const v4, 0x7f020212

    const/4 v5, 0x1

    invoke-direct {v3, p0, v4, v5}, Lcom/android/shotcutkey/GuideActivity$viewpagerData;-><init>(Lcom/android/shotcutkey/GuideActivity;IZ)V

    .line 106
    .local v3, "data4":Lcom/android/shotcutkey/GuideActivity$viewpagerData;
    iget-object v4, p0, Lcom/android/shotcutkey/GuideActivity;->instance:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v4, p0, Lcom/android/shotcutkey/GuideActivity;->instance:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/android/shotcutkey/GuideActivity;->pageSize:I

    .line 110
    .end local v0    # "data1":Lcom/android/shotcutkey/GuideActivity$viewpagerData;
    .end local v1    # "data2":Lcom/android/shotcutkey/GuideActivity$viewpagerData;
    .end local v2    # "data3":Lcom/android/shotcutkey/GuideActivity$viewpagerData;
    .end local v3    # "data4":Lcom/android/shotcutkey/GuideActivity$viewpagerData;
    :cond_0
    return-void
.end method

.method private startMainActivity()V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/shotcutkey/GuideActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.android.shotcutkey.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/shotcutkey/GuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/shotcutkey/GuideActivity;->startMainActivity()V

    .line 184
    invoke-virtual {p0}, Lcom/android/shotcutkey/GuideActivity;->finish()V

    .line 185
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    sget-boolean v1, Lcom/android/shotcutkey/GuideActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 43
    sget-object v1, Lcom/android/shotcutkey/GuideActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/android/shotcutkey/GuideActivity;->checkIsFirstOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    invoke-super {p0, p1}, Lcom/android/shotcutkey/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iput-object p0, p0, Lcom/android/shotcutkey/GuideActivity;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/android/shotcutkey/GuideActivity;->startMainActivity()V

    .line 51
    invoke-virtual {p0}, Lcom/android/shotcutkey/GuideActivity;->finish()V

    .line 66
    :goto_0
    return-void

    .line 53
    :cond_1
    const v0, 0x280400

    .line 56
    .local v0, "flags":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/shotcutkey/GuideActivity;->requestWindowFeature(I)Z

    .line 57
    invoke-virtual {p0}, Lcom/android/shotcutkey/GuideActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 58
    invoke-super {p0, p1}, Lcom/android/shotcutkey/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f030041

    invoke-virtual {p0, v1}, Lcom/android/shotcutkey/GuideActivity;->setContentView(I)V

    .line 61
    iput-object p0, p0, Lcom/android/shotcutkey/GuideActivity;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/android/shotcutkey/GuideActivity;->init()V

    .line 64
    invoke-direct {p0}, Lcom/android/shotcutkey/GuideActivity;->InitViewPager()V

    goto :goto_0
.end method
