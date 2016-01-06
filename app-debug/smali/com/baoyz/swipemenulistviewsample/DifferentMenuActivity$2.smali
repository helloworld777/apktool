.class Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$2;
.super Ljava/lang/Object;
.source "DifferentMenuActivity.java"

# interfaces
.implements Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;


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
    .line 113
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$2;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(ILcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;I)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "menu"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;
    .param p3, "index"    # I

    .prologue
    .line 116
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$2;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    # getter for: Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->mAppList:Ljava/util/List;
    invoke-static {v1}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->access$100(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 117
    .local v0, "item":Landroid/content/pm/ApplicationInfo;
    packed-switch p3, :pswitch_data_0

    .line 128
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 124
    :pswitch_1
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$2;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    # getter for: Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->mAppList:Ljava/util/List;
    invoke-static {v1}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->access$100(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$2;->this$0:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;

    # getter for: Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->mAdapter:Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;
    invoke-static {v1}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;->access$200(Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity;)Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baoyz/swipemenulistviewsample/DifferentMenuActivity$AppAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
