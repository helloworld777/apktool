.class public Lcom/example/steven/myview/WaveView;
.super Landroid/view/View;
.source "WaveView.java"


# instance fields
.field private ctrX:F

.field private ctrY:F

.field private isInc:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private vHeight:I

.field private vWidth:I

.field private waveY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/example/steven/myview/WaveView;->mPaint:Landroid/graphics/Paint;

    .line 25
    iget-object v0, p0, Lcom/example/steven/myview/WaveView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x5d2952

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/WaveView;->mPath:Landroid/graphics/Path;

    .line 29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v5, -0x41800000    # -0.25f

    .line 53
    iget-object v0, p0, Lcom/example/steven/myview/WaveView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/example/steven/myview/WaveView;->vWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/example/steven/myview/WaveView;->waveY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 60
    iget-object v0, p0, Lcom/example/steven/myview/WaveView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/example/steven/myview/WaveView;->ctrX:F

    iget v2, p0, Lcom/example/steven/myview/WaveView;->ctrY:F

    iget v3, p0, Lcom/example/steven/myview/WaveView;->vWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/example/steven/myview/WaveView;->vWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/example/steven/myview/WaveView;->waveY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 63
    iget-object v0, p0, Lcom/example/steven/myview/WaveView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/example/steven/myview/WaveView;->vWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/example/steven/myview/WaveView;->vWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    iget v2, p0, Lcom/example/steven/myview/WaveView;->vHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 64
    iget-object v0, p0, Lcom/example/steven/myview/WaveView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/example/steven/myview/WaveView;->vWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/example/steven/myview/WaveView;->vHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    iget-object v0, p0, Lcom/example/steven/myview/WaveView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 67
    iget-object v0, p0, Lcom/example/steven/myview/WaveView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/example/steven/myview/WaveView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 72
    iget v0, p0, Lcom/example/steven/myview/WaveView;->ctrX:F

    iget v1, p0, Lcom/example/steven/myview/WaveView;->vWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/example/steven/myview/WaveView;->vWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/steven/myview/WaveView;->isInc:Z

    .line 83
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/example/steven/myview/WaveView;->isInc:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/example/steven/myview/WaveView;->ctrX:F

    add-float/2addr v0, v8

    :goto_1
    iput v0, p0, Lcom/example/steven/myview/WaveView;->ctrX:F

    .line 88
    iget v0, p0, Lcom/example/steven/myview/WaveView;->ctrY:F

    iget v1, p0, Lcom/example/steven/myview/WaveView;->vHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 89
    iget v0, p0, Lcom/example/steven/myview/WaveView;->ctrY:F

    add-float/2addr v0, v7

    iput v0, p0, Lcom/example/steven/myview/WaveView;->ctrY:F

    .line 90
    iget v0, p0, Lcom/example/steven/myview/WaveView;->waveY:F

    add-float/2addr v0, v7

    iput v0, p0, Lcom/example/steven/myview/WaveView;->waveY:F

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/example/steven/myview/WaveView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 96
    invoke-virtual {p0}, Lcom/example/steven/myview/WaveView;->invalidate()V

    .line 97
    return-void

    .line 78
    :cond_2
    iget v0, p0, Lcom/example/steven/myview/WaveView;->ctrX:F

    iget v1, p0, Lcom/example/steven/myview/WaveView;->vWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/steven/myview/WaveView;->isInc:Z

    goto :goto_0

    .line 83
    :cond_3
    iget v0, p0, Lcom/example/steven/myview/WaveView;->ctrX:F

    sub-float/2addr v0, v8

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/example/steven/myview/WaveView;->vWidth:I

    .line 35
    iput p2, p0, Lcom/example/steven/myview/WaveView;->vHeight:I

    .line 38
    const/high16 v0, 0x3e000000    # 0.125f

    iget v1, p0, Lcom/example/steven/myview/WaveView;->vHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/example/steven/myview/WaveView;->waveY:F

    .line 41
    const/high16 v0, -0x42800000    # -0.0625f

    iget v1, p0, Lcom/example/steven/myview/WaveView;->vHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/example/steven/myview/WaveView;->ctrY:F

    .line 42
    return-void
.end method
