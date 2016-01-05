.class Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;


# direct methods
.method constructor <init>(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout$1;->this$0:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout$1;->this$0:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    const/4 v1, 0x0

    #setter for: Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->isFling:Z
    invoke-static {v0, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->access$002(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;Z)Z

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout$1;->this$0:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    #getter for: Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->MIN_FLING:I
    invoke-static {v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->access$100(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout$1;->this$0:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    #getter for: Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->MAX_VELOCITYX:I
    invoke-static {v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->access$200(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout$1;->this$0:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    const/4 v1, 0x1

    #setter for: Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->isFling:Z
    invoke-static {v0, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->access$002(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;Z)Z

    .line 105
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
