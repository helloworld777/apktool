.class public Lcom/baoyz/swipemenulistviewsample/SimpleActivity;
.super Landroid/app/Activity;
.source "SimpleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->dp2px(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->open(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;)Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mAdapter:Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;

    return-object v0
.end method

.method private delete(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 139
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "package"

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v0}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private dp2px(I)I
    .locals 3
    .parameter "dp"

    .prologue
    .line 212
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private open(Landroid/content/pm/ApplicationInfo;)V
    .locals 10
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    .line 148
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 149
    .local v6, resolveIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 153
    .local v5, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 154
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 155
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 156
    .local v0, activityPackageName:Ljava/lang/String;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 158
    .local v1, className:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v2, componentName:Landroid/content/ComponentName;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v3}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    .end local v0           #activityPackageName:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #componentName:Landroid/content/ComponentName;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f040019

    invoke-virtual {p0, v1}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mAppList:Ljava/util/List;

    .line 43
    const v1, 0x7f0c0069

    invoke-virtual {p0, v1}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    iput-object v1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mListView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    .line 44
    new-instance v1, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;

    invoke-direct {v1, p0}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;-><init>(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;)V

    iput-object v1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mAdapter:Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;

    .line 45
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mListView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mAdapter:Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    new-instance v0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$1;

    invoke-direct {v0, p0}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$1;-><init>(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;)V

    .line 84
    .local v0, creator:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mListView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    invoke-virtual {v1, v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->setMenuCreator(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;)V

    .line 87
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mListView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    new-instance v2, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$2;

    invoke-direct {v2, p0}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$2;-><init>(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;)V

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->setOnMenuItemClickListener(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;)V

    .line 107
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mListView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    new-instance v2, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$3;

    invoke-direct {v2, p0}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$3;-><init>(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;)V

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->setOnSwipeListener(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnSwipeListener;)V

    .line 124
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mListView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    new-instance v2, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$4;

    invoke-direct {v2, p0}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$4;-><init>(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;)V

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 134
    return-void
.end method
