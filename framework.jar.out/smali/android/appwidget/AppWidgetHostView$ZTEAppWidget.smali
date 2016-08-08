.class Landroid/appwidget/AppWidgetHostView$ZTEAppWidget;
.super Ljava/lang/Object;
.source "AppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZTEAppWidget"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultViewZTE(Landroid/appwidget/AppWidgetHostView;)Landroid/view/View;
    .locals 8
    .param p0, "hostView"    # Landroid/appwidget/AppWidgetHostView;

    .prologue
    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "defaultView":Landroid/view/View;
    const/4 v2, 0x0

    .line 708
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_0
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 712
    .local v4, "theirContext":Landroid/content/Context;
    iput-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 713
    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 715
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v3, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 716
    const-string v5, "AppWidgetHostView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "test selfappwidget getDefaultView ZTE,packagename="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 719
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mZteWidgetView:Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 726
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "theirContext":Landroid/content/Context;
    :goto_0
    if-eqz v2, :cond_0

    .line 727
    const-string v5, "AppWidgetHostView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error inflating AppWidget "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    if-nez v0, :cond_1

    .line 735
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    .line 738
    :cond_1
    return-object v0

    .line 720
    :catch_0
    move-exception v1

    .line 721
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v1

    .line 724
    goto :goto_0

    .line 722
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 723
    .local v1, "e":Ljava/lang/RuntimeException;
    move-object v2, v1

    goto :goto_0
.end method

.method static updateAppWidgetZTE(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;)Z
    .locals 6
    .param p0, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x3

    .line 646
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_0

    const-string v2, "is_ztewidget"

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->isZTEWidget:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 648
    :cond_0
    const-string v1, "AppWidgetHostView"

    const-string/jumbo v2, "not ZTEAppWidget, return false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v1, 0x0

    .line 697
    :goto_0
    return v1

    .line 652
    :cond_1
    const/4 v0, 0x0

    .line 653
    .local v0, "zteWidgetView":Landroid/view/View;
    if-eqz p1, :cond_4

    .line 655
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 656
    invoke-static {p0}, Landroid/appwidget/AppWidgetHostView$ZTEAppWidget;->getDefaultViewZTE(Landroid/appwidget/AppWidgetHostView;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mZteWidgetView:Landroid/view/View;

    .line 657
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mZteWidgetView:Landroid/view/View;

    .line 658
    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 659
    iput v4, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 660
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    .line 661
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    .line 662
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    .line 663
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    .line 677
    :goto_1
    const-string v2, "AppWidgetHostView"

    const-string/jumbo v3, "update ZTE Widget!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :goto_2
    const-string v2, "AppWidgetHostView"

    const-string/jumbo v3, "updateAppWidgetZTE return true!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 664
    :cond_2
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    if-eq v2, v0, :cond_3

    .line 665
    invoke-static {p0}, Landroid/appwidget/AppWidgetHostView$ZTEAppWidget;->getDefaultViewZTE(Landroid/appwidget/AppWidgetHostView;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mZteWidgetView:Landroid/view/View;

    .line 666
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mZteWidgetView:Landroid/view/View;

    .line 667
    iput v4, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 668
    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 669
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    .line 670
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    .line 671
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    .line 672
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    .line 673
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    goto :goto_1

    .line 675
    :cond_3
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    goto :goto_1

    .line 679
    :cond_4
    iget v2, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    if-ne v2, v4, :cond_5

    .line 681
    const-string v2, "AppWidgetHostView"

    const-string v3, "Already don ZTE Widget!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 684
    :cond_5
    invoke-static {p0}, Landroid/appwidget/AppWidgetHostView$ZTEAppWidget;->getDefaultViewZTE(Landroid/appwidget/AppWidgetHostView;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mZteWidgetView:Landroid/view/View;

    .line 685
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mZteWidgetView:Landroid/view/View;

    .line 686
    iput v4, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 687
    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 688
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    .line 689
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    .line 690
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    .line 691
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    .line 692
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    .line 693
    const-string v2, "AppWidgetHostView"

    const-string v3, "load new ZTE Widget!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
