.class Lcom/listview/SwipeDismissListViewTouchListener$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/listview/SwipeDismissListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/listview/SwipeDismissListViewTouchListener;

.field final synthetic val$downPosition:I

.field final synthetic val$downView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/listview/SwipeDismissListViewTouchListener;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/listview/SwipeDismissListViewTouchListener$2;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    iput-object p2, p0, Lcom/listview/SwipeDismissListViewTouchListener$2;->val$downView:Landroid/view/View;

    iput p3, p0, Lcom/listview/SwipeDismissListViewTouchListener$2;->val$downPosition:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/listview/SwipeDismissListViewTouchListener$2;->this$0:Lcom/listview/SwipeDismissListViewTouchListener;

    iget-object v1, p0, Lcom/listview/SwipeDismissListViewTouchListener$2;->val$downView:Landroid/view/View;

    iget v2, p0, Lcom/listview/SwipeDismissListViewTouchListener$2;->val$downPosition:I

    #calls: Lcom/listview/SwipeDismissListViewTouchListener;->performDismiss(Landroid/view/View;I)V
    invoke-static {v0, v1, v2}, Lcom/listview/SwipeDismissListViewTouchListener;->access$000(Lcom/listview/SwipeDismissListViewTouchListener;Landroid/view/View;I)V

    .line 273
    return-void
.end method
