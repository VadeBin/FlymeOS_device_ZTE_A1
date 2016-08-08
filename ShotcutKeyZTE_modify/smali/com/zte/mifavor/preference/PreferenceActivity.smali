.class public abstract Lcom/zte/mifavor/preference/PreferenceActivity;
.super Lcom/zte/mifavor/widget/ListActivityZTE;
.source "PreferenceActivity.java"

# interfaces
.implements Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Lcom/zte/mifavor/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/PreferenceActivity$Header;,
        Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final TAG:Ljava/lang/String; = "PreferenceActivity"


# instance fields
.field private mCurHeader:Lcom/zte/mifavor/preference/PreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/mifavor/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceHeaderItemResId:I

.field private mPreferenceHeaderRemoveEmptyIcon:Z

.field private mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;-><init>()V

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 217
    iput v1, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 218
    iput-boolean v1, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 227
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/preference/PreferenceActivity$1;-><init>(Lcom/zte/mifavor/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 329
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/preference/PreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/preference/PreferenceActivity;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/preference/PreferenceActivity;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/preference/PreferenceActivity;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/preference/PreferenceActivity;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/preference/PreferenceActivity;)Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/preference/PreferenceActivity;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mCurHeader:Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v0

    .line 1414
    .local v0, "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 1415
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1416
    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1417
    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Lcom/zte/mifavor/widget/ListActivityZTE;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1418
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1421
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1408
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    :goto_0
    return-void

    .line 1409
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1437
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1438
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1440
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1443
    :cond_1
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1213
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1214
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1217
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1218
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1219
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1220
    sget v2, Lcom/zte/extres/R$id;->prefs:I

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1221
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1222
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1494
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1496
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zte/mifavor/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lcom/zte/mifavor/preference/PreferenceScreen;)Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->setPreferenceScreen(Lcom/zte/mifavor/preference/PreferenceScreen;)V

    .line 1497
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 2
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1510
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1512
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/zte/mifavor/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/zte/mifavor/preference/PreferenceScreen;)Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->setPreferenceScreen(Lcom/zte/mifavor/preference/PreferenceScreen;)V

    .line 1514
    return-void
.end method

