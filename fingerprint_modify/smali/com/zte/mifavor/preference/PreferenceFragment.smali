.class public abstract Lcom/zte/mifavor/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field private mList:Landroid/widget/ListView;

.field private mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 116
    sget v0, Lcom/zte/extres/R$layout;->preference_list_fragment:I

    iput v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mLayoutResId:I

    .line 124
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/preference/PreferenceFragment$1;-><init>(Lcom/zte/mifavor/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/preference/PreferenceFragment$2;-><init>(Lcom/zte/mifavor/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 408
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/preference/PreferenceFragment$3;-><init>(Lcom/zte/mifavor/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/preference/PreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/preference/PreferenceFragment;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/preference/PreferenceFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/preference/PreferenceFragment;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v0

    .line 344
    .local v0, "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->onBindPreferences()V

    .line 348
    return-void
.end method

.method private ensureList()V
    .locals 4

    .prologue
    .line 385
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 406
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 389
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    .line 390
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content view not yet created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 392
    :cond_1
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 393
    .local v0, "rawListView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_2

    .line 394
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 398
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 399
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v2, :cond_3

    .line 400
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_3
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 405
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 338
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 288
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zte/mifavor/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lcom/zte/mifavor/preference/PreferenceScreen;)Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/PreferenceFragment;->setPreferenceScreen(Lcom/zte/mifavor/preference/PreferenceScreen;)V

    .line 289
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 300
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/zte/mifavor/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/zte/mifavor/preference/PreferenceScreen;)Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/PreferenceFragment;->setPreferenceScreen(Lcom/zte/mifavor/preference/PreferenceScreen;)V

    .line 302
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->ensureList()V

    .line 361
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public hasListView()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 366
    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v4, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v2

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 370
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_2

    move v2, v3

    .line 371
    goto :goto_0

    .line 373
    :cond_2
    const v4, 0x102000a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, "rawListView":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/ListView;

    if-nez v4, :cond_3

    move v2, v3

    .line 375
    goto :goto_0

    .line 377
    :cond_3
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 378
    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v4, :cond_0

    move v2, v3

    .line 379
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 184
    iget-boolean v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v2, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->bindPreferences()V

    .line 188
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mInitDone:Z

    .line 190
    if-eqz p1, :cond_1

    .line 191
    const-string v2, "preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 192
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    .line 194
    .local v1, "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 199
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 242
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 244
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/mifavor/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 245
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 160
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    .line 161
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/preference/PreferenceManager;->setFragment(Lcom/zte/mifavor/preference/PreferenceFragment;)V

    .line 162
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/zte/extres/R$styleable;->PreferenceFragment:[I

    sget v4, Lcom/zte/extres/R$attr;->preferenceFragmentStyle:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 172
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mLayoutResId:I

    .line 175
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    iget v1, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 225
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 226
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 217
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 220
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/zte/mifavor/preference/PreferenceScreen;Lcom/zte/mifavor/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/zte/mifavor/preference/PreferenceScreen;
    .param p2, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 309
    invoke-virtual {p2}, Lcom/zte/mifavor/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/mifavor/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Lcom/zte/mifavor/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcom/zte/mifavor/preference/PreferenceFragment;Lcom/zte/mifavor/preference/Preference;)Z

    move-result v0

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 232
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    .line 233
    .local v1, "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 234
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 236
    const-string v2, "preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 238
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 204
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 205
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 210
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->dispatchActivityStop()V

    .line 211
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 212
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public setPreferenceScreen(Lcom/zte/mifavor/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/zte/mifavor/preference/PreferenceScreen;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceManager;->setPreferences(Lcom/zte/mifavor/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHavePrefs:Z

    .line 264
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->postBindPreferences()V

    .line 268
    :cond_0
    return-void
.end method
