.class public Lajc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajc$a;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:I

.field public static c:[Ljava/lang/String;

.field public static d:[Laji$a;

.field public static e:I

.field public static f:I

.field public static g:Z

.field public static h:[Z

.field public static i:I

.field public static j:I

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lajc$a;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lajc$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    sput-boolean v1, Lajc;->a:Z

    .line 53
    const/4 v0, 0x1

    sput v0, Lajc;->b:I

    .line 54
    sput-object v2, Lajc;->c:[Ljava/lang/String;

    .line 56
    sput-object v2, Lajc;->d:[Laji$a;

    .line 57
    sput v1, Lajc;->e:I

    .line 58
    sput v1, Lajc;->f:I

    .line 66
    const-string v0, ""

    sput-object v0, Lajc;->k:Ljava/lang/String;

    .line 67
    const-string v0, ""

    sput-object v0, Lajc;->l:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lajc;->m:Ljava/util/HashSet;

    .line 80
    sput-boolean v1, Lajc;->g:Z

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lajc;->n:Ljava/util/HashSet;

    .line 83
    sput-object v2, Lajc;->h:[Z

    .line 84
    sput v1, Lajc;->i:I

    .line 85
    sput v1, Lajc;->j:I

    return-void
.end method

.method public static a()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 178
    sget v2, Lajc;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 179
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUseableSlotId mSlotState[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lajc;->d:[Laji$a;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUseableSlotId mSlotState[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lajc;->d:[Laji$a;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v2, Lajc;->d:[Laji$a;

    aget-object v2, v2, v0

    sget-object v3, Laji$a;->d:Laji$a;

    if-ne v2, v3, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 184
    goto :goto_0
.end method

.method public static a(J)I
    .locals 4

    .prologue
    .line 687
    invoke-static {p0, p1}, Laji;->a(J)I

    move-result v0

    .line 688
    const-string v1, "DualSimMessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get slot id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-static {v0}, Lajc;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJI)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJI)I"
        }
    .end annotation

    .prologue
    .line 664
    const/4 v1, -0x1

    .line 666
    :try_start_0
    invoke-static {p7}, Laji;->a(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Laji;->d(J)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 668
    const-string v3, "copyTextMessageToIccCard"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/util/List;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 672
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 682
    :goto_0
    return v0

    .line 675
    :catch_0
    move-exception v0

    .line 676
    :try_start_1
    const-string v2, "DualSimMessageUtils"

    const-string v3, "throw Exception :"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 682
    goto :goto_0

    .line 677
    :catch_1
    move-exception v0

    .line 678
    const-string v2, "DualSimMessageUtils"

    const-string v3, "throw Exception :"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 682
    goto :goto_0

    .line 679
    :catch_2
    move-exception v0

    .line 680
    const-string v2, "DualSimMessageUtils"

    const-string v3, "throw Exception :"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 682
    goto :goto_0

    :catchall_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 454
    sget v0, Lajc;->e:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 455
    if-nez p0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intent is null in DualSimMessageUtils.getSlotIdFromIntent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 469
    :goto_0
    return v0

    .line 462
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not has extra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 469
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 156
    const-string v1, "-10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    const/16 v0, -0xa

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    sget-boolean v1, Lajc;->a:Z

    if-eqz v1, :cond_0

    .line 162
    :goto_1
    sget-object v1, Lajc;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 163
    sget-object v1, Lajc;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lajc;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    sget-object v1, Lajc;->d:[Laji$a;

    aget-object v1, v1, v0

    sget-object v2, Laji$a;->b:Laji$a;

    if-ne v1, v2, :cond_0

    .line 162
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_3
    sget-boolean v1, Lajc;->a:Z

    if-eqz v1, :cond_0

    .line 173
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;)J
    .locals 4

    .prologue
    .line 655
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 656
    const-string v0, "subscription"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 658
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "subscription"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 271
    const-string v0, ""

    .line 273
    invoke-static {p0, p1}, Laji;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 274
    if-nez v1, :cond_0

    .line 275
    const-string v1, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimNameBySlotId slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {p1}, Laji;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    const-string v1, ""

    .line 287
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 297
    :goto_1
    return-object v0

    .line 279
    :cond_1
    sget-boolean v1, Lcom/android/mms/MmsApp;->b:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 280
    const v1, #com.android.mms:string@no_sim_cdma#t

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 282
    :cond_2
    const v1, #com.android.mms:string@no_sim#t

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 289
    :pswitch_0
    const v0, #com.android.mms:string@change_sim1_title#t

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 292
    :pswitch_1
    const v0, #com.android.mms:string@change_sim2_title#t

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 295
    :pswitch_2
    const-string v0, ""

    goto :goto_1

    .line 287
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 365
    sget-boolean v0, Lajc;->a:Z

    if-eqz v0, :cond_0

    .line 366
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConversationDraftImsi slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selectedImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {p0}, Lajc;->c(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lajc;->l:Ljava/lang/String;

    .line 368
    sget-object v0, Lajc;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    sput-object p1, Lajc;->l:Ljava/lang/String;

    .line 372
    :cond_0
    return-void
.end method

.method public static a(Lajc$a;)V
    .locals 2

    .prologue
    .line 436
    sget-object v1, Lajc;->m:Ljava/util/HashSet;

    monitor-enter v1

    .line 437
    :try_start_0
    sget-object v0, Lajc;->m:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 438
    monitor-exit v1

    .line 439
    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 88
    invoke-static {}, Lajc;->n()V

    .line 89
    invoke-static {p0}, Lajc;->b(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public static a(Landroid/content/Context;III)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 528
    invoke-static {}, Lajc;->n()V

    .line 529
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateServiceStateValues slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", voiceRegState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dataRegState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-boolean v2, Lajc;->a:Z

    if-eqz v2, :cond_4

    .line 532
    sget-boolean v2, Lcom/android/mms/MmsApp;->b:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    invoke-static {p0}, Lajc;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    if-ne p2, v5, :cond_0

    if-eq p3, v5, :cond_1

    :cond_0
    move p2, v0

    .line 543
    :cond_1
    :goto_0
    invoke-static {p1}, Lajc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 545
    if-eq p2, v5, :cond_5

    .line 546
    sget-object v2, Lajc;->h:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_2

    .line 547
    sget-object v0, Lajc;->h:[Z

    aput-boolean v1, v0, p1

    move v0, v1

    .line 556
    :cond_2
    :goto_1
    const-string v1, "DualSimMessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateServiceStateValues needUpdate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    if-eqz v0, :cond_3

    .line 558
    invoke-static {}, Lajc;->g()V

    .line 561
    :cond_3
    return-void

    .line 539
    :cond_4
    const-string v2, "DualSimMessageUtils"

    const-string v3, "updateServiceStateValues set single slot device\'s slotId to be 0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 540
    goto :goto_0

    .line 551
    :cond_5
    sget-object v2, Lajc;->h:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_2

    .line 552
    sget-object v2, Lajc;->h:[Z

    aput-boolean v0, v2, p1

    move v0, v1

    .line 553
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lajc;->n()V

    .line 137
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsiSlotValues slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lajc;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const-string v0, "READY"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IMSI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOADED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    :cond_0
    sget-object v0, Lajc;->c:[Ljava/lang/String;

    invoke-static {p0, p1}, Laji;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 142
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsiSlotValues IMSI_SLOT_VALUES["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lajc;->c:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    :goto_0
    invoke-static {p0}, Lajc;->e(Landroid/content/Context;)V

    .line 149
    invoke-static {}, Lajc;->b()V

    .line 151
    :cond_2
    return-void

    .line 143
    :cond_3
    const-string v0, "ABSENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Lajc;->c:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, p1

    .line 145
    sget-object v0, Lajc;->h:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 146
    invoke-static {}, Lajc;->g()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;JI)V
    .locals 3

    .prologue
    .line 601
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initServiceStates subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    sget-object v0, Lajc;->h:[Z

    invoke-static {p0, p1, p2}, Lajc;->a(Landroid/content/Context;J)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 603
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initServiceStates mServiceStates["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lajc;->h:[Z

    aget-boolean v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-void
.end method

.method public static a(Landroid/widget/ImageView;IIZ)V
    .locals 8

    .prologue
    const/16 v0, -0xa

    const/4 v7, 0x6

    const/4 v1, 0x1

    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 218
    if-ne p1, v6, :cond_3

    if-ne p2, v0, :cond_3

    move v4, v1

    .line 219
    :goto_0
    if-nez p1, :cond_4

    if-ne p2, v0, :cond_4

    move v0, v1

    .line 220
    :goto_1
    sget-boolean v3, Lajc;->a:Z

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-eqz v0, :cond_2

    .line 221
    :cond_0
    if-ltz p2, :cond_5

    move v3, v1

    .line 222
    :goto_2
    if-eqz v3, :cond_6

    if-nez p3, :cond_6

    sget v3, Lajc;->e:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    sget v3, Lajc;->i:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    move v3, v1

    .line 224
    :goto_3
    packed-switch p1, :pswitch_data_0

    .line 234
    :pswitch_0
    if-nez v0, :cond_1

    if-eqz v3, :cond_7

    .line 238
    :cond_1
    :goto_4
    if-nez v1, :cond_8

    .line 239
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    :cond_2
    :goto_5
    return-void

    :cond_3
    move v4, v2

    .line 218
    goto :goto_0

    :cond_4
    move v0, v2

    .line 219
    goto :goto_1

    :cond_5
    move v3, v2

    .line 221
    goto :goto_2

    :cond_6
    move v3, v2

    .line 222
    goto :goto_3

    :pswitch_1
    move v1, v2

    .line 229
    goto :goto_4

    .line 231
    :pswitch_2
    if-nez v4, :cond_1

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v2

    .line 234
    goto :goto_4

    .line 241
    :cond_8
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    sparse-switch p2, :sswitch_data_0

    goto :goto_5

    .line 258
    :sswitch_0
    sget-boolean v0, Lcom/android/mms/MmsApp;->o:Z

    if-nez v0, :cond_15

    .line 259
    if-ne p1, v6, :cond_13

    const v0, #com.android.mms:drawable@cma_list_sim_cloud#t

    :goto_6
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 244
    :sswitch_1
    sget-boolean v0, Lcom/android/mms/MmsApp;->o:Z

    if-nez v0, :cond_b

    .line 245
    if-ne p1, v6, :cond_9

    const v0, #com.android.mms:drawable@cma_list_sim1#t

    :goto_7
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_9
    if-ne p1, v7, :cond_a

    const v0, #com.android.mms:drawable@sim1_noti#t

    goto :goto_7

    :cond_a
    const v0, #com.android.mms:drawable@sim1_list#t

    goto :goto_7

    .line 247
    :cond_b
    if-ne p1, v6, :cond_c

    const v0, #com.android.mms:drawable@cma_list_sim1_large#t

    :goto_8
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_c
    if-ne p1, v7, :cond_d

    const v0, #com.android.mms:drawable@sim1_noti#t

    goto :goto_8

    :cond_d
    const v0, #com.android.mms:drawable@sim1_list_large#t

    goto :goto_8

    .line 251
    :sswitch_2
    sget-boolean v0, Lcom/android/mms/MmsApp;->o:Z

    if-nez v0, :cond_10

    .line 252
    if-ne p1, v6, :cond_e

    const v0, #com.android.mms:drawable@cma_list_sim2#t

    :goto_9
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_e
    if-ne p1, v7, :cond_f

    const v0, #com.android.mms:drawable@sim2_noti#t

    goto :goto_9

    :cond_f
    const v0, #com.android.mms:drawable@sim2_list#t

    goto :goto_9

    .line 254
    :cond_10
    if-ne p1, v6, :cond_11

    const v0, #com.android.mms:drawable@cma_list_sim2_large#t

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_11
    if-ne p1, v7, :cond_12

    const v0, #com.android.mms:drawable@sim2_noti#t

    goto :goto_a

    :cond_12
    const v0, #com.android.mms:drawable@sim2_list_large#t

    goto :goto_a

    .line 259
    :cond_13
    if-ne p1, v7, :cond_14

    const v0, #com.android.mms:drawable@sim_cloud_noti#t

    goto :goto_6

    :cond_14
    const v0, #com.android.mms:drawable@sim_cloud_list#t

    goto :goto_6

    .line 261
    :cond_15
    if-ne p1, v6, :cond_16

    const v0, #com.android.mms:drawable@cma_list_sim_cloud_large#t

    :goto_b
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_16
    if-ne p1, v7, :cond_17

    const v0, #com.android.mms:drawable@sim_cloud_noti#t

    goto :goto_b

    :cond_17
    const v0, #com.android.mms:drawable@sim_cloud_list_large#t

    goto :goto_b

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 242
    :sswitch_data_0
    .sparse-switch
        -0xa -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    sget v0, Lajc;->b:I

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)Z
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 607
    .line 608
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioOn subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-static {p1, p2}, Laji;->c(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 612
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    .line 615
    const-string v0, "android.os.ServiceManager"

    const-string v1, "getService"

    const-class v2, Ljava/lang/String;

    const-string v3, "phone"

    const-string v4, "com.android.internal.telephony.ITelephony$Stub"

    const-string v5, "asInterface"

    const-class v6, Landroid/os/IBinder;

    const-string v7, "isRadioOnForSubscriber"

    new-array v8, v11, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v12

    new-array v9, v11, [Ljava/lang/Object;

    long-to-int v11, p1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const-string v10, "com.android.mms"

    aput-object v10, v9, v12

    invoke-static/range {v0 .. v9}, Lajx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 632
    :goto_0
    return v0

    .line 618
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    .line 620
    const-string v0, "android.os.ServiceManager"

    const-string v1, "getService"

    const-class v2, Ljava/lang/String;

    const-string v3, "phone"

    const-string v4, "com.android.internal.telephony.ITelephony$Stub"

    const-string v5, "asInterface"

    const-class v6, Landroid/os/IBinder;

    const-string v7, "isRadioOnForSubscriber"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    long-to-int v9, p1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lajx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

# hxs modify begin
# sn isRadioOn failed to get radio state for sub
    #check-cast v0, Ljava/lang/Boolean;

    #invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #move-result v0

    const/4 v0, 0x1
# hxs modify end

    goto :goto_0

    .line 624
    :cond_1
    const-string v0, "android.os.ServiceManager"

    const-string v1, "getService"

    const-class v2, Ljava/lang/String;

    const-string v3, "phone"

    const-string v4, "com.android.internal.telephony.ITelephony$Stub"

    const-string v5, "asInterface"

    const-class v6, Landroid/os/IBinder;

    const-string v7, "isRadioOnForSubscriber"

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lajx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 629
    :cond_2
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioOn failed to get radio state for sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ITelephony is null or subId is valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 412
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    const/4 v0, 0x0

    .line 415
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 302
    invoke-static {p0, p1}, Laji;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 303
    if-nez v0, :cond_0

    .line 304
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClearSimNameBySlotId simName is null, slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    packed-switch p1, :pswitch_data_0

    .line 317
    :cond_0
    :goto_0
    return-object v0

    .line 307
    :pswitch_0
    const v0, #com.android.mms:string@sim1#t

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :pswitch_1
    const v0, #com.android.mms:string@sim2#t

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 313
    :pswitch_2
    const-string v0, ""

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 196
    sget v1, Lajc;->e:I

    sput v1, Lajc;->f:I

    .line 197
    sput v0, Lajc;->e:I

    .line 198
    :goto_0
    sget-object v1, Lajc;->d:[Laji$a;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 199
    sget-object v1, Lajc;->d:[Laji$a;

    aget-object v1, v1, v0

    sget-object v2, Laji$a;->d:Laji$a;

    if-ne v1, v2, :cond_0

    .line 200
    sget v1, Lajc;->e:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lajc;->e:I

    .line 198
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_1
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentUseableSimCount LAST_TIME_USEABLE_SIM_COUNT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lajc;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CURRENT_USEABLE_SIM_COUNT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lajc;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget v0, Lajc;->f:I

    sget v1, Lajc;->e:I

    if-eq v0, v1, :cond_2

    .line 205
    invoke-static {}, Lajc;->p()V

    .line 207
    :cond_2
    return-void
.end method

.method public static b(I)V
    .locals 3

    .prologue
    .line 323
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveNewConversationImsi slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-boolean v0, Lajc;->a:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-static {p0}, Lajc;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    sget-object v0, Lajc;->c:[Ljava/lang/String;

    aget-object v0, v0, p0

    sput-object v0, Lajc;->k:Ljava/lang/String;

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-static {}, Lajc;->d()V

    goto :goto_0
.end method

.method public static b(Lajc$a;)V
    .locals 2

    .prologue
    .line 442
    sget-object v1, Lajc;->m:Ljava/util/HashSet;

    monitor-enter v1

    .line 443
    :try_start_0
    sget-object v0, Lajc;->m:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 444
    monitor-exit v1

    .line 445
    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 116
    invoke-static {}, Lajc;->o()V

    .line 118
    const/4 v0, 0x0

    :goto_0
    sget v1, Lajc;->b:I

    if-ge v0, v1, :cond_1

    .line 119
    invoke-static {p0, v0}, Laji;->a(Landroid/content/Context;I)Laji$a;

    move-result-object v1

    .line 120
    sget-object v2, Lajc;->d:[Laji$a;

    aput-object v1, v2, v0

    .line 121
    sget-object v2, Lajc;->c:[Ljava/lang/String;

    invoke-static {p0, v0}, Laji;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 122
    sget-object v2, Lajc;->d:[Laji$a;

    aget-object v2, v2, v0

    sget-object v3, Laji$a;->b:Laji$a;

    if-eq v2, v3, :cond_0

    .line 123
    invoke-static {v0}, Laji;->a(I)J

    move-result-wide v2

    invoke-static {p0, v2, v3, v0}, Lajc;->a(Landroid/content/Context;JI)V

    .line 125
    :cond_0
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSimInfoCache slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", IMSI_SLOT_VALUES["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lajc;->c:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mServiceStates["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lajc;->h:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {}, Lajc;->b()V

    .line 129
    invoke-static {}, Lajc;->g()V

    .line 130
    return-void
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lajc;->k:Ljava/lang/String;

    invoke-static {v0}, Lajc;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    const/16 v0, -0xa

    if-ne p0, v0, :cond_0

    .line 344
    const-string v0, "-10"

    .line 352
    :goto_0
    return-object v0

    .line 345
    :cond_0
    invoke-static {p0}, Lajc;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    sget-object v0, Lajc;->c:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 347
    const/4 v0, 0x0

    sput-boolean v0, Lajc;->g:Z

    .line 348
    invoke-static {}, Lcom/android/mms/MmsApp;->c()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lajc;->a(Landroid/content/Context;)V

    .line 350
    :cond_1
    sget-object v0, Lajc;->c:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0

    .line 352
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 385
    .line 387
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lakg;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 388
    if-eqz v1, :cond_1

    .line 389
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 390
    const-string v0, "DualSimMessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryBindImsi cursor.getString(0) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 397
    if-eqz v1, :cond_0

    .line 398
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_0
    :goto_0
    return-object v0

    .line 397
    :cond_1
    if-eqz v1, :cond_2

    .line 398
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    .line 401
    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 394
    :goto_1
    :try_start_2
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryBindImsi e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 397
    if-eqz v1, :cond_3

    .line 398
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    .line 397
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_4

    .line 398
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 397
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 393
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static c(Lajc$a;)V
    .locals 2

    .prologue
    .line 575
    sget-object v1, Lajc;->n:Ljava/util/HashSet;

    monitor-enter v1

    .line 576
    :try_start_0
    sget-object v0, Lajc;->n:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 577
    monitor-exit v1

    .line 578
    return-void

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const v7, #com.android.mms:string@sim_open#t

    const v4, #com.android.mms:string@sim_close#t

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 696
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 697
    invoke-static {v5}, Lajc;->e(I)Z

    .line 698
    invoke-static {v6}, Lajc;->e(I)Z

    .line 700
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 701
    const-string v1, "pref_key_sim1_auto_download_roaming_switch"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 703
    const-string v3, "pref_key_sim2_auto_download_roaming_switch"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 706
    if-eqz v1, :cond_0

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 707
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 709
    :goto_1
    const v3, #com.android.mms:string@sim_status#t

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 706
    :cond_0
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 339
    const-string v0, ""

    sput-object v0, Lajc;->k:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public static d(I)V
    .locals 3

    .prologue
    .line 357
    sget-boolean v0, Lajc;->a:Z

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConversationDraftImsi slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {p0}, Lajc;->c(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lajc;->l:Ljava/lang/String;

    .line 361
    :cond_0
    return-void
.end method

.method public static d(Lajc$a;)V
    .locals 2

    .prologue
    .line 581
    sget-object v1, Lajc;->n:Ljava/util/HashSet;

    monitor-enter v1

    .line 582
    :try_start_0
    sget-object v0, Lajc;->n:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 583
    monitor-exit v1

    .line 584
    return-void

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lajc;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 737
    .line 738
    const/4 v0, 0x0

    :goto_0
    sget v1, Lajc;->b:I

    if-ge v0, v1, :cond_0

    .line 739
    invoke-static {p0, v0}, Laji;->a(Landroid/content/Context;I)Laji$a;

    move-result-object v1

    .line 740
    sget-object v2, Lajc;->d:[Laji$a;

    aput-object v1, v2, v0

    .line 741
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSlotStateCache slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    :cond_0
    return-void
.end method

.method public static e(I)Z
    .locals 2

    .prologue
    .line 521
    sget-object v0, Lajc;->d:[Laji$a;

    aget-object v0, v0, p0

    sget-object v1, Laji$a;->d:Laji$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 379
    const-string v0, ""

    sput-object v0, Lajc;->l:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 756
    if-nez p0, :cond_0

    .line 763
    :goto_0
    return v0

    .line 759
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lte_on_cdma_rat_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 761
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 762
    :cond_1
    const-string v1, "DualSimMessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is4GDataOnly : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static g()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 587
    sget v1, Lajc;->i:I

    sput v1, Lajc;->j:I

    .line 588
    sput v0, Lajc;->i:I

    .line 589
    :goto_0
    sget-object v1, Lajc;->h:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 590
    sget-object v1, Lajc;->h:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 591
    sget v1, Lajc;->i:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lajc;->i:I

    .line 589
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    :cond_1
    const-string v0, "DualSimMessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentNotRadioOffSimCount LAST_TITME_NOT_RADIO_OFF_SIM_COUNT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lajc;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CURRENT_NOT_RADIO_OFF_SIM_COUNT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lajc;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    sget v0, Lajc;->j:I

    sget v1, Lajc;->i:I

    if-eq v0, v1, :cond_2

    .line 596
    invoke-static {}, Lajc;->q()V

    .line 598
    :cond_2
    return-void
.end method

.method public static h()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 637
    sget v2, Lajc;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 638
    const-string v2, "DualSimMessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNotRadioOffSlotId mServiceStates[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lajc;->h:[Z

    aget-boolean v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSlotState[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lajc;->d:[Laji$a;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mServiceStates[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lajc;->h:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSlotState[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lajc;->d:[Laji$a;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    sget-object v2, Lajc;->h:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    sget-object v2, Lajc;->d:[Laji$a;

    aget-object v2, v2, v0

    sget-object v3, Laji$a;->d:Laji$a;

    if-ne v2, v3, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v0

    .line 642
    :cond_1
    sget-object v0, Lajc;->h:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    sget-object v0, Lajc;->d:[Laji$a;

    aget-object v0, v0, v1

    sget-object v2, Laji$a;->d:Laji$a;

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 643
    goto :goto_0

    .line 645
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static i()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 713
    sget-object v1, Lajc;->d:[Laji$a;

    aget-object v1, v1, v0

    sget-object v2, Laji$a;->d:Laji$a;

    if-ne v1, v2, :cond_0

    .line 716
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static j()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 721
    sget v0, Lajc;->i:I

    if-ne v0, v1, :cond_0

    sget v0, Lajc;->e:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k()Z
    .locals 1

    .prologue
    .line 725
    invoke-static {}, Lajc;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lajc;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l()Z
    .locals 1

    .prologue
    .line 729
    sget v0, Lajc;->i:I

    if-eqz v0, :cond_0

    sget v0, Lajc;->e:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m()Z
    .locals 1

    .prologue
    .line 733
    sget v0, Lajc;->e:I

    if-lez v0, :cond_0

    sget v0, Lajc;->i:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static n()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 93
    sget-boolean v0, Lajc;->g:Z

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/android/mms/MmsApp;->c()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->g()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string v2, "isMultiSimEnabled"

    invoke-static {v0, v2}, Lajx;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lajc;->a:Z

    .line 96
    const-string v0, "DualSimMessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " initDeviceMode IS_MULTI_SIM_DEVICE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lajc;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-boolean v0, Lajc;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    sput v0, Lajc;->b:I

    .line 98
    sget v0, Lajc;->b:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lajc;->c:[Ljava/lang/String;

    .line 99
    sget v0, Lajc;->b:I

    new-array v0, v0, [Laji$a;

    sput-object v0, Lajc;->d:[Laji$a;

    .line 100
    sget v0, Lajc;->b:I

    new-array v0, v0, [Z

    sput-object v0, Lajc;->h:[Z

    .line 101
    sput-boolean v1, Lajc;->g:Z

    .line 103
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method private static o()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 107
    :goto_0
    sget v2, Lajc;->b:I

    if-ge v0, v2, :cond_0

    .line 108
    sget-object v2, Lajc;->d:[Laji$a;

    sget-object v3, Laji$a;->b:Laji$a;

    aput-object v3, v2, v0

    .line 109
    sget-object v2, Lajc;->h:[Z

    aput-boolean v1, v2, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method private static p()V
    .locals 4

    .prologue
    .line 426
    sget-object v1, Lajc;->m:Ljava/util/HashSet;

    monitor-enter v1

    .line 427
    :try_start_0
    sget-object v0, Lajc;->m:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 428
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajc$a;

    .line 430
    sget v2, Lajc;->f:I

    sget v3, Lajc;->e:I

    invoke-interface {v0, v2, v3}, Lajc$a;->a(II)V

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 432
    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->simChange()V

    .line 433
    return-void
.end method

.method private static q()V
    .locals 4

    .prologue
    .line 565
    sget-object v1, Lajc;->n:Ljava/util/HashSet;

    monitor-enter v1

    .line 566
    :try_start_0
    sget-object v0, Lajc;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 567
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajc$a;

    .line 570
    sget v2, Lajc;->j:I

    sget v3, Lajc;->i:I

    invoke-interface {v0, v2, v3}, Lajc$a;->a(II)V

    goto :goto_0

    .line 567
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 572
    :cond_0
    return-void
.end method
