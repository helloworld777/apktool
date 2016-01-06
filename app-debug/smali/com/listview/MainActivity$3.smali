.class Lcom/listview/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/listview/SwipeDismissTouchListener$DismissCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/listview/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/listview/MainActivity;

.field final synthetic val$dismissableButton:Landroid/widget/Button;

.field final synthetic val$dismissableContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/listview/MainActivity;Landroid/view/ViewGroup;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/listview/MainActivity$3;->this$0:Lcom/listview/MainActivity;

    iput-object p2, p0, Lcom/listview/MainActivity$3;->val$dismissableContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/listview/MainActivity$3;->val$dismissableButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "token"    # Ljava/lang/Object;

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Ljava/lang/Object;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/listview/MainActivity$3;->val$dismissableContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/listview/MainActivity$3;->val$dismissableButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    return-void
.end method
