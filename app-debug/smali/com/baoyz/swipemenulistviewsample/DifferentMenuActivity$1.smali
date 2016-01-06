.class Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;
.super Ljava/lang/Object;
.source "DifferentMenuActivity.java"

# interfaces
.implements Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;


# direct methods
.method constructor <init>(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createMenu1(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;)V
    .locals 8
    .param p1, "menu"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;

    .prologue
    const/16 v7, 0xc9

    const/16 v6, 0x5a

    .line 59
    new-instance v0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    invoke-virtual {v2}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "item1":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/16 v3, 0xe5

    const/16 v4, 0x18

    const/16 v5, 0x5e

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    # invokes: Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->dp2px(I)I
    invoke-static {v2, v6}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->access$000(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setWidth(I)V

    .line 64
    const v2, 0x7f02004d

    invoke-virtual {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setIcon(I)V

    .line 65
    invoke-virtual {p1, v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->addMenuItem(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)V

    .line 66
    new-instance v1, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    invoke-virtual {v2}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 68
    .local v1, "item2":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/16 v3, 0xce

    invoke-static {v7, v7, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    # invokes: Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->dp2px(I)I
    invoke-static {v2, v6}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->access$000(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setWidth(I)V

    .line 71
    const v2, 0x7f02004e

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setIcon(I)V

    .line 72
    invoke-virtual {p1, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->addMenuItem(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)V

    .line 73
    return-void
.end method

.method private createMenu2(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;)V
    .locals 7
    .param p1, "menu"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0x3f

    .line 76
    new-instance v0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    invoke-virtual {v2}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "item1":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/16 v3, 0xe5

    const/16 v4, 0xe0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    # invokes: Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->dp2px(I)I
    invoke-static {v2, v6}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->access$000(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setWidth(I)V

    .line 81
    const v2, 0x7f02004f

    invoke-virtual {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setIcon(I)V

    .line 82
    invoke-virtual {p1, v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->addMenuItem(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)V

    .line 83
    new-instance v1, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    invoke-virtual {v2}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 85
    .local v1, "item2":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/16 v3, 0xf9

    const/16 v4, 0x25

    invoke-static {v3, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    # invokes: Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->dp2px(I)I
    invoke-static {v2, v6}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->access$000(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setWidth(I)V

    .line 88
    const v2, 0x7f02004c

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setIcon(I)V

    .line 89
    invoke-virtual {p1, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->addMenuItem(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)V

    .line 90
    return-void
.end method

.method private createMenu3(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;)V
    .locals 8
    .param p1, "menu"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;

    .prologue
    const/16 v7, 0xc9

    const/16 v6, 0x5a

    .line 93
    new-instance v0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    invoke-virtual {v2}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "item1":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/16 v3, 0x30

    const/16 v4, 0xb1

    const/16 v5, 0xf5

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    # invokes: Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->dp2px(I)I
    invoke-static {v2, v6}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->access$000(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setWidth(I)V

    .line 98
    const v2, 0x7f02004b

    invoke-virtual {v0, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setIcon(I)V

    .line 99
    invoke-virtual {p1, v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->addMenuItem(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)V

    .line 100
    new-instance v1, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;

    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    invoke-virtual {v2}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 102
    .local v1, "item2":Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/16 v3, 0xce

    invoke-static {v7, v7, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v2, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    # invokes: Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->dp2px(I)I
    invoke-static {v2, v6}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->access$000(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setWidth(I)V

    .line 105
    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;->setIcon(I)V

    .line 106
    invoke-virtual {p1, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->addMenuItem(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuItem;)V

    .line 107
    return-void
.end method


# virtual methods
.method public create(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;)V
    .locals 1
    .param p1, "menu"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;->getViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 47
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->createMenu1(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;)V

    goto :goto_0

    .line 50
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->createMenu2(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;)V

    goto :goto_0

    .line 53
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$1;->createMenu3(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