.method findBestMatchingHeader(Lcom/zte/mifavor/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    .locals 9
    .param p1, "cur"    # Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/mifavor/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/mifavor/preference/PreferenceActivity$Header;",
            ">;)",
            "Lcom/zte/mifavor/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/preference/PreferenceActivity$Header;>;"
    const/4 v8, 0x1

    .line 1265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1266
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1267
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    .line 1268
    .local v3, "oh":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    if-eq p1, v3, :cond_0

    iget-wide v4, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, v3, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1270
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1271
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    .end local v3    # "oh":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1289
    .local v0, "NM":I
    if-ne v0, v8, :cond_7

    .line 1290
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    move-object v3, v4

    .line 1306
    :cond_2
    :goto_1
    return-object v3

    .line 1274
    .end local v0    # "NM":I
    .restart local v3    # "oh":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    :cond_3
    iget-object v4, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1275
    iget-object v4, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1276
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1278
    :cond_5
    iget-object v4, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1279
    iget-object v4, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1280
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1282
    :cond_6
    iget-object v4, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 1283
    iget-object v4, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1284
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1291
    .end local v3    # "oh":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    .restart local v0    # "NM":I
    :cond_7
    if-le v0, v8, :cond_b

    .line 1292
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1293
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    .line 1294
    .restart local v3    # "oh":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    iget-object v4, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1298
    :cond_8
    iget-object v4, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1301
    :cond_9
    iget-object v4, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1292
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1306
    .end local v3    # "oh":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    :cond_b
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1541
    const/4 v0, 0x0

    .line 1544
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1379
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 1380
    invoke-virtual {p0, p2, p3}, Lcom/zte/mifavor/preference/PreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 1381
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->finish()V

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1384
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onBackPressed()V

    .line 1385
    if-eqz p1, :cond_0

    .line 1386
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1387
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/mifavor/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v0

    .line 1481
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeaders()Z
    .locals 1

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 789
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 792
    :cond_0
    return-void
.end method

.method public isMultiPane()Z
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 932
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not checked if fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 16
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/zte/mifavor/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 802
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/PreferenceActivity$Header;>;"
    const/4 v9, 0x0

    .line 804
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 805
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 809
    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 813
    :cond_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 814
    .local v7, "nodeName":Ljava/lang/String;
    const-string v13, "preference-headers"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 815
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_0
    move-exception v3

    .line 914
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error parsing headers"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v13

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v13

    .line 820
    .restart local v1    # "attrs":Landroid/util/AttributeSet;
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_3
    const/4 v2, 0x0

    .line 822
    .local v2, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 824
    .local v8, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_16

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v8, :cond_16

    .line 825
    :cond_5
    const/4 v13, 0x3

    if-eq v12, v13, :cond_4

    const/4 v13, 0x4

    if-eq v12, v13, :cond_4

    .line 829
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 830
    const-string v13, "header"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 831
    new-instance v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Lcom/zte/mifavor/preference/PreferenceActivity$Header;-><init>()V

    .line 833
    .local v4, "header":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    sget-object v13, Lcom/zte/extres/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/zte/mifavor/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 835
    .local v10, "sa":Landroid/content/res/TypedArray;
    const/4 v13, 0x1

    const/4 v14, -0x1

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->id:J

    .line 838
    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 840
    .local v11, "tv":Landroid/util/TypedValue;
    if-eqz v11, :cond_6

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_6

    .line 841
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_d

    .line 842
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->titleRes:I

    .line 847
    :cond_6
    :goto_1
    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 848
    if-eqz v11, :cond_7

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_7

    .line 849
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_e

    .line 850
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->summaryRes:I

    .line 855
    :cond_7
    :goto_2
    const/4 v13, 0x5

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 856
    if-eqz v11, :cond_8

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_8

    .line 857
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_f

    .line 858
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 863
    :cond_8
    :goto_3
    const/4 v13, 0x6

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 865
    if-eqz v11, :cond_9

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_9

    .line 866
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_10

    .line 867
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 872
    :cond_9
    :goto_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->iconRes:I

    .line 874
    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 876
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 878
    if-nez v2, :cond_a

    .line 879
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 882
    .restart local v2    # "curBundle":Landroid/os/Bundle;
    :cond_a
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 884
    .local v5, "innerDepth":I
    :cond_b
    :goto_5
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_13

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v5, :cond_13

    .line 885
    :cond_c
    const/4 v13, 0x3

    if-eq v12, v13, :cond_b

    const/4 v13, 0x4

    if-eq v12, v13, :cond_b

    .line 889
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 890
    .local v6, "innerNodeName":Ljava/lang/String;
    const-string v13, "extra"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "extra"

    invoke-virtual {v13, v14, v1, v2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 892
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 915
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v2    # "curBundle":Landroid/os/Bundle;
    .end local v4    # "header":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    .end local v5    # "innerDepth":I
    .end local v6    # "innerNodeName":Ljava/lang/String;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "outerDepth":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .end local v11    # "tv":Landroid/util/TypedValue;
    .end local v12    # "type":I
    :catch_1
    move-exception v3

    .line 916
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error parsing headers"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 844
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "attrs":Landroid/util/AttributeSet;
    .restart local v2    # "curBundle":Landroid/os/Bundle;
    .restart local v4    # "header":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v8    # "outerDepth":I
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v11    # "tv":Landroid/util/TypedValue;
    .restart local v12    # "type":I
    :cond_d
    :try_start_4
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 852
    :cond_e
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 860
    :cond_f
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto :goto_3

    .line 869
    :cond_10
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_4

    .line 894
    .restart local v5    # "innerDepth":I
    .restart local v6    # "innerNodeName":Ljava/lang/String;
    :cond_11
    const-string v13, "intent"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v13, v9, v1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v13

    iput-object v13, v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 898
    :cond_12
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 902
    .end local v6    # "innerNodeName":Ljava/lang/String;
    :cond_13
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v13

    if-lez v13, :cond_14

    .line 903
    iput-object v2, v4, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 904
    const/4 v2, 0x0

    .line 907
    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 909
    .end local v4    # "header":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    .end local v5    # "innerDepth":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .end local v11    # "tv":Landroid/util/TypedValue;
    :cond_15
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 918
    :cond_16
    if-eqz v9, :cond_17

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 920
    :cond_17
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1016
    invoke-super {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/ListActivityZTE;->onActivityResult(IILandroid/content/Intent;)V

    .line 1018
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/mifavor/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1021
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/mifavor/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    .line 1089
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1091
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1093
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1094
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1095
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1096
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 1025
    invoke-super {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->onContentChanged()V

    .line 1027
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1028
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->postBindPreferences()V

    .line 1030
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 531
    invoke-super/range {p0 .. p1}, Lcom/zte/mifavor/widget/ListActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 534
    const/16 v21, 0x0

    sget-object v22, Lcom/zte/extres/R$styleable;->PreferenceActivity:[I

    sget v23, Lcom/zte/extres/R$attr;->preferenceActivityStyle:I

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zte/mifavor/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 538
    .local v19, "sa":Landroid/content/res/TypedArray;
    const/16 v21, 0x0

    sget v22, Lcom/zte/extres/R$layout;->preference_list_content:I

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 542
    .local v18, "layoutResId":I
    sget v21, Lcom/zte/extres/R$styleable;->PreferenceActivity_headerLayout:I

    sget v22, Lcom/zte/extres/R$layout;->preference_header_item:I

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 545
    sget v21, Lcom/zte/extres/R$styleable;->PreferenceActivity_headerRemoveIconIfEmpty:I

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 549
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 551
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setContentView(I)V

    .line 553
    sget v21, Lcom/zte/extres/R$id;->list_footer:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 554
    sget v21, Lcom/zte/extres/R$id;->prefs_frame:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v10

    .line 556
    .local v10, "hidingHeaders":Z
    if-nez v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v21

    if-nez v21, :cond_6

    :cond_0
    const/16 v21, 0x1

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/mifavor/preference/PreferenceActivity;->mSinglePane:Z

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 558
    .local v12, "initialFragment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment_args"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 559
    .local v11, "initialArguments":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment_title"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 560
    .local v15, "initialTitle":I
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, ":android:show_fragment_short_title"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 562
    .local v13, "initialShortTitle":I
    if-eqz p1, :cond_7

    .line 565
    const-string v21, ":android:headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 566
    .local v9, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/preference/PreferenceActivity$Header;>;"
    if-eqz v9, :cond_1

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 568
    const-string v21, ":android:cur_header"

    const/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 570
    .local v7, "curHeader":I
    if-ltz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_1

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setSelectedHeader(Lcom/zte/mifavor/preference/PreferenceActivity$Header;)V

    .line 610
    .end local v7    # "curHeader":I
    .end local v9    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/preference/PreferenceActivity$Header;>;"
    :cond_1
    :goto_1
    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 612
    sget v21, Lcom/zte/extres/R$id;->headers:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 614
    if-eqz v15, :cond_2

    .line 615
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zte/mifavor/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 616
    .local v16, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zte/mifavor/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 618
    .local v14, "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcom/zte/mifavor/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 642
    .end local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 643
    .local v17, "intent":Landroid/content/Intent;
    const-string v21, "extra_prefs_show_button_bar"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 645
    sget v21, Lcom/zte/extres/R$id;->button_bar:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 647
    sget v21, Lcom/zte/extres/R$id;->back_button:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 648
    .local v5, "backButton":Landroid/widget/Button;
    new-instance v21, Lcom/zte/mifavor/preference/PreferenceActivity$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity$2;-><init>(Lcom/zte/mifavor/preference/PreferenceActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    sget v21, Lcom/zte/extres/R$id;->skip_button:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 655
    .local v20, "skipButton":Landroid/widget/Button;
    new-instance v21, Lcom/zte/mifavor/preference/PreferenceActivity$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity$3;-><init>(Lcom/zte/mifavor/preference/PreferenceActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    sget v21, Lcom/zte/extres/R$id;->next_button:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    new-instance v22, Lcom/zte/mifavor/preference/PreferenceActivity$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity$4;-><init>(Lcom/zte/mifavor/preference/PreferenceActivity;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    const-string v21, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 671
    const-string v21, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 672
    .local v6, "buttonText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 679
    .end local v6    # "buttonText":Ljava/lang/String;
    :cond_3
    :goto_4
    const-string v21, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 680
    const-string v21, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 681
    .restart local v6    # "buttonText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 682
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 688
    .end local v6    # "buttonText":Ljava/lang/String;
    :cond_4
    :goto_5
    const-string v21, "extra_prefs_show_skip"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 689
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 692
    .end local v5    # "backButton":Landroid/widget/Button;
    .end local v20    # "skipButton":Landroid/widget/Button;
    :cond_5
    return-void

    .line 556
    .end local v11    # "initialArguments":Landroid/os/Bundle;
    .end local v12    # "initialFragment":Ljava/lang/String;
    .end local v13    # "initialShortTitle":I
    .end local v15    # "initialTitle":I
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 576
    .restart local v11    # "initialArguments":Landroid/os/Bundle;
    .restart local v12    # "initialFragment":Ljava/lang/String;
    .restart local v13    # "initialShortTitle":I
    .restart local v15    # "initialTitle":I
    :cond_7
    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 580
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/zte/mifavor/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 581
    if-eqz v15, :cond_1

    .line 582
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zte/mifavor/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 583
    .restart local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zte/mifavor/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 585
    .restart local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcom/zte/mifavor/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 583
    .end local v14    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :cond_8
    const/4 v14, 0x0

    goto :goto_6

    .line 590
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_1

    .line 596
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 597
    if-nez v12, :cond_a

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onGetInitialHeader()Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    move-result-object v8

    .line 599
    .local v8, "h":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/zte/mifavor/preference/PreferenceActivity;->switchToHeader(Lcom/zte/mifavor/preference/PreferenceActivity$Header;)V

    goto/16 :goto_1

    .line 601
    .end local v8    # "h":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/zte/mifavor/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 616
    .restart local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 620
    .end local v16    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_e

    .line 621
    new-instance v21, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zte/mifavor/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 623
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mCurHeader:Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mCurHeader:Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setSelectedHeader(Lcom/zte/mifavor/preference/PreferenceActivity$Header;)V

    .line 629
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 634
    :cond_e
    sget v21, Lcom/zte/extres/R$layout;->preference_list_content_single:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setContentView(I)V

    .line 635
    sget v21, Lcom/zte/extres/R$id;->list_footer:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 636
    sget v21, Lcom/zte/extres/R$id;->prefs:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 637
    new-instance v21, Lcom/zte/mifavor/preference/PreferenceManager;

    const/16 v22, 0x64

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    goto/16 :goto_3

    .line 676
    .restart local v5    # "backButton":Landroid/widget/Button;
    .restart local v6    # "buttonText":Ljava/lang/String;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v20    # "skipButton":Landroid/widget/Button;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 685
    :cond_10
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 963
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 964
    invoke-super {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->onDestroy()V

    .line 966
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 969
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    .locals 4

    .prologue
    .line 748
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 749
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    .line 750
    .local v0, "h":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    iget-object v2, v0, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 751
    return-object v0

    .line 748
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 754
    .end local v0    # "h":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must have at least one header with a fragment"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onGetNewHeader()Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    .locals 1

    .prologue
    .line 764
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Lcom/zte/mifavor/preference/PreferenceActivity$Header;I)V
    .locals 7
    .param p1, "header"    # Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 1055
    iget-object v0, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1056
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    .line 1057
    iget v5, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1058
    .local v5, "titleRes":I
    iget v6, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1059
    .local v6, "shortTitleRes":I
    if-nez v5, :cond_0

    .line 1060
    iget v5, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->titleRes:I

    .line 1061
    const/4 v6, 0x0

    .line 1063
    :cond_0
    iget-object v1, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/zte/mifavor/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1071
    .end local v5    # "titleRes":I
    .end local v6    # "shortTitleRes":I
    :cond_1
    :goto_0
    return-void

    .line 1066
    :cond_2
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->switchToHeader(Lcom/zte/mifavor/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 1068
    :cond_3
    iget-object v0, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1069
    iget-object v0, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 3

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$bool;->preferences_prefer_dual_pane:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 726
    .local v0, "preferMultiPane":Z
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/zte/mifavor/widget/ListActivityZTE;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1039
    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1041
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Lcom/zte/mifavor/preference/PreferenceActivity;->onHeaderClick(Lcom/zte/mifavor/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1552
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Lcom/zte/mifavor/preference/PreferenceFragment;Lcom/zte/mifavor/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Lcom/zte/mifavor/preference/PreferenceFragment;
    .param p2, "pref"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 1396
    invoke-virtual {p2}, Lcom/zte/mifavor/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/zte/mifavor/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Lcom/zte/mifavor/preference/Preference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Lcom/zte/mifavor/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/zte/mifavor/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1398
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/zte/mifavor/preference/PreferenceScreen;Lcom/zte/mifavor/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/zte/mifavor/preference/PreferenceScreen;
    .param p2, "preference"    # Lcom/zte/mifavor/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1524
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 997
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-eqz v2, :cond_0

    .line 998
    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 999
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    .line 1001
    .local v1, "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 1002
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1003
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1012
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 1011
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ListActivityZTE;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 973
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ListActivityZTE;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 975
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 976
    const-string v3, ":android:headers"

    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 977
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mCurHeader:Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_0

    .line 978
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mCurHeader:Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 979
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 980
    const-string v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 985
    .end local v1    # "index":I
    :cond_0
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-eqz v3, :cond_1

    .line 986
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v2

    .line 987
    .local v2, "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    if-eqz v2, :cond_1

    .line 988
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 989
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 990
    const-string v3, ":android:preferences"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 993
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v2    # "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 953
    invoke-super {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->onStop()V

    .line 955
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->dispatchActivityStop()V

    .line 958
    :cond_0
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 945
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 946
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1186
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Lcom/zte/mifavor/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Lcom/zte/mifavor/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1455
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1457
    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v1, p1}, Lcom/zte/mifavor/preference/PreferenceManager;->setPreferences(Lcom/zte/mifavor/preference/PreferenceScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1458
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->postBindPreferences()V

    .line 1459
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1461
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1462
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1465
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method setSelectedHeader(Lcom/zte/mifavor/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mCurHeader:Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    .line 1190
    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1191
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1192
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1196
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->showBreadCrumbs(Lcom/zte/mifavor/preference/PreferenceActivity$Header;)V

    .line 1197
    return-void

    .line 1194
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0
.end method

.method showBreadCrumbs(Lcom/zte/mifavor/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    .prologue
    .line 1200
    if-eqz p1, :cond_2

    .line 1201
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1202
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1203
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1204
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1208
    .end local v0    # "title":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1206
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/mifavor/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1141
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_4

    .line 1142
    const v3, 0x1020016

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1145
    .local v1, "crumbs":Landroid/view/View;
    :try_start_0
    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    .end local v1    # "crumbs":Landroid/view/View;
    iput-object v1, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_1

    .line 1151
    if-eqz p1, :cond_0

    .line 1152
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1146
    :catch_0
    move-exception v2

    .line 1147
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1156
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_1
    iget-boolean v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v3, :cond_3

    .line 1157
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 1159
    sget v3, Lcom/zte/extres/R$id;->breadcrumb_section:I

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1160
    .local v0, "bcSection":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1161
    :cond_2
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1163
    .end local v0    # "bcSection":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1164
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1166
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 1167
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1169
    :cond_5
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1170
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v5, v5, v5}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1317
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1318
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    sget v1, Lcom/zte/extres/R$id;->prefs:I

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1319
    if-eqz p2, :cond_0

    .line 1320
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1321
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1325
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1326
    return-void

    .line 1323
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 1349
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 1350
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/zte/mifavor/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1367
    :goto_0
    return-void

    .line 1352
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1353
    .local v7, "f":Landroid/app/Fragment;
    if-eqz p5, :cond_1

    .line 1354
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1356
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1357
    .local v8, "transaction":Landroid/app/FragmentTransaction;
    sget v0, Lcom/zte/extres/R$id;->prefs:I

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1358
    if-eqz p3, :cond_3

    .line 1359
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1363
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1364
    const-string v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1365
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1360
    :cond_3
    if-eqz p4, :cond_2

    .line 1361
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 1105
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/zte/mifavor/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1106
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .prologue
    .line 1127
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/zte/mifavor/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1128
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1129
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1133
    :goto_0
    return-void

    .line 1131
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public switchToHeader(Lcom/zte/mifavor/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mCurHeader:Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    if-ne v0, p1, :cond_0

    .line 1253
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1262
    :goto_0
    return-void

    .line 1256
    :cond_0
    iget-object v0, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1257
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t switch to header that has no fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1259
    :cond_1
    iget-object v0, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, p1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1260
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setSelectedHeader(Lcom/zte/mifavor/preference/PreferenceActivity$Header;)V

    goto :goto_0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1232
    const/4 v1, 0x0

    .line 1233
    .local v1, "selectedHeader":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1234
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    iget-object v2, v2, Lcom/zte/mifavor/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1235
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "selectedHeader":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    check-cast v1, Lcom/zte/mifavor/preference/PreferenceActivity$Header;

    .line 1239
    .restart local v1    # "selectedHeader":Lcom/zte/mifavor/preference/PreferenceActivity$Header;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/PreferenceActivity;->setSelectedHeader(Lcom/zte/mifavor/preference/PreferenceActivity$Header;)V

    .line 1240
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1241
    return-void

    .line 1233
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
