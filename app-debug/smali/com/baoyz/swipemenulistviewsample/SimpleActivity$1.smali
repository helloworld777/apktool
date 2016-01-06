.class Lcom/baoyz/swipemenulistviewsample/SimpleActivity$1;
.super Ljava/lang/Object;
.source "SimpleActivity.java"

# interfaces
.implements Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;


# direct methods
.method constructor <init>(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;)V
    .locals 7
    .param p1, "menu"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;

    .prologue
    const/16 v4, 0xc9

    const/16 v6, 0x5a

    .line 53
    new-instance v1, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    invoke-virtual {v2}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 56
    .local v1, "openItem":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/16 v3, 0xce

    invoke-static {v4, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    # invokes: Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->dp2px(I)I
    invoke-static {v2, v6}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->access$000(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setWidth(I)V

    .line 61
    const-string v2, "Open"

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setTitle(Ljava/lang/String;)V

    .line 63
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setTitleSize(I)V

    .line 65
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setTitleColor(I)V

    .line 67
    invoke-virtual {p1, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->addMenuItem(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)V

    .line 70
    new-instance v0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    invoke-virtual {v2}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "deleteItem":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/16 v3, 0xf9

    const/16 v4, 0x3f

    const/16 v5, 0x25

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    # invokes: Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->dp2px(I)I
    invoke-static {v2, v6}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->access$000(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setWidth(I)V

    .line 78
    const v2, 0x7f020051

    invoke-virtual {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setIcon(I)V

    .line 80
    invoke-virtual {p1, v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->addMenuItem(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)V

    .line 81
    return-void
.end method
