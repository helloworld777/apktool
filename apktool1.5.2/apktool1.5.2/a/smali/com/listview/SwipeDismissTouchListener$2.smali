.class Lcom/listview/SwipeDismissTouchListener$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/listview/SwipeDismissTouchListener;->performDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/listview/SwipeDismissTouchListener;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/listview/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/listview/SwipeDismissTouchListener$2;->this$0:Lcom/listview/SwipeDismissTouchListener;

    iput-object p2, p0, Lcom/listview/SwipeDismissTouchListener$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/listview/SwipeDismissTouchListener$2;->val$originalHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/listview/SwipeDismissTouchListener$2;->this$0:Lcom/listview/SwipeDismissTouchListener;

    #getter for: Lcom/listview/SwipeDismissTouchListener;->mCallbacks:Lcom/listview/SwipeDismissTouchListener$DismissCallbacks;
    invoke-static {v0}, Lcom/listview/SwipeDismissTouchListener;->access$300(Lcom/listview/SwipeDismissTouchListener;)Lcom/listview/SwipeDismissTouchListener$DismissCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/listview/SwipeDismissTouchListener$2;->this$0:Lcom/listview/SwipeDismissTouchListener;

    #getter for: Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/listview/SwipeDismissTouchListener;->access$100(Lcom/listview/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/listview/SwipeDismissTouchListener$2;->this$0:Lcom/listview/SwipeDismissTouchListener;

    #getter for: Lcom/listview/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;
    invoke-static {v2}, Lcom/listview/SwipeDismissTouchListener;->access$200(Lcom/listview/SwipeDismissTouchListener;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/listview/SwipeDismissTouchListener$DismissCallbacks;->onDismiss(Landroid/view/View;Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/listview/SwipeDismissTouchListener$2;->this$0:Lcom/listview/SwipeDismissTouchListener;

    #getter for: Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/listview/SwipeDismissTouchListener;->access$100(Lcom/listview/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 264
    iget-object v0, p0, Lcom/listview/SwipeDismissTouchListener$2;->this$0:Lcom/listview/SwipeDismissTouchListener;

    #getter for: Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/listview/SwipeDismissTouchListener;->access$100(Lcom/listview/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 265
    iget-object v0, p0, Lcom/listview/SwipeDismissTouchListener$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/listview/SwipeDismissTouchListener$2;->val$originalHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 266
    iget-object v0, p0, Lcom/listview/SwipeDismissTouchListener$2;->this$0:Lcom/listview/SwipeDismissTouchListener;

    #getter for: Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/listview/SwipeDismissTouchListener;->access$100(Lcom/listview/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/listview/SwipeDismissTouchListener$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    return-void
.end method
