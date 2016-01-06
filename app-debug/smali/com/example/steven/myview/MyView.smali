.class public Lcom/example/steven/myview/MyView;
.super Landroid/view/View;
.source "MyView.java"


# instance fields
.field dm:Landroid/util/DisplayMetrics;

.field private mIndex:I

.field res:Landroid/content/res/Resources;

.field private texts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field w:I

.field wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/example/steven/myview/MyView;->mIndex:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/example/steven/myview/MyView;->res:Landroid/content/res/Resources;

    .line 32
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/MyView;->dm:Landroid/util/DisplayMetrics;

    .line 33
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/example/steven/myview/MyView;->wm:Landroid/view/WindowManager;

    .line 35
    iget-object v0, p0, Lcom/example/steven/myview/MyView;->wm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/example/steven/myview/MyView;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/MyView;->texts:Ljava/util/List;

    .line 38
    iget-object v0, p0, Lcom/example/steven/myview/MyView;->texts:Ljava/util/List;

    const-string v1, "\u5173"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/example/steven/myview/MyView;->texts:Ljava/util/List;

    const-string v1, "\u4f4e"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/example/steven/myview/MyView;->texts:Ljava/util/List;

    const-string v1, "\u4e2d"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/example/steven/myview/MyView;->texts:Ljava/util/List;

    const-string v1, "\u9ad8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/example/steven/myview/MyView;->wm:Landroid/view/WindowManager;

    .line 44
    return-void
.end method

.method private dip2px(F)I
    .locals 2
    .param p1, "dpValue"    # F

    .prologue
    .line 94
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/MyView;->dm:Landroid/util/DisplayMetrics;

    .line 96
    iget-object v0, p0, Lcom/example/steven/myview/MyView;->wm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/example/steven/myview/MyView;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    iget-object v0, p0, Lcom/example/steven/myview/MyView;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 101
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/example/steven/myview/MyView;->getMeasuredWidth()I

    move-result v15

    .line 105
    .local v15, "wid":I
    invoke-virtual/range {p0 .. p0}, Lcom/example/steven/myview/MyView;->getMeasuredHeight()I

    move-result v8

    .line 106
    .local v8, "hei":I
    const-string v1, "MyView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",hei:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    div-int/lit8 v1, v15, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/example/steven/myview/MyView;->w:I

    .line 109
    new-instance v10, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v15

    int-to-float v4, v8

    invoke-direct {v10, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 110
    .local v10, "rect":Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 111
    .local v6, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    const v1, -0xff0100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v1, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 117
    move-object/from16 v0, p0

    iget v1, v0, Lcom/example/steven/myview/MyView;->w:I

    int-to-float v2, v1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/example/steven/myview/MyView;->w:I

    int-to-float v4, v1

    int-to-float v5, v8

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 118
    move-object/from16 v0, p0

    iget v1, v0, Lcom/example/steven/myview/MyView;->w:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/example/steven/myview/MyView;->w:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    int-to-float v5, v8

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 119
    move-object/from16 v0, p0

    iget v1, v0, Lcom/example/steven/myview/MyView;->w:I

    mul-int/lit8 v1, v1, 0x3

    int-to-float v2, v1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/example/steven/myview/MyView;->w:I

    mul-int/lit8 v1, v1, 0x3

    int-to-float v4, v1

    int-to-float v5, v8

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 122
    const-string v13, "\u5173"

    .line 123
    .local v13, "s":Ljava/lang/String;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 124
    .local v11, "rect1":Landroid/graphics/Rect;
    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v13, v1, v2, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/example/steven/myview/MyView;->getY()F

    move-result v1

    float-to-int v14, v1

    .line 129
    .local v14, "top":I
    const-string v1, "MyView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "top:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",getX():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/example/steven/myview/MyView;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",getY():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/example/steven/myview/MyView;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v1, "MyView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rect1.bottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",rect1.height():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    move-object/from16 v0, p0

    iget v1, v0, Lcom/example/steven/myview/MyView;->w:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v16, v1, v2

    .line 132
    .local v16, "x":I
    div-int/lit8 v1, v8, 0x2

    add-int v17, v14, v1

    .line 133
    .local v17, "y":I
    const-string v1, "MyView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rect1.width():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",rect1.height():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 135
    .local v7, "fPaint":Landroid/graphics/Paint;
    const-string v1, "\u6211"

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 136
    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 137
    const v1, -0xff0100

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 141
    new-instance v12, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/example/steven/myview/MyView;->w:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/example/steven/myview/MyView;->mIndex:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/example/steven/myview/MyView;->w:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/example/steven/myview/MyView;->mIndex:I

    mul-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/example/steven/myview/MyView;->w:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v8

    invoke-direct {v12, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 142
    .local v12, "rectF":Landroid/graphics/RectF;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 145
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/example/steven/myview/MyView;->texts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 147
    move-object/from16 v0, p0

    iget v1, v0, Lcom/example/steven/myview/MyView;->mIndex:I

    if-ne v9, v1, :cond_0

    .line 148
    const/high16 v1, -0x1000000

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/example/steven/myview/MyView;->texts:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/example/steven/myview/MyView;->w:I

    mul-int/2addr v2, v9

    add-int v2, v2, v16

    int-to-float v2, v2

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 150
    const v1, -0xff0100

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 152
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/example/steven/myview/MyView;->texts:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/example/steven/myview/MyView;->w:I

    mul-int/2addr v2, v9

    add-int v2, v2, v16

    int-to-float v2, v2

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 159
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 55
    const/16 v0, 0x190

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lcom/example/steven/myview/MyView;->setMeasuredDimension(II)V

    .line 56
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 61
    const-string v3, "MyView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent event.getAction():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 89
    :goto_0
    return v2

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 71
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 73
    .local v1, "y":I
    const-string v3, "MyView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",y():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget v3, p0, Lcom/example/steven/myview/MyView;->w:I

    if-ge v0, v3, :cond_3

    .line 75
    const/4 v2, 0x0

    iput v2, p0, Lcom/example/steven/myview/MyView;->mIndex:I

    .line 85
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/example/steven/myview/MyView;->invalidate()V

    .line 89
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 77
    .restart local v0    # "x":I
    .restart local v1    # "y":I
    :cond_3
    iget v3, p0, Lcom/example/steven/myview/MyView;->w:I

    if-le v0, v3, :cond_4

    iget v3, p0, Lcom/example/steven/myview/MyView;->w:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_4

    .line 78
    iput v2, p0, Lcom/example/steven/myview/MyView;->mIndex:I

    goto :goto_1

    .line 79
    :cond_4
    iget v2, p0, Lcom/example/steven/myview/MyView;->w:I

    mul-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_5

    iget v2, p0, Lcom/example/steven/myview/MyView;->w:I

    mul-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_5

    .line 80
    const/4 v2, 0x2

    iput v2, p0, Lcom/example/steven/myview/MyView;->mIndex:I

    goto :goto_1

    .line 81
    :cond_5
    iget v2, p0, Lcom/example/steven/myview/MyView;->w:I

    mul-int/lit8 v2, v2, 0x3

    if-le v0, v2, :cond_1

    .line 82
    const/4 v2, 0x3

    iput v2, p0, Lcom/example/steven/myview/MyView;->mIndex:I

    goto :goto_1
.end method

.method public setIndex()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
