.class public Lcom/example/steven/myview/YuanView;
.super Landroid/view/View;
.source "YuanView.java"


# instance fields
.field angle:F

.field angle2:F

.field defaultSize:I

.field in:I

.field mCenter:Landroid/graphics/Point;

.field mViewSize:I

.field paint:Landroid/graphics/Paint;

.field paint2:Landroid/graphics/Paint;

.field rectF:Landroid/graphics/RectF;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/steven/myview/YuanView;->angle:F

    .line 70
    const/16 v0, 0x1e

    iput v0, p0, Lcom/example/steven/myview/YuanView;->in:I

    .line 71
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/YuanView;->timer:Ljava/util/Timer;

    .line 88
    const/16 v0, 0x12c

    iput v0, p0, Lcom/example/steven/myview/YuanView;->defaultSize:I

    .line 29
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/YuanView;->mCenter:Landroid/graphics/Point;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/example/steven/myview/YuanView;->paint:Landroid/graphics/Paint;

    .line 32
    iget-object v0, p0, Lcom/example/steven/myview/YuanView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v0, p0, Lcom/example/steven/myview/YuanView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    iget-object v0, p0, Lcom/example/steven/myview/YuanView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/example/steven/myview/YuanView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/YuanView;->rectF:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/YuanView;->paint2:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/example/steven/myview/YuanView;->paint2:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/example/steven/myview/YuanView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/example/steven/myview/YuanView$1;

    invoke-direct {v1, p0}, Lcom/example/steven/myview/YuanView$1;-><init>(Lcom/example/steven/myview/YuanView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 68
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    iget-object v0, p0, Lcom/example/steven/myview/YuanView;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/example/steven/myview/YuanView;->mViewSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/example/steven/myview/YuanView;->mViewSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 77
    iget-object v0, p0, Lcom/example/steven/myview/YuanView;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/example/steven/myview/YuanView;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 78
    iget-object v0, p0, Lcom/example/steven/myview/YuanView;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/example/steven/myview/YuanView;->in:I

    int-to-float v1, v1

    iget v2, p0, Lcom/example/steven/myview/YuanView;->in:I

    int-to-float v2, v2

    iget v3, p0, Lcom/example/steven/myview/YuanView;->mViewSize:I

    iget v4, p0, Lcom/example/steven/myview/YuanView;->in:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/example/steven/myview/YuanView;->mViewSize:I

    iget v5, p0, Lcom/example/steven/myview/YuanView;->in:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw:angle-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/example/steven/myview/YuanView;->angle:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",angle2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/example/steven/myview/YuanView;->angle2:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/example/steven/myview/YuanView;->rectF:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c

    iget v2, p0, Lcom/example/steven/myview/YuanView;->angle2:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/example/steven/myview/YuanView;->angle:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/example/steven/myview/YuanView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 87
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 91
    iget v1, p0, Lcom/example/steven/myview/YuanView;->defaultSize:I

    invoke-static {v1, p1}, Lcom/example/steven/myview/YuanView;->getDefaultSize(II)I

    move-result v0

    .line 94
    .local v0, width:I
    iget v1, p0, Lcom/example/steven/myview/YuanView;->defaultSize:I

    iget v2, p0, Lcom/example/steven/myview/YuanView;->defaultSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/example/steven/myview/YuanView;->mViewSize:I

    .line 95
    iget v1, p0, Lcom/example/steven/myview/YuanView;->mViewSize:I

    iget v2, p0, Lcom/example/steven/myview/YuanView;->mViewSize:I

    invoke-virtual {p0, v1, v2}, Lcom/example/steven/myview/YuanView;->setMeasuredDimension(II)V

    .line 96
    iget-object v1, p0, Lcom/example/steven/myview/YuanView;->mCenter:Landroid/graphics/Point;

    iget v2, p0, Lcom/example/steven/myview/YuanView;->mViewSize:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/example/steven/myview/YuanView;->mViewSize:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 97
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/example/steven/myview/YuanView;->mViewSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/example/steven/myview/YuanView;->defaultSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method
