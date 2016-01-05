.class public Lcom/example/steven/myview/PrecentImage;
.super Landroid/widget/ImageView;
.source "PrecentImage.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private mPath:Landroid/graphics/Path;

.field private mPercent:F

.field msize:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "set"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/PrecentImage;->mPath:Landroid/graphics/Path;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/PrecentImage;->paint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lcom/example/steven/myview/PrecentImage;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object v0, p0, Lcom/example/steven/myview/PrecentImage;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/example/steven/myview/PrecentImage;->setLayerType(ILandroid/graphics/Paint;)V

    .line 30
    invoke-virtual {p0}, Lcom/example/steven/myview/PrecentImage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020046

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/example/steven/myview/PrecentImage;->bitmap:Landroid/graphics/Bitmap;

    .line 31
    iget-object v0, p0, Lcom/example/steven/myview/PrecentImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/example/steven/myview/PrecentImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/example/steven/myview/PrecentImage;->msize:I

    .line 32
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 62
    iget-object v3, p0, Lcom/example/steven/myview/PrecentImage;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 63
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/example/steven/myview/PrecentImage;->msize:I

    int-to-float v5, v5

    iget v6, p0, Lcom/example/steven/myview/PrecentImage;->msize:I

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 65
    .local v2, rect:Landroid/graphics/RectF;
    iget v3, v2, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 66
    .local v0, radius:D
    const-string v3, "SectorDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rect.right:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",rect.bottom:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v3, "SectorDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "radius:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v3, p0, Lcom/example/steven/myview/PrecentImage;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 70
    iget-object v3, p0, Lcom/example/steven/myview/PrecentImage;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    iget v3, p0, Lcom/example/steven/myview/PrecentImage;->mPercent:F

    const/high16 v4, 0x3e00

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/example/steven/myview/PrecentImage;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 74
    :cond_0
    iget v3, p0, Lcom/example/steven/myview/PrecentImage;->mPercent:F

    const/high16 v4, 0x3ec0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 75
    iget-object v3, p0, Lcom/example/steven/myview/PrecentImage;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    :cond_1
    iget v3, p0, Lcom/example/steven/myview/PrecentImage;->mPercent:F

    const/high16 v4, 0x3f20

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 78
    iget-object v3, p0, Lcom/example/steven/myview/PrecentImage;->mPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    :cond_2
    iget v3, p0, Lcom/example/steven/myview/PrecentImage;->mPercent:F

    const/high16 v4, 0x3f60

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 81
    iget-object v3, p0, Lcom/example/steven/myview/PrecentImage;->mPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    :cond_3
    iget-object v3, p0, Lcom/example/steven/myview/PrecentImage;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x401921fb54442d18L

    iget v8, p0, Lcom/example/steven/myview/PrecentImage;->mPercent:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    double-to-float v4, v4

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    float-to-double v6, v5

    const-wide v8, 0x401921fb54442d18L

    iget v5, p0, Lcom/example/steven/myview/PrecentImage;->mPercent:F

    float-to-double v10, v5

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v0

    sub-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 85
    iget-object v3, p0, Lcom/example/steven/myview/PrecentImage;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 86
    iget v3, p0, Lcom/example/steven/myview/PrecentImage;->mPercent:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    iget v3, p0, Lcom/example/steven/myview/PrecentImage;->mPercent:F

    const/high16 v4, 0x3f80

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_4

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    iget-object v3, p0, Lcom/example/steven/myview/PrecentImage;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 92
    iget-object v3, p0, Lcom/example/steven/myview/PrecentImage;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 95
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 39
    iget v0, p0, Lcom/example/steven/myview/PrecentImage;->msize:I

    iget v1, p0, Lcom/example/steven/myview/PrecentImage;->msize:I

    invoke-virtual {p0, v0, v1}, Lcom/example/steven/myview/PrecentImage;->setMeasuredDimension(II)V

    .line 41
    return-void
.end method

.method public setPercent(F)V
    .locals 1
    .parameter "percent"

    .prologue
    .line 48
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 49
    const/high16 p1, 0x3f80

    .line 53
    :cond_0
    :goto_0
    iget v0, p0, Lcom/example/steven/myview/PrecentImage;->mPercent:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 54
    iput p1, p0, Lcom/example/steven/myview/PrecentImage;->mPercent:F

    .line 55
    invoke-virtual {p0}, Lcom/example/steven/myview/PrecentImage;->postInvalidate()V

    .line 57
    :cond_1
    return-void

    .line 50
    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 51
    const/4 p1, 0x0

    goto :goto_0
.end method
