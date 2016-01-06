.class public Lcom/example/steven/myview/EraserView;
.super Landroid/view/View;
.source "EraserView.java"


# static fields
.field private static final MIN_MOVE_DIS:I = 0x5


# instance fields
.field private bgBitmap:Landroid/graphics/Bitmap;

.field private fgBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private preX:F

.field private preY:F

.field private screenH:I

.field private screenW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/example/steven/myview/EraserView;->cal(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/example/steven/myview/EraserView;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private cal(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1}, Lcom/example/steven/myview/MeasureUtil;->getScreenSize(Landroid/app/Activity;)[I

    move-result-object v0

    .line 48
    .local v0, "screenSize":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/example/steven/myview/EraserView;->screenW:I

    .line 49
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/example/steven/myview/EraserView;->screenH:I

    .line 50
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/EraserView;->mPath:Landroid/graphics/Path;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/example/steven/myview/EraserView;->mPaint:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lcom/example/steven/myview/EraserView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 66
    iget-object v0, p0, Lcom/example/steven/myview/EraserView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 69
    iget-object v0, p0, Lcom/example/steven/myview/EraserView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Lcom/example/steven/myview/EraserView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 75
    iget-object v0, p0, Lcom/example/steven/myview/EraserView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 78
    iget-object v0, p0, Lcom/example/steven/myview/EraserView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget v0, p0, Lcom/example/steven/myview/EraserView;->screenW:I

    iget v1, p0, Lcom/example/steven/myview/EraserView;->screenH:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/example/steven/myview/EraserView;->fgBitmap:Landroid/graphics/Bitmap;

    .line 84
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/example/steven/myview/EraserView;->fgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/example/steven/myview/EraserView;->mCanvas:Landroid/graphics/Canvas;

    .line 87
    iget-object v0, p0, Lcom/example/steven/myview/EraserView;->mCanvas:Landroid/graphics/Canvas;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/example/steven/myview/EraserView;->bgBitmap:Landroid/graphics/Bitmap;

    .line 93
    iget-object v0, p0, Lcom/example/steven/myview/EraserView;->bgBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/example/steven/myview/EraserView;->screenW:I

    iget v2, p0, Lcom/example/steven/myview/EraserView;->screenH:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/example/steven/myview/EraserView;->bgBitmap:Landroid/graphics/Bitmap;

    .line 94
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/example/steven/myview/EraserView;->bgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    iget-object v0, p0, Lcom/example/steven/myview/EraserView;->fgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 111
    iget-object v0, p0, Lcom/example/steven/myview/EraserView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/example/steven/myview/EraserView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/example/steven/myview/EraserView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 112
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 123
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 125
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/example/steven/myview/EraserView;->invalidate()V

    .line 145
    const/4 v4, 0x1

    return v4

    .line 127
    :pswitch_1
    iget-object v4, p0, Lcom/example/steven/myview/EraserView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 128
    iget-object v4, p0, Lcom/example/steven/myview/EraserView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    iput v2, p0, Lcom/example/steven/myview/EraserView;->preX:F

    .line 130
    iput v3, p0, Lcom/example/steven/myview/EraserView;->preY:F

    goto :goto_0

    .line 133
    :pswitch_2
    iget v4, p0, Lcom/example/steven/myview/EraserView;->preX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 134
    .local v0, "dx":F
    iget v4, p0, Lcom/example/steven/myview/EraserView;->preY:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 135
    .local v1, "dy":F
    cmpl-float v4, v0, v5

    if-gez v4, :cond_1

    cmpl-float v4, v1, v5

    if-ltz v4, :cond_0

    .line 136
    :cond_1
    iget-object v4, p0, Lcom/example/steven/myview/EraserView;->mPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/example/steven/myview/EraserView;->preX:F

    iget v6, p0, Lcom/example/steven/myview/EraserView;->preY:F

    iget v7, p0, Lcom/example/steven/myview/EraserView;->preX:F

    add-float/2addr v7, v2

    div-float/2addr v7, v9

    iget v8, p0, Lcom/example/steven/myview/EraserView;->preY:F

    add-float/2addr v8, v3

    div-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 137
    iput v2, p0, Lcom/example/steven/myview/EraserView;->preX:F

    .line 138
    iput v3, p0, Lcom/example/steven/myview/EraserView;->preY:F

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
