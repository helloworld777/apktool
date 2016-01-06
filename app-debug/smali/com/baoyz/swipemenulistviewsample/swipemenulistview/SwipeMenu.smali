.class public Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;
.super Ljava/lang/Object;
.source "SwipeMenu.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mViewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->mContext:Landroid/content/Context;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->mItems:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public addMenuItem(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)V
    .locals 1
    .param p1, "item"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMenuItem(I)Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    return-object v0
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->mViewType:I

    return v0
.end method

.method public removeMenuItem(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)V
    .locals 1
    .param p1, "item"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .param p1, "viewType"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->mViewType:I

    .line 51
    return-void
.end method
