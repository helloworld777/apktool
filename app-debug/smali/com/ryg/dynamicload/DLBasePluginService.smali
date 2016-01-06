.class public Lcom/ryg/dynamicload/DLBasePluginService;
.super Landroid/app/Service;
.source "DLBasePluginService.java"

# interfaces
.implements Lcom/ryg/dynamicload/DLServicePlugin;


# static fields
.field public static final TAG:Ljava/lang/String; = "DLBasePluginService"


# instance fields
.field protected mFrom:I

.field private mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

.field private mProxyService:Landroid/app/Service;

.field protected that:Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    iput-object p0, p0, Lcom/ryg/dynamicload/DLBasePluginService;->that:Landroid/app/Service;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/ryg/dynamicload/DLBasePluginService;->mFrom:I

    .line 30
    return-void
.end method


# virtual methods
.method public attach(Landroid/app/Service;Lcom/ryg/dynamicload/internal/DLPluginPackage;)V
    .locals 2
    .param p1, "proxyService"    # Landroid/app/Service;
    .param p2, "pluginPackage"    # Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .prologue
    .line 41
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService attach"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/ryg/dynamicload/DLBasePluginService;->mProxyService:Landroid/app/Service;

    .line 43
    iput-object p2, p0, Lcom/ryg/dynamicload/DLBasePluginService;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 44
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginService;->mProxyService:Landroid/app/Service;

    iput-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginService;->that:Landroid/app/Service;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/ryg/dynamicload/DLBasePluginService;->mFrom:I

    .line 46
    return-void
.end method

.method protected isInternalCall()Z
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginService;->mFrom:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onBind"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 81
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onCreate"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onDestroy"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onLowMemory"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onRebind"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 68
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onStartCommand"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 113
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onTaskRemoved"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 93
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onTrimMemory"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onUnbind"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    return v0
.end method
