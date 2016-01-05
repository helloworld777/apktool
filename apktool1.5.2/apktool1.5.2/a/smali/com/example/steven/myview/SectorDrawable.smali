.class public Lcom/example/steven/myview/SectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPath:Landroid/graphics/Path;

.field private mPercent:F

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->mPath:Landroid/graphics/Path;

    .line 19
    iput-object p1, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 20
    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 23
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->paint:Landroid/graphics/Paint;

    .line 24
    iget-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 47
    iget-object v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 48
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/example/steven/myview/SectorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 50
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

    .line 51
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

    .line 52
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

    .line 54
    iget-object v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 55
    iget-object v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    iget v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPercent:F

    const/high16 v4, 0x3e00

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 57
    iget-object v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 59
    :cond_0
    iget v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPercent:F

    const/high16 v4, 0x3ec0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 62
    :cond_1
    iget v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPercent:F

    const/high16 v4, 0x3f20

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 63
    iget-object v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    :cond_2
    iget v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPercent:F

    const/high16 v4, 0x3f60

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 66
    iget-object v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 68
    :cond_3
    iget-object v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x401921fb54442d18L

    iget v8, p0, Lcom/example/steven/myview/SectorDrawable;->mPercent:F

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

    iget v5, p0, Lcom/example/steven/myview/SectorDrawable;->mPercent:F

    float-to-double v10, v5

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v0

    sub-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 70
    iget-object v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 71
    iget v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPercent:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    iget v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPercent:F

    const/high16 v4, 0x3f80

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_4

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    iget-object v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/example/steven/myview/SectorDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 74
    iget-object v3, p0, Lcom/example/steven/myview/SectorDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 76
    iget-object v3, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 79
    :cond_4
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/example/steven/myview/SectorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 166
    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 134
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 127
    invoke-virtual {p0}, Lcom/example/steven/myview/SectorDrawable;->invalidateSelf()V

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/example/steven/myview/SectorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 174
    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 177
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 84
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 94
    return-void
.end method

.method public setPercent(F)V
    .locals 1
    .parameter "percent"

    .prologue
    .line 152
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 153
    const/high16 p1, 0x3f80

    .line 157
    :cond_0
    :goto_0
    iget v0, p0, Lcom/example/steven/myview/SectorDrawable;->mPercent:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 158
    iput p1, p0, Lcom/example/steven/myview/SectorDrawable;->mPercent:F

    .line 159
    invoke-virtual {p0}, Lcom/example/steven/myview/SectorDrawable;->invalidateSelf()V

    .line 161
    :cond_1
    return-void

    .line 154
    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 155
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/example/steven/myview/SectorDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 42
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/example/steven/myview/SectorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 182
    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 185
    :cond_0
    return-void
.end method
