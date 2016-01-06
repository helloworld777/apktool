.class Lcom/example/steven/myview/YuanView$1;
.super Ljava/util/TimerTask;
.source "YuanView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/steven/myview/YuanView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/steven/myview/YuanView;


# direct methods
.method constructor <init>(Lcom/example/steven/myview/YuanView;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/example/steven/myview/YuanView$1;->this$0:Lcom/example/steven/myview/YuanView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v3, 0x41f00000    # 30.0f

    .line 46
    iget-object v0, p0, Lcom/example/steven/myview/YuanView$1;->this$0:Lcom/example/steven/myview/YuanView;

    iget v1, v0, Lcom/example/steven/myview/YuanView;->angle2:F

    iget-object v2, p0, Lcom/example/steven/myview/YuanView$1;->this$0:Lcom/example/steven/myview/YuanView;

    iget v2, v2, Lcom/example/steven/myview/YuanView;->angle:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/example/steven/myview/YuanView;->angle2:F

    .line 47
    iget-object v0, p0, Lcom/example/steven/myview/YuanView$1;->this$0:Lcom/example/steven/myview/YuanView;

    iget v1, v0, Lcom/example/steven/myview/YuanView;->angle:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/example/steven/myview/YuanView;->angle:F

    .line 51
    iget-object v0, p0, Lcom/example/steven/myview/YuanView$1;->this$0:Lcom/example/steven/myview/YuanView;

    iget v0, v0, Lcom/example/steven/myview/YuanView;->angle2:F

    iget-object v1, p0, Lcom/example/steven/myview/YuanView$1;->this$0:Lcom/example/steven/myview/YuanView;

    iget v1, v1, Lcom/example/steven/myview/YuanView;->angle:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/example/steven/myview/YuanView$1;->this$0:Lcom/example/steven/myview/YuanView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/example/steven/myview/YuanView;->angle2:F

    .line 53
    iget-object v0, p0, Lcom/example/steven/myview/YuanView$1;->this$0:Lcom/example/steven/myview/YuanView;

    iput v3, v0, Lcom/example/steven/myview/YuanView;->angle:F

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/example/steven/myview/YuanView$1;->this$0:Lcom/example/steven/myview/YuanView;

    iget v0, v0, Lcom/example/steven/myview/YuanView;->angle2:F

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/example/steven/myview/YuanView$1;->this$0:Lcom/example/steven/myview/YuanView;

    iget-object v1, p0, Lcom/example/steven/myview/YuanView$1;->this$0:Lcom/example/steven/myview/YuanView;

    iget v1, v1, Lcom/example/steven/myview/YuanView;->angle2:F

    sub-float v1, v4, v1

    iput v1, v0, Lcom/example/steven/myview/YuanView;->angle:F

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/example/steven/myview/YuanView$1;->this$0:Lcom/example/steven/myview/YuanView;

    invoke-virtual {v0}, Lcom/example/steven/myview/YuanView;->postInvalidate()V

    .line 65
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "angle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/steven/myview/YuanView$1;->this$0:Lcom/example/steven/myview/YuanView;

    iget v2, v2, Lcom/example/steven/myview/YuanView;->angle:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",angle2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/steven/myview/YuanView$1;->this$0:Lcom/example/steven/myview/YuanView;

    iget v2, v2, Lcom/example/steven/myview/YuanView;->angle2:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method
