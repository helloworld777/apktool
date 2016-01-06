.class public Lcom/example/steven/myview/LayerView;
.super Landroid/view/View;
.source "LayerView.java"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mViewHeight:I

.field private mViewWidth:I

.field skew:F

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/steven/myview/LayerView;->skew:F

    .line 166
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/example/steven/myview/LayerView;->timer:Ljava/util/Timer;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/example/steven/myview/LayerView;->mPaint:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {p0}, Lcom/example/steven/myview/LayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/example/steven/myview/LayerView;->mBitmap:Landroid/graphics/Bitmap;

    .line 26
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 170
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 171
    iget v0, p0, Lcom/example/steven/myview/LayerView;->skew:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 172
    iget-object v0, p0, Lcom/example/steven/myview/LayerView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 174
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 150
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 151
    iget-object v0, p0, Lcom/example/steven/myview/LayerView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/example/steven/myview/LayerView$1;

    invoke-direct {v1, p0}, Lcom/example/steven/myview/LayerView$1;-><init>(Lcom/example/steven/myview/LayerView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 162
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/example/steven/myview/LayerView;->mViewWidth:I

    .line 142
    iput p2, p0, Lcom/example/steven/myview/LayerView;->mViewHeight:I

    .line 145
    iget-object v0, p0, Lcom/example/steven/myview/LayerView;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/example/steven/myview/LayerView;->mViewWidth:I

    iget v2, p0, Lcom/example/steven/myview/LayerView;->mViewHeight:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/example/steven/myview/LayerView;->mBitmap:Landroid/graphics/Bitmap;

    .line 146
    return-void
.end method
