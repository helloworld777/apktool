.class Lcom/listview/SwipeDismissTouchListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/listview/SwipeDismissTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/listview/SwipeDismissTouchListener;


# direct methods
.method constructor <init>(Lcom/listview/SwipeDismissTouchListener;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/listview/SwipeDismissTouchListener$1;->this$0:Lcom/listview/SwipeDismissTouchListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/listview/SwipeDismissTouchListener$1;->this$0:Lcom/listview/SwipeDismissTouchListener;

    # invokes: Lcom/listview/SwipeDismissTouchListener;->performDismiss()V
    invoke-static {v0}, Lcom/listview/SwipeDismissTouchListener;->access$000(Lcom/listview/SwipeDismissTouchListener;)V

    .line 174
    return-void
.end method
