.class Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$1;
.super Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;
.source "SwipeMenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;


# direct methods
.method constructor <init>(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$1;->this$0:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    invoke-direct {p0, p2, p3}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public createMenu(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;)V
    .locals 1
    .param p1, "menu"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$1;->this$0:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    # getter for: Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mMenuCreator:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;
    invoke-static {v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->access$000(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$1;->this$0:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    # getter for: Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mMenuCreator:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;
    invoke-static {v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->access$000(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;->create(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;I)V
    .locals 3
    .param p1, "view"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;
    .param p2, "menu"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;
    .param p3, "index"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$1;->this$0:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    # getter for: Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mOnMenuItemClickListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;
    invoke-static {v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->access$100(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$1;->this$0:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    # getter for: Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mOnMenuItemClickListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;
    invoke-static {v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->access$100(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuView;->getPosition()I

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;->onMenuItemClick(ILcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;I)Z

    move-result v0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$1;->this$0:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    # getter for: Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;
    invoke-static {v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->access$200(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 79
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$1;->this$0:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    # getter for: Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;
    invoke-static {v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->access$200(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->smoothCloseMenu()V

    .line 81
    :cond_1
    return-void
.end method
