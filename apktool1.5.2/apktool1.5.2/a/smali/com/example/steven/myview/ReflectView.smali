.class public Lcom/example/steven/myview/ReflectView;
.super Landroid/view/View;
.source "ReflectView.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mRefBitmap:Landroid/graphics/Bitmap;

.field private mSrcBitmap:Landroid/graphics/Bitmap;

.field private mXfermode:Landroid/graphics/PorterDuffXfermode;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private initRes(II)V
    .locals 17
    .parameter "w"
    .parameter "h"

    .prologue
    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/example/steven/myview/ReflectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f03

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 46
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 47
    .local v6, matrix:Landroid/graphics/Matrix;
    const/high16 v1, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 50
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/example/steven/myview/ReflectView;->mRefBitmap:Landroid/graphics/Bitmap;

    .line 52
    move/from16 v16, p1

    .line 53
    .local v16, screenW:I
    move/from16 v15, p2

    .line 55
    .local v15, screenH:I
    div-int/lit8 v1, v16, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/example/steven/myview/ReflectView;->x:I

    .line 56
    div-int/lit8 v1, v15, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/example/steven/myview/ReflectView;->y:I

    .line 59
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/example/steven/myview/ReflectView;->mPaint:Landroid/graphics/Paint;

    .line 60
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/example/steven/myview/ReflectView;->mPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/example/steven/myview/ReflectView;->x:I

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/example/steven/myview/ReflectView;->y:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/example/steven/myview/ReflectView;->x:I

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/example/steven/myview/ReflectView;->y:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    int-to-float v11, v2

    const/high16 v12, -0x5600

    const/4 v13, 0x0

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 63
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/example/steven/myview/ReflectView;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 64
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 68
    const/high16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 69
    iget-object v0, p0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/example/steven/myview/ReflectView;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/example/steven/myview/ReflectView;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 71
    iget v0, p0, Lcom/example/steven/myview/ReflectView;->x:I

    int-to-float v1, v0

    iget v0, p0, Lcom/example/steven/myview/ReflectView;->y:I

    iget-object v2, p0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/example/steven/myview/ReflectView;->x:I

    iget-object v3, p0, Lcom/example/steven/myview/ReflectView;->mRefBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/example/steven/myview/ReflectView;->y:I

    iget-object v4, p0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v12

    .line 73
    .local v12, sc:I
    iget-object v0, p0, Lcom/example/steven/myview/ReflectView;->mRefBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/example/steven/myview/ReflectView;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/example/steven/myview/ReflectView;->y:I

    iget-object v3, p0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Lcom/example/steven/myview/ReflectView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/example/steven/myview/ReflectView;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 77
    iget v0, p0, Lcom/example/steven/myview/ReflectView;->x:I

    int-to-float v7, v0

    iget v0, p0, Lcom/example/steven/myview/ReflectView;->y:I

    iget-object v1, p0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v8, v0

    iget v0, p0, Lcom/example/steven/myview/ReflectView;->x:I

    iget-object v1, p0, Lcom/example/steven/myview/ReflectView;->mRefBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v9, v0

    iget v0, p0, Lcom/example/steven/myview/ReflectView;->y:I

    iget-object v1, p0, Lcom/example/steven/myview/ReflectView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v10, v0

    iget-object v11, p0, Lcom/example/steven/myview/ReflectView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    iget-object v0, p0, Lcom/example/steven/myview/ReflectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 81
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 82
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/example/steven/myview/ReflectView;->initRes(II)V

    .line 30
    return-void
.end method
