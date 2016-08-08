.class public Lcom/mediatek/fmradio/FmRadioWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "FmRadioWidget.java"


# static fields
.field public static final FM_WIDGET_POWER:Ljava/lang/String; = "com.mediatek.FMRadio.FmRadioWidget.power"

.field public static final FM_WIDGET_UPDATE:Ljava/lang/String; = "com.mediatek.FMRadio.FmRadioWidget.update"

.field private static final TAG:Ljava/lang/String; = "FmRadioWidget"

.field private static sInstance:Lcom/mediatek/fmradio/FmRadioWidget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/fmradio/FmRadioWidget;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/mediatek/fmradio/FmRadioWidget;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/fmradio/FmRadioWidget;->sInstance:Lcom/mediatek/fmradio/FmRadioWidget;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/mediatek/fmradio/FmRadioWidget;

    invoke-direct {v0}, Lcom/mediatek/fmradio/FmRadioWidget;-><init>()V

    sput-object v0, Lcom/mediatek/fmradio/FmRadioWidget;->sInstance:Lcom/mediatek/fmradio/FmRadioWidget;

    .line 25
    :cond_0
    sget-object v0, Lcom/mediatek/fmradio/FmRadioWidget;->sInstance:Lcom/mediatek/fmradio/FmRadioWidget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected getRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "freq"    # I

    .prologue
    const/4 v9, 0x0

    .line 53
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 54
    const v7, 0x7f03003e

    .line 53
    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 55
    .local v5, "views":Landroid/widget/RemoteViews;
    int-to-float v6, p2

    const/high16 v7, 0x41200000    # 10.0f

    div-float v0, v6, v7

    .line 56
    .local v0, "current_freq":F
    const v6, 0x7f060075

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FM "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 56
    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 60
    new-instance v3, Landroid/content/Intent;

    .line 61
    const-string v6, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKPREV"

    .line 60
    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v3, "intentPrev":Landroid/content/Intent;
    invoke-static {p1, v9, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 63
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const v6, 0x7f060073

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 65
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.mediatek.FMRadio.FmRadioWidget.power"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "intentPower":Landroid/content/Intent;
    invoke-static {p1, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 67
    const v6, 0x7f060072

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 69
    new-instance v1, Landroid/content/Intent;

    .line 70
    const-string v6, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKNEXT"

    .line 69
    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "intentNext":Landroid/content/Intent;
    invoke-static {p1, v9, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 72
    const v6, 0x7f060074

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 73
    return-object v5
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 32
    const-string v1, "FmRadioWidget"

    const-string v2, "onUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FmRadioWidget.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "updateIntent":Landroid/content/Intent;
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 38
    return-void
.end method

.method public updateWidget(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "freq"    # I

    .prologue
    .line 41
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 42
    .local v3, "manager":Landroid/appwidget/AppWidgetManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v1, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 44
    .local v0, "appWidgetIds":[I
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 45
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-lt v2, v5, :cond_1

    .line 50
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 46
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/fmradio/FmRadioWidget;->getRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 47
    .local v4, "views":Landroid/widget/RemoteViews;
    aget v5, v0, v2

    invoke-virtual {v3, v5, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
