.class Lcom/baoyz/swipemenulistviewsample/SimpleActivity$2;
.super Ljava/lang/Object;
.source "SimpleActivity.java"

# interfaces
.implements Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;


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
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$2;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(ILcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenu;I)Z
    .locals 2
    .parameter "position"
    .parameter "menu"
    .parameter "index"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$2;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    #getter for: Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mAppList:Ljava/util/List;
    invoke-static {v1}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->access$100(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 90
    .local v0, item:Landroid/content/pm/ApplicationInfo;
    packed-switch p3, :pswitch_data_0

    .line 102
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 93
    :pswitch_0
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$2;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    #calls: Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->open(Landroid/content/pm/ApplicationInfo;)V
    invoke-static {v1, v0}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->access$200(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;Landroid/content/pm/ApplicationInfo;)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$2;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    #getter for: Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mAppList:Ljava/util/List;
    invoke-static {v1}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->access$100(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$2;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    #getter for: Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->mAdapter:Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;
    invoke-static {v1}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity;->access$300(Lcom/baoyz/swipemenulistviewsample/SimpleActivity;)Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$AppAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
