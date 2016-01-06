.class public Lcom/example/steven/myview/PathView;
.super Landroid/view/View;
.source "PathView.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPaint2:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPath2:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v2, 0x42c80000    # 100.0f

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/example/steven/myview/PathView;->mPaint:Landroid/graphics/Paint;

    .line 25
    iget-object v0, p0, Lcom/example/steven/myview/PathView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object v0, p0, Lcom/example/steven/myview/PathView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/PathView;->mPath:Landroid/graphics/Path;

    .line 29
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/PathView;->mPath2:Landroid/graphics/Path;

    .line 32
    iget-object v0, p0, Lcom/example/steven/myview/PathView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 35
    iget-object v0, p0, Lcom/example/steven/myview/PathView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 39
    iget-object v0, p0, Lcom/example/steven/myview/PathView;->mPath2:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x43960000    # 300.0f

    const/high16 v7, 0x43870000    # 270.0f

    const/high16 v6, 0x43480000    # 200.0f

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    .line 49
    iget-object v2, p0, Lcom/example/steven/myview/PathView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/example/steven/myview/PathView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v6, v5, v8, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 52
    .local v0, "oval":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/example/steven/myview/PathView;->mPath2:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v4, v7, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 54
    iget-object v2, p0, Lcom/example/steven/myview/PathView;->mPath2:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/example/steven/myview/PathView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 55
    iget-object v2, p0, Lcom/example/steven/myview/PathView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 58
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x43c80000    # 400.0f

    invoke-direct {v1, v5, v5, v8, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 61
    .local v1, "oval2":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/example/steven/myview/PathView;->mPath2:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v4, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 64
    iget-object v2, p0, Lcom/example/steven/myview/PathView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 67
    iget-object v2, p0, Lcom/example/steven/myview/PathView;->mPath2:Landroid/graphics/Path;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v1, v4, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 68
    iget-object v2, p0, Lcom/example/steven/myview/PathView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 69
    iget-object v2, p0, Lcom/example/steven/myview/PathView;->mPath2:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/example/steven/myview/PathView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 70
    return-void
.end method
