.class public Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;
.super Landroid/widget/LinearLayout;
.source "SwipeMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;
    }
.end annotation


# instance fields
.field private mLayout:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

.field private mListView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

.field private mMenu:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;

.field private onItemClickListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;

.field private position:I


# direct methods
.method public constructor <init>(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;)V
    .locals 6
    .param p1, "menu"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;
    .param p2, "listView"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->mListView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    .line 38
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->mMenu:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;

    .line 39
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v4

    .line 40
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;>;"
    const/4 v1, 0x0

    .line 41
    .local v1, "id":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    .line 42
    .local v3, "item":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "id":I
    .local v2, "id":I
    invoke-direct {p0, v3, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->addItem(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;I)V

    move v1, v2

    .line 43
    .end local v2    # "id":I
    .restart local v1    # "id":I
    goto :goto_0

    .line 44
    .end local v3    # "item":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    :cond_0
    return-void
.end method

.method private addItem(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;I)V
    .locals 4
    .param p1, "item"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    .param p2, "id"    # I

    .prologue
    .line 47
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->getWidth()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v1, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 51
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 52
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->addView(Landroid/view/View;)V

    .line 58
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->createIcon(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->createTitle(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    :cond_1
    return-void
.end method

.method private createIcon(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)Landroid/widget/ImageView;
    .locals 2
    .param p1, "item"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    .prologue
    .line 68
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "iv":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-object v0
.end method

.method private createTitle(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)Landroid/widget/TextView;
    .locals 2
    .param p1, "item"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    .prologue
    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->getTitleSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 78
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->getTitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public getOnSwipeItemClickListener()Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->onItemClickListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->position:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->onItemClickListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->mLayout:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->onItemClickListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;

    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->mMenu:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;->onItemClick(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;I)V

    .line 87
    :cond_0
    return-void
.end method

.method public setLayout(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;)V
    .locals 0
    .param p1, "mLayout"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->mLayout:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    .line 99
    return-void
.end method

.method public setOnSwipeItemClickListener(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->onItemClickListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;

    .line 95
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->position:I

    .line 33
    return-void
.end method
