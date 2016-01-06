.class public Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;
.super Landroid/app/Activity;
.source "DifferentMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->dp2px(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;)Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->mAdapter:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;

    return-object v0
.end method

.method private dp2px(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 190
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v2, 0x7f040019

    invoke-virtual {p0, v2}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->mAppList:Ljava/util/List;

    .line 35
    const v2, 0x7f0c0069

    invoke-virtual {p0, v2}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    .line 36
    .local v1, "listView":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;
    new-instance v2, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;

    invoke-direct {v2, p0}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;-><init>(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;)V

    iput-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->mAdapter:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;

    .line 37
    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->mAdapter:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    new-instance v0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;-><init>(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;)V

    .line 110
    .local v0, "creator":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;
    invoke-virtual {v1, v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->setMenuCreator(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;)V

    .line 113
    new-instance v2, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$2;

    invoke-direct {v2, p0}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$2;-><init>(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;)V

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->setOnMenuItemClickListener(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;)V

    .line 132
    return-void
.end method
