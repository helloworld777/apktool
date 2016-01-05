.class Lcom/listview/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/listview/SwipeDismissListViewTouchListener$DismissCallbacks;


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


# direct methods
.method constructor <init>(Lcom/listview/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/listview/MainActivity$1;->this$0:Lcom/listview/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Landroid/widget/ListView;[I)V
    .locals 6
    .parameter "listView"
    .parameter "reverseSortedPositions"

    .prologue
    .line 67
    move-object v0, p2

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 68
    .local v3, position:I
    iget-object v4, p0, Lcom/listview/MainActivity$1;->this$0:Lcom/listview/MainActivity;

    iget-object v4, v4, Lcom/listview/MainActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/listview/MainActivity$1;->this$0:Lcom/listview/MainActivity;

    iget-object v5, v5, Lcom/listview/MainActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v3           #position:I
    :cond_0
    iget-object v4, p0, Lcom/listview/MainActivity$1;->this$0:Lcom/listview/MainActivity;

    iget-object v4, v4, Lcom/listview/MainActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method
