.class Lcom/example/steven/myview/LayerView$1;
.super Ljava/util/TimerTask;
.source "LayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/steven/myview/LayerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/steven/myview/LayerView;


# direct methods
.method constructor <init>(Lcom/example/steven/myview/LayerView;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/example/steven/myview/LayerView$1;->this$0:Lcom/example/steven/myview/LayerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 154
    iget-object v0, p0, Lcom/example/steven/myview/LayerView$1;->this$0:Lcom/example/steven/myview/LayerView;

    iget v1, v0, Lcom/example/steven/myview/LayerView;->skew:F

    float-to-double v2, v1

    const-wide v4, 0x3f847ae147ae147bL

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Lcom/example/steven/myview/LayerView;->skew:F

    .line 156
    iget-object v0, p0, Lcom/example/steven/myview/LayerView$1;->this$0:Lcom/example/steven/myview/LayerView;

    iget v0, v0, Lcom/example/steven/myview/LayerView;->skew:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/example/steven/myview/LayerView$1;->this$0:Lcom/example/steven/myview/LayerView;

    invoke-virtual {v0}, Lcom/example/steven/myview/LayerView;->postInvalidate()V

    .line 160
    :cond_0
    return-void
.end method
