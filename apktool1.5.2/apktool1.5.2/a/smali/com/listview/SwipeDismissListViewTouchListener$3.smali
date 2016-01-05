.class Lcom/listview/SwipeDismissListViewTouchListener$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/listview/SwipeDismissListViewTouchListener;->performDismiss(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/listview/SwipeDismissListViewTouchListener;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/listview/SwipeDismissListViewTouchListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    iput p2, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->val$originalHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 14
    .parameter "animation"

    .prologue
    const/4 v5, 0x0

    .line 342
    iget-object v2, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    invoke-static {v2}, Lcom/listview/SwipeDismissListViewTouchListener;->access$106(Lcom/listview/SwipeDismissListViewTouchListener;)I

    .line 343
    iget-object v2, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    #getter for: Lcom/listview/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I
    invoke-static {v2}, Lcom/listview/SwipeDismissListViewTouchListener;->access$100(Lcom/listview/SwipeDismissListViewTouchListener;)I

    move-result v2

    if-nez v2, :cond_2

    .line 346
    iget-object v2, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    #getter for: Lcom/listview/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v2}, Lcom/listview/SwipeDismissListViewTouchListener;->access$200(Lcom/listview/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 348
    iget-object v2, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    #getter for: Lcom/listview/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v2}, Lcom/listview/SwipeDismissListViewTouchListener;->access$200(Lcom/listview/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v9, v2, [I

    .line 349
    .local v9, dismissPositions:[I
    iget-object v2, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    #getter for: Lcom/listview/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v2}, Lcom/listview/SwipeDismissListViewTouchListener;->access$200(Lcom/listview/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    .local v10, i:I
    :goto_0
    if-ltz v10, :cond_0

    .line 350
    iget-object v2, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    #getter for: Lcom/listview/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v2}, Lcom/listview/SwipeDismissListViewTouchListener;->access$200(Lcom/listview/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/listview/PendingDismissData;

    iget v2, v2, Lcom/listview/PendingDismissData;->position:I

    aput v2, v9, v10

    .line 349
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    #getter for: Lcom/listview/SwipeDismissListViewTouchListener;->mCallbacks:Lcom/listview/SwipeDismissListViewTouchListener$DismissCallbacks;
    invoke-static {v2}, Lcom/listview/SwipeDismissListViewTouchListener;->access$400(Lcom/listview/SwipeDismissListViewTouchListener;)Lcom/listview/SwipeDismissListViewTouchListener$DismissCallbacks;

    move-result-object v2

    iget-object v3, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    #getter for: Lcom/listview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/listview/SwipeDismissListViewTouchListener;->access$300(Lcom/listview/SwipeDismissListViewTouchListener;)Landroid/widget/ListView;

    move-result-object v3

    invoke-interface {v2, v3, v9}, Lcom/listview/SwipeDismissListViewTouchListener$DismissCallbacks;->onDismiss(Landroid/widget/ListView;[I)V

    .line 356
    iget-object v2, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    const/4 v3, -0x1

    #setter for: Lcom/listview/SwipeDismissListViewTouchListener;->mDownPosition:I
    invoke-static {v2, v3}, Lcom/listview/SwipeDismissListViewTouchListener;->access$502(Lcom/listview/SwipeDismissListViewTouchListener;I)I

    .line 359
    iget-object v2, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    #getter for: Lcom/listview/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v2}, Lcom/listview/SwipeDismissListViewTouchListener;->access$200(Lcom/listview/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/listview/PendingDismissData;

    .line 361
    .local v13, pendingDismiss:Lcom/listview/PendingDismissData;
    iget-object v2, v13, Lcom/listview/PendingDismissData;->view:Landroid/view/View;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 362
    iget-object v2, v13, Lcom/listview/PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 363
    iget-object v2, v13, Lcom/listview/PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 364
    .local v12, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->val$originalHeight:I

    iput v2, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 365
    iget-object v2, v13, Lcom/listview/PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v2, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 369
    .end local v12           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v13           #pendingDismiss:Lcom/listview/PendingDismissData;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 370
    .local v0, time:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 372
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    #getter for: Lcom/listview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/listview/SwipeDismissListViewTouchListener;->access$300(Lcom/listview/SwipeDismissListViewTouchListener;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 374
    iget-object v2, p0, Lcom/listview/SwipeDismissListViewTouchListener$3;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    #getter for: Lcom/listview/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v2}, Lcom/listview/SwipeDismissListViewTouchListener;->access$200(Lcom/listview/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 376
    .end local v0           #time:J
    .end local v8           #cancelEvent:Landroid/view/MotionEvent;
    .end local v9           #dismissPositions:[I
    .end local v10           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method
