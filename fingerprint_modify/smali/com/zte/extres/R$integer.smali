.class public final Lcom/zte/extres/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/extres/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static preference_fragment_scrollbarStyle:I

.field public static preference_screen_header_scrollbarStyle:I

.field public static preferences_left_pane_weight:I

.field public static preferences_right_pane_weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 779
    const/high16 v0, 0x7f0c0000

    sput v0, Lcom/zte/extres/R$integer;->preference_fragment_scrollbarStyle:I

    .line 780
    const v0, 0x7f0c0001

    sput v0, Lcom/zte/extres/R$integer;->preference_screen_header_scrollbarStyle:I

    .line 781
    const v0, 0x7f0c0002

    sput v0, Lcom/zte/extres/R$integer;->preferences_left_pane_weight:I

    .line 782
    const v0, 0x7f0c0003

    sput v0, Lcom/zte/extres/R$integer;->preferences_right_pane_weight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
