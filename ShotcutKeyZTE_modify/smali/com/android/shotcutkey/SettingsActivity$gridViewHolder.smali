.class Lcom/android/shotcutkey/SettingsActivity$gridViewHolder;
.super Ljava/lang/Object;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "gridViewHolder"
.end annotation


# instance fields
.field subTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/shotcutkey/SettingsActivity;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/shotcutkey/SettingsActivity;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/shotcutkey/SettingsActivity$gridViewHolder;->this$0:Lcom/android/shotcutkey/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/shotcutkey/SettingsActivity;Lcom/android/shotcutkey/SettingsActivity$gridViewHolder;)V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/android/shotcutkey/SettingsActivity$gridViewHolder;-><init>(Lcom/android/shotcutkey/SettingsActivity;)V

    return-void
.end method
