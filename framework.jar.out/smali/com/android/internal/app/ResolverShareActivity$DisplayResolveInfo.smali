.class final Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "ResolverShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extendedInfo:Ljava/lang/CharSequence;

.field origIntent:Landroid/content/Intent;

.field ri:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ResolverShareActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverShareActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0
    .param p2, "pri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "pLabel"    # Ljava/lang/CharSequence;
    .param p4, "pInfo"    # Ljava/lang/CharSequence;
    .param p5, "pOrigIntent"    # Landroid/content/Intent;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput-object p2, p0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 704
    iput-object p3, p0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 705
    iput-object p4, p0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    .line 706
    iput-object p5, p0, Lcom/android/internal/app/ResolverShareActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    .line 707
    return-void
.end method
