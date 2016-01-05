.class public Lcom/example/steven/myview/PaintView;
.super Landroid/view/View;
.source "PaintView.java"


# static fields
.field private static final COUNT:I = 0x190

.field private static final HEIGHT:I = 0x13

.field private static final WIDTH:I = 0x13


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private verts:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attributes"

    .prologue
    const/16 v9, 0x13

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lcom/example/steven/myview/PaintView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f03

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/example/steven/myview/PaintView;->mBitmap:Landroid/graphics/Bitmap;

    .line 27
    const/16 v6, 0x320

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/example/steven/myview/PaintView;->verts:[F

    .line 32
    const/4 v2, 0x0

    .line 33
    .local v2, index:I
    iget-object v6, p0, Lcom/example/steven/myview/PaintView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v3, v6

    .line 34
    .local v3, multiple:F
    const/4 v5, 0x0

    .local v5, y:I
    :goto_0
    if-gt v5, v9, :cond_1

    .line 35
    iget-object v6, p0, Lcom/example/steven/myview/PaintView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x13

    int-to-float v1, v6

    .line 37
    .local v1, fy:F
    const/4 v4, 0x0

    .local v4, x:I
    :goto_1
    if-gt v4, v9, :cond_0

    .line 39
    iget-object v6, p0, Lcom/example/steven/myview/PaintView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x13

    int-to-float v6, v6

    rsub-int/lit8 v7, v5, 0x13

    int-to-float v7, v7

    const/high16 v8, 0x3f80

    mul-float/2addr v7, v8

    const/high16 v8, 0x42be

    div-float/2addr v7, v8

    mul-float/2addr v7, v3

    add-float v0, v6, v7

    .line 41
    .local v0, fx:F
    const-string v6, "Paint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fx:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",fy:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-direct {p0, v0, v1, v2}, Lcom/example/steven/myview/PaintView;->setXY(FFI)V

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 37
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 34
    .end local v0           #fx:F
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 46
    .end local v1           #fy:F
    .end local v4           #x:I
    :cond_1
    return-void
.end method

.method private setXY(FFI)V
    .locals 2
    .parameter "fx"
    .parameter "fy"
    .parameter "index"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/example/steven/myview/PaintView;->verts:[F

    mul-int/lit8 v1, p3, 0x2

    add-int/lit8 v1, v1, 0x0

    aput p1, v0, v1

    .line 49
    iget-object v0, p0, Lcom/example/steven/myview/PaintView;->verts:[F

    mul-int/lit8 v1, p3, 0x2

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    .line 50
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const/16 v2, 0x13

    const/4 v5, 0x0

    .line 54
    iget-object v1, p0, Lcom/example/steven/myview/PaintView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/example/steven/myview/PaintView;->verts:[F

    move-object v0, p1

    move v3, v2

    move v7, v5

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 56
    return-void
.end method
