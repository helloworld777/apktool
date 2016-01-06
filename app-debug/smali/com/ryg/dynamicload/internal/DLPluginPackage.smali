.class public Lcom/ryg/dynamicload/internal/DLPluginPackage;
.super Ljava/lang/Object;
.source "DLPluginPackage.java"


# instance fields
.field public assetManager:Landroid/content/res/AssetManager;

.field public classLoader:Ldalvik/system/DexClassLoader;

.field public defaultActivity:Ljava/lang/String;

.field public packageInfo:Landroid/content/pm/PackageInfo;

.field public packageName:Ljava/lang/String;

.field public resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Ldalvik/system/DexClassLoader;Landroid/content/res/Resources;Landroid/content/pm/PackageInfo;)V
    .locals 1
    .param p1, "loader"    # Ldalvik/system/DexClassLoader;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    .line 46
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->assetManager:Landroid/content/res/AssetManager;

    .line 47
    iput-object p2, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->resources:Landroid/content/res/Resources;

    .line 48
    iput-object p3, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 50
    invoke-direct {p0}, Lcom/ryg/dynamicload/internal/DLPluginPackage;->parseDefaultActivityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->defaultActivity:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private final parseDefaultActivityName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
