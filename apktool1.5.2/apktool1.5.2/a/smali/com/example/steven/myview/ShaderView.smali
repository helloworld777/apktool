.class public Lcom/example/steven/myview/ShaderView;
.super Landroid/view/View;
.source "ShaderView.java"


# static fields
.field private static final RECT_SIZE:I = 0x190


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field private bottom:I

.field private left:I

.field private mPaint:Landroid/graphics/Paint;

.field private mViewHeight:I

.field private mViewWidth:I

.field private right:I

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/ShaderView;->mPaint:Landroid/graphics/Paint;

    .line 34
    const-string v0, "onSizeChanged"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/example/steven/myview/ShaderView;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/example/steven/myview/ShaderView;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Lcom/example/steven/myview/ShaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/example/steven/myview/ShaderView;->bitmap:Landroid/graphics/Bitmap;

    .line 39
    iget-object v0, p0, Lcom/example/steven/myview/ShaderView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/example/steven/myview/ShaderView;->bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 41
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 64
    iget v0, p0, Lcom/example/steven/myview/ShaderView;->left:I

    int-to-float v1, v0

    iget v0, p0, Lcom/example/steven/myview/ShaderView;->top:I

    int-to-float v2, v0

    iget v0, p0, Lcom/example/steven/myview/ShaderView;->right:I

    int-to-float v3, v0

    iget v0, p0, Lcom/example/steven/myview/ShaderView;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/example/steven/myview/ShaderView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 65
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 66
    .local v5, p:Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    const v0, -0xff0100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget v0, p0, Lcom/example/steven/myview/ShaderView;->left:I

    int-to-float v1, v0

    iget v0, p0, Lcom/example/steven/myview/ShaderView;->top:I

    int-to-float v2, v0

    iget v0, p0, Lcom/example/steven/myview/ShaderView;->right:I

    int-to-float v3, v0

    iget v0, p0, Lcom/example/steven/myview/ShaderView;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 69
    iget-object v0, p0, Lcom/example/steven/myview/ShaderView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 47
    iput p1, p0, Lcom/example/steven/myview/ShaderView;->mViewWidth:I

    .line 48
    iput p2, p0, Lcom/example/steven/myview/ShaderView;->mViewHeight:I

    .line 49
    const-string v2, "onSizeChanged"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mViewWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/example/steven/myview/ShaderView;->mViewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mViewHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/example/steven/myview/ShaderView;->mViewHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget v2, p0, Lcom/example/steven/myview/ShaderView;->mViewWidth:I

    div-int/lit8 v0, v2, 0x2

    .line 53
    .local v0, screenX:I
    iget v2, p0, Lcom/example/steven/myview/ShaderView;->mViewHeight:I

    div-int/lit8 v1, v2, 0x2

    .line 56
    .local v1, screenY:I
    add-int/lit16 v2, v0, -0x190

    iput v2, p0, Lcom/example/steven/myview/ShaderView;->left:I

    .line 57
    add-int/lit16 v2, v1, -0x190

    iput v2, p0, Lcom/example/steven/myview/ShaderView;->top:I

    .line 58
    add-int/lit16 v2, v0, 0x190

    iput v2, p0, Lcom/example/steven/myview/ShaderView;->right:I

    .line 59
    add-int/lit16 v2, v1, 0x190

    iput v2, p0, Lcom/example/steven/myview/ShaderView;->bottom:I

    .line 60
    return-void
.end method
