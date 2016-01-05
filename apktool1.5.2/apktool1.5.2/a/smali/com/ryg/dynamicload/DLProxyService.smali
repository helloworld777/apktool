.class public Lcom/ryg/dynamicload/DLProxyService;
.super Landroid/app/Service;
.source "DLProxyService.java"

# interfaces
.implements Lcom/ryg/dynamicload/internal/DLServiceAttachable;


# static fields
.field private static final TAG:Ljava/lang/String; = "DLProxyService"


# instance fields
.field private mImpl:Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;

.field private mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

.field private mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    new-instance v0, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;

    invoke-direct {v0, p0}, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mImpl:Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;

    .line 15
    return-void
.end method


# virtual methods
.method public attach(Lcom/ryg/dynamicload/DLServicePlugin;Lcom/ryg/dynamicload/internal/DLPluginManager;)V
    .locals 0
    .parameter "remoteService"
    .parameter "pluginManager"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    .line 123
    iput-object p2, p0, Lcom/ryg/dynamicload/DLProxyService;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    .line 124
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 25
    const-string v0, "DLProxyService"

    const-string v1, "DLProxyService onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mImpl:Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;

    invoke-virtual {v0, p1}, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;->init(Landroid/content/Intent;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLServicePlugin;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLServicePlugin;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    const-string v0, "DLProxyService"

    const-string v1, "DLProxyService onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 37
    const-string v0, "DLProxyService"

    const-string v1, "DLProxyService onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLServicePlugin;->onDestroy()V

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 66
    const-string v0, "DLProxyService"

    const-string v1, "DLProxyService onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLServicePlugin;->onLowMemory()V

    .line 81
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 82
    const-string v0, "DLProxyService"

    const-string v1, "DLProxyService onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLServicePlugin;->onRebind(Landroid/content/Intent;)V

    .line 106
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 107
    const-string v0, "DLProxyService"

    const-string v1, "DLProxyService onRebind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 51
    const-string v0, "DLProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLProxyService onStartCommand "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mImpl:Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;

    invoke-virtual {v0, p1}, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;->init(Landroid/content/Intent;)V

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 57
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0, p1, p2, p3}, Lcom/ryg/dynamicload/DLServicePlugin;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .parameter "rootIntent"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLServicePlugin;->onTaskRemoved(Landroid/content/Intent;)V

    .line 115
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 116
    const-string v0, "DLProxyService"

    const-string v1, "DLProxyService onTaskRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .parameter "level"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLServicePlugin;->onTrimMemory(I)V

    .line 90
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 91
    const-string v0, "DLProxyService"

    const-string v1, "DLProxyService onTrimMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 97
    const-string v0, "DLProxyService"

    const-string v1, "DLProxyService onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 99
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLServicePlugin;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
