.class interface abstract Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;
.super Ljava/lang/Object;
.source "DLPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ryg/dynamicload/internal/DLPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "OnFetchProxyServiceClass"
.end annotation


# virtual methods
.method public abstract onFetch(ILjava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation
.end method
