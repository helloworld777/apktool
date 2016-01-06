.class public Lcom/ryg/dynamicload/internal/DLProxyImpl;
.super Ljava/lang/Object;
.source "DLProxyImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DLProxyImpl"


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mClass:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field protected mPluginActivity:Lcom/ryg/dynamicload/DLPlugin;

.field public mPluginClassLoader:Ljava/lang/ClassLoader;

.field private mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

.field private mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

.field private mProxyActivity:Landroid/app/Activity;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mProxyActivity:Landroid/app/Activity;

    .line 67
    return-void
.end method

.method private handleActivityInfo()V
    .locals 5

    .prologue
    .line 100
    const-string v2, "DLProxyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleActivityInfo, theme="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->theme:I

    if-lez v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mProxyActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTheme(I)V

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 105
    .local v1, "superTheme":Landroid/content/res/Resources$Theme;
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 106
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget-object v3, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initializeActivityInfo()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v4, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v2, v4, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 71
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 72
    iget-object v4, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mClass:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 73
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v4, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mClass:Ljava/lang/String;

    .line 77
    :cond_0
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 78
    .local v1, "defaultTheme":I
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v4

    :goto_0
    if-lt v3, v5, :cond_2

    .line 97
    .end local v1    # "defaultTheme":I
    :cond_1
    return-void

    .line 78
    .restart local v1    # "defaultTheme":I
    :cond_2
    aget-object v0, v4, v3

    .line 79
    .local v0, "a":Landroid/content/pm/ActivityInfo;
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 80
    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 82
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->theme:I

    if-nez v6, :cond_3

    .line 83
    if-eqz v1, :cond_4

    .line 84
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iput v1, v6, Landroid/content/pm/ActivityInfo;->theme:I

    .line 78
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_4
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_5

    .line 87
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const v7, 0x1030128

    iput v7, v6, Landroid/content/pm/ActivityInfo;->theme:I

    goto :goto_1

    .line 89
    :cond_5
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const v7, 0x1030005

    iput v7, v6, Landroid/content/pm/ActivityInfo;->theme:I

    goto :goto_1
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public getRemoteActivity()Lcom/ryg/dynamicload/DLPlugin;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginActivity:Lcom/ryg/dynamicload/DLPlugin;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method protected launchTargetActivity()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    iget-object v7, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 140
    .local v4, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 141
    .local v5, "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 142
    .local v3, "instance":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Lcom/ryg/dynamicload/DLPlugin;

    move-object v6, v0

    iput-object v6, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginActivity:Lcom/ryg/dynamicload/DLPlugin;

    .line 143
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mProxyActivity:Landroid/app/Activity;

    check-cast v6, Lcom/ryg/dynamicload/internal/DLAttachable;

    iget-object v7, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginActivity:Lcom/ryg/dynamicload/DLPlugin;

    iget-object v8, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    invoke-interface {v6, v7, v8}, Lcom/ryg/dynamicload/internal/DLAttachable;->attach(Lcom/ryg/dynamicload/DLPlugin;Lcom/ryg/dynamicload/internal/DLPluginManager;)V

    .line 144
    const-string v6, "DLProxyImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "instance = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginActivity:Lcom/ryg/dynamicload/DLPlugin;

    iget-object v7, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mProxyActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    invoke-interface {v6, v7, v8}, Lcom/ryg/dynamicload/DLPlugin;->attach(Landroid/app/Activity;Lcom/ryg/dynamicload/internal/DLPluginPackage;)V

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "extra.from"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v6, v1}, Lcom/ryg/dynamicload/DLPlugin;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "instance":Ljava/lang/Object;
    .end local v4    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    sget-object v0, Lcom/ryg/utils/DLConfigs;->sPluginClassloader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 122
    const-string v0, "extra.package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPackageName:Ljava/lang/String;

    .line 123
    const-string v0, "extra.class"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mClass:Ljava/lang/String;

    .line 124
    const-string v0, "DLProxyImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mClass="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mProxyActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    .line 127
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getPackage(Ljava/lang/String;)Lcom/ryg/dynamicload/internal/DLPluginPackage;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 128
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->assetManager:Landroid/content/res/AssetManager;

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mAssetManager:Landroid/content/res/AssetManager;

    .line 129
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->resources:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mResources:Landroid/content/res/Resources;

    .line 131
    invoke-direct {p0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->initializeActivityInfo()V

    .line 132
    invoke-direct {p0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->handleActivityInfo()V

    .line 133
    invoke-virtual {p0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->launchTargetActivity()V

    .line 134
    return-void
.end method
