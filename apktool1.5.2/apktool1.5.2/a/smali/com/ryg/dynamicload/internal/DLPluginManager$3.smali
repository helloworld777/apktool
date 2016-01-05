.class Lcom/ryg/dynamicload/internal/DLPluginManager$3;
.super Ljava/lang/Object;
.source "DLPluginManager.java"

# interfaces
.implements Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ryg/dynamicload/internal/DLPluginManager;->unBindPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ryg/dynamicload/internal/DLPluginManager;

.field private final synthetic val$conn:Landroid/content/ServiceConnection;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ryg/dynamicload/internal/DLPluginManager;Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->this$0:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iput-object p2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->val$conn:Landroid/content/ServiceConnection;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetch(ILjava/lang/Class;)V
    .locals 2
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, proxyServiceClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Service;>;"
    if-nez p1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->val$conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;->this$0:Lcom/ryg/dynamicload/internal/DLPluginManager;

    #setter for: Lcom/ryg/dynamicload/internal/DLPluginManager;->mResult:I
    invoke-static {v0, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->access$0(Lcom/ryg/dynamicload/internal/DLPluginManager;I)V

    .line 328
    return-void
.end method
