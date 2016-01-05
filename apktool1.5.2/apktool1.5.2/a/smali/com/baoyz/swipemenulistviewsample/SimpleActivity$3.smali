.class Lcom/baoyz/swipemenulistviewsample/SimpleActivity$3;
.super Ljava/lang/Object;
.source "SimpleActivity.java"

# interfaces
.implements Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnSwipeListener;


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
    .line 107
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/SimpleActivity$3;->this$0:Lcom/baoyz/swipemenulistviewsample/SimpleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeEnd(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 117
    return-void
.end method

.method public onSwipeStart(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 112
    return-void
.end method
