.class public Lcom/ryg/dynamicload/internal/DLPluginManager;
.super Ljava/lang/Object;
.source "DLPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;
    }
.end annotation


# static fields
.field public static final START_RESULT_NO_CLASS:I = 0x2

.field public static final START_RESULT_NO_PKG:I = 0x1

.field public static final START_RESULT_SUCCESS:I = 0x0

.field public static final START_RESULT_TYPE_ERROR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DLPluginManager"

.field private static sInstance:Lcom/ryg/dynamicload/internal/DLPluginManager;


# instance fields
.field private dexOutputPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFrom:I

.field private mNativeLibDir:Ljava/lang/String;

.field private final mPackagesHolder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ryg/dynamicload/internal/DLPluginPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    .line 81
    iput v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mFrom:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mNativeLibDir:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    const-string v1, "pluginlib"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mNativeLibDir:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/ryg/dynamicload/internal/DLPluginManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput p1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mResult:I

    return-void
.end method

.method private copySoLib(Ljava/lang/String;)V
    .locals 3
    .parameter "dexPath"

    .prologue
    .line 209
    invoke-static {}, Lcom/ryg/utils/SoLibManager;->getSoLoader()Lcom/ryg/utils/SoLibManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mNativeLibDir:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/ryg/utils/SoLibManager;->copyPluginSoLib(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private createAssetManager(Ljava/lang/String;)Landroid/content/res/AssetManager;
    .locals 8
    .parameter "dexPath"

    .prologue
    .line 173
    :try_start_0
    const-class v3, Landroid/content/res/AssetManager;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    .line 174
    .local v1, assetManager:Landroid/content/res/AssetManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "addAssetPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 175
    .local v0, addAssetPath:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v0           #addAssetPath:Ljava/lang/reflect/Method;
    .end local v1           #assetManager:Landroid/content/res/AssetManager;
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createDexClassLoader(Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 5
    .parameter "dexPath"

    .prologue
    .line 165
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    const-string v3, "dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 166
    .local v0, dexOutputDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->dexOutputPath:Ljava/lang/String;

    .line 167
    new-instance v1, Ldalvik/system/DexClassLoader;

    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->dexOutputPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mNativeLibDir:Ljava/lang/String;

    iget-object v4, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 168
    .local v1, loader:Ldalvik/system/DexClassLoader;
    return-object v1
.end method

.method private createResources(Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .locals 4
    .parameter "assetManager"

    .prologue
    .line 189
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 190
    .local v1, superRes:Landroid/content/res/Resources;
    new-instance v0, Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 191
    .local v0, resources:Landroid/content/res/Resources;
    return-object v0
.end method

.method private fetchProxyServiceClass(Lcom/ryg/dynamicload/internal/DLIntent;Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;)V
    .locals 7
    .parameter "dlIntent"
    .parameter "fetchProxyServiceClass"

    .prologue
    const/4 v6, 0x0

    .line 340
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, packageName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 342
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "disallow null packageName."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 344
    :cond_0
    iget-object v5, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 345
    .local v3, pluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;
    if-nez v3, :cond_1

    .line 346
    const/4 v5, 0x1

    invoke-interface {p2, v5, v6}, Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    .line 368
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, className:Ljava/lang/String;
    iget-object v5, v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    invoke-direct {p0, v5, v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 353
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_2

    .line 354
    const/4 v5, 0x2

    invoke-interface {p2, v5, v6}, Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    goto :goto_0

    .line 358
    :cond_2
    invoke-direct {p0, v1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getProxyServiceClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 359
    .local v4, proxyServiceClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Service;>;"
    if-nez v4, :cond_3

    .line 360
    const/4 v5, 0x3

    invoke-interface {p2, v5, v6}, Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    goto :goto_0

    .line 365
    :cond_3
    const-string v5, "extra.class"

    invoke-virtual {p1, v5, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v5, "extra.package"

    invoke-virtual {p1, v5, v2}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const/4 v5, 0x0

    invoke-interface {p2, v5, v4}, Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 93
    sget-object v0, Lcom/ryg/dynamicload/internal/DLPluginManager;->sInstance:Lcom/ryg/dynamicload/internal/DLPluginManager;

    if-nez v0, :cond_1

    .line 94
    const-class v1, Lcom/ryg/dynamicload/internal/DLPluginManager;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/ryg/dynamicload/internal/DLPluginManager;->sInstance:Lcom/ryg/dynamicload/internal/DLPluginManager;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/ryg/dynamicload/internal/DLPluginManager;

    invoke-direct {v0, p0}, Lcom/ryg/dynamicload/internal/DLPluginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ryg/dynamicload/internal/DLPluginManager;->sInstance:Lcom/ryg/dynamicload/internal/DLPluginManager;

    .line 94
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    sget-object v0, Lcom/ryg/dynamicload/internal/DLPluginManager;->sInstance:Lcom/ryg/dynamicload/internal/DLPluginManager;

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getPluginActivityFullPath(Lcom/ryg/dynamicload/internal/DLIntent;Lcom/ryg/dynamicload/internal/DLPluginPackage;)Ljava/lang/String;
    .locals 3
    .parameter "dlIntent"
    .parameter "pluginPackage"

    .prologue
    .line 383
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, className:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/ryg/dynamicload/internal/DLPluginPackage;->defaultActivity:Ljava/lang/String;

    .line 385
    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_1
    return-object v0
.end method

.method private getProxyActivityClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 401
    .local v0, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-class v1, Lcom/ryg/dynamicload/DLBasePluginActivity;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    const-class v0, Lcom/ryg/dynamicload/DLProxyActivity;

    .line 407
    :cond_0
    :goto_0
    return-object v0

    .line 403
    :cond_1
    const-class v1, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    const-class v0, Lcom/ryg/dynamicload/DLProxyFragmentActivity;

    goto :goto_0
.end method

.method private getProxyServiceClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 412
    .local v0, proxyServiceClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Service;>;"
    const-class v1, Lcom/ryg/dynamicload/DLBasePluginService;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const-class v0, Lcom/ryg/dynamicload/DLProxyService;

    .line 417
    :cond_0
    return-object v0
.end method

.method private loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "classLoader"
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 374
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p2, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 379
    :goto_0
    return-object v0

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private performStartActivityForResult(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;I)V
    .locals 3
    .parameter "context"
    .parameter "dlIntent"
    .parameter "requestCode"

    .prologue
    .line 421
    const-string v0, "DLPluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 423
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 427
    :goto_0
    return-void

    .line 425
    .restart local p1
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private preparePluginEnv(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/ryg/dynamicload/internal/DLPluginPackage;
    .locals 7
    .parameter "packageInfo"
    .parameter "dexPath"

    .prologue
    .line 149
    iget-object v5, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 150
    .local v2, pluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 159
    .end local v2           #pluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;
    .local v3, pluginPackage:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 153
    .end local v3           #pluginPackage:Ljava/lang/Object;
    .restart local v2       #pluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;
    :cond_0
    invoke-direct {p0, p2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->createDexClassLoader(Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object v1

    .line 154
    .local v1, dexClassLoader:Ldalvik/system/DexClassLoader;
    invoke-direct {p0, p2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->createAssetManager(Ljava/lang/String;)Landroid/content/res/AssetManager;

    move-result-object v0

    .line 155
    .local v0, assetManager:Landroid/content/res/AssetManager;
    invoke-direct {p0, v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->createResources(Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v4

    .line 157
    .local v4, resources:Landroid/content/res/Resources;
    new-instance v2, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .end local v2           #pluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;
    invoke-direct {v2, v1, v4, p1}, Lcom/ryg/dynamicload/internal/DLPluginPackage;-><init>(Ldalvik/system/DexClassLoader;Landroid/content/res/Resources;Landroid/content/pm/PackageInfo;)V

    .line 158
    .restart local v2       #pluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;
    iget-object v5, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 159
    .restart local v3       #pluginPackage:Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public bindPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;I)I
    .locals 6
    .parameter "context"
    .parameter "dlIntent"
    .parameter "conn"
    .parameter "flags"

    .prologue
    .line 291
    iget v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mFrom:I

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p2}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 294
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0

    .line 297
    :cond_0
    new-instance v0, Lcom/ryg/dynamicload/internal/DLPluginManager$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ryg/dynamicload/internal/DLPluginManager$2;-><init>(Lcom/ryg/dynamicload/internal/DLPluginManager;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/Context;Landroid/content/ServiceConnection;I)V

    invoke-direct {p0, p2, v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->fetchProxyServiceClass(Lcom/ryg/dynamicload/internal/DLIntent;Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;)V

    .line 310
    iget v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mResult:I

    goto :goto_0
.end method

.method public getPackage(Ljava/lang/String;)Lcom/ryg/dynamicload/internal/DLPluginPackage;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    return-object v0
.end method

.method public loadApk(Ljava/lang/String;)Lcom/ryg/dynamicload/internal/DLPluginPackage;
    .locals 1
    .parameter "dexPath"

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->loadApk(Ljava/lang/String;Z)Lcom/ryg/dynamicload/internal/DLPluginPackage;

    move-result-object v0

    return-object v0
.end method

.method public loadApk(Ljava/lang/String;Z)Lcom/ryg/dynamicload/internal/DLPluginPackage;
    .locals 4
    .parameter "dexPath"
    .parameter "hasSoLib"

    .prologue
    .line 124
    const/4 v2, 0x1

    iput v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mFrom:I

    .line 126
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 127
    const/4 v3, 0x5

    .line 126
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 128
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 129
    const/4 v1, 0x0

    .line 137
    :cond_0
    :goto_0
    return-object v1

    .line 132
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->preparePluginEnv(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/ryg/dynamicload/internal/DLPluginPackage;

    move-result-object v1

    .line 133
    .local v1, pluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;
    if-eqz p2, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->copySoLib(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPluginActivity(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;)I
    .locals 1
    .parameter "context"
    .parameter "dlIntent"

    .prologue
    .line 216
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->startPluginActivityForResult(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;I)I

    move-result v0

    return v0
.end method

.method public startPluginActivityForResult(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;I)I
    .locals 7
    .parameter "context"
    .parameter "dlIntent"
    .parameter "requestCode"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 229
    iget v6, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mFrom:I

    if-nez v6, :cond_0

    .line 230
    invoke-virtual {p2}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, p1, v6}, Lcom/ryg/dynamicload/internal/DLIntent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-direct {p0, p1, p2, p3}, Lcom/ryg/dynamicload/internal/DLPluginManager;->performStartActivityForResult(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;I)V

    .line 263
    :goto_0
    return v5

    .line 235
    :cond_0
    invoke-virtual {p2}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, packageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 237
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "disallow null packageName."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 240
    :cond_1
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 241
    .local v4, pluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;
    if-nez v4, :cond_2

    .line 242
    const/4 v5, 0x1

    goto :goto_0

    .line 245
    :cond_2
    invoke-direct {p0, p2, v4}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getPluginActivityFullPath(Lcom/ryg/dynamicload/internal/DLIntent;Lcom/ryg/dynamicload/internal/DLPluginPackage;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, className:Ljava/lang/String;
    iget-object v6, v4, Lcom/ryg/dynamicload/internal/DLPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    invoke-direct {p0, v6, v1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 247
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v2, :cond_3

    .line 248
    const/4 v5, 0x2

    goto :goto_0

    .line 253
    :cond_3
    invoke-direct {p0, v2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getProxyActivityClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 254
    .local v0, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-nez v0, :cond_4

    .line 255
    const/4 v5, 0x3

    goto :goto_0

    .line 259
    :cond_4
    const-string v6, "extra.class"

    invoke-virtual {p2, v6, v1}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v6, "extra.package"

    invoke-virtual {p2, v6, v3}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v6, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 262
    invoke-direct {p0, p1, p2, p3}, Lcom/ryg/dynamicload/internal/DLPluginManager;->performStartActivityForResult(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;I)V

    goto :goto_0
.end method

.method public startPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;)I
    .locals 1
    .parameter "context"
    .parameter "dlIntent"

    .prologue
    .line 267
    iget v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mFrom:I

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p2}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 270
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    .line 273
    :cond_0
    new-instance v0, Lcom/ryg/dynamicload/internal/DLPluginManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager$1;-><init>(Lcom/ryg/dynamicload/internal/DLPluginManager;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/Context;)V

    invoke-direct {p0, p2, v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->fetchProxyServiceClass(Lcom/ryg/dynamicload/internal/DLIntent;Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;)V

    .line 286
    iget v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mResult:I

    goto :goto_0
.end method

.method public unBindPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;)I
    .locals 1
    .parameter "context"
    .parameter "dlIntent"
    .parameter "conn"

    .prologue
    .line 314
    iget v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mFrom:I

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p1, p3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 316
    const/4 v0, 0x0

    .line 330
    :goto_0
    return v0

    .line 319
    :cond_0
    new-instance v0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/ryg/dynamicload/internal/DLPluginManager$3;-><init>(Lcom/ryg/dynamicload/internal/DLPluginManager;Landroid/content/Context;Landroid/content/ServiceConnection;)V

    invoke-direct {p0, p2, v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->fetchProxyServiceClass(Lcom/ryg/dynamicload/internal/DLIntent;Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;)V

    .line 330
    iget v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mResult:I

    goto :goto_0
.end method
