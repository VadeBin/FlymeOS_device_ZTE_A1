.class final enum Lcom/android/internal/app/ResolverShareActivity$ActionTitle;
.super Ljava/lang/Enum;
.source "ResolverShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionTitle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/app/ResolverShareActivity$ActionTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

.field public static final enum DEFAULT:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

.field public static final enum EDIT:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

.field public static final enum HOME:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

.field public static final enum SEND:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

.field public static final enum SENDTO:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

.field public static final enum SEND_MULTIPLE:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

.field public static final enum VIEW:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;


# instance fields
.field public final action:Ljava/lang/String;

.field public final namedTitleRes:I

.field public final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const v10, 0x104047c

    const v9, 0x104047b

    .line 125
    new-instance v0, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    const-string v1, "VIEW"

    const-string v3, "android.intent.action.VIEW"

    const v4, 0x1040477

    const v5, 0x1040478

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    .line 128
    new-instance v3, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    const-string v4, "EDIT"

    const-string v6, "android.intent.action.EDIT"

    const v7, 0x1040479

    const v8, 0x104047a

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    .line 131
    new-instance v3, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    const-string v4, "SEND"

    const-string v6, "android.intent.action.SEND"

    move v5, v12

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    .line 134
    new-instance v3, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    const-string v4, "SENDTO"

    const/4 v5, 0x3

    const-string v6, "android.intent.action.SENDTO"

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    .line 137
    new-instance v3, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    const-string v4, "SEND_MULTIPLE"

    const/4 v5, 0x4

    const-string v6, "android.intent.action.SEND_MULTIPLE"

    move v7, v9

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    .line 140
    new-instance v3, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    const-string v4, "DEFAULT"

    const/4 v5, 0x5

    const/4 v6, 0x0

    const v7, 0x1040475

    const v8, 0x1040476

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    .line 143
    new-instance v3, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    const-string v4, "HOME"

    const/4 v5, 0x6

    const-string v6, "android.intent.action.MAIN"

    const v7, 0x104047d

    const v8, 0x104047e

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    .line 124
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    sget-object v1, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    aput-object v1, v0, v12

    const/4 v1, 0x3

    sget-object v2, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "titleRes"    # I
    .param p5, "namedTitleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput-object p3, p0, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->action:Ljava/lang/String;

    .line 153
    iput p4, p0, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->titleRes:I

    .line 154
    iput p5, p0, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->namedTitleRes:I

    .line 155
    return-void
.end method

.method public static forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverShareActivity$ActionTitle;
    .locals 5
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {}, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->values()[Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/app/ResolverShareActivity$ActionTitle;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 159
    .local v3, "title":Lcom/android/internal/app/ResolverShareActivity$ActionTitle;
    sget-object v4, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    if-eq v3, v4, :cond_0

    if-eqz p0, :cond_0

    iget-object v4, v3, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->action:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    .end local v3    # "title":Lcom/android/internal/app/ResolverShareActivity$ActionTitle;
    :goto_1
    return-object v3

    .line 158
    .restart local v3    # "title":Lcom/android/internal/app/ResolverShareActivity$ActionTitle;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "title":Lcom/android/internal/app/ResolverShareActivity$ActionTitle;
    :cond_1
    sget-object v3, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/app/ResolverShareActivity$ActionTitle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    const-class v0, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/app/ResolverShareActivity$ActionTitle;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    invoke-virtual {v0}, [Lcom/android/internal/app/ResolverShareActivity$ActionTitle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/ResolverShareActivity$ActionTitle;

    return-object v0
.end method
