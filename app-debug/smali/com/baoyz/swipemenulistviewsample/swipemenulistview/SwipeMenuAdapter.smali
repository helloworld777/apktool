.class public Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;
.super Ljava/lang/Object;
.source "SwipeMenuAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private onMenuItemClickListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 28
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public createMenu(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;)V
    .locals 4
    .param p1, "menu"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;

    .prologue
    const/16 v3, 0x12c

    .line 74
    new-instance v0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "item":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    const-string v1, "Item 1"

    invoke-virtual {v0, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setTitle(Ljava/lang/String;)V

    .line 76
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x777778

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {v0, v3}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setWidth(I)V

    .line 78
    invoke-virtual {p1, v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->addMenuItem(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)V

    .line 80
    new-instance v0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    .end local v0    # "item":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 81
    .restart local v0    # "item":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    const-string v1, "Item 2"

    invoke-virtual {v0, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setTitle(Ljava/lang/String;)V

    .line 82
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x10000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {v0, v3}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setWidth(I)V

    .line 84
    invoke-virtual {p1, v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->addMenuItem(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)V

    .line 85
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "layout":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;
    if-nez p2, :cond_0

    .line 50
    iget-object v5, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "contentView":Landroid/view/View;
    new-instance v3, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;

    iget-object v5, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;-><init>(Landroid/content/Context;)V

    .line 52
    .local v3, "menu":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;
    iget-object v5, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->setViewType(I)V

    .line 53
    invoke-virtual {p0, v3}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->createMenu(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;)V

    .line 54
    new-instance v4, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;

    move-object v5, p3

    check-cast v5, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    invoke-direct {v4, v3, v5}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;-><init>(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;)V

    .line 56
    .local v4, "menuView":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;
    invoke-virtual {v4, p0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->setOnSwipeItemClickListener(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;)V

    move-object v2, p3

    .line 57
    check-cast v2, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    .line 58
    .local v2, "listView":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;
    new-instance v1, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    .end local v1    # "layout":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;
    invoke-virtual {v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->getCloseInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->getOpenInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-direct {v1, v0, v4, v5, v6}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;-><init>(Landroid/view/View;Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 61
    .restart local v1    # "layout":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;
    invoke-virtual {v1, p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->setPosition(I)V

    .line 69
    .end local v0    # "contentView":Landroid/view/View;
    .end local v2    # "listView":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;
    .end local v3    # "menu":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;
    .end local v4    # "menuView":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    .line 63
    check-cast v1, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    .line 64
    invoke-virtual {v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->closeMenu()V

    .line 65
    invoke-virtual {v1, p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->setPosition(I)V

    .line 66
    iget-object v5, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, p1, v6, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;I)V
    .locals 2
    .param p1, "view"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;
    .param p2, "menu"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;
    .param p3, "index"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->onMenuItemClickListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->onMenuItemClickListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

    invoke-virtual {p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->getPosition()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;->onMenuItemClick(ILcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;I)Z

    .line 92
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 102
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "onMenuItemClickListener"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->onMenuItemClickListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

    .line 97
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 107
    return-void
.end method
