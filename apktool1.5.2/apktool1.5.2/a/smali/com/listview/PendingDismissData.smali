.class public Lcom/listview/PendingDismissData;
.super Ljava/lang/Object;
.source "PendingDismissData.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/listview/PendingDismissData;",
        ">;"
    }
.end annotation


# instance fields
.field public position:I

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .locals 0
    .parameter "position2"
    .parameter "view2"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/listview/PendingDismissData;->position:I

    .line 11
    iput-object p2, p0, Lcom/listview/PendingDismissData;->view:Landroid/view/View;

    .line 12
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/listview/PendingDismissData;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 17
    iget v0, p1, Lcom/listview/PendingDismissData;->position:I

    iget v1, p0, Lcom/listview/PendingDismissData;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    check-cast p1, Lcom/listview/PendingDismissData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/listview/PendingDismissData;->compareTo(Lcom/listview/PendingDismissData;)I

    move-result v0

    return v0
.end method
