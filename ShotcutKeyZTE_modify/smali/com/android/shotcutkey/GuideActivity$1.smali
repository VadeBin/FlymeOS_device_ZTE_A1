.class Lcom/android/shotcutkey/GuideActivity$1;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/GuideActivity;->InitViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shotcutkey/GuideActivity;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/GuideActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/GuideActivity$1;->this$0:Lcom/android/shotcutkey/GuideActivity;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 177
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 168
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/shotcutkey/GuideActivity$1;->this$0:Lcom/android/shotcutkey/GuideActivity;

    invoke-static {v0, p1}, Lcom/android/shotcutkey/GuideActivity;->access$0(Lcom/android/shotcutkey/GuideActivity;I)V

    .line 163
    return-void
.end method
