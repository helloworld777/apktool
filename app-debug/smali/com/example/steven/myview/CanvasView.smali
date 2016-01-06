.class public Lcom/example/steven/myview/CanvasView;
.super Landroid/view/View;
.source "CanvasView.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field protected mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x1f4

    const/4 v4, 0x0

    const/16 v3, 0x2ee

    const/16 v2, 0xfa

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/example/steven/myview/CanvasView;->mRect:Landroid/graphics/Rect;

    .line 21
    iget-object v1, p0, Lcom/example/steven/myview/CanvasView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    .line 22
    .local v0, "intersect":Z
    iget-object v1, p0, Lcom/example/steven/myview/CanvasView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 28
    const v0, -0xffff01

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 30
    iget-object v0, p0, Lcom/example/steven/myview/CanvasView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 32
    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 33
    return-void
.end method
